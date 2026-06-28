//ZMHLPZ92 PROC
//**********************************************************************
//* SISTEMA        :  ZM - RIESGO DE LIQUIDEZ                          *
//*                                                                    *
//* PROCESO        :  CBHLPZ92                                         *
//*                   ZMHLPZ92                                         *
//*                                                                    *
//* OBJETIVO       :  INICIALIZA EVENTO EN CTLPROC                     *
//*                                                                    *
//* PERIODICIDAD   :  EVENTUAL                                         *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*  MARCA      AUTOR     FECHA  DESCRIPCION                           *
//* ----------- --------- ------ --------------------------------------*
//* FS-9.9.9-99 XXXXXXXXX DDMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//**********************************************************************
//* OBJETIVO : ACTUALIZA EVENTO DE CTLPROC (IAPLICA = INT)             *
//* PROGRAMA : ZM4DH074                                                *
//**********************************************************************
//PHL92P02 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHL92P02),DISP=SHR
//*
//**********************************************************************00010000
//*                 F I N     Z M H L P Z 9 2                          *00020000
//**********************************************************************00060000
