// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260625T223609Z-zm4cth00
// ============================================================================

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [46], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZCAUSCAN'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [60], ingestion: 'auto', layer: 'dependency', name: 'ZCAUSCAN', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZCUENTA'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [53], ingestion: 'auto', layer: 'dependency', name: 'ZCUENTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGTCTH'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [67], ingestion: 'auto', layer: 'dependency', name: 'ZMGTCTH', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CAUSCAN'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [620, 621, 622, 623, 624, 625, 626, 627, 628, 629], ingestion: 'auto', layer: 'data-access', name: 'CAUSCAN', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CUENTA'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557], ingestion: 'auto', layer: 'data-access', name: 'CUENTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDTCTH'})
SET n += {dclHostStructure: 'DCLZMDTCTH', dclMember: 'ZMGTCTH', dclPath: 'dcl/ZMGTCTH.dcl', declaredColumnCount: 91, declaredColumnDefinitions: ['ICUENTA DECIMAL(7, 0) NOT NULL', 'INDICE DECIMAL(3, 0) NOT NULL', 'SVIGEN CHAR(1) NOT NULL', 'ICTAGLO DECIMAL(7, 0) NOT NULL', 'ITIPOCTA CHAR(1) NOT NULL', 'IPERJUR CHAR(2) NOT NULL', 'IRFC CHAR(13) NOT NULL', 'ITASAFIS CHAR(1) NOT NULL', 'INACIO CHAR(2) NOT NULL', 'IPROM DECIMAL(4, 0) NOT NULL', 'ICCOSTO DECIMAL(5, 0) NOT NULL', 'FALTA DATE NOT NULL', 'FALTAANT DATE NOT NULL', 'FBAJA DATE NOT NULL', 'IENVDOC DECIMAL(2, 0) NOT NULL', 'NPROF CHAR(5) NOT NULL', 'NABREV CHAR(25) NOT NULL', 'NOMBRE CHAR(20) NOT NULL', 'NAPELL1 CHAR(40) NOT NULL', 'NAPELL2 CHAR(20) NOT NULL', 'DCALLE CHAR(25) NOT NULL', 'DCOLON CHAR(25) NOT NULL', 'DPOBLA CHAR(30) NOT NULL', 'IPOS DECIMAL(5, 0) NOT NULL', 'DESTADO CHAR(25) NOT NULL', 'DCALLEP CHAR(25) NOT NULL', 'DCOLONP CHAR(25) NOT NULL', 'DPOBLAP CHAR(30) NOT NULL', 'IPOSP DECIMAL(5, 0) NOT NULL', 'DESTADOP CHAR(25) NOT NULL', 'ITEL1 DECIMAL(7, 0) NOT NULL', 'IEXT1 DECIMAL(4, 0) NOT NULL', 'ITEL2 DECIMAL(7, 0) NOT NULL', 'IEXT2 DECIMAL(4, 0) NOT NULL', 'ICAPTA CHAR(1) NOT NULL', 'IFIRMA CHAR(1) NOT NULL', 'IRUTA CHAR(3) NOT NULL', 'SCOMPNAC CHAR(1) NOT NULL', 'SDOCUM CHAR(1) NOT NULL', 'SLIQUID CHAR(1) NOT NULL', 'SOPER12 CHAR(1) NOT NULL', 'PCOMCTA DECIMAL(5, 4) NOT NULL', 'MABOANO DECIMAL(15, 2) NOT NULL', 'MABOMES DECIMAL(15, 2) NOT NULL', 'MCGOANO DECIMAL(15, 2) NOT NULL', 'MCGOMES DECIMAL(15, 2) NOT NULL', 'MCARACT DECIMAL(15, 2) NOT NULL', 'MCARIMES DECIMAL(15, 2) NOT NULL', 'APREFMAR DECIMAL(9, 5) NOT NULL', 'FDEBEDES DATE NOT NULL', 'XSEG CHAR(5) NOT NULL', 'IEMICHE CHAR(1) NOT NULL', 'IESTRATO CHAR(3) NOT NULL', 'ISUCCASA CHAR(3) NOT NULL', 'IZONECO CHAR(3) NOT NULL', 'IESTMIG CHAR(1) NOT NULL', 'STARFIR CHAR(1) NOT NULL', 'SCONFIR CHAR(1) NOT NULL', 'SCANDADO CHAR(1) NOT NULL', 'ISUBCLAS CHAR(3) NOT NULL', 'PCOMCTA1 DECIMAL(5, 4) NOT NULL', 'PCOMCTA2 DECIMAL(5, 4) NOT NULL', 'PCOMCTA3 DECIMAL(5, 4) NOT NULL', 'PCOMCTA4 DECIMAL(5, 4) NOT NULL', 'SIMPRESO CHAR(1) NOT NULL', 'SACTCON CHAR(1) NOT NULL', 'SPODERES CHAR(1) NOT NULL', 'ICANDAD1 DECIMAL(1, 0) NOT NULL', 'ICANDAD2 DECIMAL(1, 0) NOT NULL', 'ICLACTO DECIMAL(1, 0) NOT NULL', 'INSTENV DECIMAL(1, 0) NOT NULL', 'SREPASAM CHAR(1) NOT NULL', 'IAPLIDER DECIMAL(1, 0) NOT NULL', 'IESTCON CHAR(3) NOT NULL', 'STIPOIN CHAR(1) NOT NULL', 'CIMPRESO DECIMAL(2, 0) NOT NULL', 'ISERSP CHAR(1) NOT NULL', 'ICODAREA DECIMAL(6, 0) NOT NULL', 'MLINCRB DECIMAL(15, 2) NOT NULL', 'CEXINDEV CHAR(9) NOT NULL', 'PCUSTOD DECIMAL(5, 4) NOT NULL', 'IREPRCAS DECIMAL(7, 0) NOT NULL', 'IEMPR CHAR(3) NOT NULL', 'ECANDAD1 CHAR(50) NOT NULL', 'ECANDAD2 CHAR(50) NOT NULL', 'FULTCAMB DATE NOT NULL', 'FULTMOV DATE NOT NULL', 'IUSUARIO CHAR(8) NOT NULL', 'IPROGRAM CHAR(8) NOT NULL', 'ITERM CHAR(8) NOT NULL', 'FSIST TIMESTAMP NOT NULL'], declaredColumns: ['ICUENTA', 'INDICE', 'SVIGEN', 'ICTAGLO', 'ITIPOCTA', 'IPERJUR', 'IRFC', 'ITASAFIS', 'INACIO', 'IPROM', 'ICCOSTO', 'FALTA', 'FALTAANT', 'FBAJA', 'IENVDOC', 'NPROF', 'NABREV', 'NOMBRE', 'NAPELL1', 'NAPELL2', 'DCALLE', 'DCOLON', 'DPOBLA', 'IPOS', 'DESTADO', 'DCALLEP', 'DCOLONP', 'DPOBLAP', 'IPOSP', 'DESTADOP', 'ITEL1', 'IEXT1', 'ITEL2', 'IEXT2', 'ICAPTA', 'IFIRMA', 'IRUTA', 'SCOMPNAC', 'SDOCUM', 'SLIQUID', 'SOPER12', 'PCOMCTA', 'MABOANO', 'MABOMES', 'MCGOANO', 'MCGOMES', 'MCARACT', 'MCARIMES', 'APREFMAR', 'FDEBEDES', 'XSEG', 'IEMICHE', 'IESTRATO', 'ISUCCASA', 'IZONECO', 'IESTMIG', 'STARFIR', 'SCONFIR', 'SCANDADO', 'ISUBCLAS', 'PCOMCTA1', 'PCOMCTA2', 'PCOMCTA3', 'PCOMCTA4', 'SIMPRESO', 'SACTCON', 'SPODERES', 'ICANDAD1', 'ICANDAD2', 'ICLACTO', 'INSTENV', 'SREPASAM', 'IAPLIDER', 'IESTCON', 'STIPOIN', 'CIMPRESO', 'ISERSP', 'ICODAREA', 'MLINCRB', 'CEXINDEV', 'PCUSTOD', 'IREPRCAS', 'IEMPR', 'ECANDAD1', 'ECANDAD2', 'FULTCAMB', 'FULTMOV', 'IUSUARIO', 'IPROGRAM', 'ITERM', 'FSIST'], evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976], ingestion: 'auto', layer: 'data-access', name: 'ZMDTCTH', nodeType: 'physical-table', qualifiedName: 'ZMDTCTH', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', schemaName: null, sourceFile: 'src/ZM4CTH00.cbl', viewTag: 'data-access'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM4CTH00'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ZM4CTH00..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM4CTH00', nodeType: 'business-function', objective: 'Capacidad funcional principal de ZM4CTH00.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', viewTag: 'functional'};

