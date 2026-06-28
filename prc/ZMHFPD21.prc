//ZMHFPD21 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMHFPD21                                         *
//*                   REPORTEADOR DE FIN DE DIA                        *
//*                                                                    *
//* OBJETIVO       :  REPORTES QUE ANTES CORRIAN EN EL CIERRE DE       *
//*                   VALORES (EQUIVALE AL PCIVAD02)                   *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  IMAGE COPY'S POSTERIORES A FIN DE DIA            *
//*                                                                    *
//* DESPUES DE     :  PFDFDD15                                         *
//*                                                                    *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *
//*                                                                    *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ACV  |13-JUN-03 |IDCEX30|        |ADECUACION A ESTANDARES DE P.U.  *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PHF21P08 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','   ','   ','   ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZMHFPD21,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGJ71
//* OBJETIVO: REP. DE OPERACIONES DIARIAS DE VENTAS EN CORTO
//* PASO REINICIABLE POR RESTART                        *** VALORES
//*---------------------------------------------------------------------
//PHF21P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGJ71A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZMHFPD21,DISP=SHR
//ZMGJ71R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF21T01),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DH435
//* OBJETIVO: REP. OPERACIONES WARRANTS PARA CORROBORAR POLIZA ENLACE
//* PASO REINICIABLE POR RESTART                          *** CAPITALES
//*---------------------------------------------------------------------
//PHF21P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH435A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZMHFPD21,DISP=SHR
//ZMH435R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF21T02),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DH456
//* OBJETIVO: REPORTE OPERACIONES WARRANTS PARA SOLICITUD DE CARTA
//* PASO REINICIABLE POR RESTART                          *** CAPITALES*
//*---------------------------------------------------------------------
//PHF21P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH456A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZMHFPD21,DISP=SHR
//ZMH456R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF21T03),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4EHA88
//* OBJETIVO: REPORTE DE CORTOS
//* PASO REINICIABLE POR RESTART                        *** VALORES    *
//*---------------------------------------------------------------------
//PHF21P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHA88A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZMHFPD21,DISP=SHR
//ZMHA88R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF21T04),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DHB43
//* OBJETIVO: REPORTE DE ULTIMO PRECIO POR EMISORA
//* PASO REINICIABLE POR RESTART                          ***VALORES   *
//*---------------------------------------------------------------------
//PHF21P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHB43A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZMHFPD21,DISP=SHR
//ZMHB43R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF21T05),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4EH960
//* OBJETIVO: REPORTE DE MOVIMIENTOS POR EMISORAS
//* PASO REINICIABLE POR RESTART                        *** VALORES    *
//*---------------------------------------------------------------------
//PHF21P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH960A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZMHFPD21,DISP=SHR
//ZMH960R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF21T06),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4EH962
//* OBJETIVO: REPORTE DE MOVIMIENTOS DE TASAS DE RENTA FIJA
//* PASO REINICIABLE POR RESTART                       *** VALORES     *
//*---------------------------------------------------------------------
//PHF21P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH962A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZMHFPD21,DISP=SHR
//ZMH962R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF21T07),DISP=SHR
//*
