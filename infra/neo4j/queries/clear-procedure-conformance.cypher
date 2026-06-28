// ============================================================================
// CLEAR: revierte la anotacion de conformidad de la familia Procedure
// ============================================================================
// Quita las propiedades conf* y las etiquetas marcadoras :ConfDeficient /
// :ConfWarn escritas por annotate-procedure-conformance.cypher.
//
// Param opcional: $procedureFilter (lista; [] = todos).
// ============================================================================

:param procedureFilter => [];

// 1) Limpia propiedades + etiquetas en la familia Procedure
//    (el Procedure se filtra por name; los hijos por procedureName, porque un
//     ProcVariable tiene name = nombre de la variable, no del procedimiento).
MATCH (n)
WHERE ((n:Procedure AND (size($procedureFilter) = 0 OR n.name IN $procedureFilter))
    OR ((n:ProcStep OR n:ProcVariable OR n:ProcDD)
        AND (size($procedureFilter) = 0 OR n.procedureName IN $procedureFilter)))
REMOVE n.confStatus, n.confSeverityTop, n.confIssues, n.confCheckedAt,
       n.confRollupStatus, n.confRef,
       n:ConfDeficient, n:ConfWarn;

// 2) Salvaguarda: elimina cualquier etiqueta marcadora residual fuera del filtro
MATCH (n)
WHERE (n:ConfDeficient OR n:ConfWarn)
  AND size($procedureFilter) = 0
REMOVE n:ConfDeficient, n:ConfWarn;