MERGE (n:Paragraph {name: '000000-CONTROL', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [567], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000000-CONTROL', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Orquesta una fase funcional de ZM4CTH00, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100000-INICIO', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [577], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100000-INICIO', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Inicializa el flujo operativo de ZM4CTH00, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200000-PROCESO', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [606], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200000-PROCESO', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Orquesta una fase funcional de ZM4CTH00, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200050-CONSULTA-CAUSCAN', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [615], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200050-CONSULTA-CAUSCAN', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM4CTH00 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200100-CONSULTA-HISTORICO', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [651], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200100-CONSULTA-HISTORICO', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM4CTH00 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200150-INFORMA-ZMDTCTH', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [693], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200150-INFORMA-ZMDTCTH', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Orquesta una fase funcional de ZM4CTH00, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200200-INSERT-ZMDTCTH', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [790], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200200-INSERT-ZMDTCTH', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Persiste actualizaciones de negocio en ZM4CTH00, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200250-MAX-INDICE', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1003], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200250-MAX-INDICE', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Orquesta una fase funcional de ZM4CTH00, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300000-FINAL', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1027], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300000-FINAL', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Cierra la ejecucion de ZM4CTH00, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300000-STOP-RUN', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1035], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300000-STOP-RUN', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Orquesta una fase funcional de ZM4CTH00, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300300-IMPRIMIR-CIFRAS-CONTROL', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1041], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300300-IMPRIMIR-CIFRAS-CONTROL', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Orquesta una fase funcional de ZM4CTH00, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '900100-OPEN-CURCTA', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1066], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '900100-OPEN-CURCTA', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Orquesta una fase funcional de ZM4CTH00, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '900200-LEER-CURCTA', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1093], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '900200-LEER-CURCTA', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM4CTH00 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '900300-CLOSE-CURCTA', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1208], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '900300-CLOSE-CURCTA', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Orquesta una fase funcional de ZM4CTH00, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '900700-OBTEN-HORA', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1231], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '900700-OBTEN-HORA', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM4CTH00 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999994-ABORTAR-RUT-DB2', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1240], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999994-ABORTAR-RUT-DB2', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Gestiona contingencias en ZM4CTH00, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999997-DESPLIEGA-ABORTO', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1260], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999997-DESPLIEGA-ABORTO', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Gestiona contingencias en ZM4CTH00, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [27], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Orquesta una fase funcional de ZM4CTH00, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4CTH00'})
SET n += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [39], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM4CTH00', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', summary: 'Orquesta una fase funcional de ZM4CTH00, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ZM4CTH00'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ZM4CTH00..', ingestion: 'auto', layer: 'program', name: 'ZM4CTH00', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', system: 'PROGRAM-ID. ZM4CTH00.', viewTag: 'cobol-program'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM4CTH00', name: 'ZM4CTH00_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM4CTH00 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM4CTH00', ingestion: 'auto', layer: 'functional', name: 'ZM4CTH00_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00', sourceFile: 'src/ZM4CTH00.cbl', viewTag: 'functional'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '000000-CONTROL', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [567], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '100000-INICIO', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [577], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '200000-PROCESO', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [606], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '200050-CONSULTA-CAUSCAN', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [615], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '200100-CONSULTA-HISTORICO', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [651], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '200150-INFORMA-ZMDTCTH', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [693], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '200200-INSERT-ZMDTCTH', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [790], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '200250-MAX-INDICE', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1003], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '300000-FINAL', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1027], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '300000-STOP-RUN', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1035], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '300300-IMPRIMIR-CIFRAS-CONTROL', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1041], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '900100-OPEN-CURCTA', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1066], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '900200-LEER-CURCTA', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1093], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '900300-CLOSE-CURCTA', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1208], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '900700-OBTEN-HORA', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '999994-ABORTAR-RUT-DB2', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: '999997-DESPLIEGA-ABORTO', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4CTH00'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM4CTH00'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM4CTH00', name: 'ZM4CTH00_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4CTH00'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4CTH00'}), (b:Copybook {name: 'ZCAUSCAN'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4CTH00'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [53], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4CTH00'}), (b:Copybook {name: 'ZMGTCTH'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Functionality {name: 'FUNCTIONALITY_ZM4CTH00'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Copybook {name: 'ZCAUSCAN'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [53], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:Copybook {name: 'ZMGTCTH'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:DBTable {name: 'CAUSCAN'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [620, 621, 622, 623, 624, 625, 626, 627, 628, 629], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:DBTable {name: 'CUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:DBTable {name: 'ZMDTCTH'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [658, 659, 660, 661, 662, 663, 664, 665, 666, 1005, 1006, 1007, 1008, 1009, 1010, 1011], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM4CTH00', name: 'ZM4CTH00_PROCESSING'}), (b:Paragraph {name: '999997-DESPLIEGA-ABORTO', programName: 'ZM4CTH00'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [1260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Program {name: 'ZM4CTH00'}), (b:DBTable {name: 'ZMDTCTH'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4CTH00'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4CTH00'}), (b:Copybook {name: 'ZCAUSCAN'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4CTH00'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [53], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM4CTH00'}), (b:Copybook {name: 'ZMGTCTH'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM4CTH00.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260625T223609Z-zm4cth00'};

