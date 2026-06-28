//ZMCDEHCN PROC                                                         00010800
//*                                                                     00020000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  CRUCE DE ARCHIVOS >>                       *
//*                                                                    *
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *
//*                                                                    *
//*   PROCEDIM. :  ZMCDEHCN.                                           *
//*                                                                    *
//*   OBJETIVO  :  INSERTAR DATOS EN LA TABLA HISTORICA DE CONCEPT     *
//*                LA TABLA ZMDTHCN.                                   *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//*   ELABORADO POR:                                                   *
//*                                                                    *
//*   FECHA:  OCTUBRE    2020.                                         *
//*                                                                    *
//**********************************************************************
//**                     LOG DE MODIFICACIONES                        **
//**********************************************************************
//*                                                                    *
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*                                                                    *
//**********************************************************************
//PJL40P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.ZM4CAHCN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//*                                                                    *
//* PROGRAMA: ZM4CAHCN.                                                *
//* FUNCION:  MOVIMIENTOS CASA DE BOLSA Y BANCA PATRIMONIAL.           *
//*                                                                    *
//**********************************************************************
//PL000002 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.DESCATAB.ZMDTHCN,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLDEHCN2),DISP=SHR
//*
