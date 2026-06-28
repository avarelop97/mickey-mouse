//ZMJFPD10 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBJFND10                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *
//*                   - INTERFASES BATCH (TSO)                         *
//*                                                                    *
//*   6TA. PARTE   :  GENERACION DE REPORTES                           *
//*                   (TESORERIA)                                      *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                       RECIBE PARAMETROS
//*GCM SE AGREGAN PARAMETROS SUC,INT1,INT2
//**********************************************************************
//PJF10P20 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD10,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                            --- ZM4DUK71 ---                        *
//* OBJETIVO : DEPURAR LA TABLA CAMTMEC                                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                        *** CONTRATOS  *
//**********************************************************************
//PJF10P19 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMUK71A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD10,DISP=SHR              00140027
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF10T19),DISP=SHR
//**********************************************************************
//*                           --- ZM4DUK72 ---                         *
//* OBJETIVO : DEPURAR LA TABLA CAMBCO                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       *** CONTRATOS   *
//**********************************************************************
//PJF10P18 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMUK72A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD10,DISP=SHR              00140027
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF10T18),DISP=SHR
//********************************************************************* 00040000
//*                       ZM4DGG66
//* OBJETIVO : GENERAR REPORTE DE MOVIMIENTOS DE CONTRALORIA DEL DIA   *
//*                                                                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                      *** TESORERIA    *
//********************************************************************* 00060000
//PJF10P17 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//ZMGG66P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD10,DISP=SHR              00140027
//*                                                                     00130000
//ZMGG66A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..CON.ZMGG66A1,                  00140027
//           DISP=(NEW,PASS,DELETE),                                    00151028
//           DCB=(DSORG=PS,LRECL=111,RECFM=FB,BLKSIZE=0),               00160026
//           UNIT=3390,                                                 00170028
//           SPACE=(CYL,(10,5),RLSE)                                    00180028
//*                                                                     00181000
//ZMGG66R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00240000
//ZMGG66R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00240000
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)                          00200021
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)                          00210021
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)                          00220021
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)                          00221021
//SORTWK05 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)                          00222021
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF10T17),DISP=SHR                   00160000
//*                                                                     00310000
//**********************************************************************00040000
//*                       ZM4DGG68                                     *
//* OBJETIVO : GENERAR REPORTE DE MOVIMIENTOS DE EFECTIVO DE           *
//*            DE CONTRALORIA DEL DIA                                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                      *** TESORERIA    *
//********************************************************************* 00060000
//PJF10P16 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//ZMGG68P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD10,DISP=SHR              00140027
//*                                                                     00130000
//ZMGG68A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..CON.ZMGG68A1,                  00140027
//           DISP=(NEW,PASS,DELETE),                                    00151028
//           DCB=(DSORG=PS,LRECL=111,RECFM=FB,BLKSIZE=0),               00160026
//           UNIT=3390,                                                 00170028
//           SPACE=(CYL,(10,5),RLSE)                                    00180028
//*                                                                     00181000
//ZMGG68R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00240000
//ZMGG68R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00240000
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)                          00200021
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)                          00210021
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)                          00220021
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)                          00221021
//SORTWK05 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)                          00222021
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF10T16),DISP=SHR                   00160000
//*                                                                     00310000
//**********************************************************************
//*                          === ZM4DJ359 ===                          *
//* OBJETIVO : REPORTE DEL I.V.A. RETENIDO POR LA CASA                 *
//*                                                                    *
//* PASO NO REINICIABLE :   VOLVER A MANDAR A PARTIR DEL PASO PJF10P16 *
//*                         POR RESTARR              *** SOC. INVERS.  *
//**********************************************************************
//PJF10P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMG359P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD10,DISP=SHR              00140027
//ZMG359R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMG359A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..DETALLE.IVACASA,
//            UNIT=3390,DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(6,3),RLSE),
//            DCB=(LRECL=54,BLKSIZE=0,RECFM=FB,DSORG=PS)
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF10T15),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4EJ747 --                           *
//* OBJETIVO : REPORTAR SOLICITUDES PENDIENTES (DIAS POSTERIORES)      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                     *** TESORERIA     *
//**********************************************************************
//PJF10P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMG747P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD10,DISP=SHR              00140027
//ZMG798A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ARCH.ZMJ747R,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(150,75),RLSE)
//ZMG747R1 DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF10T13),DISP=SHR
//*
//**********************************************************************
//*                           -- IDCAMS --                             *
//*                                                                    *
//* OBJETIVO : GENERAR ARCHIVO PARA IMPRESION DEL REPORTE DE LIBERA-   *
//*            CION DE EFECTIVO COMPROMETIDO                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PJF10P12 EXEC PGM=ICEGENER,COND=(04,LT,PJF10P13)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSUT1   DD DSN=MXCP.ZM.TMP.TES.E&EMP..ARCH.ZMJ747R,
//            DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//**********************************************************************
//*                           -- ZM4EJ750 --                           *
//* OBJETIVO : GENERA LIBERACION DE EFECTIVO COMPROMETIDO              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       *** TESORERIA   *
//**********************************************************************
//PJF10P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMG750P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD10,DISP=SHR              00140027
//ZMG798A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ARCH.ZMJ750R,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=132,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(150,75),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF10T10),DISP=SHR
//*
//**********************************************************************
//*                           -- IDCAMS --                             *
//*                                                                    *
//* OBJETIVO : GENERAR ARCHIVO PARA IMPRESION DEL REPORTE DE LIBERA-   *
//*            CION DE EFECTIVO COMPROMETIDO                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PJF10P09 EXEC PGM=ICEGENER,COND=(04,LT,PJF10P10)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSUT1   DD DSN=MXCP.ZM.TMP.TES.E&EMP..ARCH.ZMJ750R,
//            DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//**********************************************************************
//*                           -- ZM4DJ774 --                           *
//* OBJETIVO : REPORTAR CANCELACION SALDO DEUDOR VS CENTROS DE COSTO   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 ***TESORERIA          *
//**********************************************************************
//PJF10P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ774P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD10,DISP=SHR              00140027
//ZMJ774R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF10T08),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4DJ773 --                           *
//* OBJETIVO : REPORTAR MOVIMIENTOS SI-AFECTA BANCOS VS CENTROS DE     *
//*            COSTOS                                                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                    *** TESORERIA      *
//**********************************************************************
//PJF10P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ773P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD10,DISP=SHR              00140027
//ZMJ773R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMJ773R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF10T06),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4DJ775 --                           *
//* OBJETIVO : REPORTAR CARGO POR CHEQUE DEVUELTO VS CENTRO DE COSTO   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                     *** TESORERIA     *
//**********************************************************************
//PJF10P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ775P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD10,DISP=SHR              00140027
//ZMJ775R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF10T05),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DJ358 ===                          *
//*                                                                    *
//* OBJETIVO : REPORTE DE BONIFICACIONES Y CARGOS DE IVA AUTOMATICO.   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                   *** TESORERIA       *
//**********************************************************************
//PJF10P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMG358P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD10,DISP=SHR              00140027
//ZMG358R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF10T04),DISP=SHR
//**********************************************************************
//*                       -- ZM4DUK10 --                               *
//*                                                                    *
//* OBJETIVO:     REPORTE DE ALTAS DEL DIA DE CONTRATOS                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       *** CONTRATOS   *
//**********************************************************************
//PJF10P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMUK10P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD10,DISP=SHR              00140027
//ZMUK10R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF10T03),DISP=SHR
//*
//*
//**********************************************************************
//*                        -- ZM4DUK11 --                              *
//*                                                                    *
//* OBJETIVO :    REPORTE DE BAJAS DEL DIA DE CONTRATOS                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                     *** CONTRATOS     *
//**********************************************************************
//PJF10P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMUK11P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD10,DISP=SHR              00140027
//ZMUK11R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF10T02),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4DUK12 --                              *
//*                                                                    *
//* OBJETIVO:REPORTE DE CAMBIOS DE PROMOTOR DEL DIA / CONTRATOS        *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                      *** CONTRATOS    *
//**********************************************************************
//PJF10P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMUK12P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD10,DISP=SHR              00140027
//ZMUK12R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF10T01),DISP=SHR
//*
//**********************************************************************
//*               FIN DEL PROCEDIMIENTO ZMJFPD10                       *
//**********************************************************************
