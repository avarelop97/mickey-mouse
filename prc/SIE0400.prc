//SIE0400 PROC                                                          00000100
//**********************************************************************00000200
//*                                                                    *00000300
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00000400
//*                                                                    *00000500
//* PROCESO        :  PMSSIE04                                         *00000600
//*                   MOVIENTOS SAVE SOCIEDADES DE INVERSION EVENTUAL  *00000700
//*                                                                    *00000800
//* OBJETIVO       :  REALIZAR LOD CARGOS DE CLIENTES DE AMERICAN      *00000900
//*                   EXPRESS POR SOCIEDADES DE INVERSION              *00001000
//*                                                                    *00001100
//* CORRE                                                              *00001200
//* ANTES DE       :  NINGUNO                                          *00001300
//*                                                                    *00001400
//* DESPUES DE     :  NINGUNO                                          *00001500
//*                                                                    *00001600
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *00001700
//* FECHA          :  AGOSOTO DE 1992                                  *00001800
//*                                                                    *00001900
//* OBSERVACION    :  ESTE PROCESO DE EJECUTA DE MANERA EVENTUAL,      *00002000
//*                   CUANDO ERIKA LOZANO ENVIA EL CARTUCHO DE AMEX    *00002100
//*                                                               OSCT *00002200
//**********************************************************************00002300
//**********************************************************************00002400
//*                           -- IDCAMS --                             *00002500
//* OBJETIVO :   BORRA ARCHIVOS GENERADOS EN EL PROCESO                *00002600
//*                                                                    *00002700
//* PASO  REINICIABLE POR RESTART                                      *00002800
//**********************************************************************00002900
//SIE0410 EXEC PGM=IDCAMS,TIME=100                                      00003000
//SYSPRINT DD SYSOUT=*                                                  00003100
//SYSIN    DD DSN=SIVA.CARDS(SIE0410),DISP=SHR                          00003200
//*                                                                     00003300
//**********************************************************************00003400
//*                           -- MAILOPER --                           *00003500
//* OBJETIVO :   MENSAJE AL OPERADOR PARA QUE MONTE EL CARTUCHO        *00003600
//*                                                                    *00003700
//* PASO  REINICIABLE POR RESTART                                      *00003800
//**********************************************************************00003900
//SIE0409 EXEC PGM=MAILOPER,TIME=1440,                                  00004000
//   PARM=('/OPERADOR, FAVOR DE MONTAR EL CARTUCHO DE',                 00004100
//         ' MOVTOS DE AMEX A PROCESAR EN LA TAPXX1.  ',                00004200
//         ' CONTESTE  SI ')                                            00004300
//*                                                                     00004400
//**********************************************************************00004500
//*                           -- IEBGENER --                           *00004600
//* OBJETIVO : COPIA DE CARTUCHO A DISCO DEL ARCHIVO DE MOVTOS AMEXCO  *00004700
//*                                                                    *00004800
//* PASO  REINICIABLE POR RESTART                                      *00004900
//**********************************************************************00005000
//SIE0408  EXEC PGM=ICEGENER,COND=(4,LT)                                00005100
//SYSPRINT  DD SYSOUT=*                                                 00005200
//SYSUT1    DD DSN=MOVTOS.PROBURSA,DISP=OLD,                            00005300
//             UNIT=T3490,VOL=SER=TAPXX2,                               00005400
//             DCB=(LRECL=80,RECFM=F,BLKSIZE=80),                       00005500
//             LABEL=(2,BLP)                                            00005600
//SYSUT2    DD DSN=SIVA.SAVEMOV(+1),                                    00005700
//             DISP=(NEW,CATLG,DELETE),                                 00005800
//             DCB=(MODEL,DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=800),      00005900
//             UNIT=SYSDA,                                              00006000
//             SPACE=(TRK,(5,5),RLSE)                                   00006100
//SYSIN     DD DUMMY                                                    00006200
//*                                                                     00006300
//**********************************************************************00006400
//*                           -- VIB398O  --                           *00006500
//* OBJETIVO :                                                         *00006600
//* SEPARA EL ARCHIVO DE MOVT. EN SUS 3 PARTES PARA SORTEAR EL DETALLE *00006700
//*                                                                    *00006800
//* PASO  REINICIABLE POR RESTART                                      *00006900
//**********************************************************************00007000
//SIE0407  EXEC PGM=VIB398O,DYNAMNBR=20,REGION=4096K,COND=(4,LT)        00007100
//*                                                                     00007200
//VIB398A1 DD DSN=SIVA.SAVEMOV(+1),DISP=SHR                             00007300
//VIB398A2 DD DSN=SIVA.HEADER(+1),                                      00007400
//            DISP=(NEW,CATLG,DELETE),UNIT=SYSDA,                       00007500
//            DCB=(MODEL,DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=6320),      00007600
//            SPACE=(TRK,(1,1),RLSE)                                    00007700
//VIB398A3 DD DSN=SIVA.DETAIL(+1),                                      00007800
//            DISP=(NEW,CATLG,DELETE),UNIT=SYSDA,                       00007900
//            DCB=(MODEL,DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=6320),      00008000
//            SPACE=(TRK,(5,1),RLSE)                                    00008100
//VIB398A4 DD DSN=SIVA.FOOTER(+1),                                      00008200
//            DISP=(NEW,CATLG,DELETE),UNIT=SYSDA,                       00008300
//            DCB=(MODEL,DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=6320),      00008400
//            SPACE=(TRK,(1,1),RLSE)                                    00008500
//*                                                                     00008600
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=2420                                 00008700
//SYSPRINT DD SYSOUT=*                                                  00008800
//SYSOUT   DD SYSOUT=*                                                  00008900
//SYSDBOUT DD SYSOUT=*                                                  00009000
//SYSABOUT DD DUMMY                                                     00009100
//SYSUDUMP DD DUMMY                                                     00009200
//*                                                                     00009300
//**********************************************************************00009400
//*                           -- SORT  --                              *00009500
//* OBJETIVO :     SORTEA EL ARCHIVO DE DETALLE DE LOS MOVIMIENTOS     *00009600
//*                                                                    *00009700
//* PASO  REINICIABLE POR RESTART                                      *00009800
//**********************************************************************00009900
//SIE0406  EXEC PGM=SYNCSORT,COND=(4,LT)                                00010000
//SORTIN   DD DSN=SIVA.DETAIL(+1),DISP=SHR                              00010100
//SORTOUT  DD DSN=SIVA.DETAILS,                                         00010200
//            DISP=(NEW,CATLG,DELETE),UNIT=SYSDA,                       00010300
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=6320),            00010400
//            SPACE=(TRK,(5,1),RLSE)                                    00010500
//SYSIN    DD DSN=SIVA.CARDS(SIE0406),DISP=SHR                          00010600
//SYSOUT   DD SYSOUT=*                                                  00010700
//*                                                                     00010800
//**********************************************************************00010900
//*                           -- IEBGENER --                           *00011000
//* OBJETIVO :  CREA ARCHIVO DE SALIDA                                 *00011100
//*                                                                    *00011200
//* PASO  REINICIABLE POR RESTART                                      *00011300
//**********************************************************************00011400
//SIE0405  EXEC PGM=ICEGENER,COND=(4,LT)                                00011500
//SYSUT1   DD DUMMY,                                                    00011600
//         DCB=(LRECL=80,RECFM=FB,BLKSIZE=6320,DSORG=PS)                00011700
//SYSPRINT DD SYSOUT=*                                                  00011800
//SYSIN    DD DUMMY                                                     00011900
//SYSUT2   DD DSN=SIVA.SAVEMOV2(+1),                                    00012000
//            DISP=(NEW,CATLG,DELETE),                                  00012100
//*           UNIT=SYSDA,                                               00012200
//            UNIT=3390,VOL=SER=CPP48D,                                 00012300
//            DCB=(MODEL,LRECL=80,RECFM=FB,BLKSIZE=6320,DSORG=PS),      00012400
//            SPACE=(TRK,(5,5),RLSE)                                    00012500
//*                                                                     00012600
//**********************************************************************00012700
//*                           -- VOB396O --                            *00012800
//* OBJETIVO    :  CARGOS DE AMERICAN EXPRESS                          *00012900
//*                                                                    *00013000
//* ACTUALIZA   :   CARTERA, CTLPROC, CTABCO                           *00013100
//*                                                                    *00013200
//* PASO  REINICIABLE POR RESTART                                      *00013300
//**********************************************************************00013400
//SIE0404 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4096K,COND=(4,LT)        00013500
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                          00013600
//VOB396A1 DD DSN=SIVA.HEADER(+1),DISP=SHR                              00013700
//         DD DSN=SIVA.DETAILS,DISP=SHR                                 00013800
//         DD DSN=SIVA.FOOTER(+1),DISP=SHR                              00013900
//VOB396A2 DD DSN=SIVA.SAVEMOV2(+1),                                    00014000
//            DISP=MOD                                                  00014100
//VOB396A3 DD DSN=SIVA.SAVEMOV2(+1),                                    00014200
//            DISP=SHR                                                  00014300
//VOB396R1 DD DSN=SIVA.SALSAV(+1),                                      00014400
//            DISP=(NEW,CATLG,DELETE),UNIT=SYSDA,                       00014500
//            DCB=(MODEL,DSORG=PS,LRECL=132,RECFM=FBA,BLKSIZE=13200),   00014600
//            SPACE=(TRK,(5,1),RLSE)                                    00014700
//*                                                                     00014800
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=2420                                 00014900
//SYSPRINT DD SYSOUT=*                                                  00015000
//SYSOUT   DD SYSOUT=*                                                  00015100
//SYSDBOUT DD SYSOUT=*                                                  00015200
//SYSABOUT DD DUMMY                                                     00015300
//SYSUDUMP DD DUMMY                                                     00015400
//SYSTSIN  DD DSN=SIVA.CARDS(SIE0404),DISP=SHR                          00015500
//*                                                                     00015600
//**********************************************************************00015700
//*                           -- IEBGENER --                           *00015800
//* OBJETIVO    :   MANDA REPORTE A USUARIO POR CONTROL-D              *00015900
//*                                                                    *00016000
//* PASO  REINICIABLE POR RESTART                                      *00016100
//**********************************************************************00016200
//SIE0403  EXEC PGM=ICEGENER,COND=(4,LT)                                00016300
//SYSPRINT  DD SYSOUT=*                                                 00016400
//SYSUT1    DD DSN=SIVA.SALSAV(+1),DISP=SHR                             00016500
//SYSUT2    DD SYSOUT=(V,,TM90)                                         00016600
//SYSIN     DD DUMMY                                                    00016700
//**********************************************************************00016800
//*                           -- MAILOPER --                           *00016900
//* OBJETIVO :   MENSAJE AL OPERADOR PARA QUE MONTE EL CARTUCHO        *00017000
//*                                                                    *00017100
//* PASO  REINICIABLE POR RESTART                                      *00017200
//**********************************************************************00017300
//*SIE0402 EXEC PGM=MAILOPER,COND=(4,LT),                               00017400
//*   PARM=('/OPERADOR, FAVOR DE MONTAR EL',                            00017500
//*         ' CARTUCHO DE MOVTOS DE AMEX DESPUES DEL PROC.EN',          00017600
//*         ' TAP001 CONTSI')                                           00017700
//*                                                                     00017800
//**********************************************************************00017900
//*                           -- IEBGENER --                           *00018000
//* OBJETIVO : COPIA DE DISCO A CARTUCHO DEL ARCHIVO DE MOVTOS P/AMEXCO*00018100
//*                                                                    *00018200
//* PASO  REINICIABLE POR RESTART                                      *00018300
//**********************************************************************00018400
//*SIE0401  EXEC PGM=ICEGENER,COND=(4,LT)                               00018500
//*SYSPRINT  DD SYSOUT=*                                                00018600
//*SYSUT1    DD DSN=SIVA.SAVEMOV2(+1),DISP=SHR                          00018700
//*SYSUT2    DD DSN=MOVTOS.PROBURSA,DISP=(NEW,KEEP,KEEP),               00018800
//*             UNIT=T3490,                                             00018900
//*             DCB=(LRECL=80,RECFM=F,BLKSIZE=80,TRTCH=NOCOMP),         00019000
//*             LABEL=(,SL)                                             00019100
//*SYSIN     DD DUMMY                                                   00019200
//*                                                                     00019300
