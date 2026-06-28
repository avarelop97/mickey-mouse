// Ingest BmsField nodes for ZMHA181 from mps/ZMHA181.bms
// Created: 2026-06-24

MATCH (m:BmsMap {name:'ZMHA181'})

// Create MCIA field
MERGE (f2:BmsField {name: 'MCIA', mapName: 'ZMHA181'})
SET f2 += {position: '01,17', length: 50, attribute: 'PROT,BRT,ASKIP', type: 'protected', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [2400], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f2)

// Create MFECHA field
MERGE (f3:BmsField {name: 'MFECHA', mapName: 'ZMHA181'})
SET f3 += {position: '01,70', length: 10, attribute: 'PROT,ASKIP', type: 'protected', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [2600], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f3)

// Create MTERM field
MERGE (f4:BmsField {name: 'MTERM', mapName: 'ZMHA181'})
SET f4 += {position: '02,01', length: 4, attribute: 'PROT,ASKIP', type: 'protected', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [2800], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f4)

// Create MUSER field
MERGE (f5:BmsField {name: 'MUSER', mapName: 'ZMHA181'})
SET f5 += {position: '02,06', length: 8, attribute: 'PROT,ASKIP', type: 'protected', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [3000], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f5)

// Create MHORA field
MERGE (f6:BmsField {name: 'MHORA', mapName: 'ZMHA181'})
SET f6 += {position: '02,72', length: 8, attribute: 'PROT,ASKIP', type: 'protected', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [3500], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f6)

// Create ETIPREI field
MERGE (f7:BmsField {name: 'ETIPREI', mapName: 'ZMHA181'})
SET f7 += {position: '04,18', length: 32, attribute: 'PROT,ASKIP', type: 'protected', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [4001], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f7)

// Create COLPREP field
MERGE (f8:BmsField {name: 'COLPREP', mapName: 'ZMHA181'})
SET f8 += {position: '04,57', length: 1, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [4003], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f8)

// Create ETIPREF field
MERGE (f9:BmsField {name: 'ETIPREF', mapName: 'ZMHA181'})
SET f9 += {position: '04,59', length: 9, attribute: 'PROT,ASKIP', type: 'protected', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [4005], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f9)

// Create ICUENTA1 field
MERGE (f10:BmsField {name: 'ICUENTA1', mapName: 'ZMHA181'})
SET f10 += {position: '05,51', length: 7, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [4300], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f10)

// Create NOMBRE1 field
MERGE (f11:BmsField {name: 'NOMBRE1', mapName: 'ZMHA181'})
SET f11 += {position: '05,61', length: 18, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [4600], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f11)

// Create ICUENTA2 field
MERGE (f12:BmsField {name: 'ICUENTA2', mapName: 'ZMHA181'})
SET f12 += {position: '06,51', length: 7, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [5200], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f12)

// Create NOMBRE2 field
MERGE (f13:BmsField {name: 'NOMBRE2', mapName: 'ZMHA181'})
SET f13 += {position: '06,61', length: 18, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [5500], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f13)

// Create ITVBMV field
MERGE (f14:BmsField {name: 'ITVBMV', mapName: 'ZMHA181'})
SET f14 += {position: '07,51', length: 4, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [6100], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f14)

// Create IEMISORA field
MERGE (f15:BmsField {name: 'IEMISORA', mapName: 'ZMHA181'})
SET f15 += {position: '08,51', length: 7, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [6800], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f15)

// Create ISERIE field
MERGE (f16:BmsField {name: 'ISERIE', mapName: 'ZMHA181'})
SET f16 += {position: '09,50', length: 8, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [7400], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f16)

// Create ICUPON field
MERGE (f17:BmsField {name: 'ICUPON', mapName: 'ZMHA181'})
SET f17 += {position: '10,55', length: 3, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [8000], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f17)

// Create MA18DIA field
MERGE (f18:BmsField {name: 'MA18DIA', mapName: 'ZMHA181'})
SET f18 += {position: '12,48', length: 2, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [8600], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f18)

// Create MA18MES field
MERGE (f19:BmsField {name: 'MA18MES', mapName: 'ZMHA181'})
SET f19 += {position: '12,51', length: 2, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [8700], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f19)

// Create MA18ANO field
MERGE (f20:BmsField {name: 'MA18ANO', mapName: 'ZMHA181'})
SET f20 += {position: '12,54', length: 4, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [8800], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f20)

// Create CTITULOS field
MERGE (f21:BmsField {name: 'CTITULOS', mapName: 'ZMHA181'})
SET f21 += {position: '16,47', length: 11, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [10100], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f21)

// Create MPRECIOI field
MERGE (f22:BmsField {name: 'MPRECIOI', mapName: 'ZMHA181'})
SET f22 += {position: '18,42', length: 16, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [10700], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f22)

// Create MPREADQ field
MERGE (f23:BmsField {name: 'MPREADQ', mapName: 'ZMHA181'})
SET f23 += {position: '19,42', length: 16, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [11300], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f23)

// Create MA18CCON field
MERGE (f24:BmsField {name: 'MA18CCON', mapName: 'ZMHA181'})
SET f24 += {position: '20,41', length: 17, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [11900], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f24)

// Create MCOM field
MERGE (f25:BmsField {name: 'MCOM', mapName: 'ZMHA181'})
SET f25 += {position: '22,12', length: 10, attribute: 'FSET', type: 'input', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [12600], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f25)

// Create MSG1 field
MERGE (f26:BmsField {name: 'MSG1', mapName: 'ZMHA181'})
SET f26 += {position: '22,25', length: 35, attribute: 'BRT,ASKIP', type: 'protected', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [13400], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f26)

