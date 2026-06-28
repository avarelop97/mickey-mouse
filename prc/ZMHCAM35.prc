//ZMHCAM35  PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//* PROCESO        :  CBHCAM35                                         *
//*                                                                    *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  XXXXXXXX                                         *
//*                                                                    *
//* DESPUES DE     :  XXXXXXXX                                         *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO                                           *
//*                                                                    *
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ.                 *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//**********************************************************************
//PJL57P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.CAM.REPROCES,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//*                       -- ZM4OC001 --                               *
//* PASO PHF35P0B                                                      *
//* OBJETIVO : PROGRAMA QUE GENERA ARCHIVO SIASTMN2 CON INFORMACION    *
//*            DE BANCA PATRIMONIAL   USUARIO = IDAXERS                *
//*  EL ARCHIVO SE TRANSMITE COMO: SIASTMNB, EN CBSTCD04               *
//**********************************************************************
//PHF35P0B EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMC001A1 DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASTMNB,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF35T0B),DISP=SHR
//*
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : ORDENA ARCHIVO DEL SIASTMNB PARA PODER COMPACTARLO     *
//**********************************************************************
//PHF35P0C EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASTMNB,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASSOR2,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//         SPACE=(CYL,(50,25),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF04T11),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DS084
//* OBJETIVO: UNIFICA REGISTROS IGUALES Y SUMA SUS MONTOS
//*---------------------------------------------------------------------
//PHF35P0D EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS084A1 DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASSOR2,DISP=SHR
//ZMS084A2 DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASPAS2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=334,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF04T12),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : ORDENA ARCHIVO DEL CAM PARA PODER COMPACTARLO          *
//**********************************************************************
//PHF35P0E EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASPAS2,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASTMN2,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//         SPACE=(CYL,(50,25),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF04T13),DISP=SHR
//**********************************************************************
//*                       -- ZM4OC002 --                               *
//* PASO PHF35P0C                                                      *
//* OBJETIVO : PROGRAMA QUE GENERA ARCHIVO SIASTMN2 CON INFORMACION    *
//*            DE CASA DE BOLSA -EDVALCA-    USUARIO = IDAXERS         *
//*  EL ARCHIVO SE TRANSMITE COMO: SIASTMN3, EN CBSTCD04               *
//**********************************************************************
//PHF35P0F EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMC002A1 DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASTMNC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF35T0C),DISP=SHR
//*
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : ORDENA ARCHIVO DEL SIASTMNC PARA PODER COMPACTARLO     *
//**********************************************************************
//PHF35P0G EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASTMNC,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASSOR3,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//         SPACE=(CYL,(50,25),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF04T11),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DS084
//* OBJETIVO: UNIFICA REGISTROS IGUALES Y SUMA SUS MONTOS
//*---------------------------------------------------------------------
//PHF35P0H EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS084A1 DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASSOR3,DISP=SHR
//ZMS084A2 DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASPAS3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=334,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF04T12),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : ORDENA ARCHIVO DEL CAM PARA PODER COMPACTARLO          *
//**********************************************************************
//PHF35P0I EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASPAS3,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASTMN3,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//         SPACE=(CYL,(50,25),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF04T13),DISP=SHR
//**********************************************************************00002600
//*                       --    SORT  --                               *00002900
//* PASO PHF35P0D                                                      *00002900
//* OBJETIVO: SORT PARA LA UNION DE ARCHIVOS SIASTMN2 BP Y CB-EDVALCA- *00002700
//*  EL ARCHIVO SE TRANSMITE COMO: SIASTMNV, EN CBSTCD04               *
//**********************************************************************00003200
//PHF35P0J EXEC PGM=ICEMAN,COND=(4,LT)                                  00003300
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASTMN2,DISP=SHR                00003500
//         DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASTMN3,DISP=SHR                00003500
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASTMNV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=334,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF35T0D),DISP=SHR
//*
//**********************************************************************
