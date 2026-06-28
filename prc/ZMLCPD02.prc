//ZMLCPD02 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  S I V A   M U L T I E M P R E S A                *
//*                                                                    *
//* PROCESO        :  CBLCCD02                                         *
//*                   CIERRE DE MERCADO DE DINERO DIARIO               *
//*                   CON OPCION DEFINITIVO.                           *
//*                                                                    *
//* OBJETIVO       :  CERRAR OPERACIONES DE MERCADO DE DINERO          *
//*                   IMPRIMIR REPORTE DETALLADO DE MOVTOS.            *
//*                   IMPRIMIR REPORTE POR EMISORAS-SERIE-CUPON.       *
//*                   IMPRIMIR REPORTE DE UTILIDAD,PERDIDA Y UTILIDAD  *
//*                   ACUMULADA.                                       *
//*                                                                    *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  FIN DE DIA.                                      *
//*                                                                    *
//* DESPUES DE     :  CBLCCD01                                         *
//*                                                                    *
//* REALIZO        :  J. JAIME FLORES ESTRADA                          *
//* FECHA          :  SEPTIEMBRE 2003.                                 *
//**********************************************************************
//* ------- ------- ---------- ----------------------------------------*
//* JGF01   XME1788 20200904  -SE MIGRAN LAS TRANSFERENCIAS DEL        *
//*                            SERVIDOR SBBV04 AL NASBBVAMXP.          *
//* ------- ------- ---------- ----------------------------------------*
//*     MODIFICO:       IGNACIO ESQUIVEL FLORES
//*     FECHA   :       ABRIL 2023
//*     ASUNTO:         INCREMENTO FOLIO CONCEPT
//*     MARCA :         SDATOOL-41254-IEF-INI (INICIO BLOQUE)
//*                     SDATOOL-41254-IEF-FIN (FIN    BLOQUE)
//*---------------------------------------------------------------------
//*
//PLC02110 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                    * ZM4DLE19 *
//* OBJETIVO : CIERRE AUTOMATICO DE MERCADO DE DINERO
//*
//* NO ACTUALIZA NINGUNA TABLA.
//*
//* PASO REINICIABLE POR RESTART.
//**********************************************************************
//PLC02105 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLE19A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC02105),DISP=SHR
//*
//**********************************************************************
//*                         * ZM4DLE34 *
//* ACTUALIZA LA TABLA : OPERDIN Y OPERIND.
//* OBJETIVO : IMPRESION DE LISTADOS DE CIERRE DE MERCADO DE DINERO.
//*            CIERRE DEFINITIVO DE BANCO DE MDD.
//* PASO REINICIABLE.
//* SE COMENTARIZAN LOS SIGUIENTES PASOS POR ANALISIS DEL CIERRE BANCO
//*    PLC02104 -- PLC02101
//**********************************************************************
//PLC02104 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//ZMLE34A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//ZMLE34A2 DD  DSN=MXCP.ZM.FIX.MDD.EBCM.RIESGOS.CMDD,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE),
//             DCB=(DSORG=PS,LRECL=260,RECFM=FB,BLKSIZE=0)
//ZMLE34R1 DD  DSN=MXCP.ZM.FIX.MDD.EBCM.SALIDA.ZMLE34R1,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(60,30),RLSE),
//             DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0)
//ZMLE34R2 DD  DSN=MXCP.ZM.FIX.MDD.EBCM.SALIDA.ZMLE34R2,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//             DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0)
//ZMLE34R3 DD  DSN=MXCP.ZM.FIX.MDD.EBCM.SALIDA.ZMLE34R3,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//             DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0)
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC02104),DISP=SHR
//*
//**********************************************************************
//*                        * IEBGENER *
//* OBJETIVO : MANDAR A SPOOL REPORTE 1 DE CIERRE MDD.
//**********************************************************************
//*
//PLC02103 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXCP.ZM.FIX.MDD.EBCM.SALIDA.ZMLE34R1,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//*                        * IEBGENER *
//* OBJETIVO : MANDAR A SPOOL REPORTE 2 DE CIERRE MDD.
//* PASO REINICIBLE POR RESTART.
//**********************************************************************
//*
//PLC02102 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXCP.ZM.FIX.MDD.EBCM.SALIDA.ZMLE34R2,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//*                        * IEBGENER *
//* OBJETIVO : MANDAR A SPOOL REPORTE 3 DE CIERRE MDD.
//* PASO REINICIBLE POR RESTART.
//**********************************************************************
//*
//PLC02101 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXCP.ZM.FIX.MDD.EBCM.SALIDA.ZMLE34R3,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//*------------------------------------------------------------------
//*                         * ZM4DLN29 *
//*        CANCELACION DE DEMANDAS.
//*        EN CASO DE CANCELACION AVISAR A MARGARITA RODRIGUEZ
//*------------------------------------------------------------------
//PLC02100 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLN29A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC02100),DISP=SHR
//*
//*------------------------------------------------------------------
//*                         * ZM4DSG18 *
//*        BORRA LA TABLA SEINBMI.
//*
//*------------------------------------------------------------------
//PLC02095 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//ZMSG18A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//*SDATOOL-41254-IEF-INI
//ZMSG18T6 DD DSN=&&ARCHT1,
//            DISP=(NEW,CATLG,DELETE),
//*           DCB=(DSORG=PS,LRECL=17,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=22,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE)
//*SDATOOL-41254-IEF-FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC02095),DISP=SHR
//**********************************************************************
//*------------------------------------------------------------------
//*                         * ZM4DSG07 *
//*        CPOIA LA TABLA 'SEINEMI' A SEINBMI
//*        EN CASO DE TRUENE CONTINUAR CON EL SIGUIENTE PASO
//*        ESTE PASO SE INCLUYO POR SOLICITUD DE DOLORES CASTRO
//*        FOLIO 2753 DEL 01/MAR/94.
//*------------------------------------------------------------------
//PLC02090 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSG07A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC02090),DISP=SHR
//*------------------------------------------------------------------
//*                         * ZM4DSG09 *
//*        BORRA LA TABLA 'SEINEMI'
//*        EN CASO DE TRUENE CONTINUAR CON EL SIGUIENTE PASO
//*        ESTE PASO SE INCLUYO POR SOLICITUD DE DOLORES CASTRO
//*        FOLIO 2302 DEL 02/DIC/93.
//*------------------------------------------------------------------
//PLC02085 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSG09A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC02085),DISP=SHR
//**********************************************************************
//*
//*                         * ZM4DLE33 *
//*
//* ACTUALIZA LA TABLA : OPERDIN Y OPERIND.
//*
//* OBJETIVO : IMPRESION DE LISTADOS DE CIERRE DE MERCADO DE DINERO.
//*            CON OPCION DE PREVIO O DEFINITIVO.
//*
//* PASO REINICIABLE.
//**********************************************************************
//*                   PASO PARA CASA DE BOLSA
//**********************************************************************
//PLC02080 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//ZMLE33A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//ZMLE33A2 DD  DSN=MXCP.ZM.FIX.MDD.E&EMP..RIESGOS.CMDD,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE),
//             DCB=(DSORG=PS,LRECL=260,RECFM=FB,BLKSIZE=0)
//ZMLE33R1 DD  DSN=MXCP.ZM.FIX.MDD.E&EMP..SALIDA.ZMLE33R1,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(60,30),RLSE),
//             DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0)
//ZMLE33R2 DD  DSN=MXCP.ZM.FIX.MDD.E&EMP..SALIDA.ZMLE33R2,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//             DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0)
//ZMLE33R3 DD  DSN=MXCP.ZM.FIX.MDD.E&EMP..SALIDA.ZMLE33R3,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//             DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0)
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC02080),DISP=SHR
//*
//**********************************************************************
//*                        * IEBGENER *
//*
//* OBJETIVO : MANDAR A SPOOL REPORTE 1 DE CIERRE MDD.
//*
//*
//* PASO REINICIBLE POR RESTART.
//**********************************************************************
//*
//PLC02075 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXCP.ZM.FIX.MDD.E&EMP..SALIDA.ZMLE33R1,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//*                        * IEBGENER *
//*
//* OBJETIVO : MANDAR A SPOOL REPORTE 2 DE CIERRE MDD.
//*
//*
//* PASO REINICIBLE POR RESTART.
//**********************************************************************
//*
//PLC02070 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXCP.ZM.FIX.MDD.E&EMP..SALIDA.ZMLE33R2,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//*                        * IEBGENER *
//*
//* OBJETIVO : MANDAR A SPOOL REPORTE 3 DE CIERRE MDD.
//*
//*
//* PASO REINICIBLE POR RESTART.
//**********************************************************************
//*
//PLC02065 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXCP.ZM.FIX.MDD.E&EMP..SALIDA.ZMLE33R3,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//*
//*
//* OBJETIVO : ACTUALIZAR EL RENGLON DE PD2 DE CTLPROC.
//*
//* TABLA QUE ACTUALIZA : CTLPROC.
//*
//* PASO REINICIBLE POR RESTART.
//**********************************************************************
//*
//PLC02060 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLE11A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC02060),DISP=SHR
//*
//**********************************************************************
//*
//*
//* OBJETIVO : CREAR REPORTE DE COMPRAS DE MDD FUERA DE CORRO
//*
//* PASO REINICIBLE POR RESTART.
//**********************************************************************
//PLC02055 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLM42A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//ZMLH42R1 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC02055),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4DLH93 --                           *
//* OBJETIVO    :  GENERA ARCHIVO DE COMPRAS Y VENTAS DE BONOS.        *
//*                                                                    *
//* ACTUALIZA   :  NINGUNA.                                            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PLC02050 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//ZMLH93A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//ZMLH93A2 DD  DSN=MXCP.ZM.FIX.MDD.E&EMP..BONOSCV,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//             DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0)
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC02050),DISP=SHR
//**********************************************************************
//*                         * ZM4DSG16 *
//*
//* OBJETIVO  :EXTRAE INF. DE M. DE DINERO OPERACIONES PARA EL BANCO
//*            EN ARCHIVO BCOPEDIA.
//*
//* PASO REINICIABLE.
//**********************************************************************
//*
//PLC02045 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMDS16A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//*
//ZMDS16S1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..BCOPEDIA,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//*SDATOOL-41254-KAR-INI
//*            DCB=(DSORG=PS,LRECL=463,RECFM=FB,BLKSIZE=0)
//             DCB=(DSORG=PS,LRECL=465,RECFM=FB,BLKSIZE=0)
//*SDATOOL-41254-KAR-FIN
//*
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK05  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC02045),DISP=SHR
//*
//**********************************************************************
//*                         * ZM4DSG25 *
//*
//* OBJETIVO  :EXTRAE INF. DE M. DE DINERO QUE ES ASIGNADO AL BANCO
//*            EN EL ARCHIVO BCOPAPEL.
//*
//* PASO REINICIABLE.
//**********************************************************************
//*
//PLC02040 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMSG25A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//*
//ZMSG25A2 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..BCOPAPEL,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//*SDATOOL-41254-KAR-INI
//*            DCB=(DSORG=PS,LRECL=168,RECFM=FB,BLKSIZE=0)
//             DCB=(DSORG=PS,LRECL=173,RECFM=FB,BLKSIZE=0)
//*SDATOOL-41254-KAR-FIN
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02  DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK03  DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK04  DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK05  DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC02040),DISP=SHR
//**********************************************************************
//*                        ZM4DLE14                                    *
//* OBJETIVO : PROGRAMA QUE CALCULA EL ISR RETENIDO POR VENTAS Y LAS   *
//*            GRABA EN OPERDIN, GRABA INFORMACION EN MDDCST POR CON-  *
//*            CEPTO DE COMPRAS. Y GENERA ARCHIVO CON REGISTROS DE     *
//*            RETENCION DE ISR.                                       *
//* JFE 140706 SE AMPLIA LONGITUD EN ARCHIVO RETENIDO DE 104 A 108 CH. *
//**********************************************************************
//PLC02035 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//ZMLE14A2 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//ZMLE14A1 DD  DSN=MXCP.ZM.FIX.MDD.E&EMP..CIFRAS2,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(2,1),RLSE),
//             DCB=(RECFM=FB,LRECL=11,BLKSIZE=0,DSORG=PS)
//*
//ZMLE14A3 DD  DSN=MXCP.ZM.FIX.MDD.E&EMP..RETENIDO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(6,3),RLSE),
//*            DCB=(RECFM=FB,LRECL=104,BLKSIZE=0,DSORG=PS)
//             DCB=(RECFM=FB,LRECL=108,BLKSIZE=0,DSORG=PS)
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC02035),DISP=SHR
//*
//**********************************************************************
//*            SORT                                                    *
//* OBJETIVO : ORDENAR INFORMACION PARA GENERAR REPORTE DE RETENCION   *
//*            DE ISR                                                  *
//* JFE 140706 SE AMPLIA LONGITUD EN ARCHIVO RETENIDO-SORT DE 104-108. *
//**********************************************************************
//PLC02030 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDD.E&EMP..RETENIDO,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.MDD.E&EMP..RETENIDO.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=104,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=108,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC02030),DISP=SHR
//*
//**********************************************************************
//*                        ZM4DLE13                                    *
//* OBJETIVO : REPORTE DE ISR SEPARADO POR EMPRESA                     *
//*                                                                    *
//**********************************************************************
//PLC02025 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//ZMLE13A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..RETENIDO.SORT,DISP=SHR
//*
//ZMLE13R3 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC02025),DISP=SHR
//*
//**********************************************************************
//*                   ** ZM4DLH85 **                                   *
//* MOVTOS DE COMPRA VENTA AL FONDO PROGRESA.                          *
//* PASO REINICIABLE POR RESTART Y RERUN DE CONTROL-M,R.               *
//*                                                                    *
//* SE CANCELA ESTE PASO CON EL VOBO. DE ELEAZAR RAMIREZ POR FUSION SI *
//* 2009-02-12                                                         *
//**********************************************************************
//*PLC02020 EXEC PGM=IKJEFT01,COND=(4,LT)
//*ZMLH85A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//*SYSTSPRT DD  SYSOUT=*
//*SYSPRINT DD  SYSOUT=*
//*SYSOUT   DD  SYSOUT=*
//*SYSDBOUT DD  SYSOUT=*
//*SYSABOUT DD  DUMMY
//*SYSUDUMP DD  DUMMY
//*SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC02020),DISP=SHR
//*
//**********************************************************************
//*                         * ZM4DLH87 *
//*
//* OBJETIVO  :GENERACION DE ARCHIVO DE REPORTOS CASA DE BOLSA
//*            EN ARCHIVO BCOPEDIB.
//* JFE       EL ARCHIVO MXCP.ZM.FIX.MDD.E&EMP..REPORTO.DIA
//* JFE       SE TRANSFIERE EN PROCESO PNDIDDX4 QUEDANDO EN UN SERVIDOR.
//* JFE       \\SBBV04\SIB\SIBDATA\REPO%%DDMM.TXT
//*
//* PASO REINICIABLE.
//**********************************************************************
//*
//PLC02015 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//ZMLH87A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//*SDATOOL-41254-IEF-INI
//ZMLH87A  DD DSN=MXCP.ZM.FIX.MDD.E&EMP..REPORTO.DIA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//*           DCB=(DSORG=PS,LRECL=266,RECFM=FB,BLKSIZE=0)
//            DCB=(DSORG=PS,LRECL=271,RECFM=FB,BLKSIZE=0)
//*SDATOOL-41254-IEF-FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC02015),DISP=SHR
//*
//**********************************************************************
//*                          ZM4DLM03                                  *
//* OBJETIVO       :   CARGA DE PRECOMIS(ESPEJO PREREMD)               *
//**********************************************************************
//PLC02010 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC02010),DISP=SHR
//**********************************************************************
//* PROGRAMA: ZM4DGR47                                                 *
//* OBJETIVO: GENERA POSICION PROPIA DE GLOBAL RISK                    *
//* NO ACTUALIZA TABLAS;PASO REINICIABLE POR RESTART.                  *
//**********************************************************************
//PLC02009 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMGR47A2 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//ZMGR47A1 DD DSN=SIVA.SIN.FIX.E&EMP..GLOBAL.CTO.CMD,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=911,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC02009),DISP=SHR
//**********************************************************************
//* PROGRAMA: ZM4DGR46                                                 *
//* OBJETIVO: GENERA PASIVOS PARA EL ARCHIVO DE GLOBAL RISK            *
//* NO ACTUALIZA TABLAS;PASO REINICIABLE POR RESTART.                  *
//**********************************************************************
//PLC02008 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGR46P1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//ZMGR46A1 DD DSN=SIVA.SIN.FIX.E&EMP..GLOBAL.CTO.CMD,DISP=MOD
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC02008),DISP=SHR
//*
//*JGF01 INI
//*-------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                 *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL HOST AL SERVIDOR              *
//* \\SBBV04\PUBLIC\GLOBAL_RISK\REPRO\GXGLOCMD.TXT                    *
//*-------------------------------------------------------------------*
//*PLC02007 EXEC PGM=DMBATCH,COND=(4,LT)
//**
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZLC02007),DISP=SHR
//**
//*-------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                 *
//* FUNCION:  TRANSFERIR UN ARCHIVO DEL HOST AL SERVIDOR              *
//* \\NASBBVAMXP\PUBLIC\GLOBAL_RISK\REPRO\GXGLOCMD.TXT                *
//*-------------------------------------------------------------------*
//PLC02007 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//STEPLIB  DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT  DD SYSOUT=*
//SYSDUMP  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//NDMCMDS  DD SYSOUT=*
//SYSIN    DD *
  SIGNON CASE(YES) ESF=NO
  SUBMIT PROC=MSAHDDX1                                             -
  &HOST=SYSP.PROP.HOST1                                            -
  &DIST=CDWVPCDTXREPOMX0                                           -
  &DSNI='SIVA.SIN.FIX.ECBP.GLOBAL.CTO.CMD'                         -
  &DSNO='\\NASBBVAMXP\PUBLIC\GLOBAL_RISK\REPRO\GXGLOCMD.TXT'       -
  &SYSOPTS='DATATYPE(TEXT) STRIP.BLANKS(NO)'
  SIGNOFF
//*
//*JGF01 FIN
//**********************************************************************
//*                   -- ZM4DLE11 --
//* OBJETIVO : ACTUALIZA EL EVENTO CMD CON EL STERMINO 'F'
//*
//* PASO REINICIABLE POR RESTART.
//**********************************************************************
//PLC02005 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLE11A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD02,DISP=SHR
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC02005),DISP=SHR
//*
