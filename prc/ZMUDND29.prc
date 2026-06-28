//ZMUDND29 PROC
//**********************************************************************
//* PASO    : ZLF29P40                                                 *
//* PROGRAMA: ZM4DLJ71                                                 *
//* OBJETIVO: REP. DE OPERACIONES DIARIAS DE VENTAS EN CORTO           *
//**********************************************************************
//ZLF29P40 EXEC PGM=IKJEFT01
//ZMDJ71R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF29T40),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF29P35                                                 *
//* PROGRAMA: ZM4DL435                                                 *
//* OBJETIVO: REP. OPERACIONES WARRANTS PARA CORROBORAR POLIZA ENLACE  *
//**********************************************************************
//ZLF29P35 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMD435R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF29T35),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF29P30                                                 *
//* PROGRAMA: ZM4DL456                                                 *
//* OBJETIVO: REPORTE OPERACIONES WARRANTS PARA SOLICITUD DE CARTA     *
//**********************************************************************
//ZLF29P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMD456R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF29T30),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF29P25                                                 *
//* PROGRAMA: ZM4DLA88                                                 *
//* OBJETIVO: REPORTE DE CORTOS                                        *
//**********************************************************************
//ZLF29P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMDA88R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF29T25),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF29P20                                                 *
//* PROGRAMA: ZM4DLA88                                                 *
//* OBJETIVO: PASO PARA EL BANCO                                       *
//**********************************************************************
//ZLF29P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMDA88R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF29T20),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF29P15                                                 *
//* PROGRAMA: ZM4DLB40                                                 *
//* OBJETIVO: REPORTE DE ULTIMO PRECIO POR EMISORA                     *
//**********************************************************************
//ZLF29P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMDB40R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF29T15),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF29P10                                                 *
//* PROGRAMA: ZM4DL960                                                 *
//* OBJETIVO: REPORTE DE MOVIMIENTOS POR EMISORAS                      *
//**********************************************************************
//ZLF29P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMD960R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF29T10),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF29P05                                                 *
//* PROGRAMA: ZM4DL962                                                 *
//* OBJETIVO: REPORTE DE MOVIMIENTOS DE TASAS DE RENTA FIJA            *
//**********************************************************************
//ZLF29P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMD962R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=6292
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF29T05),DISP=SHR
//*
//**********************************************************************
//* SISTEMA        :  CONVERSION A COBOL II.                           *
//*                                                                    *
//* PROCESO        :  ZMUDND29                                         *
//*                                                                    *
//* OBJETIVO       :  REPORTEADOR DE FIN DE DIA                        *
//* CORRE                                                              *
//* ANTES DE       :  N/A                                              *
//*                                                                    *
//* DESPUES DE     :  N/A                                              *
//*                                                                    *
//* REALIZACION    :  SOFTTEK (PANE)                  03/MAY/2010      *
//*                                                                    *
//* OBSERVACION    :  NINGUNA                                          *
//*                                                                    *
//**********************************************************************
//*                         FIN DE PROC                                *
//**********************************************************************
