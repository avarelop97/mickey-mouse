//ZMHCPD62 PROC
//*====================================================================*
//*    NOMBRE            : ZMHCPD62                                    *
//*    APLICATIVO        : ZM@ CASA DE BOLSA Y BANCA PATRIMONIAL       *
//*    PROYECTO          : REFORMA FISCAL 2014.                        *
//*    PERIODICIDAD      : SUBMITIDOR                                  *
//*    OBJETIVO          : REPROCESO DE CALCULO DE COSTO PROMEDIO PARA *
//*                        LA EJECUCION DESDE UN DIA EN ESPECIFICO PARA*
//*                        CUENTA Y CONCEPT CAPTURADOS CON UN COSTO    *
//*                        PROMEDIO INICIAL.                           *
//*    AUTOR             : FABRICA DE SOFTWARE DGCM. (XM26266).        *
//*    FECHA DE CREACION : 25 DE SEPTIEMBRE DE 2014.                   *
//*====================================================================*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*    @DGCM01    FS-DGCM  04MZO15    SE MODIFICA EL PASO PHC62P07 Y   *
//*                                   PHC62P01.                        *
//*--------------------------------------------------------------------*
//*====================================================================*
//* PASO     : PHC62P07                                                *
//* PROGRAMA : ZM4ISR05                                                *
//* OBJETIVO : REPROCESO DE COSTO PROMEDIO CAPITALES.                  *
//*====================================================================*
//PHC62P07 EXEC PGM=IKJEFT01
//*
//ZMISR5R1 DD DSN=MXCP.ZM.FIX.COSPROM.BCM.ORI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=186,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*
//ZMISR5R2 DD DSN=MXCP.ZM.FIX.COSPROM.BCM.NVO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=186,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*
//ZMISR5R3 DD DSN=MXCP.ZM.FIX.COSPROM.CBP.ORI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=186,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*
//ZMISR5R4 DD DSN=MXCP.ZM.FIX.COSPROM.CBP.NVO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=186,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*
//ZMISR5A1 DD DSN=MXCP.ZM.FIX.COSPROM.ARCH.ORI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=247,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*
//ZMISR5A2 DD DSN=MXCP.ZM.FIX.COSPROM.ARCH.NVO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=247,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*@DGCM01-I
//ZMISR5A3 DD DSN=MXCP.ZM.FIX.COSPROM.TRASPAS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=080,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*@DGCM01-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC62T07),DISP=SHR
//*====================================================================*
//* PASO     : PHC62P06                                                *
//* PROGRAMA : ICEMAN                                                  *
//* OBJETIVO : SORT DE REPORTES PARA BANCA.                            *
//*====================================================================*
// IF  PHC62P07.RC EQ 01 THEN
//PHC62P06 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.COSPROM.BCM.ORI,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.COSPROM.BCM.NVO,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.COSPROM.INICIAL.BCM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=186,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC62T06),DISP=SHR
//*====================================================================*
//* PASO     : PHC62P05                                                *
//* PROGRAMA : ICEGENER                                                *
//* OBJETIVO : COPY DE REPORTE PARA SER ENVIADO A IMPRIMIR             *
//*====================================================================*
//PHC62P05 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.COSPROM.INICIAL.BCM,DISP=SHR
//*
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*====================================================================*
//* PASO     : PHC62P04                                                *
//* PROGRAMA : ICEMAN                                                  *
//* OBJETIVO : SORT DE ARCHIVOS PARA BANCA                             *
//*====================================================================*
//PHC62P04 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.COSPROM.ARCH.ORI,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.COSPROM.ARCH.NVO,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.COSPROM.INICIAL.ARCHIVO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=247,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC62T06),DISP=SHR
//*====================================================================*
//* PASO     : PHC62P03                                                *
//* PROGRAMA : CTMCND                                                  *
//* OBJETIVO : SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTRL-M    *
//*            Y ENVIAR PROCESO DE TRANSMISION.                        *
//*====================================================================*
//PHC62P03 EXEC PGM=CTMCND,PARM='ADD COND CBHCND621_OK WDATE',
//         COND=(4,LT)
//*
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
// ENDIF
//*====================================================================*
//* PASO     : PHC62P02                                                *
//* PROGRAMA : ICEMAN                                                  *
//* OBJETIVO : SORT DE REPORTES PARA CASA                              *
//*====================================================================*
// IF  PHC62P07.RC EQ 02 THEN
//PHC62P02 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.COSPROM.CBP.ORI,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.COSPROM.CBP.NVO,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.COSPROM.INICIAL.CBP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=186,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC62T06),DISP=SHR
//*====================================================================*
//* PASO     : PHC62P01                                                *
//* PROGRAMA : ICEGENER                                                *
//* OBJETIVO : COPY DE REPORTE PARA SER ENVIADO A IMPRIMIR             *
//*====================================================================*
//*@DGCM01-I
//*PHC62P01 EXEC PGM=ICEGENER,COND=(4,LT)
//**
//*SYSUT1   DD DSN=MXCP.ZM.FIX.COSPROM.INICIAL.CBP,DISP=SHR
//**
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//*SYSOUT   DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD DUMMY
//PHC62P01 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.COSPROM.ARCH.ORI,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.COSPROM.ARCH.NVO,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.COSPROM.INICIAL.ARCHIVO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=247,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC62T06),DISP=SHR
//*
//*@DGCM01-F
//*====================================================================*
//* PASO     : PHC62P00                                                *
//* PROGRAMA : CTMCND                                                  *
//* OBJETIVO : SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTRL-M    *
//*            Y ENVIAR PROCESO DE TRANSMISION.                        *
//*====================================================================*
//PHC62P00 EXEC PGM=CTMCND,PARM='ADD COND CBHCND622_OK WDATE',
//         COND=(4,LT)
//*
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
// ENDIF
