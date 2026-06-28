//ZMJFPD28 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBJFCD28                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *
//*                   - INTERFASES BATCH (TSO)                         *
//*                                                                    *
//*                :  GENERACION DE REPORTES                           *
//*                   (TESORERIA)                                      *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBGFCD01  CBJTCD28                               *
//*                                                                    *
//* DESPUES DE     :  CBJFND26, CBLFND23                               *
//*                                                                    *
//* REALIZO        :  ASATECK S.A. DE C.V.                             *
//* FECHA          :  NOVIEMBRE  2002                                  *
//*                                                                    *
//* OBSERVACION    :                                                   *
//*                                                                    *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PJF28P12 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','   ','   ','   ',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD28,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ126
//* OBJETIVO: GENERA ARCHIVO Y REPORTE DE CONCILIACION AUTOMATICA,
//*           PARA SOCIEDADES DE INVERSION.
//*---------------------------------------------------------------------
//PJF28P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//ZMJ126P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD28,DISP=SHR
//ZMJ126R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMJ126A2 DD DSN=MXCP.ZM.FIX.SIN.E&EMP..TENDIA.FIN2,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=390,BLKSIZE=0),
//            UNIT=3390
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF28T13),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGS04                                                  08221000
//* OBJETIVO: PROGRAMA QUE DA DE ALTA SUCURSALES EN EL SIVA             08230000
//*---------------------------------------------------------------------08260000
//PJF28P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//*TCGV0501 DD DSN=MBVP.TC.WKF.TCDT050,      (NOMBRE EN P.U.) (PU-CB)
//TCGV0501 DD DSN=SIVA.SIN.FIX.TCDT050,DISP=SHR
//ZMGS04P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD28,DISP=SHR
//SYSPRINT DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF28T01),DISP=SHR
//*
//*---------------------------------------------------------------------08220000
//* PROGRAMA: ZM4DG003                   (ANTES UN SPUFI BATCH)         08221000
//* OBJETIVO: PROGRAMA PARA BORRAR TABLA CARACT                         08230000
//*---------------------------------------------------------------------08260000
//PJF28P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                00009000
//SYSTSPRT DD SYSOUT=*                                                  00010000
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF28T3A),DISP=SHR                   00020000
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGG57
//* OBJETIVO: COMPARATIVO DE MCARACT.
//*
//* OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO
//* CUANDO SE MUEVA ESTE PASO TAMBIEN MOVER EL SPUFI DEL PASO ANTERIOR
//* OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO OJO
//*---------------------------------------------------------------------
//PJF28P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGG57P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD28,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF28T04),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DUK52
//* OBJETIVO: ACTUALIZA COLUMNA MABOMES DE CUENTA
//*                                            *** CONTRATOS
//*---------------------------------------------------------------------
//PJF28P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMUK52P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD28,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF28T05),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4MGF50
//* OBJETIVO: CARGO POR SERVICIO A LOS PF'S CON TENENCIA MENOR A
//*           35,000.00.
//* ACTUALIZA: CARTERA.
//* PROCESO : CARGOS VARIOS
//* PASO REINICIABLE POR RESTART
//*---------------------------------------------------------------------
//PJF28P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGF50P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD28,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF28T06),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4MGE78
//* OBJETIVO: REPORTE PREVIO DE CARGOS VARIOS
//*---------------------------------------------------------------------
//PJF28P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//ZMGE78P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD28,DISP=SHR
//ZMGE78T1 DD DSN=MXCP.ZM.TMP.OTR.E&EMP..ZMGE78T1,
//            DISP=(NEW,PASS,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390
//ZMGE78R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK05 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK06 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF28T07),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGG59
//* OBJETIVO: REPORTE DE LA POS. DE CONTRATOS DE CASA Y PROVEDORES.
//* PROCESO : CONTRALORIA.
//* PASO REINICIABLE POR RESTART
//*---------------------------------------------------------------------
//PJF28P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//ZMGG59P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD28,DISP=SHR
//ZMGG59R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF28T08),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ124
//* OBJETIVO: GENERA ARCHIVO Y REPORTE DE CONCILIACION AUTOMATICA,
//*           PARA SOCIEDADES DE INVERSION.
//*---------------------------------------------------------------------
//PJF28P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//ZMJ124P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD28,DISP=SHR
//ZMJ124R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*MJ124A1 DD DSN=SIVA.SIN.FIX.E&EMP..TENDIA,
//ZMJ124A1 DD DSN=MXCP.ZM.FIX.E&EMP..TENDIA,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=360,BLKSIZE=0),
//            UNIT=3390
//*         MODIFICAR TAMBIEN PROC ZMJFPD36
//ZMJ124A2 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..TENDIA.FIN,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=390,BLKSIZE=0),
//            UNIT=3390
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF28T09),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ125
//* OBJETIVO: GENERA ARCHIVOS DE CAPTACION DE CAPITALES Y
//*           SOCIEDADES DE INVERSION.
//* PASO REINICIABLE POR RESTART
//*---------------------------------------------------------------------
//PJF28P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//ZMJ125P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD28,DISP=SHR
//*MJ125A1 DD DSN=SIVA.SIN.FIX.E&EMP..DETALLE,
//ZMJ125A1 DD DSN=MXCP.ZM.FIX.E&EMP..DETALLE,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=117,BLKSIZE=0),
//            UNIT=3390
//*MJ125A2 DD DSN=SIVA.SIN.FIX.E&EMP..OPERSCAP,
//ZMJ125A2 DD DSN=MXCP.ZM.FIX.E&EMP..OPERSCAP,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=136,BLKSIZE=0),
//            UNIT=3390
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF28T10),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DHB79
//* OBJETIVO: GENERA ARCHIVOS CON INFORMACION PRIVILEGIADA (CCMV)
//* PASO REINICIABLE POR RESTART
//*---------------------------------------------------------------------
//PJF28P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSABEND DD DUMMY
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//ZMHB79P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD28,DISP=SHR
//ZMHB79A1 DD DSN=MXCP.ZM.FIX.SIN.E&EMP..TRANSA.CCMV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=377,BLKSIZE=0,DSORG=PS),
//            UNIT=3390
//ZMHB79A2 DD DSN=MXCP.ZM.FIX.SIN.E&EMP..CIFRAS.CCMV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=51,BLKSIZE=0,DSORG=PS),
//            UNIT=3390
//ZMHB79A3 DD DSN=MXCP.ZM.FIX.SIN.E&EMP..EMISOR.CCMV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=98,BLKSIZE=0,DSORG=PS),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF28T11),DISP=SHR
//**********************************************************************
//*                          ICEMAN                                    *
//**********************************************************************
//PJF28P1B EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.SIN.E&EMP..TENDIA.FIN,DISP=SHR
//*ORTOUT  DD DSN=SIVA.SIN.FIX.E&EMP..TENDIA.FIN,
//SORTOUT  DD DSN=MXCP.ZM.FIX.E&EMP..TENDIA.FIN,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=376,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJF28T12),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: IEBGENER
//* OBJETIVO: GENERA UN RESPALDO DE ARCHIVO DIARIO
//*---------------------------------------------------------------------
//PJF28P1A EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.SIN.E&EMP..TENDIA.FIN,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.SIN.E&EMP..TENDIA.FINRES2,
//            DISP=(MOD,CATLG,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,LRECL=390,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//*--------------------------------------------------------------------*
//*                                                                    *
//*  PASO:        SE ADICIONA CONDICION PARA QUE SEA TOMADA POR        *
//*  CBJTCD28     CTRL-M.                                              *
//*--------------------------------------------------------------------*
//PJF28P00 EXEC PGM=CTMCND,PARM='ADD COND CBJTCD28_&EMP_SIVA_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
//*---------------------------------------------------------------------
//*                   FIN DEL PROCEDIMIENTO                            *
//*---------------------------------------------------------------------
