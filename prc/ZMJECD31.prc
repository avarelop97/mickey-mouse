//ZMJECD31 PROC EMP=,SUC=,INT1=,INT2=
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBJECD31                                            *
//*                FIN DE DIA DEL SIVA.                                *
//*                                                                    *
//*   OBJETIVO  :  GENERACION DE ISR DE SOCIEDADES DE INVERSION        *
//*                                                                    *
//*   PERIODICIDAD    : DIARIO                                         *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-01  XMBB157  10ENE18 SE INTEGRA LA DESCARGA DE LA TABLA   *
//*                               CUENTA PARA EL SETEO EN CEROS DE LAS *
//*                               RETENCIONES A PROCESAR EN LA TABLA   *
//*                               RISRSOC EN EL PROGRAMA ZM4DJ110      *
//*                               (OPTIMIZACION POR VD'S).             *
//*                                                                    *
//*--------------------------------------------------------------------*
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PEC31P03     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//*                                                         ZM3DG001   *
//**********************************************************************
//PEC31P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJECD31,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//*FS-1.1.0-01-INI
//*--------------------------------------------------------------------*
//* PASO       : PEC31P02                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE TF9 DE PARAM.                             *
//*--------------------------------------------------------------------*
//PEC31P02 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PEC31P02,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.WKF.ZMJECD31.UNLOAD.CUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJF31PR2),
//            DISP=SHR
//*
//*FS-1.1.0-01-FIN
//**********************************************************************
//*                                                                    *
//*  PASO:  2     GENERA EL ISR DE SOCIEDADES DE INVERSION EN LA TABLA *
//*  PEC31P01     RISRSOC DE ACUERDO A LA POSICION HISTORICA DE SECART *
//*                                                         ZM4DJ110   *
//**********************************************************************
//PEC31P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ110A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJECD31,DISP=SHR
//*
//*FS-1.1.0-01-INI
//ZMJ310A2 DD DSN=MXCP.ZM.WKF.ZMJECD31.UNLOAD.CUENTA,DISP=SHR
//*FS-1.1.0-01-FIN
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF31T07),DISP=SHR
//*
//*
//**********************************************************************
//*                   F I N    Z M J E C D 3 1                         *
//**********************************************************************
