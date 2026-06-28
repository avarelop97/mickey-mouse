#!/usr/bin/env python3
"""AI supervision layer for BMS semantic graph quality.

This script audits one BMS map (optionally scoped by program), computes
deterministic consistency checks, and can consume a Copilot AI judgement with
the collected context.

Usage examples:
    python3 infra/neo4j/scripts/ai_supervise_bms_graph.py --map-key ZMG0103::ZMG0103
    python3 infra/neo4j/scripts/ai_supervise_bms_graph.py --map-key ZMG0103::ZMG0103 --program ZM2OJ103
    python3 infra/neo4j/scripts/ai_supervise_bms_graph.py --map-key ZMG0103::ZMG0103 --program ZM2OJ103 --use-copilot
    python3 infra/neo4j/scripts/ai_supervise_bms_graph.py --map-key ZMG0103::ZMG0103 --program ZM2OJ103 --use-copilot --copilot-response-file infra/neo4j/reports/copilot-response.json
"""

from __future__ import annotations

import argparse
import json
import os
import pathlib
import subprocess
from dataclasses import asdict, dataclass
from datetime import datetime, timezone
from typing import Any


REPO_ROOT = pathlib.Path(__file__).resolve().parents[3]
REPORT_DIR = REPO_ROOT / "infra" / "neo4j" / "reports"

NEO4J_CONTAINER = os.environ.get("NEO4J_CONTAINER", "neo4j-local")
NEO4J_PASSWORD = os.environ.get("NEO4J_PASSWORD", "CambiaEstaClave123!")
NEO4J_DATABASE = os.environ.get("NEO4J_DATABASE", "neo4j")

OPENAI_API_KEY = os.environ.get("OPENAI_API_KEY", "")
OPENAI_MODEL = os.environ.get("OPENAI_MODEL", "gpt-4o-mini")


@dataclass
class Finding:
    severity: str
    code: str
    message: str
    evidence: dict[str, Any]


def cypher_quote(value: str) -> str:
    return "'" + value.replace("\\", "\\\\").replace("'", "\\'") + "'"


def run_cypher(query: str) -> list[dict[str, Any]]:
    command = [
        "docker",
        "exec",
        NEO4J_CONTAINER,
        "cypher-shell",
        "-u",
        "neo4j",
        "-p",
        NEO4J_PASSWORD,
        "-d",
        NEO4J_DATABASE,
        "--format",
        "plain",
        "--wrap",
        "false",
        "--non-interactive",
        query,
    ]
    completed = subprocess.run(command, check=True, capture_output=True, text=True)
    lines = [x.strip() for x in completed.stdout.splitlines() if x.strip()]
    if len(lines) < 2:
        return []

    headers = [h.strip() for h in lines[0].split(",")]
    rows: list[dict[str, Any]] = []
    for line in lines[1:]:
        values = [v.strip() for v in line.split(",")]
        row = {headers[idx]: values[idx] if idx < len(values) else "" for idx in range(len(headers))}
        rows.append(row)
    return rows


def run_cypher_write(query: str) -> None:
    command = [
        "docker",
        "exec",
        NEO4J_CONTAINER,
        "cypher-shell",
        "-u",
        "neo4j",
        "-p",
        NEO4J_PASSWORD,
        "-d",
        NEO4J_DATABASE,
        "--format",
        "plain",
        "--wrap",
        "false",
        "--non-interactive",
        query,
    ]
    subprocess.run(command, check=True, capture_output=True, text=True)


def parse_int(value: str, default: int = 0) -> int:
    try:
        return int(value)
    except ValueError:
        return default


