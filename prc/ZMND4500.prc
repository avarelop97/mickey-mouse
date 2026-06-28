//ZMND4500 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SIVA.                                            *
//* PROCESO        :  ZMND4500                                         *
//* OBJETIVO       :  ENVIA MENSAJES A CONSOLA POR MAILOPER PARA SER   *
//*                   TOMADOS POR AF/OPERATOR PARA TIRAR EL CICSSIVA   *
//* REALIZACION    :  SOFTTEK (AEBI)                  26/MAY/2010      *
//*                                                                    *
//* OBSERVACION    :  NINGUNA                                          *00030000
//*                                                                    *
//**********************************************************************
//* PASO    : ZLF45P05                                                 *
//* PROGRAMA: MAILOPER                                                 *
//* OBJETIVO: AVISAR QUE EL CICSSIVA SE TIRARA POR  AF/OPERATOR        *
//*           PASO REINICIABLE POR RESTART                             *
//**********************************************************************
//ZLF45P05 EXEC PGM=MAILOPER,                                           01610000
//         PARM=('/AF-OPERATOR TIRAR CICSSIVA')                         01620000
//*                                                                     01650000
