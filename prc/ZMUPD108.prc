//ZMUPD108 PROC                                                         00010800
//*                                                                     00020000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  CRUCE DE ARCHIVOS >>                       *
//*                                                                    *
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *
//*                                                                    *
//*   PROCEDIM. :  ZMUPD108.                                           *
//*                                                                    *
//*   OBJETIVO  :  INSERTAR DATOS EN LA TABLA ZMDT108                  *
//*                                                                    *
//*                                                                    *
//*   PERIODICIDAD : MENSUAL                                           *
//*                                                                    *
//*   ELABORADO POR:                                                   *
//*                                                                    *
//*   FECHA:  OCTUBRE    2020-11-03.                                   *
//*                                                                    *
//**********************************************************************
//**                     LOG DE MODIFICACIONES                        **
//**********************************************************************
//*                                                                    *
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*                                                                    *
//**********************************************************************
//PJL10803 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.ZM4PD108,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//*--------------------------------------------------------------------*
//* OBJETIVO : INSERTA EN ZMDT108 DEPOSITOS EN LA COLUMNA ZM108_ICONDER*
//*--------------------------------------------------------------------*
//PJL10802 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLUPD108),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* OBJETIVO : INSERTA EN ZMDT108 RETIROS EN LA COLUMNA ZM108_ICONDER  *
//*--------------------------------------------------------------------*
//PJL10801 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLUPR108),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//*                                                                    *
//*--------------------------------------------------------------------*
