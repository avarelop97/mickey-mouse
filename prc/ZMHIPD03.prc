//ZMHIPD03 PROC
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBHIND03                                         *
//*                   INICIO DE DIA DEL SIVA.                          *
//*                                                                    *
//* OBJETIVO       :  INICIO DE DIA DE MERCADO DE CAPITALES.           *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//* SUBPROCESO : (D) AL INICIO DE OPERACIONES                          *
//*              - CAPITALES                                           *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//* FECHA          :  2004/11/23                                       *
//* MODIFICO       :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *
//* OBJETIVO       :  SE ADICIONO EL ARCHIVO DE PARAMETROS             *
//*                :  EN EL PASO PHI03P03.                             *
//*                                                                    *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ACV  | 23-JUL-03|IDCEX30|        |ADECUACION A ESTANDARES DE P.U.  *
//**********************************************************************
//*ACV*SIVA*PENDIENTE*HPC***********************************************
//**********************************************************************
//* EMV  | SEP-2006 |IDCEX75|PHI03P26|AGREGAR REPORTES EVENTUALES      *
//*                          PHI03P27                                  *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DE CSP
//*           Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PHI03P28 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4EGR37
//* OBJETIVO: GENERAR EL REPORTE DE LOS MOVIMIENTOS PARA EL
//*           FONDEO DE CONTRATOS EXTRANJEROS EXCLUYENDO
//*           AREA INTERNACIONAL. (EVENTUAL)
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P27 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMER37A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//ZMER37R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T01),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4EGR38
//* OBJETIVO: GENERAR EL REPORTE DE LOS MOVIMIENTOS PARA EL
//*           FONDEO DE CONTRATOS POSICION PROPIA POR MERCADO. (EVENTUAL
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P26 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMER38A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//ZMER38R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T02),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGR37
//* OBJETIVO: GENERAR EL REPORTE DE LOS MOVIMIENTOS PARA EL
//*           FONDEO DE CONTRATOS EXTRANJEROS EXCLUYENDO
//*           AREA INTERNACIONAL.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMGR37A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//ZMGR37R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T03),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGR38
//* OBJETIVO: GENERAR EL REPORTE DE LOS MOVIMIENTOS PARA EL
//*           FONDEO DE CONTRATOS POSICION PROPIA POR MERCADO.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P24 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMGR38A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//ZMGR38R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T04),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DSF99
//* OBJETIVO: GENERAR EL ARCHIVO DE PRECIOS POR EMISORA DE
//*           SOCIEDADES DE INVERSION.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P23 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMSF99A1 DD DSN=SIVA.MDC.FIX.E&EMP..PRECIOS.SOCINV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=56,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T05),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DSF98
//* OBJETIVO: GENERAR LOS ARCHIVOS QUE UTILIZAN LAS APLICACIONES
//*           DE CONTROL DE PUBLICACIONES GATEWAY.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P22 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMSF98A8 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//*ZMSF98A1 DD DSN=GFPP.CB.WKF.BIRCI03,          (NOMBRE PU)  (CB-PU)
//ZMSF98A1 DD DSN=SIVA.MDC.FIX.E&EMP..BIRCI03,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),
//            UNIT=3390
//*ZMSF98A2 DD DSN=GFPP.CB.WKF.BIRCI04,          (NOMBRE PU)  (CB-PU)
//ZMSF98A2 DD DSN=SIVA.MDC.FIX.E&EMP..BIRCI04,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=139,BLKSIZE=0),
//            UNIT=3390
//*ZMSF98A3 DD DSN=GFPP.CB.WKF.BIRCI07,          (NOMBRE PU)  (CB-PU)
//ZMSF98A3 DD DSN=SIVA.MDC.FIX.E&EMP..BIRCI07,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=94,BLKSIZE=0),
//            UNIT=3390
//*ZMSF98A4 DD DSN=GFPP.CB.WKF.BIRCI08,          (NOMBRE PU)  (CB-PU)
//ZMSF98A4 DD DSN=SIVA.MDC.FIX.E&EMP..BIRCI08,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=113,BLKSIZE=0),
//            UNIT=3390
//*ZMSF98A5 DD DSN=GFPP.CB.WKF.BIRCI11,          (NOMBRE PU)  (CB-PU)
//ZMSF98A5 DD DSN=SIVA.MDC.FIX.E&EMP..BIRCI11,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=230,BLKSIZE=0),
//            UNIT=3390
//*ZMSF98A6 DD DSN=GFPP.CB.WKF.BIRMK01,          (NOMBRE PU)  (CB-PU)
//ZMSF98A6 DD DSN=SIVA.MDC.FIX.E&EMP..BIRMK01,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=419,BLKSIZE=0),
//            UNIT=3390
//*ZMSF98A7 DD DSN=GFPP.CB.WKF.BIRMK03,          (NOMBRE PU)  (CB-PU)
//ZMSF98A7 DD DSN=SIVA.MDC.FIX.E&EMP..BIRMK03,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=34,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T06),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DSF97
//* OBJETIVO: GENERAR LOS ARCHIVOS QUE UTILIZAN LAS APLICACIONES
//*           CLIENTE-SERVIDOR DE FONDEO DE AHORRO Y EL V.I.V.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P21 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMSF97A7 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//*ZMSF97A1 DD DSN=GFPP.CB.WKF.INVER,            (NOMBRE PU)  (CB-PU)
//ZMSF97A1 DD DSN=SIVA.MDC.FIX.E&EMP..INVERSNS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=92,BLKSIZE=0),
//            UNIT=3390
//*ZMSF97A2 DD DSN=GFPP.CB.WKF.CHEQUES,          (NOMBRE PU)  (CB-PU)
//ZMSF97A2 DD DSN=SIVA.MDC.FIX.E&EMP..CHEQUES,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=36,BLKSIZE=0),
//            UNIT=3390
//*ZMSF97A3 DD DSN=GFPP.CB.WKF.OPERDIA,          (NOMBRE PU)  (CB-PU)
//ZMSF97A3 DD DSN=SIVA.MDC.FIX.E&EMP..OPERDIA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=340,BLKSIZE=0),
//            UNIT=3390
//*ZMSF97A4 DD DSN=GFPP.CB.WKF.PREMIOS,          (NOMBRE PU)  (CB-PU)
//ZMSF97A4 DD DSN=SIVA.MDC.FIX.E&EMP..PREMIOS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=340,BLKSIZE=0),
//            UNIT=3390
//*ZMSF97A5 DD DSN= VER PROCEDIMIENTO ZMHFPD33
//*ZMSF97A5 DD DSN=GFPP.CB.WKF.EMISORAS,         (NOMBRE PU)  (CB-PU)
//ZMSF97A5 DD DSN=SIVA.MDC.FIX.E&EMP..EMISORAS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=189,BLKSIZE=0),
//            UNIT=3390
//*ZMSF97A6 DD DSN=GFPP.CB.WKF.EFECTIVO,         (NOMBRE PU)  (CB-PU)
//ZMSF97A6 DD DSN=SIVA.MDC.FIX.E&EMP..EFECTIVO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=36,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T07),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGT68
//* OBJETIVO: GENERAR REPORTE DE LA POSICION EN CORTO.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMGT67A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//ZMGT67R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGTCORT DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGTDETA DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T08),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGT67
//* OBJETIVO: GENERAR REPORTE DE LA POSICION EN CORTO.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P19 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMGT67A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//ZMGT67R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T09),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGU57
//* OBJETIVO: SELECCIONA LAS OPERACIONES DE COMPRA VENTA DEL
//*           DIA, ACTUALIZA LA TABLA OPERCON CON VALORES DE
//*           CUENTA, OPERA Y CONCEPT.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P18 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMGU57A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T10),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGU49
//* OBJETIVO: IDENTIFICA LAS OPERACIONES QUE REQUIEREN CARTA DE
//*           AUTORIZACION SEGUN TIPO DE VALOR, OPERACION, MONTO
//*           MINIMO Y PLAZO, ACTUALIZA LA TABLA DE OPERCON.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P17 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMGU49A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..OPER.ZMGU49A1,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=74,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T11),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGU63
//* OBJETIVO: GENERAR REPORTE Y ARCHIVO DE LAS OPERACIONES QUE
//*           REQUIREN CARTA DE AUTORIZACION.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMGU63A3 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//ZMGU63R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU63R2 DD SYSOUT=*
//ZMGU63A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..CARTA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=137,BLKSIZE=0),
//            UNIT=3390
//ZMGU63A2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..NOCARTA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=137,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T12),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGU62
//* OBJETIVO: GENERAR REPORTE POR PROMOTOR DE LAS OPERACIONES
//*           QUE REQUIREN CARTA DE AUTORIZACION.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMGU62A3 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//ZMGU62A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..CARTA,DISP=SHR
//ZMGU62A2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..NOCARTA,DISP=SHR
//ZMGU62R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU62R2 DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T13),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGT46
//* OBJETIVO: GENERAR REPORTE DE CUANTAS CON SOLICITUD DE CARGO.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P14 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMGU46A2 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//ZMGU46A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..OPER.ZMGU49A1,DISP=SHR
//ZMGT46R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T14),DISP=SHR                   00232802
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGT38
//* OBJETIVO: GENERAR REPORTE DE CORTOS REALES Y LOS GUARDA EN
//*           LA BASE DE DATOS, ACTUALIZA LA TABLA CORCAPI.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMGT38A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//ZMGT38R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T15),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGJ09
//* OBJETIVO: INICIALIZA MEDIO AMBIENTE PARA LA RECEPCION DE
//*           HECHOS DE LA B.M.V. PARA UN NUEVO DIA.
//*           ACTUALIZA LA TABLA DE PARAM 'T97'.
//*           BORRA LA TABLA BLOQBMV.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T16),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGJ18
//* OBJETIVO: GRABA CTLPROC 'PH1' PARA TOMAR LA HORA DE LA B.M.V.
//*           PARA LA TRANSMISION DE HECHOS.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T17),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DHB29
//* OBJETIVO: BORRA LA TABLA ISRBON.
//*           ACTUALIZA LA TABLA ISRBON.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T18),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DHB47
//* OBJETIVO: BORRA CARTERAS SIN POSICION DE MERCADO DE CAPITALES.
//*           ACTUALIZA TABLA DE CARTERA.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMHB47P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T19),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DU651
//* OBJETIVO: GENERA TABLA CONDENSADA DE AUTORIZACIONES DE
//*           OPERACIONES POR PERFIL DE USUARIO-SUCURSAL.
//*           ACTUALIZA TABLA AOPERUS.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMU651P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T20),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DU698
//* OBJETIVO: ACTUALIZA LOS SERVICIOS FUTUROS ACTUALES.
//*           ACTUALIZA TABLA REGSERV.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T21),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DH512
//* OBJETIVO: INICIALIZA FOLIO DE ORDENES.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMH512A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T22),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DH526
//* OBJETIVO: GENERACION DE CARTERA DE PROMOTORES.
//*           ACTUALIZA TABLA CARPROM.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMH526P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//ZMH526A1 DD DISP=(NEW,PASS,DELETE),
//         SPACE=(CYL,(4,2),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=61,BLKSIZE=0),
//         UNIT=3390
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T23),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGJ31
//* OBJETIVO: GENERACION DE CARTERA DE CLIENTES DISCRECIONALES.
//*           ACTUALIZA TABLA MCCARAT.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMGJ31P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T26),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DH574
//* OBJETIVO: GENERA TERMINACION DE INICIO DE DIA.
//*           ACTUALIZA TABLA CTLPROC.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMH574P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD03,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI03T27),DISP=SHR
//*
//**********************************************************************
//*     ===   F I N    D E    P R O C E S O   ===                      *
//*     ===        C A P I T A L E S          ===                      *
//**********************************************************************
//*  PEND           FIN DE PROCEDIMIENTO ZMHIPD03                      *
//**********************************************************************
