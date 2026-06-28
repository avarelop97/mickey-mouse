//ZMCDCCM2 PROC                                                         00010800
//*                                                                     00020000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  CRUCE DE ARCHIVOS >>                       *
//*                                                                    *
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *
//*                                                                    *
//*   PROCEDIM. :  ZMCDCCM2.                                           *
//*                                                                    *
//*   OBJETIVO  :  CRUCE DE ARCHIVOS                                   *
//*                                                                    *
//*   PERIODICIDAD :  MENSUAL                                          *
//*                                                                    *
//*   ELABORADO POR:  INDRA                                            *
//*                                                                    *
//*   FECHA:  AGOSTO     2019.                                         *
//*                                                                    *
//**********************************************************************
//**                     LOG DE MODIFICACIONES                        **
//*--------------------------------------------------------------------*
//* PASO:  01  CRUCE DE ARCHIVOS MENSUAL                               *
//*                                                                    *
//*--------------------------------------------------------------------*
//PL000001 EXEC PGM=IKJEFT01
//*
//ASIGNACI DD DSN=MXCP.ZM.FIX.MENSUAL1.CDMES,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=500,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLCDCCM2),DISP=SHR
//*
//**********************************************************************
//*            F I N      Z M C D C C D 1                              *
//**********************************************************************
