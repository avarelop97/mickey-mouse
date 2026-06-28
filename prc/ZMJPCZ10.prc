//ZMJPCZ10 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  SOCIEDADES DE INVERSION  <<<<              *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  SIVAXSCP (SUBMITIDOR LINEA)                         *
//*                CBJPCZ10 (JCL)                                      *
//*   PROCEDIM. :  ZMJPCZ10     OPC. 516                               *
//*                                                                    *
//*   OBJETIVO  :  GENERA REPORTE DE CANJES REALIZADOS DE ACUERDO      *
//*                A LA CAPTURA DE PARAMETROS PARA CANJES DE S.D.I.    *
//*                POR PARTE DEL USUARIO (PRELIMINAR)                  *
//*                                                                    *
//*   CORRE ANTES DE  : A PETICION DEL USUARIO                         *
//*                                                                    *
//*   CORRE DESPUES DE: A PETICION DEL USUARIO                         *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*
//**********************************************************************
//*                    -- ZM4EJ100  --                                 *
//*  GENERA ARCHIVOS SECUENCIAL CON EL RESULTADO DE LOS CANJES DE SDI  *
//*  SOLICITADOS POR EL USUARIO MEDIANTE OPCION 516                    *
//**********************************************************************
//PJP10P09 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMJ100A1 DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=460,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMJ100A2 DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=460,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP10T01),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: ORDENA LOS REGISTROS GENERADOS PARA EL CANJE, FUSION O   *
//*           REASIGNACION DE FONDOS-SERIE DE SOCIEDADES DE INVERSION  *
//**********************************************************************
//PJP10P08 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.ECBP.CANJES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=460,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP10T03),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * BANCA PATRIMONIAL                   *
//* OBJETIVO: ORDENA LOS REGISTROS GENERADOS PARA EL CANJE, FUSION O   *
//*           REASIGNACION DE FONDOS-SERIE DE SOCIEDADES DE INVERSION  *
//**********************************************************************
//PJP10P07 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.EBCM.CANJES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=460,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP10T03),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4EJ130  --                                 *
//*  GENERA ARCHIVO SECUENCIAL DE LOS CANJES DE S.D.I. PARA SER        *
//*  ENVIADOS A UN SERVIDOR PARA ABRIRLOS CON EXCEL                    *
//*  SOLICITADOS POR EL USUARIO MEDIANTE OPCION 516 (PRELIMINAR)       *
//**********************************************************************
//PJP10P06 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZME130A1 DD DSN=MXCP.ZM.FIX.SDI.EZPR.ZMJPCE10,DISP=SHR
//ZME130A2 DD DSN=MXCP.ZM.FIX.SDI.ECBP.CANJES,DISP=SHR
//ZME130A3 DD DSN=MXCP.ZM.FIX.SDI.EBCM.CANJES,DISP=SHR
//*
//ZME130A4 DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES.PRE.ARC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=673,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZME130A5 DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES.PRE.ARC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=673,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP10T04),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4EJ110  --                                 *
//*  GENERA LISTADO CON EL RESULTADO DE LOS CANJES DE S.D.I.           *
//*  SOLICITADOS POR EL USUARIO MEDIANTE OPCION 516 (PRELIMINAR)       *
//**********************************************************************
//PJP10P05 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZME110A1 DD DSN=MXCP.ZM.FIX.SDI.EZPR.ZMJPCE10,DISP=SHR
//ZME110A2 DD DSN=MXCP.ZM.FIX.SDI.ECBP.CANJES,DISP=SHR
//ZME110A3 DD DSN=MXCP.ZM.FIX.SDI.EBCM.CANJES,DISP=SHR
//*
//**********************************************************************
//* INI JLJH DIC/2021 SE BORRA CDAM HGO 24493
//**********************************************************************
//*ZME110LC DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES.PRE,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//*            SPACE=(CYL,(100,50),RLSE)
//*
//ZME110LC DD DUMMY
//*
//*ZME110LB DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES.PRE,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//*            SPACE=(CYL,(100,50),RLSE)
//*
//ZME110LB DD DUMMY
//*
//**********************************************************************
//* FIN JLJH DIC/2021 SE BORRA CDAM HGO 24493
//**********************************************************************
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP10T02),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE S.D.I. CASA DE BOLSA SOLIC. X USUARIO               *
//**********************************************************************
//**********************************************************************
//* INI JLJH SEP/2021 NO SE BORRA CDAM HGO 24493 LO USA VALORES1
//**********************************************************************
//*PJP10P04 EXEC PGM=ICEGENER,COND=(0,NE)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES.PRE,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE S.D.I. BANCA PATRIMONIAL SOLIC. X USUARIO           *
//**********************************************************************
//**********************************************************************
//* INI JLJH SEP/2021 NO SE BORRA CDAM HGO 24493 LO USA VALORES1
//**********************************************************************
//*PJP10P03 EXEC PGM=ICEGENER,COND=(0,NE)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES.PRE,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//*
//**********************************************************************
//*        GRABA EN ARCHIVO SECUENCIAL SOLICITADO POR EL USUARIO       *
//**********************************************************************
//PJP10P02 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU014P1 DD DSN=MXCP.ZM.TMP.SDI.ERSM.EPARAM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//ZMU014P2 DD DSN=MXCP.ZM.TMP.SDI.ERSM.CONTROL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE46T02),DISP=SHR
//*
//**********************************************************************
//*        PROCESA ARCHIVO SECUENCIAL SOLICITADO POR USUARIO           *
//**********************************************************************
//PJP10P01 EXEC PGM=IKJEFT01,COND=(3,LT,PJP10P02)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE46T01),DISP=SHR
//SYSIN    DD DSN=MXCP.ZM.TMP.SDI.ERSM.EPARAM,
//         DISP=(MOD,DELETE,DELETE)
//*
//**********************************************************************
//*        DESCARGA ARCHIVO SECUENCIAL SOLICITADO POR USUARIO          *
//**********************************************************************
//PJP10P00 EXEC PGM=ADUUMAIN,COND=(3,NE,PJP10P02),
//         PARM='MXP1,PJP10P00,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.SDI.ERSM.REPORTE,
//            SPACE=(CYL,(800,80),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.SDI.ERSM.CONTROL,
//         DISP=(MOD,DELETE,DELETE)
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJPCZ10 SIVA MULTIEMPRESA                  *
//**********************************************************************
