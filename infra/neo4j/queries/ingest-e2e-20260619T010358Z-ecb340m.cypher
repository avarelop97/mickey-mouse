// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T010358Z-ecb340m
// ============================================================================

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [582], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [589], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [998], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [174], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [640], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [599], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [122], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [178], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [928, 929, 930, 931, 932, 933, 934, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CUENTA'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780], ingestion: 'auto', layer: 'data-access', name: 'CUENTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDCUENTA'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 908, 909, 910], ingestion: 'auto', layer: 'data-access', name: 'EDCUENTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [707, 708, 709, 710, 711, 712], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '005-0100-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [713], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [645], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [644], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-LEE-PARAMP04', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [717], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-LEE-PARAMP04', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB340M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-LEE-PARAMP04-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [726], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-LEE-PARAMP04-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB340M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-0100-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [787], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-0100-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-9900-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [808], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-9900-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-OBTEN-EVENTO-CARGA', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [786], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-OBTEN-EVENTO-CARGA', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB340M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [812], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [890], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-INS-SELECT', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [730], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-INS-SELECT', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-INSERT-EDCUENTA', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [811], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-INSERT-EDCUENTA', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Persiste actualizaciones de negocio en ECB340M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-0100-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [897], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-0100-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-9900-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [921], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-9900-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-DEL-EDCUENTA', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [896], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-DEL-EDCUENTA', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '635-0100-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [927], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '635-0100-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '635-9900-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [947], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '635-9900-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '635-ACT-CTLPROC', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [926], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '635-ACT-CTLPROC', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-0100-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [953], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-0100-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-9900-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [991], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-9900-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-INS-CTLPROC', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [952], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-INS-CTLPROC', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1001], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0200-SIGUE', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1006], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0200-SIGUE', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1009], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1000], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Gestiona contingencias en ECB340M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIA', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1016], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIA', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1028], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1015], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-INICIO', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1044], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-INICIO', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Inicializa el flujo operativo de ECB340M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1054], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Cierra la ejecucion de ECB340M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-MUEVE-FECHAS', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1043], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-MUEVE-FECHAS', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [25], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB340M', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB340M', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [32], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [29], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [31], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [28], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [26], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'})
SET n += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [35], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB340M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', summary: 'Orquesta una fase funcional de ECB340M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB340M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB340M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m', sourceFile: 'src/ECB340M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '005-0100-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [713], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '005-0100-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [645], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '005-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [644], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '010-LEE-PARAMP04', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [717], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '010-LEE-PARAMP04-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [726], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '515-0100-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [787], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '515-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [808], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '515-OBTEN-EVENTO-CARGA', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [786], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [812], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '600-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [890], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '600-INS-SELECT', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [730], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '600-INSERT-EDCUENTA', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [811], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '610-0100-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [897], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '610-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [921], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '610-DEL-EDCUENTA', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [896], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '635-0100-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [927], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '635-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [947], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '635-ACT-CTLPROC', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [926], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '640-0100-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [953], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '640-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [991], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '640-INS-CTLPROC', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [952], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1001], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '980-0200-SIGUE', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1006], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1009], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1000], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '990-0100-INICIA', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1016], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1028], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1015], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '999-0100-INICIO', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1044], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '999-9900-FIN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1054], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: '999-MUEVE-FECHAS', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [1043], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'ECB340M', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'IBM-4381', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: '515-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [805], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [886], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [905, 915], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: '635-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [942], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [988], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: '640-9900-FIN', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [582], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [589], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [640], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [582], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [589], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [640], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [658, 659, 660, 661, 662, 663, 664, 665, 678, 679, 680, 681, 682, 683, 684, 685, 686, 788, 789, 790, 791, 792, 793, 794, 795], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:DBTable {name: 'CUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:DBTable {name: 'EDCUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [908, 909, 910], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [690, 691, 692, 693, 694, 695, 696, 718, 719, 720, 721, 722, 723, 724], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [928, 929, 930, 931, 932, 933, 934, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:DBTable {name: 'EDCUENTA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 908, 909, 910], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Program {name: 'ECB340M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [707, 708, 709, 710, 711, 712], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: '515-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [805], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [886], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [905, 915], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: '635-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [942], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [988], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: '640-9900-FIN', programName: 'ECB340M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [582], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [589], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [640], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB340M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB340M.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010358Z-ecb340m'};

