//ZMHSIA02  PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  C A P I T A L E S >>                       *
//*                                                                    *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  BCHSIA01                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  GENERAR INTERFASE PARA ASSET MANAGEMENT          *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  XXXXXXXX                                         *
//*                                                                    *
//* DESPUES DE     :  XXXXXXXX                                         *
//*                                                                    *
//* PERIODICIDAD   :  REPROCESO                                        *
//*                                                                    *
//* ELABORADO POR  :                                                   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*                                                                    *
//**********************************************************************
//*            ZM4SIA02                                                *
//* OBJETIVO : GENERACION DEL LAYOUT SIASTMV2 PARA EL SAAM             *
//*            CON LOS MOVIMIENTOS DE LOS CONTRATOS BCM                *
//**********************************************************************
//PHSIAP01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMC001A1 DD DSN=MXCP.ZM.FIX.ZM4SIA02.SIASTSMJ,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHBSIA01),DISP=SHR
//*
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : ORDENA ARCHIVO DEL SIASTMNB PARA PODER COMPACTARLO     *
//**********************************************************************
//PHSIAP02 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4SIA02.SIASTSMJ,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASSOR6,
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
//PHSIAP03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS084A1 DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASSOR6,DISP=SHR
//ZMS084A2 DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASPAS6,
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
//PHSIAP04 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASPAS6,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASTMN6,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//         SPACE=(CYL,(50,25),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF04T13),DISP=SHR
//**********************************************************************
//*                       -- ZM4SIA03 --                               *
//* PASO PHF35P0C                                                      *
//* OBJETIVO : PROGRAMA QUE GENERA ARCHIVO SIASTMN2 CON INFORMACION    *
//*            DE CASA DE BOLSA -EDVALCA-    USUARIO = IDAXERS         *
//*  EL ARCHIVO SE TRANSMITE COMO: SIASTMN3, EN CBSTCD04               *
//**********************************************************************
//PHSIAP05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMC002A1 DD DSN=MXCP.ZM.FIX.ZM4SIA03.SIASTSMH,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHBSIA02),DISP=SHR
//*
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : ORDENA ARCHIVO DEL SIASTMNC PARA PODER COMPACTARLO     *
//**********************************************************************
//PHSIAP06 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4SIA03.SIASTSMH,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASSOR7,
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
//PHSIAP07 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS084A1 DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASSOR7,DISP=SHR
//ZMS084A2 DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASPAS7,
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
//PHSIAP08 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASPAS7,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASTMN7,
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
//PHSIAP09 EXEC PGM=ICEMAN,COND=(4,LT)                                  00003300
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASTMN6,DISP=SHR                00003500
//         DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASTMN7,DISP=SHR                00003500
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASTREP,
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
//*                       --    SORT  --                               *
//* PASO PHF35P0K                                                      *
//* OBJETIVO: SORT PARA LA GENERACION DEL NUEVO ARCHIVO RECORTADO      *
//*           ENVIADO AL CAM                                           *
//**********************************************************************
//PHSIAP10 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASTREP,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.EBCM.SIASTYF2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=146,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF35T0K),DISP=SHR
//*
//**********************************************************************
//**********************************************************************
//**********************************************************************
//*                                                                    *
//*     ===   F I N    D E    P R O C E S O   ===                      *
//*     ===        D A T A M A R              ===                      *
//*                                                                    *
//**********************************************************************
//*  PEND           FIN DE PROCEDIMIENTO ZMHFPD35                      *
//**********************************************************************
