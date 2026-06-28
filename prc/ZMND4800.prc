//ZMND4800 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SIVA.                                            *
//* PROCESO        :  ZMND4800                                         *
//* OBJETIVO       :  EJECUTA COMANDO PARA LEVANTAR MILENIUM.          *
//*                                                                    *
//* REALIZACION    :  SOFTTEK (AEBI)                  26/MAY/2010      *
//*                                                                    *
//* OBSERVACION    :  NINGUNA                                          *00030000
//*                                                                    *
//**********************************************************************
//* PASO    : ZLF48P05                                                 *
//* PROGRAMA: COMMAND                                                  *
//* OBJETIVO: ACTIVAR MILENIUM POR COMANDO DE AF-OPERATOR              *
//*           PASO REINICIABLE POR RESTART                             *
//**********************************************************************
//ZLF48P05  EXEC PGM=COMMAND                                            00320000
//SYSPRINT  DD  SYSOUT=*                                                00330000
//SYSIN     DD  DSN=ZIVA.ZME.CONTROL(ZLF48T05),DISP=SHR                 00340000
//*                                                                     01650000
