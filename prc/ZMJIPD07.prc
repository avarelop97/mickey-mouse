//ZMJIPD07 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBJICD07                                         *
//*                   INICIO DE DIA DEL SIVA                           *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *
//*                   - INTERFASES BATCH (TSO)                         *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* EMV  |OCTUBRE 05|IDCEX75|        |ADECUACION A LAS TARJETAS Y SE A-*
//*                                   GREGAN 3 PASOS PARA NUEVOS PGMS. *
//**********************************************************************
//**********************************************************************
//*           ARCHIVO DE PARAMETROS                                    *
//**********************************************************************
//PJI07P12 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','  ','  ','  ',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJIPD07,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*====================================================================*
//*                           -- ZM4DG006 --                           *
//*                                                                    *
//* OBJETIVO:  ACTUALIZAR EL IDIACAR Y/O EL TIPO DE TENENCIA DE CARTERA*
//*                                                                    *
//*====================================================================*
//PJI07P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DG0A1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJIPD07,DISP=SHR
//ZM4DG0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZM4DG0R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI07T13),DISP=SHR
//*
//*====================================================================*
//*                           -- ZM4DG007 --                           *
//*                                                                    *
//* OBJETIVO:  ACTUALIZAR LA POSICION EN LA TABLA CARTERA POR LIQUIDA- *
//*            CION DE OPERACIONES EN GARANTIA Y DISPONIBLES           *
//*                                                                    *
//*====================================================================*
//PJI07P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DG0A1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJIPD07,DISP=SHR
//ZM4DG0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZM4DG0R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI07T12),DISP=SHR
//*
//*====================================================================*
//*                           -- ZM4DG008 --                           *
//*                                                                    *
//* OBJETIVO:  ACTUALIZAR LA POSICION EN LA TABLA CARTERA POR PRESTAMOS*
//*            QUE LIQUIDAN EN EL DIA.                                 *
//*====================================================================*
//PJI07P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DG0A1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJIPD07,DISP=SHR
//ZM4DG0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZM4DG0R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI07T11),DISP=SHR
//*
//*====================================================================*
//*                           -- ZM4DG014 --                           *
//*                                                                    *
//* OBJETIVO:  ACTUALIZAR EL IDIACAR PARA DISPONIBLES                  *
//*                                                                    *
//*====================================================================*
//PJI07P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DG0A1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJIPD07,DISP=SHR
//ZM4DG0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZM4DG0R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI07T10),DISP=SHR
//*
//*====================================================================*
//*                           -- ZM4DH031 --                           *
//*                                                                    *
//* OBJETIVO : REPORTE DEFINITIVO DE CANJE/SPLIT/REVERSPLIT            *
//*            DE CUSTODIA GLOBAL.                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//*====================================================================*
//PJI07P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH031A1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJIPD07,DISP=SHR
//ZMH031R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI07T08),DISP=SHR
//*
//*====================================================================*
//*                           -- ZM4DGF39 --                           *
//*                                                                    *
//* OBJETIVO : REPORTE DE EFECTIVOS PARA TODOS LOS PROMOTORES          *
//*            CON PARAMETRO '0', PARA 72 Y 96 HRS                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART SIEMPRE Y CUANDO SE BORRE EL ARCHIVO  *
//* OJO EN CTM DEVE TENER Y EN PREVENT NOT CATALOGED 2                 *
//*====================================================================*
//PJI07P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGF39P1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJIPD07,DISP=SHR
//ZMGF39R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI07T07),DISP=SHR
//*
//*====================================================================*
//*                           -- ZM4DGF39 --                           *
//*                                                                    *
//* OBJETIVO : REPORTE DE EFECTIVOS PARA TODOS LOS PROMOTORES          *
//*            CON PARAMETRO '1', PARA 72 Y 96 HRS.                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//*====================================================================*
//PJI07P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGF39P1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJIPD07,DISP=SHR
//ZMGF39R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI07T06),DISP=SHR
//*
//*====================================================================*
//*                   -- ZM4DLD39 --                                   *
//* OBJETIVO : ACTUALIZA LA DEMANDA VH Y VN EN EL EFECTIVO             *
//*            DISPONIBLE (IDIACAR = 1) DE LA CARTERA                  *
//*                                                                    *
//* ** ESTA FUNCION ES TEMPORAL Y SE DEBERA ELIMINAR CUANDO            *
//* ** LIBERE DIAS ANTERIORES.                                         *
//*                                                                    *
//* ACTUALIZA TABLA : CARTERA.                                         *
//*                                                                    *
//* ESTE PASO NO DEBE CORRER SI HAY CONTINGENCIA DE INIDIA/TESORERIA   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//*====================================================================*
//PJI07P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLD39P1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJIPD07,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI07T05),DISP=SHR
//*
//*====================================================================*
//*                   -- ZM4DLH70 --                                   *
//* OBJETIVO    : APLICACION DE SIVAS A CARTERA DE CONTINGENCIA        *
//* USA TABLAS  : PCCARTE, SIVA, CATOPER, CONCEPT                      *
//*====================================================================*
//PJI07P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLH70P1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJIPD07,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI07T03),DISP=SHR
//*
//*====================================================================*
//*                   -- ZM4DLH71 --                                   *
//* OBJETIVO : CORRIMIENTO DE EFECTIVOS PARA CARTERA DE CONTINGENCIA   *
//*                USA TABLAS  : PCCARTE, CUENTA                       *
//*          >>>>> ACTUALIZA LA TABLA  PCCARTE <<<<<<                  *
//*====================================================================*
//PJI07P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLH71P1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJIPD07,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI07T02),DISP=SHR
//*
//*====================================================================*
//*                   -- ZM4DLH72 --                                   *
//* OBJETIVO : COMPARATIVO DE EFECTIVOS EN PCCARTE Y CARTERA           *
//*      PARA LOS CONCEPTOS 1,8,12 Y 14 CON DIFERENCIA MAXIMA DE 10.   *
//*          >>>>> NO ACTUALIZA NINGUNA TABLA <<<<<<                   *
//*====================================================================*
//PJI07P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLH72P1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJIPD07,DISP=SHR
//ZMLH72R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI07T01),DISP=SHR
//*
