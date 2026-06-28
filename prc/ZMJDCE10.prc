//ZMJDCE10 PROC EMP=,SUC=,INT1=,INT2=
//**********************************************************************
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  SOCIEDADES DE INVERSION  <<<<              *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  SIVAXSCF (SUBMITIDOR LINEA)                         *
//*                                                                    *
//*   PROCEDIM. :  ZMJDCE10                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERA MOVTOS. DE CANJES REALIZADOS DE ACUERDO      *
//*                A LA CAPTURA DE PARAMETROS PARA CANJES DE S.D.I.    *
//*                POR PARTE DEL USUARIO (DEFINITIVO)                  *
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
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PJD10P10 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SDI.EZPR.ZMJDCE10,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    -- ZM4EJ100  --                                 *
//*  GENERA ARCHIVOS SECUENCIAL CON EL RESULTADO DE LOS CANJES DE SDI  *
//*  SOLICITADOS POR EL USUARIO MEDIANTE OPCION 516                    *
//**********************************************************************
//PJD10P09 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMJ100A1 DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=260,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMJ100A2 DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=260,RECFM=FB,BLKSIZE=0),
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
//PJD10P08 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.ECBP.CANJES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=260,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD10T06),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * BANCA PATRIMONIAL                   *
//* OBJETIVO: ORDENA LOS REGISTROS GENERADOS PARA EL CANJE, FUSION O   *
//*           REASIGNACION DE FONDOS-SERIE DE SOCIEDADES DE INVERSION  *
//**********************************************************************
//PJD10P07 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.EBCM.CANJES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=260,RECFM=FB,BLKSIZE=0),
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
//PJD10P06 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZME130A1 DD DSN=MXCP.ZM.TMP.SDI.EZPR.ZMJDCE10,DISP=SHR
//ZME130A2 DD DSN=MXCP.ZM.FIX.SDI.ECBP.CANJES,DISP=SHR
//ZME130A3 DD DSN=MXCP.ZM.FIX.SDI.EBCM.CANJES,DISP=SHR
//*
//ZME130A4 DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES.DEF.ARC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZME130A5 DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES.DEF.ARC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
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
//PJD10P05 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZME110A1 DD DSN=MXCP.ZM.TMP.SDI.EZPR.ZMJDCE10,DISP=SHR
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
//PJD10P04 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZME120A1 DD DSN=MXCP.ZM.TMP.SDI.EZPR.ZMJDCE10,DISP=SHR
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
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE S.D.I. CASA DE BOLSA SOLIC. X USUARIO               *
//**********************************************************************
//PJD10P03 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.SDI.ECBP.CANJES.DEF,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE S.D.I. BANCA PATRIMONIAL SOLIC. X USUARIO           *
//**********************************************************************
//PJD10P02 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.SDI.EBCM.CANJES.DEF,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                SE ADICIONA CONDICION                               *
//*                PARA QUE SEA TOMADA POR CTL-D                       *
//**********************************************************************
//PJD10P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXSCF_IN_OK WDATE',
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
//**********************************************************************
//*        TERMINA PROCESO ZMJDCE10 SIVA MULTIEMPRESA                  *
//**********************************************************************
