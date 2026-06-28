//ZMHFPD35  PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  C A P I T A L E S >>                       *
//*                                                                    *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBHFCD35                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  GENERAR INTERFASE PARA DATAMAR.                  *
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
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHF35P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//*                                                         ZM3DH001   *
//**********************************************************************
//PHF35P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&AMB')
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD35,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                       -- ZM4DHW98 --                               *
//* OBJETIVO : PROGRAMA QUE GENERA ARCHIVO DE MOVIMIENTOS  PARA        *
//*            INTERFAS DE DATAMAR.                                    *
//**********************************************************************
//*PHF35P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ZMHW98A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD35,DISP=SHR
//*ZMHW98A2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..DATAMAR,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=248,BLKSIZE=0),
//*            UNIT=3390,
//*            SPACE=(CYL,(4,2),RLSE)
//*SYSIN    DD DUMMY
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF35T01),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : PROGRAMA QUE GENERA ARCHIVO DE MOVIMIENTOS  PARA        *
//*            INTERFAS DE DATAMAR ORDENADO.                           *
//**********************************************************************
//*PHF35P00 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//*SORTIN   DD DSN=MXCP.ZM.FIX.MDC.EBCM.DATAMAR,DISP=SHR
//*SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.EBCM.DATAMAR.ORDENADO,
//*         DISP=(NEW,CATLG,DELETE),
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=248,BLKSIZE=0),
//*         UNIT=3390,
//*         SPACE=(CYL,(4,2),RLSE)
//*SYSOUT   DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF35T00),DISP=SHR
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO CON INTERFAZ DATAMAR                     *
//*            MXCP.ZM.FIX.MDC.EBCM.DATAMAR.ORDENADO                   *
//*  A ===>    MBVP.PX.FIX.SYPDMUV.INTERFAS                            *
//**********************************************************************
//*PHF35P0A EXEC PGM=ICEGENER,COND=(4,LT)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.FIX.MDC.EBCM.DATAMAR.ORDENADO,DISP=SHR
//*SYSUT2   DD DSN=MXCP.PX.FIX.SYPDMUV.INTERFAS,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(4,2),RLSE),
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=248,BLKSIZE=0),
//*            UNIT=3390
//*SYSIN    DD DUMMY
//*
//**********************************************************************
//*                       -- ZM4OC00E --                               *
//* PASO PHF35P0B                                                      *
//* OBJETIVO : PROGRAMA QUE GENERA ARCHIVO SIASTMN2 CON INFORMACION    *
//*            DE BANCA PATRIMONIAL   USUARIO = IDAXERS                *
//*  EL ARCHIVO SE TRANSMITE COMO: SIASTMNB, EN CBSTCD04               *
//**********************************************************************
//PHF35P0B EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMC001A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASTMNB,
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
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASTMNB,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASSOR2,
//          DISP=(NEW,CATLG,DELETE),
//          DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//          SPACE=(CYL,(50,25),RLSE),
//          UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF04T11),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DS084
//* OBJETIVO: UNIFICA REGISTROS IGUALES Y SUMA SUS MONTOS
//*---------------------------------------------------------------------
//PHF35P0D EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS084A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASSOR2,DISP=SHR
//ZMS084A2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASPAS2,
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
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASPAS2,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASTMN2,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//         SPACE=(CYL,(50,25),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF04T13),DISP=SHR
//**********************************************************************
//*                       -- ZM4OC00F --                               *
//* PASO PHF35P0C                                                      *
//* OBJETIVO : PROGRAMA QUE GENERA ARCHIVO SIASTMN2 CON INFORMACION    *
//*            DE CASA DE BOLSA -EDVALCA-    USUARIO = IDAXERS         *
//*  EL ARCHIVO SE TRANSMITE COMO: SIASTMN3, EN CBSTCD04               *
//**********************************************************************
//PHF35P0F EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMC002A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASTMNC,
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
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASTMNC,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASSOR3,
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
//ZMS084A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASSOR3,DISP=SHR
//ZMS084A2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASPAS3,
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
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASPAS3,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASTMN3,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//         SPACE=(CYL,(50,25),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF04T13),DISP=SHR
//**********************************************************************
//*                       --    SORT  --                               *
//* PASO PHF35P0J                                                      *
//* OBJETIVO: SORT PARA LA UNION DE ARCHIVOS SIASTMN2 BP Y CB-EDVALCA- *
//*  EL ARCHIVO SE TRANSMITE COMO: SIASTMNV, EN CBSTCD04               *
//**********************************************************************
//PHF35P0J EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASTMN2,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASTMN3,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASTMNV,
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
//*           ENVIADO AL SAMM                                          *
//**********************************************************************
//PHF35P0K EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASTMNV,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASTYF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=146,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF35T0K),DISP=SHR
//*
//**********************************************************************
//*
