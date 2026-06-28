//ZMND4700 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SIVA.                                            *
//* PROCESO        :  ZMND4700                                         *
//* OBJETIVO       :  EJECUTA COMANDO PARA TIRAR MILENIUM.             *
//*                                                                    *
//* REALIZACION    :  SOFTTEK (AEBI)                  26/MAY/2010      *
//*                                                                    *
//* OBSERVACION    :  NINGUNA                                          *00030000
//*                                                                    *
//**********************************************************************
//* PASO    : ZLF47P05                                                 *
//* PROGRAMA: COMMAND                                                  *
//* OBJETIVO: PARAR MILENIUM POR COMANDO DE AF-OPERATOR.               *
//*           PASO REINICIABLE POR RESTART                             *
//**********************************************************************
//ZLF47P05  EXEC PGM=COMMAND                                            00320000
//SYSPRINT  DD  SYSOUT=*                                                00330000
//SYSIN     DD  DSN=ZIVA.ZME.CONTROL(ZLF47T05),DISP=SHR                 00340000
//*                                                                     01650000
