//ZMHLPZ24 PROC                                                         00000100
//**********************************************************************00000200
//*                                                                    *00000300
//*                     C A S A   D E   B O L S A                      *00000400
//*                     =========================                      *00000500
//*                     <<  MERCADO DE VALORES >>                      *00000600
//*                                                                    *00000700
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00000800
//*                                                                    *00000900
//*   PROCEDIMIENTO    : ZMHLPZ24                                      *00001000
//*                                                                    *00001100
//*   OBJETIVO         : MOSTRAR EL RESULTADO DEFINITIVO DE UN CANJE,  *00001200
//*                      SPLIT O REVERSPLIT                            *00001300
//*                                                                    *00001400
//*   CORRE ANTES DE   : NINGUNO                                       *00001500
//*                                                                    *00001600
//*   CORRE DESPUES DE : NINGUNO                                       *00001700
//*                                                                    *00001800
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO.                *00001900
//*                                                                    *00002000
//*   FECHA            : AGOSTO  2003                                  *00002100
//*                                                                    *00002200
//*   AUTOR            : OSCAR URBANO F. (GETRONICS).                  *00002300
//*                                                                    *00002400
//*                                                                    *00002500
//**********************************************************************00002600
//*      SE AGREGA NUEVA SALIDA PARA REPORTE EN CTRL 'D'                00002700
//*      MODIFICO: OUF 210704 GETRONICS                                 00002710
//*  ANS-1.1.0-x:  Modificaciones por cambio en COMMIT-s (Junio 2014)  *
//**********************************************************************00002800
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 FSW INDRA 14FEB16 SE AGREGA EL PASO PHL24P2A PARA LA   *
//*                               ACTUALIZACION DE LA CARTERA ZMDT834  *
//*--------------------------------------------------------------------*
//**********************************************************************00002810
//*                                                                    *00002820
//**********************************************************************00004700
//* PROGRAMA: ZM4EHA06                                                 *00004800
//* FUNCION:  MOSTRAR EL RESULTADO PRELIMINAR O DEFINITIVO             *00004900
//*           (SEGUN SEA EL CASO)  DE UN  CANJE,  SPLIT  O REVERSPLIT) *00005000
//**********************************************************************00005100
//PHL24P03 EXEC PGM=IKJEFT01                                            00005200
//ZMHA06A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMHLPE24,                     00005300
//            DISP=(OLD,PASS)                                           00005400
//*                                                      ANS-1.1.0-INI
//ZMHA06A3 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPE24.ARCH03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=77,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//ZMHA06A4 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPE24.ARCH04,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=150,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//ZMHA06A5 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPE24.ARCH05,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=205,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//ZMHA06A6 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPE24.ARCH06,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=77,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*                                                      ANS-1.1.0-FIN
//ZMHA06R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00005500
//ZMHA06R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00005600
//SYSTSPRT DD SYSOUT=*                                                  00005800
//SYSPRINT DD SYSOUT=*                                                  00005900
//SYSOUT   DD SYSOUT=*                                                  00006000
//SYSDBOUT DD SYSOUT=*                                                  00006100
//SYSABOUT DD SYSOUT=*                                                  00006200
//SYSUDUMP DD DUMMY                                                     00006300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL24T01),DISP=SHR                   00006400
//*                                                      ANS-1.1.0-INI
//*
//********************************************************************
//* PROGRAMA: ZM4EHA07                                               *
//* FUNCION:  ACTUALIZA LA BD SIVA POR CANJE,  SPLIT  O REVERSPLIT   *
//********************************************************************
//PHL24P3A EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHA07A3 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPE24.ARCH03,DISP=SHR
//ZMHA07A4 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPE24.ARCH04,DISP=SHR
//ZMHA07A5 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPE24.ARCH05,DISP=SHR
//ZMHA07A6 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPE24.ARCH06,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL24T03),DISP=SHR
//*                                                      ANS-1.1.0-FIN
//*                                                                     00006500
//**********************************************************************00006600
//* PROGRAMA: ZM4EH431                                                 *00006700
//* FUNCION:  REPORTE DE LAS ORDENES CANCELADAS POR CORTE DE CUPON     *00006800
//*           MERCADO DE CAPITALES                                     *00006900
//**********************************************************************00007000
//PHL24P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007100
//ZMH431A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMHLPE24,                     00007200
//            DISP=(OLD,PASS)                                           00007300
//ZMH431R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00007400
//ZMH431R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00007500
//SYSTSPRT DD SYSOUT=*                                                  00007600
//SYSPRINT DD SYSOUT=*                                                  00007700
//SYSOUT   DD SYSOUT=*                                                  00007800
//SYSDBOUT DD SYSOUT=*                                                  00007900
//SYSABOUT DD SYSOUT=*                                                  00008000
//SYSUDUMP DD DUMMY                                                     00008100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL24T02),DISP=SHR                   00008200
//*                                                                     00008300
//* FS-0.0.0-00-INI
//*--------------------------------------------------------------------*
//* PASO       : PHL24P2A.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG33                                     *
//* OBJETIVO   : ACTUALIZA CARTERA ADMISIBLE POR CANJE, SPLIT          *
//*              Y REVERT SPLIT.                                       *
//*--------------------------------------------------------------------*
//*
//PHL24P2A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM31PPG1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMHLPE24,
//            DISP=SHR
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHL24P2A),
//            DISP=SHR
//*
//* FS-0.0.0-00-FIN
//*VTACTO-INI
//**********************************************************************00006600
//* PROGRAMA: ZM4VTA02                                                 *00006700
//* FUNCION:  GENERACION DE VENTAS EN CORTO PARA NUEVA EMISORA.        *00006800
//*           (SOLO PARA CANJES)                                       *00006900
//**********************************************************************00007000
//PHL24P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007100
//ZMHVTAA1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMHLPE24,                     00007200
//            DISP=(OLD,PASS)                                           00007300
//*
//SYSTSPRT DD SYSOUT=*                                                  00007600
//SYSPRINT DD SYSOUT=*                                                  00007700
//SYSOUT   DD SYSOUT=*                                                  00007800
//SYSDBOUT DD SYSOUT=*                                                  00007900
//SYSABOUT DD SYSOUT=*                                                  00008000
//SYSUDUMP DD DUMMY                                                     00008100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL24T00),DISP=SHR                   00008200
//*VTACTO-FIN
//**********************************************************************00006600
//* PROGRAMA: ZM4EH988                                                 *00006700
//* FUNCION:  ACTUALIZA ESTATUS DE ORDENES CONDICIONADAS EN TABLAS     *00006800
//*           ZMDTCND Y ZMDTEMI ***MERCADO DE CAPITALES***             *00006900
//**********************************************************************00007000
//PHL24P1A EXEC PGM=IKJEFT01,COND=(4,LT)                                00007100
//ZMH988A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMHLPE24,                     00007200
//            DISP=(OLD,PASS)                                           00007300
//*
//SYSTSPRT DD SYSOUT=*                                                  00007600
//SYSPRINT DD SYSOUT=*                                                  00007700
//SYSOUT   DD SYSOUT=*                                                  00007800
//SYSDBOUT DD SYSOUT=*                                                  00007900
//SYSABOUT DD SYSOUT=*                                                  00008000
//SYSUDUMP DD DUMMY                                                     00008100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL24TA1),DISP=SHR                   00008200
//*                                                                     00008300
