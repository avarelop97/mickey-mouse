//ZMPLPC93 PROC                                                         00010000
//*--------------------------------------------------------------------*00020000
//*         L O G    D E   M O D I F I C A C I O N E S                 *00022003
//*--------------------------------------------------------------------*00023003
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *00024003
//* ----------- --------- ------- ------------------------------------ *00025003
//*    @GAH      MB13732  27NOV19 SE MODIFICA LA LONGITUD EL ARCHIVO   *00026003
//*                               MXCP.ZM.FIX.RTE.EXTRACT.F&FECHA DE   *00027003
//*                               618 A 701, LA DEL ARCHIVO            *00028003
//*                               MXCP.ZM.FIX.RTE.BANCCAP.F&FECHA      *00028103
//*                               568 A 654 Y LA DEL ARCHIVO           *00028303
//*                               MXCP.ZM.FIX.RTE.BANCCAP.F&FECHA..SOR *00028403
//*                               547 A 654 PARA LA INCLUSION DE       *00028503
//*                               PERDIDAS Y GANANCIAS VIRTUALES,      *00029003
//*                               TAMBIEN SE AGREGAN LOS PASOS         *00029103
//*                               ZMPC9370, ZMPC9365, ZMPC9360 Y       *00029203
//*                               ZMPC9355 PARA OPTIMIZAR EL ACCESO    *00029303
//*                               A DB2.                               *00029403
//*--------------------------------------------------------------------*00029504
//* MODIFICO:         MI12728 LSR                                      *00029505
//* FECHA:            SEPTIEMBRE 2023                                  *00029506
//* ASUNTO:           INCREMENTO FOLIO CONCEPT,INCREMENTO DE LONGITUD  *00029507
//*--------------------------------------------------------------------*00029508
//*--------------------------------------------------------------------*00029509
//**********************************************************************00030000
//* PASO    : ZMPC9347                                                 *00040000
//* PROGRAMA: ZM4OJ096                                                 *00050000
//* FUNCION : EJECUTA EL PROGRAMA ZM4OJ096 PARA GENERAR UN             *00060000
//*           REPORTE DE LA TABLA DE REPROCESOS (ZMDTCPF)              *00070000
//*           SOBRE LA FECHA ACTUAL                                    *00080000
//**********************************************************************00090000
//ZMPC9347 EXEC PGM=IKJEFT01,COND=(4,LT)                                00100000
//*                                                                     00110000
//ZMJ096S1 DD  DSN=MXCP.ZM.FIX.REP.INFOCPF.F&FECHA,                     00120000
//             DISP=(NEW,CATLG,DELETE),                                 00130000
//             SPACE=(CYL,(200,500),RLSE),UNIT=3390,                    00140000
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0)               00150000
//             DCB=(DSORG=PS,RECFM=FB,LRECL=85,BLKSIZE=0)               00150100
//*                                                                     00160000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPC9347),DISP=SHR                   00170000
//SYSTSPRT DD SYSOUT=*                                                  00180000
//SYSPRINT DD SYSOUT=*                                                  00190000
//SYSOUT   DD SYSOUT=*                                                  00200000
//SYSDBOUT DD SYSOUT=*                                                  00210000
//SYSABOUT DD DUMMY                                                     00220000
//SYSUDUMP DD DUMMY                                                     00230000
//**********************************************************************00240000
// IF (ZMPC9347.RC=0) THEN                                              00250000
//**********************************************************************00260000
//*--------------------------------------------------------------------*00261001
//* PASO       : ZMPC9370                                              *00262001
//* UTILERIA   : ADUUMAIN                                              *00263001
//* OBJETIVO   : DESCARGA FISCAL DE LA TABLA ZMDT108.                  *00264001
//*--------------------------------------------------------------------*00265001
//ZMPC9370 EXEC PGM=ADUUMAIN,                                           00266001
//         PARM='MXP1,ZMPC9370,NEW,,MSGLEVEL(1)'                        00267001
//*                                                                     00268001
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00269001
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00269101
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00269201
//*                                                                     00269301
//SYSREC   DD DSN=MXCP.ZM.WKF.ZMPLPC93.UNLOAD.ZMDT108,                  00269401
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00269501
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00269601
//            SPACE=(CYL,(200,100),RLSE)                                00269701
//*                                                                     00269801
//SYSTSPRT DD SYSOUT=*                                                  00269901
//SYSPRINT DD SYSOUT=*                                                  00270001
//SYSPUNCH DD SYSOUT=*                                                  00270101
//SYSCNTL  DD DUMMY                                                     00270201
//*                                                                     00270301
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9370),                           00270401
//            DISP=SHR                                                  00270501
//*                                                                     00270601
//*--------------------------------------------------------------------*00270701
//* PASO       : ZMPC9365                                              *00270801
//* UTILERIA   : ADUUMAIN                                              *00270901
//* OBJETIVO   : DESCARGA FISCAL DE LA TABLA ZMDT111.                  *00271001
//*--------------------------------------------------------------------*00271101
//ZMPC9365 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00271201
//         PARM='MXP1,ZMPC9365,NEW,,MSGLEVEL(1)'                        00271301
//*                                                                     00271401
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00271501
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00271601
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00271701
//*                                                                     00271801
//SYSREC   DD DSN=MXCP.ZM.WKF.ZMPLPC93.UNLOAD.ZMDT111,                  00271901
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00272001
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00272101
//            SPACE=(CYL,(400,200),RLSE)                                00272201
//*                                                                     00272301
//SYSTSPRT DD SYSOUT=*                                                  00272401
//SYSPRINT DD SYSOUT=*                                                  00272501
//SYSPUNCH DD SYSOUT=*                                                  00272601
//SYSCNTL  DD DUMMY                                                     00272701
//*                                                                     00272801
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9365),                           00272901
//            DISP=SHR                                                  00273001
//*                                                                     00273101
//*--------------------------------------------------------------------*00273201
//* PASO       : ZMPC9360                                              *00273301
//* UTILERIA   : ADUUMAIN                                              *00273401
//* OBJETIVO   : DESCARGA FISCAL DE LA TABLA OPERA.                    *00273501
//*--------------------------------------------------------------------*00273601
//ZMPC9360 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00273701
//         PARM='MXP1,ZMPC9360,NEW,,MSGLEVEL(1)'                        00273801
//*                                                                     00273901
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00274001
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00274101
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00274201
//*                                                                     00274301
//SYSREC   DD DSN=MXCP.ZM.WKF.ZMPLPC93.UNLOAD.OPERA,                    00274401
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00274501
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00274601
//            SPACE=(CYL,(400,200),RLSE)                                00274701
//*                                                                     00274801
//SYSTSPRT DD SYSOUT=*                                                  00274901
//SYSPRINT DD SYSOUT=*                                                  00275001
//SYSPUNCH DD SYSOUT=*                                                  00275101
//SYSCNTL  DD DUMMY                                                     00275201
//*                                                                     00275301
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9360),                           00275401
//            DISP=SHR                                                  00275501
//*                                                                     00275601
//*--------------------------------------------------------------------*00275701
//* PASO       : ZMPC9355                                              *00275801
//* UTILERIA   : ADUUMAIN                                              *00275901
//* OBJETIVO   : DESCARGA FISCAL DE LA TABLA RISRSOC.                  *00276001
//*--------------------------------------------------------------------*00276101
//ZMPC9355 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00276201
//         PARM='MXP1,ZMPC9355,NEW,,MSGLEVEL(1)'                        00276301
//*                                                                     00276401
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00276501
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00276601
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00276701
//*                                                                     00276801
//SYSREC   DD DSN=MXCP.ZM.WKF.ZMPLPC93.UNLOAD.RISRSOC,                  00276901
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00277001
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00277101
//            SPACE=(CYL,(600,500),RLSE)                                00277202
//*                                                                     00277301
//SYSTSPRT DD SYSOUT=*                                                  00277401
//SYSPRINT DD SYSOUT=*                                                  00277501
//SYSPUNCH DD SYSOUT=*                                                  00277601
//SYSCNTL  DD DUMMY                                                     00277701
//*                                                                     00277801
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9355),                           00277901
//            DISP=SHR                                                  00278001
//*                                                                     00278101
//*--------------------------------------------------------------------*00279001
//* PASO    : ZMPC9350 - GENERA REPORTE INFORMACION COMPLETA            00280000
//* PROGRAMA: ZM4OJ098                                                  00290000
//*---------------------------------------------------------------------00300000
//ZMPC9350 EXEC PGM=IKJEFT01,COND=(4,LT)                                00310000
//*                                                                     00320000
//E1DQ0001 DD DSN=MXCP.ZM.WKF.ZMPLPC93.UNLOAD.ZMDT108,                  00321002
//            DISP=SHR                                                  00322002
//*                                                                     00323002
//E2DQ0002 DD DSN=MXCP.ZM.WKF.ZMPLPC93.UNLOAD.ZMDT111,                  00324002
//            DISP=SHR                                                  00325002
//*                                                                     00326002
//E3DQ0003 DD DSN=MXCP.ZM.WKF.ZMPLPC93.UNLOAD.OPERA,                    00327002
//            DISP=SHR                                                  00328002
//*                                                                     00329002
//E4DQ0004 DD DSN=MXCP.ZM.WKF.ZMPLPC93.UNLOAD.RISRSOC,                  00329102
//            DISP=SHR                                                  00329202
//*                                                                     00329302
//ZMJ091S1 DD DSN=MXCP.ZM.FIX.RTE.EXTRACT.F&FECHA,                      00330000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00340000
//            SPACE=(CYL,(500,250),RLSE),                               00350000
//*           DCB=(RECFM=FB,LRECL=701,BLKSIZE=0,DSORG=PS)               00360003
//            DCB=(RECFM=FB,LRECL=706,BLKSIZE=0,DSORG=PS)               00360004
//*                                                                     00370000
//ZMJ091S2 DD DSN=MXCP.ZM.FIX.IN2.EXTRACT.F&FECHA,                      00380000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00390000
//            SPACE=(CYL,(500,250),RLSE),                               00400000
//*           DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)                00410000
//            DCB=(RECFM=FB,LRECL=85,BLKSIZE=0,DSORG=PS)                00410100
//*                                                                     00420000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPC9350),DISP=SHR                   00430000
//SYSTSPRT DD SYSOUT=*                                                  00440000
//SYSPRINT DD SYSOUT=*                                                  00450000
//SYSOUT   DD SYSOUT=*                                                  00460000
//SYSDBOUT DD SYSOUT=*                                                  00470000
//SYSABOUT DD DUMMY                                                     00480000
//SYSUDUMP DD DUMMY                                                     00490000
//*                                                                     00500000
//**********************************************************************00510000
//* PASO    : ZMPC9345 - EXTRAE INFORMACION DEL ARCHIVO DE BANCA CAP.  *00520000
//* PROGRAMA: ZM4OJ093 - CTOS. QUE SE ENCUENTRAN EN ZMDTCPF DEL DIA    *00530000
//**********************************************************************00540000
//ZMPC9345 EXEC PGM=IKJEFT01,COND=(4,LT)                                00550000
//ENTRADA1 DD DSN=MXCP.ZM.FIX.RTE.EXTRACT.F&FECHA,DISP=SHR              00560000
//*                                                                     00570000
//ZMJ093S2 DD DSN=MXCP.ZM.FIX.RTE.BANCCAP.F&FECHA,                      00580000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00590000
//            SPACE=(CYL,(200,100),RLSE),                               00600000
//*           DCB=(RECFM=FB,LRECL=654,BLKSIZE=0,DSORG=PS)               00610003
//            DCB=(RECFM=FB,LRECL=659,BLKSIZE=0,DSORG=PS)               00610004
//*                                                                     00620000
//SYSTSPRT DD SYSOUT=*                                                  00630000
//SYSPRINT DD SYSOUT=*                                                  00640000
//SYSOUT   DD SYSOUT=*                                                  00650000
//SYSDBOUT DD SYSOUT=*                                                  00660000
//SYSABOUT DD DUMMY                                                     00670000
//SYSUDUMP DD DUMMY                                                     00680000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPC9345),DISP=SHR                   00690000
//*                                                                     00700000
//**********************************************************************00710000
//*                     * SORT   * CASA DE BOLSA                       *00720000
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *00730000
//*           OPERACION IREF DE CAPITALES.                             *00740000
//**********************************************************************00750000
//ZMPC9340 EXEC PGM=ICEMAN,COND=(0,NE)                                  00760000
//SYSOUT   DD SYSOUT=*                                                  00770000
//SORTIN   DD DSN=MXCP.ZM.FIX.RTE.BANCCAP.F&FECHA,DISP=SHR              00780000
//SORTOUT  DD DSN=MXCP.ZM.FIX.RTE.BANCCAP.F&FECHA..SOR,                 00790000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00800000
//*           DCB=(DSORG=PS,LRECL=654,RECFM=FB,BLKSIZE=0),              00810003
//            DCB=(DSORG=PS,LRECL=659,RECFM=FB,BLKSIZE=0),              00810004
//            SPACE=(CYL,(100,50),RLSE)                                 00820000
//SYSTSPRT DD SYSOUT=*                                                  00830000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9340),DISP=SHR                   00840000
//*                                                                     00850000
//*--------------------------------------------------------------------*00860000
// ENDIF                                                                00870000
//*--------------------------------------------------------------------*00880000
// IF (ZMPC9347.RC=3) THEN                                              00890000
//*--------------------------------------------------------------------*00900000
//* PASO       : ZMPC9380                                              *00910000
//* UTILERIA   : ICEGENER                                              *00920000
//* OBJETIVO   : GENERAR ARCHIVO VACIO PARA ARCHIVO REPROCESO          *00930000
//*--------------------------------------------------------------------*00940000
//ZMPC9380 EXEC  PGM=ICEGENER                                           00950000
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,                                   00960000
//*           DCB=(RECFM=FB,LRECL=654)                                  00970003
//            DCB=(RECFM=FB,LRECL=659)                                  00970004
//SYSUT2   DD DSN=MXCP.ZM.FIX.RTE.BANCCAP.F&FECHA..SOR,                 00980000
//            DISP=(NEW,CATLG,CATLG),                                   00990000
//            UNIT=3390,                                                01000000
//            SPACE=(CYL,(10,5),RLSE),                                  01010000
//*           DCB=(RECFM=FB,LRECL=654,DSORG=PS,BLKSIZE=0)               01020003
//            DCB=(RECFM=FB,LRECL=659,DSORG=PS,BLKSIZE=0)               01020004
//SYSIN    DD DUMMY                                                     01030000
//SYSPRINT DD SYSOUT=*                                                  01040000
//SYSOUT   DD SYSOUT=*                                                  01050000
//*                                                                     01060000
//*--------------------------------------------------------------------*01070000
// ENDIF                                                                01080000
//*--------------------------------------------------------------------*01090000