def collect_context(map_key: str, program: str | None) -> dict[str, Any]:
    program_filter = f"AND p.name = '{program}'" if program else ""
    transition_program_filter = f"AND t.sourceProgram = '{program}'" if program else ""
    state_program_filter = f"AND st.programName = '{program}'" if program else ""

    q_counts = f"""
MATCH (m:BmsMap {{name:'{map_key}'}})
OPTIONAL MATCH (m)-[:HAS_FIELD]->(f:BmsField)
OPTIONAL MATCH (m)-[:SUPPORTS_KEY]->(k:UiFunctionKey)
OPTIONAL MATCH (m)-[:HAS_SUBFUNCTIONALITY]->(s:SubFunctionality)
OPTIONAL MATCH (s)-[:IMPLEMENTED_BY]->(p:Program)
WHERE 1=1 {program_filter}
RETURN count(DISTINCT f) AS fields,
       count(DISTINCT CASE WHEN f.type = 'input' THEN f END) AS inputFields,
       count(DISTINCT k) AS keys,
       count(DISTINCT s) AS subfuncs,
       count(DISTINCT p) AS programs
"""

    q_states = f"""
MATCH (m:BmsMap {{name:'{map_key}'}})
MATCH (m)-[:SUPPORTS_KEY]->(:UiFunctionKey)-[:EMITS_TRANSITION]->(t:NavigationTransition)
MATCH (p:Program {{name:t.sourceProgram}})-[:HAS_STATE]->(st:ProgramState {{name:t.sourceProgram + '__' + t.stateName}})
WHERE t.sourceMapKey = m.name {transition_program_filter}
RETURN st.programName AS program,
       st.stateName AS state,
       count(DISTINCT t) AS transitions
ORDER BY program, state
"""

    q_destinations = f"""
MATCH (t:NavigationTransition {{sourceMapKey:'{map_key}'}})
WHERE 1=1 {transition_program_filter}
RETURN count(*) AS total,
       sum(CASE WHEN t.targetMapKey <> '' THEN 1 ELSE 0 END) AS withMap,
       sum(CASE WHEN t.targetProgram <> '' THEN 1 ELSE 0 END) AS withProgram,
       sum(CASE WHEN t.targetKind = 'dynamic_unresolved' THEN 1 ELSE 0 END) AS dynamicUnresolved,
    sum(CASE WHEN t.targetKind = 'derived_perform' THEN 1 ELSE 0 END) AS derivedPerform,
    sum(CASE WHEN t.targetKind = 'explicit_transid' THEN 1 ELSE 0 END) AS explicitTransid
"""

    q_state_fields = f"""
MATCH (st:ProgramState)
WHERE 1=1 {state_program_filter}
OPTIONAL MATCH (st)-[r:READS_INPUT|VALIDATES_INPUT|WRITES_FIELD]->(f:BmsField {{mapKey:'{map_key}'}})
RETURN st.programName AS program,
       st.stateName AS state,
       type(r) AS rel,
       count(r) AS relCount,
       collect(DISTINCT f.name) AS fields
ORDER BY program, state, rel
"""

    q_examples = f"""
MATCH (m:BmsMap {{name:'{map_key}'}})-[:SUPPORTS_KEY]->(k:UiFunctionKey)-[:EMITS_TRANSITION]->(t:NavigationTransition)-[:EXECUTES]->(s:SubFunctionality)-[:IMPLEMENTED_BY]->(p:Program)
WHERE t.sourceMapKey = m.name
  AND p.name = t.sourceProgram
  {transition_program_filter}
RETURN p.name AS program, t.stateName AS state, t.keyName AS key, t.targetMapKey AS targetMapKey, t.targetProgram AS targetProgram, s.name AS subfunc
ORDER BY program, state, key
LIMIT 25
"""

    return {
        "mapKey": map_key,
        "programFilter": program or "ALL",
        "counts": run_cypher(q_counts),
        "stateTransitionMatrix": run_cypher(q_states),
        "destinationCoverage": run_cypher(q_destinations),
        "stateFieldLinks": run_cypher(q_state_fields),
        "sampleTransitions": run_cypher(q_examples),
    }


