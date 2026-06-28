//ZMHCPD31  PROC                                                        00010004
//**********************************************************************00020004
//*                                                                    *00030004
//*                   C A S A   D E  B O L S A                         *00030004
//*                   ========================                         *00030004
//*                   <<  C A P I T A L E S  >>                        *00030004
//*                                                                    *00030004
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00120004
//*                                                                    *00130004
//* PROCESO        :  ZMHCPD31                                         *00140004
//*                   CIERRE DE DIA DEL MODULO DE CAPITALES            *00150004
//*                                                                    *00160004
//* OBJETIVO       :  GENERA ARCHIVO DE CLIENTES NACIONALES.           *00170004
//*                                                                    *00190004
//* CORRE                                                              *00200004
//* ANTES DE       :  (CIERRE DE CAPITALES)                            *00210004
//*                                                                    *00220004
//* DESPUES DE     :  ZMHCPD06(3DA. PARTE CIERRE DE CAPITALES).        *00230004
//*                                                                    *00240004
//* PERIODICIDAD   :  DIARIO                                           *00240004
//*                                                                    *00240004
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *00240004
//*                                                                    *00240004
//**********************************************************************00300004
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC31P04     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *
//*                     ===   CAPITALES     ===                        *
//**********************************************************************
//PHC31P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','CBPZPR','     ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD31,
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
//*
//**********************************************************************02080004
//* OBJETIVO : FORMATEO DE REPORTE DE CAPITALES                        *02090004
//* AEO01      -- ZM4DH012 --                                          *02080004
//**********************************************************************02100004
//PHC31P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH012A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD31,DISP=SHR
//*
//ZMH012R1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..EMICAPI.NAC.ORD.R1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=256,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC31T03),DISP=SHR                   02180004
//*                                                                     02190004
//*--------------------------------------------------------------------*02080004
//* PASO     : PHC31P02.                                               *02090004
//* OBJETIVO : CONCATENA LOS ARCHIVOS DE SALIDA (INTERNACIONAL         *02080004
//*            / NACIONAL) A UN SOLO ARCHIVO.                          *
//*--------------------------------------------------------------------*02100004
//PHC31P02 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN  DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZM4ECAPI.ORDENADO.R1,
//           DISP=SHR
//        DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..EMICAPI.NAC.ORD.R1,
//           DISP=SHR
//*
//SORTOUT DD DSN=MXCP.ZM.FIX.INTNAC.CATHECHO,
//           DISP=(NEW,CATLG,DELETE),
//           SPACE=(CYL,(50,25),RLSE),
//           DCB=(DSORG=PS,LRECL=256,RECFM=FB,BLKSIZE=0),
//           UNIT=3390
//*
//SYSOUT  DD SYSOUT=*
//SYSIN   DD DSN=ZIVA.ZME.CONTROL(ZHC31T04),DISP=SHR
//*
//*--------------------------------------------------------------------*02080004
//* PASO     : PHC31P0A.                                               *02090004
//* OBJETIVO : GENERA ARCHIVO PARA SILON/SILOX                         *02080004
//*--------------------------------------------------------------------*02100004
//PHC31P0A EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..EMICAPI.NAC.ORD.R1,
//            DISP=SHR
//SORTOUT  DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..EMICAPI.NAC.ORD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=118,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC06T0B),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : ACTIVA LA CONDICION CBHCND31_IN_SEP_OK EN CONTROL-M,    *
//*            PARA INDICAR QUE TERMINO DE GENERAR EL ARCHIVO DE CTAS. *
//*            NACIONALES.                                             *
//**********************************************************************
//PHC31P01  EXEC  PGM=CTMCND,PARM='ADD COND  CBHCND31_IN_SEP_OK WDATE',
//          COND=(4,LT)
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
