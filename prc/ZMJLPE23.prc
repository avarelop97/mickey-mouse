//**********************************************************************
//ZMJLPE23 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                        >>>>  TESORERIA   <<<<                      *
//*                                                                    *
//* PROCESO        :  ACTUALIZACION DE LEYENDAS PARA IMPRESION         *
//*                   DE PROEMIO DE ALTA DE CONTRATO DE BANCA          *
//*                   PATRIMONIAL (SOCIEDADES DE INVERSION)            *
//*                   OPCION=286                                       *
//*                                                                    *
//* OBJETIVO       :  ENVIO DE MUESTRA DE ACUSE DE PROSPECTOS          *
//*                   SOCIEDADES DE INVERSION PARA PERSONAS MORALES    *
//*                   Y FISICAS A SERVIDOR.                            *
//*                                                                    *
//* CORRE A        :  PETICION DEL USUARIO                             *
//*                                                                    *
//* DESPUES DE     :  SIVAXACU                                         *
//*                                                                    *
//* REALIZO        :  AGR (AZERTIA)                                    *
//* FECHA          :  JUNIO  / 2007                                    *
//**********************************************************************
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS EN LINEA Y LOS GRABA  *
//*               EN ARCHIVO SEC. ARCHIVO.                             *
//*                                                          ZM3DG001  *
//**********************************************************************
//PJL23P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE23,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                         -- ZM4EJ793 --                             *
//* PASO:  2      ARCHIVO MUESTRA DE ACUSE UNICO DE PROSPECTOS         *
//*               SOCIEDADES DE INVERSION PARA PERSONAS FISICAS        *
//*               Y PERSONAS MORALES.                                  *
//**********************************************************************
//PJL23P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ793A1 DD DSN=MXCP.ZM.FIX.TES.FISICAS.JLPE23,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=140,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//ZMJ793A2 DD DSN=MXCP.ZM.FIX.TES.MORALES.JLPE23,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=140,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL23T03),DISP=SHR
//*
//**********************************************************************
//*                           -- DMBATCH  --                           *
//* OBJETIVO: REALIZAR LA TRANSFERENCIA DE 4 ARCHIVOS DE HOST          *
//*           AL SERVIDOR (SBBVA04)                                    *
//* ========================                                           *
//*           '\\160.8.1.67\PATRIMONIALMU1\RIESGOS\ACUSEFIS.TXT'       *
//*           MXCP.ZM.FIX.TES.FISICAS.JLPE23                           *
//* ========================                                           *
//*           '\\160.8.1.67\PATRIMONIALMU1\RIESGOS\ACUSEMOR.TXT'       *
//*           MXCP.ZM.FIX.TES.MORALES.JLPE23                           *
//* ========================                                           *
//**********************************************************************
//PJL23P02 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//**
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZJL23T02),DISP=SHR
//**********************************************************************00010000
//*                   F I N     Z M J L P E 2 3                        *00020000
//**********************************************************************00010000
