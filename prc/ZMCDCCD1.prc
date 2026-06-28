//ZMCDCCD1 PROC                                                         00010800
//*                                                                     00020000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  CRUCE DE ARCHIVOS >>                       *
//*                                                                    *
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *
//*                                                                    *
//*   PROCEDIM. :  ZMCDCCD1.                                           *
//*                                                                    *
//*   OBJETIVO  :  CRUCE DE ARCHIVOS                                   *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR:                                                   *
//*                                                                    *
//*   FECHA:  AGOSTO     2019.                                         *
//*                                                                    *
//**********************************************************************
//**                     LOG DE MODIFICACIONES                        **
//*--------------------------------------------------------------------*
//* PASO:  01  CRUCE DE ARCHIVOS DIARIO                                *
//*                                                                    *
//*--------------------------------------------------------------------*
//PL000001 EXEC PGM=IKJEFT01
//*
//ASIGNACI DD DSN=MXCP.ZM.FIX.CDIARIO1.CDDIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=688,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLCDCCD1),DISP=SHR
//*
//**********************************************************************
//*                    TERMINA ZMCDCCD1
//**********************************************************************
