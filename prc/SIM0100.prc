//SIM0100 PROC                                                          00000100
//******************************************************MIS PRODUCTOS***00000200
//*                                                                    *00000300
//* SISTEMA  : MIS PRODUCTOS (MODULO:  SOCIEDADES DE INVERSIOQ)        *00000400
//* PROCESO  : SIM0101                                                 *00000500
//* OBJETIVO : RESPALDA LA TABLA DE OPERA EN UN ARCHIVO SECUENCIAL     *00000600
//*            QUE SERA ENVIADO A BANCO PARA SU PROCESAMIENTO.         *00000700
//* REALIZO  : LETICIA SUAREZ                                          *00000800
//* FECHA    : SEPTIEMBRE 2000.                                        *00000900
//**********************************************************************00001000
//* PASO     : SIM0101                                                  00001100
//* OBJETIVO : UNLOAD DE TABLA OPERA A UN ARCHIVO SECUENCIAL            00001200
//* PROGRAMA : IKJEFT01                                                 00001300
//**********************************************************************00001400
//SIM0101  EXEC PGM=IKJEFT01,COND=(4,LT),                               00001500
//             REGION=0M,TIME=1440                                      00001600
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00001700
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00001800
//UTPRINT  DD SYSOUT=*                                                  00001900
//SYSUDUMP DD SYSOUT=*                                                  00002000
//SYSPRINT DD SYSOUT=*                                                  00002100
//SYSPUNCH DD SYSOUT=*                                                  00002200
//SYSREC00 DD DSN=SIVA.&FIX..MOVTOS,                                    00002300
//            DISP=(NEW,CATLG,DELETE),                                  00002400
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00002500
//*                                                                     00002600
//SYSOUT   DD SYSOUT=*                                                  00002700
//SYSTSPRT DD SYSOUT=*                                                  00002800
//SYSABOUT DD SYSOUT=*                                                  00002900
//SYSABEND DD SYSOUT=*                                                  00003000
//SYSTSIN  DD DSN=SIVA.CARDS(SIM0103),DISP=SHR                          00003100
//SYSIN    DD DSN=SIVA.CARDS(SIM0104),DISP=SHR                          00003200
//*                                                                     00003300
//**********************************************************************00003400
//* PASO     : SIM0102                                                  00003500
//* OBJETIVO : UNLOAD DEL JOIN SVCTOCB _ CUENTA A UN ARCHIVO SECUENCIAL 00003600
//* PROGRAMA : IKJEFT01                                                 00003700
//**********************************************************************00003800
//SIM0102  EXEC PGM=IKJEFT01,COND=(4,LT),                               00003900
//             REGION=0M,TIME=1440                                      00004000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00004100
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00004200
//UTPRINT  DD SYSOUT=*                                                  00004300
//SYSUDUMP DD SYSOUT=*                                                  00004400
//SYSPRINT DD SYSOUT=*                                                  00004500
//SYSPUNCH DD SYSOUT=*                                                  00004600
//SYSREC00 DD DSN=SIVA.&FIX..MAESTRO,                                   00004700
//            DISP=(NEW,CATLG,DELETE),                                  00004800
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00004900
//*                                                                     00005000
//SYSOUT   DD SYSOUT=*                                                  00005100
//SYSTSPRT DD SYSOUT=*                                                  00005200
//SYSABOUT DD SYSOUT=*                                                  00005300
//SYSABEND DD SYSOUT=*                                                  00005400
//SYSTSIN  DD DSN=SIVA.CARDS(SIM0103),DISP=SHR                          00005500
//SYSIN    DD DSN=SIVA.CARDS(SIM0105),DISP=SHR                          00005600
//*                                                                     00005700
//*******************************************************MIS PRODUCTOS**00005800
//**                                                                   *00005900
//** SISTEMA : MIS PRODUCTOS (MODULO:  SOCIEDADES DE INVERSIOQ)        *00006000
//**                                                                   *00006100
//** PROCESO : SIM0100                                                 *00006200
//**                                                                   *00006300
//** OBJETIVO : GENERACION DEL ARCHIVO DE CONTABILIDAD. A PARTIR DEL   *00006400
//**           CUAL  SE GENERA  EL INVENTARIO  Y  EL  INVENTARIO DE    *00006500
//**           MOVIMIENTOS.                                            *00006600
//**                                                                   *00006700
//** REALIZO : DAVID GUTIERREZ CASILLAS (ASATECK)                      *00006800
//**                                                                   *00006900
//** FECHA   : FEBRERO DE 2000.                                       * 00007000
//**                                                                   *00007100
//**********************************************************************00007200
//** PASO    : SIM0101                                                  00007300
//** OBJETIVO : ORDENA EL ARCHIVO DE CONTABILIDAD POR CHEQUERA          00007400
//** PROGRAMA : SORT                                                    00007500
//**********************************************************************00007600
//*SIM0101 EXEC PGM=SYNCSORT,REGION=0M                                  00007700
//**                                                                    00007800
//*SORTIN  DD DSN=SIVA.&FIX1..CONTAB,DISP=SHR                           00007900
//**                                                                    00008000
//*SORTOUT DD DSN=SIVA.&FIX1..CONTAB.SORT,                              00008100
//*           DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00008200
//*           SPACE=(CYL,(50,50),RLSE),                                 00008300
//*           DCB=(RECFM=FB,LRECL=306,BLKSIZE=0,DSORG=PS)               00008400
//**                                                                    00008500
//*SORTWK01 DD UNIT=WORKDA,SPACE=(CYL,(10,10))                          00008600
//*SORTWK02 DD UNIT=WORKDA,SPACE=(CYL,(10,10))                          00008700
//*SORTWK03 DD UNIT=WORKDA,SPACE=(CYL,(10,10))                          00008800
//*SORTWK04 DD UNIT=WORKDA,SPACE=(CYL,(10,10))                          00008900
//*SORTWK05 DD UNIT=WORKDA,SPACE=(CYL,(10,10))                          00009000
//*SYSOUT  DD SYSOUT=*                                                  00009100
//*SYSPRINT DD SYSOUT=*                                                 00009200
//*SYSIN   DD DSN=SIVA.CARDS(SIM0101),DISP=SHR                          00009300
//**********************************************************************00009400
//** PASO    : SIM0102                                                  00009500
//** OBJETIVO : EJECUCION DEL PROGRAMA QUE GENERA INVENTARIOS           00009600
//** PROGRAMA : VOBS01M                                                 00009700
//**********************************************************************00009800
//*SIM0102 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(0,LT)          00009900
//*STEPLIB DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00010000
//**********************                                                00010100
//** ARCHIVOS DE ENTRADA                                                00010200
//**********************                                                00010300
//*SPACOMIS DD DSN=SIVA.&FIX2..COMISION,DISP=SHR                        00010400
//**                                                                    00010500
//*SPACONTA DD DSN=SIVA.&FIX1..CONTAB.SORT,DISP=SHR                     00010600
//**                                                                    00010700
//*SYSTSPRT DD SYSOUT=*                                                 00010800
//*SYSPRINT DD SYSOUT=*                                                 00010900
//*SYSOUT  DD SYSOUT=*                                                  00011000
//*SYSDBOUT DD SYSOUT=*                                                 00011100
//*SYSABOUT DD DUMMY                                                    00011200
//*SYSUDUMP DD DUMMY                                                    00011300
//**                                                                    00011400
//*SPAINV  DD DSN=SIVA.&FIX2..INV,                                      00011500
//*           DISP=(NEW,CATLG,DELETE),                                  00011600
//*           DCB=(RECFM=FB,LRECL=719,BLKSIZE=7190),                    00011700
//*           UNIT=SYSDA,                                               00011800
//*           SPACE=(CYL,(30,50),RLSE)                                  00011900
//**                                                                    00012000
//*SPAMOV  DD DSN=SIVA.&FIX2..MOV,                                      00012100
//*           DISP=(NEW,CATLG,DELETE),                                  00012200
//*           DCB=(RECFM=FB,LRECL=89,BLKSIZE=8900),                     00012300
//*           UNIT=SYSDA,                                               00012400
//*           SPACE=(CYL,(30,50),RLSE)                                  00012500
//**                                                                    00012600
//*SYSTSIN DD DSN=SIVA.CARDS(SIM0102),DISP=SHR                          00012700
//**                                                                    00012800
