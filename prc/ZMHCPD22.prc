//ZMHCPD22  PROC                                                        00010004
//**********************************************************************00020004
//*                                                                    *00030004
//*                                                                    *00030004
//*                   C A S A   D E  B O L S A                         *00030004
//*                   ========================                         *00030004
//*                   <<  MERCADO DE CAPITALES  >>                     *00030004
//*                                                                    *00030004
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00120004
//*                                                                    *00130004
//* PROCESO        :  ZMHCPD22 4A. PARTE.                              *00140004
//*                   CIERRE DE DIA DEL MODULO DE MERCADO DE           *00150004
//*                   CAPITALES DE BANCA PATRIMONIAL.                  *00160004
//*                                                                    *00160004
//* OBJETIVO       :  GENERA ARCHIVO  DE MENSAJES PARA LA INTERFASE    *00170004
//*                   ATENTO.                                          *00180004
//*                                                                    *00190004
//* CORRE                                                              *00200004
//* ANTES DE       :  NO APLICA                                        *00210004
//*                                                                    *00220004
//* DESPUES DE     :  ZMHCPD15(3A.  PARTE CIERRE DE CAPITALES).        *00230004
//*                                                                    *00240004
//* PERIODICIDAD   :  DIARIO                                           *00240004
//*                                                                    *00240004
//* ELABORADO POR  : ERNESTO MANUEL CUAUTLE MARTINEZ                   *00240004
//*                                                                    *00240004
//**********************************************************************00300004
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF  |  FECHA   |USUARIO|  PASO  |DESCRIPCION                     *
//*--------------------------------------------------------------------*
//* AGR   | NOV/2008 |       |PHC22P04|SE INCORPORA EL ENVIO DE MENSAJE*
//*AZERTIA|          |       |        |AL GESTOR DE EVENTOS DE CANALES *
//*       |          |       |        |                                *
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC22P04     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//*                                                         ZM3DG001   *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *
//*                     ===   CAPITALES     ===                        *
//**********************************************************************
//PHC22P05 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD22,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*                                                                     00310004
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO PARA CONFIRMACIóN DE OPERACIóN DE        *
//*            CAPITALES PARA ENVIO AL GESTOR DE EVENTOS DE            *
//*            CANALES, VIA BATCH.                                     *
//*            -- ZM4DGD08 --                                          *
//**********************************************************************
//PHC22P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW08A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD22,DISP=SHR
//*
//ZMHW08A2 DD DSN=MBV&AMB..KZ.FIX.GEVE.F&FECHA..E0000100,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=2700,RECFM=FB,BLKSIZE=0,DSORG=PS),
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC22T02),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO SECUENCIAL EN FORMATO TXT,               *
//*            PARA CONFIRMACIóN DE OPERACIóN DE CAPITALES.            *
//*            -- ZM4DHW09 --                                          *
//**********************************************************************
//PHC22P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW09A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD22,DISP=SHR
//*
//ZMHW09A2 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..MSG.SMS.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=184,RECFM=FB,BLKSIZE=0,DSORG=PS),
//         UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC22T01),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO SECUENCIAL EN FORMATO TXT,               *
//*            PARA CONFIRMACIóN DE OPERACIóN DE CAPITALES.            *
//*            -- ZM4DHW09 --                                          *
//**********************************************************************
//PHC22P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW09A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD22,DISP=SHR
//*
//ZMHW09A2 DD DSN=MBV&AMB..KZ.FIX.TXTENT.MDC1.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=184,RECFM=FB,BLKSIZE=0,DSORG=PS),
//         UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC22T01),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROL-M, INDICANDO QUE YA      *
//*            TERMINO DE GENERARSE EL ARCHIVO DE MENSAJES ATENTO      *
//*            PARA BANCA PATRIMONIAL, Y QUE SEA TOMADA POR PU, PARA   *
//*            QUE SE ACTIVE EL PROCESO KZJCMDC1.                      *
//* PROGRAMA: IOACND                                                   *
//*PHC22P01 EXEC  PGM=IOACND,COND=(4,LT),                              *
//*         PARM='ADD COND BCHCND22_OK    WDATE'                       *
//*DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG                *
//*DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES                *
//*STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD                *
//*======== SE INHIBE CONDICION DE ENVIO DE MENSAJES DE ATENTO ========*
//**********************************************************************
//*
//**********************************************************************
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROL-M, INDICANDO QUE YA      *
//*            TERMINO DE GENERARSE EL ARCHIVO DE MENSAJES             *
//*            SMS & ALERTAS DE BANCA PATRIMONIAL, PARA QUE SEA TOMADA *
//*            POR EL GESTOR DE EVENTOS DEL AREA DE CANALES.           *
//* PROGRAMA: IOACND                                                   *
//**********************************************************************
//PHC22P00 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND BCHCND22_OK1   WDATE'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
