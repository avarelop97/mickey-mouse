//ZMLCPD36 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBLCCD36                                            *
//*                CIERRE DE MERCADO DE DINERO DIARIO                  *
//*                                                                    *
//*   OBJETIVO  :  GENERAR REPORTES  PARA EL AREA DE MERCADO DE        *
//*                DINERO.                                             *
//*                DEPURACION DE TABLAS MDD                            *
//*                                                                    *
//*   CORRE ANTES DE  :   CBLCCD38             (  ZMLCPD38  )          *
//*                                                                    *
//*   CORRE DESPUES DE:   CBLCCD34             (  ZMLCPD34  )          *
//*                                                                    *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR: ASATECK.                                          *
//*                                                                    *
//*   FECHA:  FEBRERO 2003.                                            *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* XXX  |XX/XX/XXXX|XXXXXXX|        | XX XXXXXXX XXXX XXXXXXXX        *
//*---------------------------------------------------------------------
//*     MODIFICO:       IGNACIO ESQUIVEL FLORES
//*     FECHA   :       ABRIL 2023
//*     ASUNTO:         INCREMENTO FOLIO CONCEPT
//*     MARCA :         SDATOOL-41254-IEF-INI (INICIO BLOQUE)
//*                     SDATOOL-41254-IEF-FIN (FIN    BLOQUE)
//*---------------------------------------------------------------------
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:        RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00030000
//*  PLC36P20     GRABA EN ARCHIVO SECUENCIAL.                         *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PLC36P20 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLCPD36,
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
//**********************************************************************00010000
//*  PASO:        MUEVE MOVIMIENTOS A LA TABLA ZMDT604  (SAT)          *00030000
//*  PLC36P18                                                          *00040000
//*                                                         ZM4DLX90   *00020000
//**********************************************************************00060000
//PLC36P18 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLX90A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLCPD36,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC36T18),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO:        DEPURACION DE LA TABLA ZMDT633 PARA REGISTROS DE MDD *00030000
//*  PLC36P10     LA VIGENCIA DE LA  TABLA SERA DE 100 DIAS            *00040000
//*                                                         ZM4DLX91   *00020000
//**********************************************************************00060000
//PLC36P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLX01A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLCPD36,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC36T10),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO:        DEPURACION DE LA TABLA ZMDT44 0                      *00030000
//*  PLC36P09     DE EMISORAS CON FBAJA                                *00040000
//*                                                         ZM4DLX92   *00020000
//**********************************************************************00060000
//PLC36P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC36T09),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00040000
//*  PASO:  TEMPORAL                                                   *00030000
//*                                                                    *00020000
//*                                                         ZM4DLX20   *00040000
//**********************************************************************00060000
//PLC36P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//*
//ZMMWC0A1 DD DSN=MXCP.ZM.FIX.MDD.TEMPO.PBA,                            00140027
//            DISP=(NEW,CATLG,DELETE),                                  00151028
//            DCB=(DSORG=PS,LRECL=263,RECFM=FB,BLKSIZE=0),              00160026
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00170028
//*
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC36T08),DISP=SHR                   00300000
//*
//**********************************************************************00010000
//*               <<<< PASO REINICIABLE  >>>>                          *00020000
//*  PASO:  2     RESPALDA LA TABLA DE DEMANDA EN ELA TABLA HISTORICA  *00030000
//*  PLC36P07     DE SVHDEM.                                           *00040000
//*               ACTUALIZA SVHDEM                          ZM4DLN36   *00020000
//**********************************************************************00060000
//PLC36P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLN36A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLCPD36,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC36T07),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00040000
//*  PASO:  3     REPORTE DE CARTERAS EN CORTO. (TITULOS)              *00030000
//*  PLC36P06                                               ZM4DLN23   *00020000
//**********************************************************************00060000
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLC36P06 EXEC PGM=IKJEFT01,COND=(4,LT)                               00070000
//**                                                                    00100000
//*ZMLN23A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLCPD36,DISP=SHR
//**
//*ZMLN23R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**                                                                    00100000
//*SYSTSPRT DD SYSOUT=*                                                 00230000
//*SYSPRINT DD SYSOUT=*                                                 00240000
//*SYSOUT   DD SYSOUT=*                                                 00250000
//*SYSDBOUT DD SYSOUT=*                                                 00270000
//*SYSABOUT DD DUMMY                                                    00280000
//*SYSUDUMP DD DUMMY                                                    00290000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC36T06),DISP=SHR                  00300000
//**                                                                    00310000
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************00010000
//*                                                                    *00040000
//*  PASO:  4     REALIZA ARCHIVO CON INFORMACION DE EMISORAS DE MDD   *00030000
//*  PLC36P05     CON POSICION EN CARTERA CASA DE BOLSA.               *00020000
//*                                                         ZM4DLN10   *00040000
//**********************************************************************00060000
//PLC36P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//*
//ZMLN10A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLCPD36,DISP=SHR
//*
//ZMLN10A2 DD DSN=SIVA.MDD.FIX.E&EMP..CARTERAS.CB,                      00140027
//            DISP=(NEW,CATLG,DELETE),                                  00151028
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00160026
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00170028
//*
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC36T05),DISP=SHR                   00300000
//*
//**********************************************************************00010000
//*                                                                    *00040000
//*  PASO:  5     EJECUTA REPORTES PARA EL AREA DE MERCADO DE DINERO   *00030000
//*  PLC36P04     (CARTERAS VENCIDAS).                                 *00020000
//*                                                         ZM4DLN00   *00040000
//**********************************************************************00060000
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLC36P04 EXEC PGM=IKJEFT01,COND=(4,LT)                               00070000
//**                                                                    00100000
//*ZMLN00A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLCPD36,DISP=SHR
//**
//*ZMLN00R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**                                                                    00100000
//*SYSTSPRT DD SYSOUT=*                                                 00230000
//*SYSPRINT DD SYSOUT=*                                                 00240000
//*SYSOUT   DD SYSOUT=*                                                 00250000
//*SYSDBOUT DD SYSOUT=*                                                 00270000
//*SYSABOUT DD DUMMY                                                    00280000
//*SYSUDUMP DD DUMMY                                                    00290000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC36T04),DISP=SHR                  00300000
//**                                                                    00310000
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************00010000
//*                                                                    *00040000
//*  PASO:  6     REPORTE DE CARTERAS GUBERNAMENTALES CASA DE BOLSA.   *00030000
//*  PLC36P03     (CARTERAS VENCIDAS).                                 *00020000
//*                            PARAMETROS                   ZM4DLN01   *00040000
//**********************************************************************00060000
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLC36P03 EXEC PGM=IKJEFT01,COND=(4,LT)                               00070000
//**                                                                    00100000
//*ZMLN01A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLCPD36,DISP=SHR
//**
//*ZMLN01R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**                                                                    00100000
//*SYSTSPRT DD SYSOUT=*                                                 00230000
//*SYSPRINT DD SYSOUT=*                                                 00240000
//*SYSOUT   DD SYSOUT=*                                                 00250000
//*SYSDBOUT DD SYSOUT=*                                                 00270000
//*SYSABOUT DD DUMMY                                                    00280000
//*SYSUDUMP DD DUMMY                                                    00290000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC36T03),DISP=SHR                  00300000
//**                                                                    00310000
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************00010000
//*                                                                    *00040000
//*  PASO:  7     REPORTE DE CARTERAS GUBERNAMENTALES POR FOLIO.       *00030000
//*  PLC36P02                                                          *00020000
//*                                                         ZM4DLN02   *00040000
//**********************************************************************00060000
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLC36P02 EXEC PGM=IKJEFT01,COND=(4,LT)                               00070000
//**                                                                    00100000
//*ZMLN02A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLCPD36,DISP=SHR
//**
//*ZMLN02R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**                                                                    00100000
//*SYSTSPRT DD SYSOUT=*                                                 00230000
//*SYSPRINT DD SYSOUT=*                                                 00240000
//*SYSOUT   DD SYSOUT=*                                                 00250000
//*SYSDBOUT DD SYSOUT=*                                                 00270000
//*SYSABOUT DD DUMMY                                                    00280000
//*SYSUDUMP DD DUMMY                                                    00290000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC36T02),DISP=SHR                  00300000
//**                                                                    00310000
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************00010000
//*                                                                    *00040000
//*  PASO:  8     REPORTE DE CARTERAS NO GUBERNAMENTALES CASA DE BOLSA.*00030000
//*  PLC36P01               PARAMETROS                                 *00020000
//*                                                         ZM4DLN03   *00040000
//**********************************************************************00060000
//PLC36P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//*                                                                     00100000
//ZMLN03A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLCPD36,DISP=SHR
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMLN03R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMLN03R1 DD DSN=MXCP.ZM.FIX.E&EMP..ZMLCPD36.REPORTE1,                00240000
//*            DISP=(NEW,CATLG,DELETE),                                 00240000
//*            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),             00240000
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         00240000
//ZMLN03R1 DD  DUMMY
//*                                                                     00100000
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*                                                                     00100000
//*SDATOOL-41254-IEF-INI                                                00100000
//ZMLN03A2 DD DSN=SIVA.MDD.FIX.E&EMP..CARTERA.CB,                       00240000
//            DISP=(NEW,CATLG,DELETE),                                  00240000
//*           DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS),              00240000
//            DCB=(LRECL=105,RECFM=FB,BLKSIZE=0,DSORG=PS),              00240000
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00240000
//*SDATOOL-41254-IEF-FIN                                                00100000
//*                                                                     00100000
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC36T01),DISP=SHR                   00300000
//*                                                                     00310000
//*---------------------------------------------------------------------
//* OBJETIVO: ADICIONA CONDICION PARA QUE SE HAGA LA TRANSFERENCIA DEL
//*           ARCHIVO DE CARTERAS GUBERNAMENTALES AL PLANAS1F2
//*---------------------------------------------------------------------
//PLL36P00 EXEC  PGM=CTMCND,
//         PARM='ADD COND NBLTND0X_&EMP_SIVA_OK WDATE',COND=(4,LT)
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
//**********************************************************************00010000
//*                 F I N    Z M L C P D 3 6                           *00040000
//**********************************************************************00060000
