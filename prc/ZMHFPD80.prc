//ZMHFPD80  PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE CAPITALES  >>                   *
//*                                                                    *
//*                                                                    *00810033
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.).          *00820033
//*                                                                    *00830033
//* PROCESO        :  ZMHFPD80                                         *00840033
//*                                                                    *00840033
//* OBJETIVO       :  REPOTERIA MDC BTRADER                            *00850033
//*                                                                    *00860033
//* CORRE          :  11.15                                            *00870033
//*                                                                    *00910033
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA.   *00920033
//*                                                                    *00930033
//**********************************************************************00970033
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//**********************************************************************
//*--------------------------------------------------------------------*
//*   PASO    : ZMPB8005                                               *
//*   OBJETIVO: GENERA TARJETA DE CONTROL DINAMICA PARA REALIZAR       *
//*             LA DESCARGA DE LAS TABLAS DE ORDENES CONDICIONADAS.    *
//*                     -- ZM4COC03 --                                 *
//*--------------------------------------------------------------------*
//ZMPB8005 EXEC PGM=IKJEFT01                                            00020700
//*                                                                     00020800
//SZMDT882 DD DSN=MXCP.ZM.FIX.ZM4COC03.TARJETA.UNLOAD,                  00020900
//            DISP=(NEW,CATLG,DELETE),                                  00021000
//            UNIT=3390,                                                00021100
//            SPACE=(CYL,(500,250),RLSE),                               00021200
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS)                00021300
//*                                                                     00021400
//SYSTSPRT DD SYSOUT=*                                                  00021500
//SYSPRINT DD SYSOUT=*                                                  00021600
//SYSOUT   DD SYSOUT=*                                                  00021700
//SYSDBOUT DD SYSOUT=*                                                  00021800
//SYSABOUT DD DUMMY                                                     00021900
//SYSUDUMP DD DUMMY                                                     00022000
//*                                                                     00022100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPB1605),DISP=SHR                   00022200
//*                                                                     00022300
//*--------------------------------------------------------------------*00022400
//*   PASO    : ZMPB8004                                               *00022500
//*   OBJETIVO: REALIZA DESCARGA DE TABLAS PARA ORDENES                *00022600
//*--------------------------------------------------------------------*00022700
//ZMPB8004 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00022800
//         PARM='MXP1,PHATC104,NEW,,MSGLEVEL(1)'                        00022900
//*                                                                     00023000
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00023100
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00023200
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00023300
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.ZM4COC03.ORDENES.UNLOAD,                  00023500
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00023600
//            SPACE=(CYL,(350,90),RLSE),                                00023700
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00023800
//*                                                                     00023900
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSIN    DD DSN=MXCP.ZM.FIX.ZM4COC03.TARJETA.UNLOAD,DISP=SHR          00024400
//*                                                                     00024500
//**********************************************************************00024600
//*   PASO    : ZMPB8003                                               *00022500
//*   OBJETIVO: ELIMINA LAS POSICIONES DE LOS CAMPOS QUE PUEDEN        *00022500
//*             CONTENER NULLOS.                                       *00024700
//**********************************************************************00024800
//ZMPB8003 EXEC PGM=ICEMAN,COND=(4,LT)                                  00024900
//*                                                                     00025000
//SYSOUT   DD  SYSOUT=*                                                 00025100
//SORTIN   DD  DSN=MXCP.ZM.FIX.ZM4COC03.ORDENES.UNLOAD,                 00025200
//             DISP=SHR                                                 00025300
//*                                                                     00025400
//SORTOUT  DD  DSN=MXCP.ZM.FIX.ZM4COC03.ORDENES.UNLOADXX,               00025500
//             DISP=(NEW,CATLG,DELETE),                                 00025600
//             UNIT=3390,                                               00025700
//             DCB=(DSORG=PS,LRECL=173,RECFM=FB,BLKSIZE=0),             00025800
//             SPACE=(CYL,(100,50),RLSE)                                00025900
//*                                                                     00026000
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMPB1615),DISP=SHR                  00026600
//*                                                                     00026700
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO DE ORDENES PARA LA BANCA PATRIMONIAL     *
//*            -- ZM4DHW03 --                                          *
//**********************************************************************
//ZMPB8002 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//ORDENESC DD DSN=MXCP.ZM.FIX.ZM4COC03.ORDENES.UNLOADXX,
//         DISP=SHR
//HECHOSBP DD DSN=MXCP.ZM.FIX.EBCM.ZMHCPD15.ORDENEX.BCM,
//        DISP=(NEW,CATLG,DELETE),
//        DCB=(LRECL=245,BLKSIZE=0,RECFM=FB,DSORG=PS),
//        UNIT=3390,
//        SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15T00),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO DE ORDENES PARA LA BANCA PATRIMONIAL     *
//*            -- ZM4DHW05 --                                          *
//**********************************************************************
//ZMPB8001 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//ENTRADA1 DD DSN=MXCP.ZM.FIX.EBCM.ZMHCPD15.ORDENEX.BCM,
//         DISP=SHR
//SALIDA01 DD DSN=MXCP.ZM.FIX.EBCM.ZMHCPD15.ORDENES.BCM,
//        DISP=(NEW,CATLG,DELETE),
//        DCB=(LRECL=247,BLKSIZE=0,RECFM=FB,DSORG=PS),
//        UNIT=3390,
//        SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15T0E),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*     ===   F I N    D E    P R O C E S O   ===                      *
//*     ===        C A P I T A L E S          ===                      *
//*                                                                    *
//**********************************************************************
//*  PEND           FIN DE PROCEDIMIENTO ZMHFPD80                      *
//**********************************************************************
