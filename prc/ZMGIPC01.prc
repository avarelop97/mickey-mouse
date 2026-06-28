//ZMGIPC01 PROC
//*
//*--------------------------------------------------------------------*
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                 <<  SOCIEDADES DE INVERSION   >>                   *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  BCGIPC01 (SUBMITIDOR)                            *
//*                   ZMGIPC01 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  PROCESA CANJES, FUSION Y REASIGNACION.           *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  BCJICD07 ZMJIPD07                                *
//*                   BCJINM09 ZMJIPM09                                *
//*                   BCJFCD05 ZMJFPD05                                *
//*                   CBLIND23 ZMLIPD23                                *
//*                                                                    *
//* DESPUES DE     :  BCJICD02 ZMJICD02                                *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO                                           *
//*                                                                    *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                               XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PJI02P25                                              *
//* UTILERIA   : ZM3DG001                                              *
//* OBJETIVO   : RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN  *
//*              (SE EJECUTA TODOS LOS DIAS).                          *
//*--------------------------------------------------------------------*
//PJI02P25 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC',' ',' ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGIPC01.F&FECHA,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                    -- ZM4EJ100  --                                 *
//*  GENERA ARCHIVOS SECUENCIAL CON EL RESULTADO DE LOS CANJES DE SDI  *
//*  SOLICITADOS POR EL USUARIO MEDIANTE OPCION 516                    *
//**********************************************************************
//PJI02P24 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD10T03),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: ORDENA LOS REGISTROS GENERADOS PARA EL CANJE, FUSION O   *
//*           REASIGNACION DE FONDOS-SERIE DE SOCIEDADES DE INVERSION  *
//**********************************************************************
//PJI02P23 EXEC PGM=ICEMAN,COND=(0,NE,PJI02P24)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.ECBP.CANJES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=460,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD10T06),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * BANCA PATRIMONIAL                   *
//* OBJETIVO: ORDENA LOS REGISTROS GENERADOS PARA EL CANJE, FUSION O   *
//*           REASIGNACION DE FONDOS-SERIE DE SOCIEDADES DE INVERSION  *
//**********************************************************************
//PJI02P22 EXEC PGM=ICEMAN,COND=(0,NE,PJI02P24)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.EBCM.CANJES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=460,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD10T06),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4EJ130  --                                 *
//*  GENERA ARCHIVO SECUENCIAL DE LOS CANJES DE S.D.I. PARA SER        *
//*  ENVIADOS A UN SERVIDOR PARA ABRIRLOS CON EXCEL                    *
//*  SOLICITADOS POR EL USUARIO MEDIANTE OPCION 516 (DEFINITIVO)       *
//**********************************************************************
//PJI02P21 EXEC PGM=IKJEFT01,COND=(0,NE,PJI02P24)
//ZME130A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGIPC01.F&FECHA,DISP=SHR
//ZME130A2 DD DSN=MXCP.ZM.FIX.SDI.ECBP.CANJES,DISP=SHR
//ZME130A3 DD DSN=MXCP.ZM.FIX.SDI.EBCM.CANJES,DISP=SHR
//*
//ZME130A4 DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES.DEF.ARC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=673,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZME130A5 DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES.DEF.ARC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=673,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD10T07),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4EJ110  --                                 *
//*  GENERA LISTADO CON EL RESULTADO DE LOS CANJES DE S.D.I.           *
//*  SOLICITADOS POR EL USUARIO MEDIANTE OPCION 516 (DEFINITIVO)       *
//**********************************************************************
//PJI02P20 EXEC PGM=IKJEFT01,COND=(0,NE,PJI02P24)
//ZME110A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGIPC01.F&FECHA,DISP=SHR
//ZME110A2 DD DSN=MXCP.ZM.FIX.SDI.ECBP.CANJES,DISP=SHR
//ZME110A3 DD DSN=MXCP.ZM.FIX.SDI.EBCM.CANJES,DISP=SHR
//*
//ZME110LC DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES.DEF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZME110LB DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES.DEF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD10T04),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4EJ120  --                                 *
//*  GENERA RETIROS, DEPOSITOS Y ABONOS DE REMANENTES DERIVADO DE      *
//*  LOS CANJES, FUSION O REASIGNACION DE FONDOS-SERIE DE SOCIEDADES   *
//*  DE INVERSION                                                      *
//**********************************************************************
//PJI02P19 EXEC PGM=IKJEFT01,COND=(0,NE,PJI02P24)
//ZME120A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGIPC01.F&FECHA,DISP=SHR
//ZME120A2 DD DSN=MXCP.ZM.FIX.SDI.ECBP.CANJES,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.SDI.EBCM.CANJES,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD10T05),DISP=SHR
//*
//**********************************************************************
//*                SE ADICIONA CONDICION                               *
//*                PARA QUE SEA TOMADA POR CTL-M -->(CBJDCZ10)         *
//*        (CANJE DEFINITIVO SOC.INV. A PETICION DEL USUARIO)          *
//**********************************************************************
//PJI02PSI EXEC  PGM=CTMCND,PARM='ADD COND SIVAXSCF_IN_OK WDATE',
//         COND=(0,NE,PJI02P24)
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
//*--------------------------------------------------------------------*
//*                     FIN PROCESO ZMGIPC01                           *
//*--------------------------------------------------------------------*