def deterministic_review(context: dict[str, Any]) -> dict[str, Any]:
    findings: list[Finding] = []

    counts = context.get("counts", [{}])[0] if context.get("counts") else {}
    fields = parse_int(counts.get("fields", "0"))
    input_fields = parse_int(counts.get("inputFields", "0"))
    keys = parse_int(counts.get("keys", "0"))
    subfuncs = parse_int(counts.get("subfuncs", "0"))
    programs = parse_int(counts.get("programs", "0"))

    if fields == 0:
        findings.append(Finding("critical", "MAP_WITHOUT_FIELDS", "El mapa no tiene campos BMS enlazados.", {"fields": fields}))
    if keys == 0:
        findings.append(Finding("critical", "MAP_WITHOUT_KEYS", "El mapa no tiene teclas funcionales enlazadas.", {"keys": keys}))
    if subfuncs == 0:
        findings.append(Finding("high", "MAP_WITHOUT_SUBFUNCTIONALITIES", "No hay subfuncionalidades derivadas para el mapa.", {"subfuncs": subfuncs}))
    if programs == 0:
        findings.append(Finding("high", "MAP_WITHOUT_IMPLEMENTATION", "No hay programas implementadores enlazados desde subfuncionalidad.", {"programs": programs}))

    state_matrix = context.get("stateTransitionMatrix", [])
    if not state_matrix:
        findings.append(Finding("critical", "NO_STATE_TRANSITIONS", "No existen transiciones enlazadas a estados para el alcance analizado.", {}))

    destination = context.get("destinationCoverage", [{}])[0] if context.get("destinationCoverage") else {}
    total = parse_int(destination.get("total", "0"))
    with_map = parse_int(destination.get("withMap", "0"))
    with_program = parse_int(destination.get("withProgram", "0"))
    dynamic_unresolved = parse_int(destination.get("dynamicUnresolved", "0"))
    derived_perform = parse_int(destination.get("derivedPerform", "0"))
    explicit_transid = parse_int(destination.get("explicitTransid", "0"))
    with_any = with_map + with_program
    if total > 0 and with_any == 0:
        severity = "high"
        message = "Hay transiciones, pero ninguna con destino inferido (TO_MAP/TO_PROGRAM)."
        if dynamic_unresolved > 0 or derived_perform > 0 or explicit_transid > 0:
            severity = "medium"
            message = "No hay destinos explicitos suficientes; existen destinos parciales (derived/dynamic_unresolved) pero falta resolverlos."
        findings.append(
            Finding(
                severity,
                "NO_NAVIGATION_DESTINATIONS",
                message,
                {
                    "total": total,
                    "withMap": with_map,
                    "withProgram": with_program,
                    "dynamicUnresolved": dynamic_unresolved,
                    "derivedPerform": derived_perform,
                    "explicitTransid": explicit_transid,
                },
            )
        )

    state_field_rows = context.get("stateFieldLinks", [])
    has_any_state_field_link = any(parse_int(row.get("relCount", "0")) > 0 for row in state_field_rows)
    if input_fields > 0 and not has_any_state_field_link:
        findings.append(
            Finding(
                "high",
                "INPUTS_WITHOUT_STATE_SEMANTICS",
                "El mapa tiene inputs, pero no hay enlaces ProgramState -> BmsField.",
                {"inputFields": input_fields},
            )
        )

    has_validate_or_write = any(
        (str(row.get("rel", "")).strip().strip('"') in {"VALIDATES_INPUT", "WRITES_FIELD"})
        and parse_int(row.get("relCount", "0")) > 0
        for row in state_field_rows
    )
    if has_any_state_field_link and not has_validate_or_write:
        findings.append(
            Finding(
                "medium",
                "STATE_FIELDS_READ_ONLY",
                "Solo hay READS_INPUT; faltan VALIDATES_INPUT/WRITES_FIELD en el alcance analizado.",
                {},
            )
        )

    critical = sum(1 for f in findings if f.severity == "critical")
    high = sum(1 for f in findings if f.severity == "high")
    medium = sum(1 for f in findings if f.severity == "medium")

    if critical > 0:
        verdict = "no_sense"
        confidence = "high"
    elif high > 0:
        verdict = "partial_sense"
        confidence = "medium"
    elif medium > 0:
        verdict = "mostly_sense"
        confidence = "medium"
    else:
        verdict = "sense"
        confidence = "high"

    return {
        "verdict": verdict,
        "confidence": confidence,
        "findingCounts": {"critical": critical, "high": high, "medium": medium},
        "findings": [asdict(f) for f in findings],
    }


def build_copilot_prompt(context: dict[str, Any], deterministic: dict[str, Any]) -> dict[str, Any]:
    system_prompt = (
        "Eres un auditor senior de grafos semanticos COBOL/BMS. "
        "Debes evaluar si el modelo tiene sentido funcional y explicar huecos. "
        "Responde JSON estricto con claves: verdict, confidence, risks, recommendations."
    )
    user_payload: dict[str, Any] = {
        "task": "Validar consistencia semantica de grafo BMS",
        "context": context,
        "deterministic": deterministic,
        "required_schema": {
            "verdict": "sense|mostly_sense|partial_sense|no_sense",
            "confidence": "low|medium|high",
            "risks": ["..."],
            "recommendations": ["..."],
        },
    }
    return {
        "provider": "copilot",
        "system": system_prompt,
        "user": user_payload,
        "instructions": "Pega 'system' y luego 'user' en Copilot Chat, solicita salida JSON estricta y guarda la respuesta JSON en un archivo para --copilot-response-file.",
    }


