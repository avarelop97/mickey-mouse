//ZMCD2500 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SIVA.                                            *
//*                                                                    *
//* PROCESO        :  ZMCD2500                                         *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *
//*                   INTERFASES BATCH (TSO)                           *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  N/A                                              *
//*                                                                    *
//* DESPUES DE     :  N/A                                              *
//*                                                                    *
//* REALIZACION    :  SOFTTEK (MABO1)                 24/MAY/2010      *
//*                                                                    *
//* OBSERVACION    :  NINGUNA                                          *
//*                                                                    *
//**********************************************************************
//* PASO    : ZLF25P40                                                 *
//* PROGRAMA: ZM4DL11D                                                 *
//* OBJETIVO: GENERACION DE MOVIMIENTOS CONTABLES REINICIABLE          *
//* ---------------------------                                        *
//* IMPORTANTE!!!!                                                     *
//* AL EJECUTAR ESTE PROCESO -EVENTUAL- ADECUAR LINEA INDICANDO        *
//* LA DISPOSICION DEL ARCHIVO "EOBM11T1" COMO O-L-D                   *
//* EOBM11T1 DD DSN=SIVA.GLMV303.VCVMNT.G30029,DISP=OLD  <<<< OLD >>>  *
//* IMPORTANTE!!!!                                                     *
//* ---------------------------                                        *
//**********************************************************************
//ZLF25P40 EXEC PGM=IKJEFT01
//EOBM11T1 DD DSN=SIVA.GLMV303.VCVMNT.G30029,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF25T40),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF25P35                                                 *
//* PROGRAMA: ZM4DL14D                                                 *
//* OBJETIVO: CONSOLIDACION DE ASIENTOS CONTABLES REINICIABLE          *
//* ---------------------------                                        *
//* IMPORTANTE!!!!                                                     *
//* AL EJECUTAR ESTE PROCESO -EVENTUAL- ADECUAR LINEAS INDICANDO       *
//* LA DISPOSICION DE LOS ARCHIVOS "SZMDL14H" Y "SZMDL14D" EN M-O-D.   *
//*SZMDL14H DD DSN=SIVA.GLMV303.ENCON.HEADER,DISP=MOD
//*SZMDL14D DD DSN=SIVA.GLMV303.ENCON.DETAIL,DISP=MOD
//* ---------------------------                                        *
//**********************************************************************
//ZLF25P35 EXEC PGM=IKJEFT01,COND=(4,LT)
//SZMDL14H DD DSN=SIVA.GLMV303.ENCON.HEADER,DISP=SHR
//SZMDL14D DD DSN=SIVA.GLMV303.ENCON.DETAIL,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF25T35),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF25P30                                                 *
//* PROGRAMA: ZM4DL15D                                                 *
//* OBJETIVO: REPORTE POLIZA AUTOMATICA REINICIABLE                    *
//**********************************************************************
//ZLF25P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//SZMDL15D DD SYSOUT=(O,,TG01)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF25T30),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF25P25                                                 *
//* PROGRAMA: ZM4DL29D                                                 *
//* OBJETIVO: REPORTE DE CONCILIACION SIVA POLIZA REINICIABLE          *
//**********************************************************************
//ZLF25P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DL29D DD SYSOUT=(O,,TG07)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF25T25),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF25P20                                                 *
//* PROGRAMA: ZM4DL17D                                                 *
//* OBJETIVO: REPORTE DE MOVIMIENTOS RECHAZADOS REINICIABLE            *
//**********************************************************************
//ZLF25P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//SZMDL17D DD SYSOUT=(O,,TG02)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF25T20),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF25P15                                                 *
//* PROGRAMA: ZM4DL27D                                                 *
//* OBJETIVO: REPORTE DE CONTROL DE MOVIMIENTOS REINICIABLE            *
//**********************************************************************
//ZLF25P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//SZMDL27D DD SYSOUT=(O,,TG06)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF25T15),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF41T10                                                 *
//* PROGRAMA: ZM4DL20D                                                 *
//* OBJETIVO: ACTUALIZACION DE NUMERO DE POLIZA Y FECHA NO REINICIABLE *
//**********************************************************************
//ZLF41T10 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF25T10),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF25P05                                                 *
//* PROGRAMA: MAILOPER                                                 *
//* OBJETIVO: AVISO EN CASO DE ERROR                                   *
//**********************************************************************
//ZLF25P05 EXEC PGM=MAILOPER,COND=(4,LT),
//         PARM=('/ATENCION OPERADOR.AVISAR A SOP. PROD. QUE',
//             ' PROCESO PCFECD01 TERMINO MAL.CONTESTAR SI',
//             ' PARA TERMINAR')
//*