// Create MSG2 field
MERGE (f27:BmsField {name: 'MSG2', mapName: 'ZMHA181'})
SET f27 += {position: '23,07', length: 73, attribute: 'BRT,ASKIP', type: 'protected', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [13800], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:HAS_FIELD]->(f27)

// Return summary
RETURN 'BmsField nodes created' as message
;

// Create UiLiteral nodes
MATCH (m:BmsMap {name:'ZMHA181'})

// Literal 1: M1
MERGE (l1:UiLiteral {name: 'M1_LITERAL', mapName: 'ZMHA181'})
SET l1 += {position: '01,01', text: 'M1', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [2000], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:DISPLAYS_LITERAL]->(l1)

// Literal 2: V A L O R E S
MERGE (l2:UiLiteral {name: 'VALORES_LITERAL', mapName: 'ZMHA181'})
SET l2 += {position: '02,34', text: 'V A L O R E S', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [3300], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:DISPLAYS_LITERAL]->(l2)

// Literal 3: TRASPASOS INTERNOS
MERGE (l3:UiLiteral {name: 'TRASPASOS_INTERNOS_LITERAL', mapName: 'ZMHA181'})
SET l3 += {position: '03,31', text: 'TRASPASOS  INTERNOS', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [3700], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:DISPLAYS_LITERAL]->(l3)

// Literal 4: DEL CONTRATO
MERGE (l4:UiLiteral {name: 'DEL_CONTRATO_LITERAL', mapName: 'ZMHA181'})
SET l4 += {position: '05,18', text: 'DEL CONTRATO      :            ¢', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [4100], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:DISPLAYS_LITERAL]->(l4)

// Literal 5: AL CONTRATO
MERGE (l5:UiLiteral {name: 'AL_CONTRATO_LITERAL', mapName: 'ZMHA181'})
SET l5 += {position: '06,18', text: 'AL CONTRATO       :            ¢', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [5000], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:DISPLAYS_LITERAL]->(l5)

// Literal 6: TVBMV
MERGE (l6:UiLiteral {name: 'TVBMV_LITERAL', mapName: 'ZMHA181'})
SET l6 += {position: '07,18', text: 'TVBMV             :            ¢', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [5900], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:DISPLAYS_LITERAL]->(l6)

// Literal 7: EMISORA
MERGE (l7:UiLiteral {name: 'EMISORA_LITERAL', mapName: 'ZMHA181'})
SET l7 += {position: '08,18', text: 'EMISORA           :            ¢', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [6600], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:DISPLAYS_LITERAL]->(l7)

// Literal 8: SERIE
MERGE (l8:UiLiteral {name: 'SERIE_LITERAL', mapName: 'ZMHA181'})
SET l8 += {position: '09,18', text: 'SERIE             :           ¢', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [7200], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:DISPLAYS_LITERAL]->(l8)

// Literal 9: CUPON
MERGE (l9:UiLiteral {name: 'CUPON_LITERAL', mapName: 'ZMHA181'})
SET l9 += {position: '10,18', text: 'CUPON             :                ¢', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [7800], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:DISPLAYS_LITERAL]->(l9)

// Literal 10: FECHA DE OPERACION
MERGE (l10:UiLiteral {name: 'FECHA_OPERACION_LITERAL', mapName: 'ZMHA181'})
SET l10 += {position: '12,18', text: 'FECHA DE OPERACION:         ¢', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [8400], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:DISPLAYS_LITERAL]->(l10)

// Literal 11: NUMERO DE TITULOS
MERGE (l11:UiLiteral {name: 'NUMERO_TITULOS_LITERAL', mapName: 'ZMHA181'})
SET l11 += {position: '16,18', text: 'NUMERO DE TITULOS :        ¢', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [9900], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:DISPLAYS_LITERAL]->(l11)

// Literal 12: PRECIO DE MERCADO
MERGE (l12:UiLiteral {name: 'PRECIO_MERCADO_LITERAL', mapName: 'ZMHA181'})
SET l12 += {position: '18,18', text: 'PRECIO DE MERCADO :   ¢', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [10500], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:DISPLAYS_LITERAL]->(l12)

// Literal 13: COSTO FISCAL
MERGE (l13:UiLiteral {name: 'COSTO_FISCAL_LITERAL', mapName: 'ZMHA181'})
SET l13 += {position: '19,18', text: 'COSTO FISCAL      :   ¢', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [11100], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:DISPLAYS_LITERAL]->(l13)

// Literal 14: CIFRA DE CONTROL
MERGE (l14:UiLiteral {name: 'CIFRA_CONTROL_LITERAL', mapName: 'ZMHA181'})
SET l14 += {position: '20,18', text: 'CIFRA DE CONTROL  :  ¢', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [11700], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:DISPLAYS_LITERAL]->(l14)

// Literal 15: COMANDO
MERGE (l15:UiLiteral {name: 'COMANDO_LITERAL', mapName: 'ZMHA181'})
SET l15 += {position: '22,01', text: 'COMANDO: ¢', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [12300], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:DISPLAYS_LITERAL]->(l15)

// Literal 16: HELP TEXT (PF keys)
MERGE (l16:UiLiteral {name: 'HELP_TEXT_LITERAL', mapName: 'ZMHA181'})
SET l16 += {position: '24,01', text: 'PF2=TRANSF PF3=MENU PF4=CONF PF5=REIN ENTER=EJECUTA', sourceFile: 'mps/ZMHA181.bms', evidenceFile: 'mps/ZMHA181.bms', evidenceLines: [14000], ingestion: 'manual-bms-analysis-2026-06-24', reviewStatus: 'pending_human_review'}
MERGE (m)-[:DISPLAYS_LITERAL]->(l16)

RETURN 'UiLiteral nodes created' as message
;
