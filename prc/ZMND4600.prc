//ZMND4600 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SIVA.                                            *
//* PROCESO        :  ZMND4600                                         *
//* OBJETIVO       :  ENVIA MENSAJES A CONSOLA POR MAILOPER PARA SER   *
//*                   TOMADOS POR AF/OPERATOR PARA ACTIVAR TRANSACCION *
//*                   SIVA PARA QUE TODOS PUEDAN SIVAR.                *
//* REALIZACION    :  SOFTTEK (AEBI)                  26/MAY/2010      *
//*                                                                    *
//* OBSERVACION    :  NINGUNA                                          *
//*                                                                    *
//**********************************************************************
//* PASO    : ZLF46P05                                                 *
//* PROGRAMA: MAILOPER                                                 *
//* OBJETIVO: AVISAR QUE LA "SIVA"   SE ARRANCARA POR   AF/OPERATOR    *
//*           PASO REINICIABLE POR RESTART                             *
//**********************************************************************
//ZLF46P05 EXEC PGM=MAILOPER,                                           01610000
//         PARM=('/AF-OPERATOR ACTIVAR TRANSACCION SIVA')               01620000
//*                                                                     01650000
