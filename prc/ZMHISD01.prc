//ZMHISD01  PROC
//*--------------------------------------------------------------------*00000700
//*                     C A S A   D E  B O L S A                       *00000800
//*                     ========================                       *00000900
//*                     <<  D E S C A R G A   >>                       *00001000
//*   SISTEMA         :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00001100
//*   APLICACION      :  MODULO DE CASA DE BOLSA                       *00001200
//*   OBJETIVO        :  OBTENER DEL SISTEMA LA FECHA ACTUAL EN QUE SE *00001300
//*                      CORRE EL PROCESO.                             *00001400
//*   CORRE ANTES DE  :                                                *00001600
//*   CORRE DESPUES DE:  A SOLICITUD DEL USUARIO                       *00001700
//*   PERIODICIDAD    :                                                *00001800
//*--------------------------------------------------------------------*00001900
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-00  XXXXXXX DDMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: IKJEFT01                                                 *00022600
//* OBJETIVO: CARGA DE DATOS DEL ACUMULADO DIARIO.                     *00022700
//*--------------------------------------------------------------------*00022800
//ZMSD0101 EXEC PGM=IKJEFT01
//*
//ZMCISR04 DD DSN=MXCP.ZM.FIX.ISR.ZMPISR02.ERROR.P01,
//            UNIT=3390,
//            SPACE=(CYL,(50,50),RLSE),DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=113,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMSD0101),DISP=SHR
//*
