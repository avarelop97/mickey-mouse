//ZMHFNC44  PROC                                                        00000102
//**********************************************************************00000200
//* OBJETIVO       :  REALIZA CAMBIO DE LIQUIDACION POR LAS PETICIONES *00001300
//*                   QUE LLEGARON DESDE GL (SIVA)                     *00001402
//*                                                                    *00001500
//**********************************************************************00003400
//*                      LOG DE MODIFICACIONES                         *00003700
//**********************************************************************00003800
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00003900
//*--------------------------------------------------------------------*00004000
//**********************************************************************00007800
//*                            (ZM4DH520)                              *00007900
//* OBJETIVO : REALIZA CAMBIO DE LIQUIDACION                           *00008200
//**********************************************************************00008700
//PHNC4401 EXEC PGM=IKJEFT01,COND=(4,LT)                                00008802
//*                                                                     00008900
//SYSIN    DD DUMMY                                                     00009600
//SYSTSPRT DD SYSOUT=*                                                  00009700
//SYSPRINT DD SYSOUT=*                                                  00009800
//SYSOUT   DD SYSOUT=*                                                  00009900
//SYSDBOUT DD SYSOUT=*                                                  00010000
//SYSABOUT DD DUMMY                                                     00010100
//SYSUDUMP DD DUMMY                                                     00010200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHNC4301),DISP=SHR                   00010302
//*                                                                     00010400
//**********************************************************************00010410
//* UTILERIA   : ADUUMAIN                                              *00010420
//* OBJETIVO   : DESCARGA DE OPERAVA CAMBIOS DE LIQUIDACON DE GL       *00010430
//**********************************************************************00010440
//PHNC440A EXEC PGM=ADUUMAIN,COND=(04,LT),                              00010450
//         PARM='MXP1,PHNC440A,NEW,,MSGLEVEL(1)'                        00010460
//*                                                                     00010470
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00010480
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00010490
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00010491
//*                                                                     00010492
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMHFNC44.OPERAVA.CAMLIQ,                  00010493
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00010494
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00010495
//            SPACE=(CYL,(500,250),RLSE)                                00010496
//*                                                                     00010497
//SYSTSPRT DD SYSOUT=*                                                  00010498
//SYSPRINT DD SYSOUT=*                                                  00010499
//SYSPUNCH DD SYSOUT=*                                                  00010500
//SYSCNTL  DD DUMMY                                                     00010501
//*                                                                     00010502
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHNC4401),DISP=SHR                   00010503
//*                                                                     00010504
//*--------------------------------------------------------------------*00010505
//PHNB440B EXEC PGM=ICEMAN,COND=(04,LT)                                 00010506
//*                                                                     00010507
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMHFNC44.OPERAVA.CAMLIQ,DISP=SHR          00010508
//*                                                                     00010509
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMHFNC44.OPERAVA.CAMLIQ2,                 00010510
//            DISP=(NEW,PASS),                                          00010511
//            SPACE=(CYL,(50,25),RLSE),                                 00010512
//            DCB=(LRECL=74,BLKSIZE=0,RECFM=FB,DSORG=PS),               00010513
//            UNIT=3390                                                 00010514
//*                                                                     00010515
//SYSPRINT DD SYSOUT=*                                                  00010516
//SYSOUT   DD SYSOUT=*                                                  00010517
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDC5101),DISP=SHR                   00010518
//*                                                                     00010519
//**********************************************************************00010530
//*                            (ZM4DH521)                              *00010600
//* OBJETIVO : GENERA REPORTE DE CAMBIOS DE LIQUIDACION                *00010700
//**********************************************************************00010800
// IF  PHNB440B.RC EQ 00 THEN                                           00010900
//PHNC4402 EXEC PGM=IKJEFT01,COND=(4,LT)                                00010902
//*                                                                     00011000
//ENTRADA  DD DSN=MXCP.ZM.FIX.ZMHFNC44.OPERAVA.CAMLIQ,DISP=SHR          00011100
//*                                                                     00011101
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.CAMB.LIQUIDA.REPO,                   00011102
//            DISP=(NEW,CATLG,DELETE),                                  00011200
//            DCB=(DSORG=PS,RECFM=FB,LRECL=182,BLKSIZE=0),              00011300
//            UNIT=3390,                                                00011400
//            SPACE=(CYL,(4,2),RLSE)                                    00011500
//*                                                                     00011600
//SYSIN    DD DUMMY                                                     00012000
//SYSTSPRT DD SYSOUT=*                                                  00013000
//SYSPRINT DD SYSOUT=*                                                  00014000
//SYSOUT   DD SYSOUT=*                                                  00015000
//SYSDBOUT DD SYSOUT=*                                                  00016000
//SYSABOUT DD DUMMY                                                     00017000
//SYSUDUMP DD DUMMY                                                     00018000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHNC4402),DISP=SHR                   00019002
// ELSE                                                                 00019003
//PHNC4403 EXEC PGM=ICEGENER,COND=(04,LT)                               00019004
//*                                                                     00019005
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,                                   00019006
//            DCB=(RECFM=FB,LRECL=182)                                  00019007
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECBP.CAMB.LIQUIDA.REPO,                   00019008
//            DISP=(NEW,CATLG,DELETE),                                  00019009
//            SPACE=(CYL,(4,2),RLSE),                                   00019010
//            DCB=(DSORG=PS,LRECL=182,RECFM=FB,BLKSIZE=0),              00019011
//            UNIT=3390                                                 00019012
//*                                                                     00019013
//SYSPRINT DD SYSOUT=*                                                  00019014
//SYSIN    DD DUMMY                                                     00019015
//*                                                                     00019016
// ENDIF                                                                00019020
//*                                                                     00020000
