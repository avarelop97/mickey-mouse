//ZMPC9002 PROC
//*--------------------------------------------------------------------*00000700
//*                     C A S A   D E  B O L S A                       *00000800
//*                     ========================                       *00000900
//*                     <<  D E S C A R G A   >>                       *00001000
//*   SISTEMA         :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00001100
//*   APLICACION      :  MODULO DE CASA DE BOLSA                       *00001200
//*   OBJETIVO        :  EJECUTA EL PROGRAMA QUE OBTIENE LOS           *00001300
//*                      MOVIMIENTOS DE VENTAS QUE GENERARON ISR POR   *00001400
//*                      ENAJENACION DE ACCIONES.                      *00001500
//*                      DE VENTA DE ACCIONES.                         *00001500
//*   CORRE ANTES DE  :                                                *00001600
//*   CORRE DESPUES DE:  A SOLICITUD DEL USUARIO                       *00001700
//*   PERIODICIDAD    :  MENSUAL                                       *00001800
//*--------------------------------------------------------------------*00001900
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: IKJEFT01                                                 *00022600
//* OBJETIVO: REALIZA EL ARCHIVO DE EVALUACION DE ALTERNATIVAS         *00022700
//*--------------------------------------------------------------------*00022800
//ZMP00201 EXEC PGM=IKJEFT01
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.EVE.ISR.EVALUA.D&FECHA,
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=302,BLKSIZE=0,DSORG=PS)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.EVE.ISR.EVALUA.ERROR.P01,
//            UNIT=3390,
//            SPACE=(CYL,(50,50),RLSE),DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=132,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMP00201),DISP=SHR
//*
