//ZMHISD02  PROC
//*--------------------------------------------------------------------*
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*   SISTEMA         :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*   APLICACION      :  MODULO DE CASA DE BOLSA                       *
//*   OBJETIVO        :  CARGA DE DETALLE DE LAS ACCIONES EN CIRCULA-  *
//*                      CION POR FECHA-EMISORA CON UNA PERIODICIDAD   *
//*                      DIARIA                                        *
//*   CORRE ANTES DE  :                                                *
//*   CORRE DESPUES DE:  A SOLICITUD DEL USUARIO                       *
//*   PERIODICIDAD    :                                                *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-00  XXXXXXX DDMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PROGRAMA: IKJEFT01                                                 *
//* OBJETIVO: CARGA DE DATOS DEL ACUMULADO DIARIO.                     *
//*--------------------------------------------------------------------*
//ZMHISD01 EXEC PGM=IKJEFT01
//*
//ZMCISR05 DD DSN=MXCP.ZM.FIX.ISR.ZMHISD02.ERROR,
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=46,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMSDC119),DISP=SHR
//*
