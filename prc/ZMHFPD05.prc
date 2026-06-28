//ZMHFPD05 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MUV MODULO UNICO DE VALORES ANTES SIVA.          *
//*                                                                    *
//* PROCESO        :  ZMHFPD05                                         *
//*                   DESPUES DE LA INTERFAZ DE MERCADO DE CAPITALES   *
//*                                                                    *
//* OBJETIVO       :  GENERACION DE INTERFASES DE CASA DE BOLSA        *
//*                   A CONTABILIDAD MV4 Y CONCILIACION DE             *
//*                   CUSTODIA INTERNACIONAL.                          *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNA                                          *
//*                                                                    *
//* DESPUES DE     :  BCHFND04 (DESPUES DE LA INTERFAZ DE MDD )        *
//*                                                                    *
//* REALIZACION    :  GUADALUPE OROZCO OROZCO        12/NOV/2007       *
//*                                                                    *
//* OBSERVACION    :  ESTE JOB CORRE DESPUES DE GENERAR CONTAB MV3     *
//*                                                                    *
//**********************************************************************
//*                          === ZM3DG001 ===                          *
//*                                                                    *
//* OBJETIVO : RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO FIJO A 96 CHAR *
//*                                                                    *
//**********************************************************************
//PHF05P06 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMHFPD05,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*                                                                    *
//**********************************************************************
//*                          === ZM4DQQ05 ===                          *
//* OBJETIVO : GENERA ARCHIVO CON LA INTERFAZ CONTABLE DE CUSTODIA     *
//*            INTERNACIONAL  Y GENERA ARCHIVO CON ERR.                *
//**********************************************************************
//PHF05P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMQQ05T1 DD DSN=MXC&AMB..ZM.TMP.ECO.INTFAZ.CONTMV4.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//ZMQQ05T2 DD DSN=MXC&AMB..ZM.TMP.ECO.INTFAZ.ERROMV4.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF05T05),DISP=SHR
//*                                                                    *
//**********************************************************************
//*                          === ZM4DQQ07 ===                          *
//* OBJETIVO : GENERA ARCHIVO CON LA VALUACION DE CARTERA DE CUSTODIA  *
//*            INTERNACIONAL                                           *
//**********************************************************************
//PHF05P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMQQ07A1 DD DSN=MXC&AMB..ZM.TMP.ECO.INTFAZ.VALCTD.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//ZMQQ07A2 DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.CONCTD.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF05T04),DISP=SHR
//*                                                                    *
//**********************************************************************
//*                          ===   SORT   ===                          *
//* OBJETIVO : GENERA ARCHIVO CON INTERFAZ CONTABLE                    *
//*               MXCP.ZM.FIX.ECO.INTFAZ.ACECMV4                       *
//**********************************************************************
//PHF05P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.ECO.INTFAZ.CONTMV4.F&FECHA,DISP=SHR
//*        DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.VALCTD.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECMV4,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF05T03),DISP=SHR
//*
//**********************************************************************
//*                          === ZM3DQQ06 ===                          *
//* OBJETIVO : GENERA ARCHIVO CON INTERFAZ CONTABLE MV4                *
//*            EDITADO PARA TRANSFERENCIA                              *
//**********************************************************************
//PHF05P02 EXEC PGM=ZM3DQQ06,COND=(4,LT)
//ZMQQ06A1 DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECMV4,DISP=SHR
//ZMQQ06A2 DD DSN=MXC&AMB..ZM.FIX.ECO.INEDIT.ACECMV4,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(100,50),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=450,BLKSIZE=0),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//*                          === ZM3DQQ06 ===                          *
//* OBJETIVO : GENERA ARCHIVO CON VALUACION CUSTODIA INTERNACIONAL     *
//*            EDITADO PARA TRANSFERENCIA                              *
//**********************************************************************
//PHF05P01 EXEC PGM=ZM3DQQ06,COND=(4,LT)
//ZMQQ06A1 DD DSN=MXC&AMB..ZM.TMP.ECO.INTFAZ.VALCTD.F&FECHA,DISP=SHR
//ZMQQ06A2 DD DSN=MXC&AMB..ZM.FIX.ECO.INEDIT.VALUCTD,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(100,50),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=450,BLKSIZE=0),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*                                                                    *
//******************************* F I N ********************************