def ai_review_copilot(prompt_payload: dict[str, Any], response_file: pathlib.Path | None) -> dict[str, Any]:
    if response_file is None:
        return {
            "status": "pending",
            "provider": "copilot",
            "reason": "Falta --copilot-response-file. Se genero payload para Copilot.",
            "expectedSchema": {
                "verdict": "sense|mostly_sense|partial_sense|no_sense",
                "confidence": "low|medium|high",
                "risks": ["..."],
                "recommendations": ["..."],
            },
        }

    if not response_file.exists():
        return {
            "status": "pending",
            "provider": "copilot",
            "reason": f"No existe archivo de respuesta: {response_file}",
        }

    try:
        payload = json.loads(response_file.read_text(encoding="utf-8"))
    except json.JSONDecodeError as exc:
        return {
            "status": "error",
            "provider": "copilot",
            "reason": f"Respuesta Copilot no es JSON valido: {exc}",
        }

    verdict = payload.get("verdict", "")
    confidence = payload.get("confidence", "")
    risks = payload.get("risks", [])
    recommendations = payload.get("recommendations", [])
    if verdict not in {"sense", "mostly_sense", "partial_sense", "no_sense"}:
        return {
            "status": "error",
            "provider": "copilot",
            "reason": "Respuesta Copilot sin verdict valido.",
            "detail": payload,
        }
    if confidence not in {"low", "medium", "high"}:
        return {
            "status": "error",
            "provider": "copilot",
            "reason": "Respuesta Copilot sin confidence valido.",
            "detail": payload,
        }
    if not isinstance(risks, list) or not isinstance(recommendations, list):
        return {
            "status": "error",
            "provider": "copilot",
            "reason": "Respuesta Copilot con schema invalido en risks/recommendations.",
            "detail": payload,
        }

    return {
        "status": "ok",
        "provider": "copilot",
        "result": payload,
        "promptSummary": {
            "schema": prompt_payload.get("user", {}).get("required_schema", {}),
            "task": prompt_payload.get("user", {}).get("task", ""),
        },
    }


def build_recommendations(deterministic: dict[str, Any]) -> list[str]:
    recs: list[str] = []
    codes = {f["code"] for f in deterministic.get("findings", [])}

    if "NO_NAVIGATION_DESTINATIONS" in codes:
        recs.append("Ampliar patrones de destino (XCTL/LINK/CALL/MAP/MAPSET) con ventana contextual por bloque de tecla.")
    if "INPUTS_WITHOUT_STATE_SEMANTICS" in codes:
        recs.append("Aumentar mapeo ProgramState -> BmsField con aliases simbolicos y evidencia de lineas por estado.")
    if "STATE_FIELDS_READ_ONLY" in codes:
        recs.append("Refinar clasificador de uso de campo para elevar VALIDATES_INPUT/WRITES_FIELD donde exista evidencia.")
    if "NO_STATE_TRANSITIONS" in codes:
        recs.append("Revisar parser de EVALUATE WC-ESTADO/EIBAID y pila anidada para reconstruir estado+tecla.")

    if not recs:
        recs.append("Mantener monitoreo continuo y ejecutar esta supervision en cada corrida de ingesta.")
    return recs


