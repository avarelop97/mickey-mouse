//ZMUEPM83 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM83                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERACION DE ESTADOS DE CUENTA DE LA EMPRESA CB    *
//*                SE OBTIENE LOS CORREOS ELECTRONUICOS                *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   JULIO   2017                                                     *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*
//**********************************************************************
//*                          === ZM3DG001 ===                          *
//*                                                                    *
//* OBJETIVO : RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO FIJO A 96 CHAR *
//*                                                                    *
//**********************************************************************
//ZMPM8360 EXEC PGM=ZM3DG001,
//         PARM=(' ',' ','&FECHA',' ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.ZMUEPM83.FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//*                           -- ZM4CCOR1 --                           *
//* ACTUALIZA RFC  ZMDTEML                                             *
//**********************************************************************
//ZMPM8350 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPM8306),DISP=SHR
//*
//**********************************************************************
//*                     * UNLOAD *                                     *
//*  DESCARGA DE LA TABLA DESARSV1.ZMDTEML           SOBRE UN ARCHIVO  *
//*  SECUENCIAL PARA USO EN LA GENERACION DE LOS CORREOS ELECTRONICOS  *
//**********************************************************************
//ZMPM8340 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMPM8340,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDCUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=60,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPM8301),DISP=SHR
//*
//**********************************************************************
//*                     --- ICEMAN ---                                 *
//**********************************************************************
//ZMPM8330 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.TMP.ECT.E&EMP..EDCUENTA,
//             DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.FIX.ECT.E&EMP..EDCUENTA.ACTBD.EMAIL,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE),
//             DCB=(LRECL=071,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMPM8302),DISP=SHR
//*
//**********************************************************************
//*                    --- ICEMAN ---                                  *
//**********************************************************************
//ZMPM8320 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.TMP.ECT.E&EMP..EDCUENTA,
//             DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.ECT.E&EMP..EDCUENTA.EDITCRFC,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE),
//             DCB=(LRECL=082,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMPM8303),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4CCORR --                           *
//* LEE ARCHIVO CON INFORMACION DE EDVALCA Y SEPARA LA INFORMACION EN  *
//* REGISTROS DEL CIERRE DEL MES ANTERIOR Y REGISTROS DEL CIERRE DEL   *
//* MES ACTUAL.                                                        *
//**********************************************************************
//ZMPM8310 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMENTRAD DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDCUENTA.EDITCRFC,DISP=SHR
//*
//ZMCORREO DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDCUENTA.EDCDIG,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=064,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=MXCP.ZM.FIX.ZMUEPM83.FECHA,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPM8305),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4CCOR2 --                           *
//* DEPURA         ZMDTEML                                             *
//**********************************************************************
//ZMPM8305 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPM8307),DISP=SHR
//
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM83 SIVA CORREOS ELECTRONICOS          *
//**********************************************************************
