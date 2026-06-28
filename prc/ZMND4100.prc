//ZMND4100 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SIVA.                                            *
//* PROCESO        :  ZMND4100                                         *
//* OBJETIVO       :  ENVIA MENSAJES A CONSOLA POR MAILOPER PARA SER   *
//*                   TOMADOS POR AF/OPERATOR PARA TIRAR EL CICSSIVA   *
//* REALIZACION    :  INDRA                           07/DIC/2010      *
//*                                                                    *
//* OBSERVACION    :  NINGUNA                                          *00030000
//*                                                                    *
//**********************************************************************
//* PASO    : ZLF41P05                                                 *
//* PROGRAMA: MAILOPER                                                 *
//* OBJETIVO: AVISAR QUE EL CICSSIVA SE TIRARA POR  AF/OPERATOR        *
//*           PASO REINICIABLE POR RESTART                             *
//**********************************************************************
//ZLF41P05 EXEC PGM=MAILOPER,                                           01610000
//         PARM=('/AF-OPERATOR RECICLAR CICSSIVA')                      01620000
//*                                                                     01650000
