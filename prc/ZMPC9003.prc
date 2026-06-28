//ZMPC9003 PROC
//*--------------------------------------------------------------------*00000700
//*                     C A S A   D E  B O L S A                       *00000800
//*                     ========================                       *00000900
//*                     <<  D E S C A R G A   >>                       *00001000
//*   SISTEMA         :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00001100
//*   APLICACION      :  MODULO DE CASA DE BOLSA                       *00001200
//*   OBJETIVO        :  EJECUTA EL REPORTE DIARIO DE MOVIMIENTOS      *00001300
//*                      QUE GENERARON ISR POR ENAJENACION DE ACCIONES *00001400
//*   CORRE ANTES DE  :                                                *00001600
//*   CORRE DESPUES DE:  A SOLICITUD DEL USUARIO                       *00001700
//*   PERIODICIDAD    :  EVENTUAL                                      *00001800
//*--------------------------------------------------------------------*00001900
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: IKJEFT01                                                 *00022600
//* OBJETIVO: REALIZA EL REPORTE DE MOVIEMIENTOS ISR                   *00022700
//*--------------------------------------------------------------------*00022800
//ZM900301 EXEC PGM=IKJEFT01
//*
//S1REPISR DD DSN=MXC&AMB..ZM.FIX.MOVISR.CTRLD.D&FECHA,
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=132,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZM900301),DISP=SHR
//*