def persist_supervision_to_graph(report: dict[str, Any]) -> str:
    run_at = report.get("runAt", "")
    map_key = report.get("scope", {}).get("mapKey", "")
    program = report.get("scope", {}).get("program", "ALL")
    deterministic = report.get("deterministic", {})
    ai = report.get("ai", {})

    run_id = f"{map_key}::{program}::{run_at}"
    ai_status = str(ai.get("status", "skipped"))
    ai_verdict = ""
    ai_confidence = ""
    ai_result = ai.get("result")
    if isinstance(ai_result, dict):
        ai_verdict = str(ai_result.get("verdict", ""))
        ai_confidence = str(ai_result.get("confidence", ""))

    header_query = (
        f"MERGE (m:BmsMap {{name:{cypher_quote(map_key)}}})\n"
        f"MERGE (sr:AiSupervisionRun {{name:{cypher_quote(run_id)}}})\n"
        f"SET sr += {{runAt:{cypher_quote(run_at)}, mapKey:{cypher_quote(map_key)}, program:{cypher_quote(program)}, deterministicVerdict:{cypher_quote(str(deterministic.get('verdict', '')))}, deterministicConfidence:{cypher_quote(str(deterministic.get('confidence', '')))}, aiStatus:{cypher_quote(ai_status)}, aiVerdict:{cypher_quote(ai_verdict)}, aiConfidence:{cypher_quote(ai_confidence)}, reviewStatus:'pending_human_review', reviewSource:'ai-supervision'}}\n"
        "MERGE (m)-[:HAS_SUPERVISION_RUN]->(sr)\n"
        "RETURN 'ok' AS status"
    )
    run_cypher_write(header_query)

    if program and program != "ALL":
        program_query = (
            f"MATCH (sr:AiSupervisionRun {{name:{cypher_quote(run_id)}}})\n"
            f"MERGE (p:Program {{name:{cypher_quote(program)}}})\n"
            "MERGE (sr)-[:SUPERVISES_PROGRAM]->(p)\n"
            "RETURN 'ok' AS status"
        )
        run_cypher_write(program_query)

    findings = deterministic.get("findings", [])
    for finding in findings:
        code = str(finding.get("code", "UNKNOWN"))
        severity = str(finding.get("severity", "medium"))
        message = str(finding.get("message", ""))
        evidence = json.dumps(finding.get("evidence", {}), ensure_ascii=True)
        finding_name = f"{run_id}::{code}"
        finding_query = (
            f"MATCH (sr:AiSupervisionRun {{name:{cypher_quote(run_id)}}})\n"
            f"MERGE (f:AiSupervisionFinding {{name:{cypher_quote(finding_name)}}})\n"
            f"SET f += {{code:{cypher_quote(code)}, severity:{cypher_quote(severity)}, message:{cypher_quote(message)}, evidenceJson:{cypher_quote(evidence)}, reviewStatus:'pending_human_review', reviewSource:'ai-supervision'}}\n"
            "MERGE (sr)-[:HAS_FINDING]->(f)\n"
            "RETURN 'ok' AS status"
        )
        run_cypher_write(finding_query)

    recommendations = report.get("recommendations", [])
    for idx, rec in enumerate(recommendations, start=1):
        rec_text = str(rec)
        rec_name = f"{run_id}::REC::{idx:03d}"
        rec_query = (
            f"MATCH (sr:AiSupervisionRun {{name:{cypher_quote(run_id)}}})\n"
            f"MERGE (r:AiSupervisionRecommendation {{name:{cypher_quote(rec_name)}}})\n"
            f"SET r += {{position:{idx}, text:{cypher_quote(rec_text)}, reviewStatus:'pending_human_review', reviewSource:'ai-supervision'}}\n"
            "MERGE (sr)-[:HAS_RECOMMENDATION]->(r)\n"
            "RETURN 'ok' AS status"
        )
        run_cypher_write(rec_query)

    return run_id


def main() -> None:
    parser = argparse.ArgumentParser(description="Supervision IA + reglas para validar coherencia de grafo BMS")
    parser.add_argument("--map-key", required=True, help="Composite map key, ej. ZMG0103::ZMG0103")
    parser.add_argument("--program", help="Programa opcional para acotar la supervision")
    parser.add_argument("--use-copilot", action="store_true", help="Activa capa IA usando respuesta generada por Copilot")
    parser.add_argument("--copilot-response-file", help="Archivo JSON con respuesta de Copilot")
    parser.add_argument("--no-persist-graph", action="store_true", help="No persiste el resultado de supervision en Neo4j")
    args = parser.parse_args()

    context = collect_context(args.map_key, args.program)
    deterministic = deterministic_review(context)

    copilot_prompt = build_copilot_prompt(context, deterministic)
    ai_result: dict[str, Any] = {"status": "skipped", "reason": "--use-copilot no habilitado", "provider": "copilot"}
    if args.use_copilot:
        response_path = pathlib.Path(args.copilot_response_file) if args.copilot_response_file else None
        ai_result = ai_review_copilot(copilot_prompt, response_path)

    report = {
        "kind": "bms-graph-ai-supervision",
        "runAt": datetime.now(timezone.utc).isoformat(),
        "scope": {"mapKey": args.map_key, "program": args.program or "ALL"},
        "deterministic": deterministic,
        "ai": ai_result,
        "copilotPrompt": copilot_prompt,
        "recommendations": build_recommendations(deterministic),
        "context": context,
    }

    REPORT_DIR.mkdir(parents=True, exist_ok=True)
    safe_map = args.map_key.replace("::", "__")
    safe_program = (args.program or "ALL").replace("/", "_")
    report_path = REPORT_DIR / f"ai-supervision-{safe_map}-{safe_program}.json"
    report_path.write_text(json.dumps(report, indent=2, ensure_ascii=True), encoding="utf-8")

    prompt_path = REPORT_DIR / f"ai-supervision-prompt-{safe_map}-{safe_program}.json"
    prompt_path.write_text(json.dumps(copilot_prompt, indent=2, ensure_ascii=True), encoding="utf-8")

    run_id = ""
    if not args.no_persist_graph:
        run_id = persist_supervision_to_graph(report)

    print(f"report={report_path}")
    print(f"copilot_prompt={prompt_path}")
    if run_id:
        print(f"graph_run_id={run_id}")
    print(f"verdict={deterministic['verdict']}")
    print(f"confidence={deterministic['confidence']}")
    print(f"findings={len(deterministic['findings'])}")


if __name__ == "__main__":
    main()
