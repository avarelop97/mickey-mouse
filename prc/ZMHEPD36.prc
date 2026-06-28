//ZMHEPD36  PROC                                                        00010004
//**********************************************************************00020004
//* SISTEMA    :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)               *00120004
//* PROCESO    :  ZMHCPD36                                             *00140004
//* OBJETIVO   :  PRC PARA EJECUTAR PROGRAMAS DE CONCILIACION          *00170004
//*               ENTRE EL SISTEMA SIVA Y BIVA                         *00190004
//* AUTOR      :  INTERNACIONAL DE SISTEMAS                            *00240004
//**********************************************************************00300004
//*                      LOG DE MODIFICACIONES                         *
//*--------------------------------------------------------------------*
//*  MARCA   AUTOR   FECHA  DESCRIPCION                                *
//* ------- ------- ------- ------------------------------------------ *
//**********************************************************************
//*
//**********************************************************************02080004
//* PASO:        PHC36P05                                               02090004
//* PROGRAMA:    IKJEFT01/ZM4DHV60                                      02090004
//* DESCRIPCION: GENERAR ARCHIVO DE HECHOS GENERADOS EN EL DIA          02090004
//*              RECIBE LOS PARAMETROS ENVIADOS DEL DISPARADOR PARA     02090004
//*              REALIZAR EL QUERY DE LOS HECHOS DEL DIA CON LOS        02090004
//*              SOLICITADOS                                            02090004
//**********************************************************************02100004
//PHC36P05 EXEC PGM=IKJEFT01
//*
//ZMHU60A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZMHCPE13,DISP=SHR
//*
//ZMOH60A2 DD DSN=MXCP.ZM.FIX.ARCH.ZMHEPD36.HECHOS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=63,BLKSIZE=0),
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC36T07),DISP=SHR                   02180004
//*                                                                     02190004
//**********************************************************************02080004
//* PASO:        PHC36P04                                               02090004
//* PROGRAMA:    ICEMAN                                                 02090004
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE HECHOS GENERADOS EN EL DIA02090004
//**********************************************************************02100004
//PHC36P04 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ARCH.ZMHEPD36.HECHOS,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ARCH.ZMHEPD36.HECHOS.ORD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=63,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC36T06),DISP=SHR                     02180004
//*                                                                     02190004
//**********************************************************************02080004
//* PASO:        PHC36P03                                               02090004
//* PROGRAMA:    IKJEFT01/ZM4DHV54                                      02090004
//* DESCRIPCION: MODIFICACION DEL FORMATO DE FECHA DEL ARCHIVO BIVA     02090004
//*              RECIBE LOS PARAMETROS ENVIADOS DEL DISPARADOR PARA     02090004
//*              REALIZAR EL QUERY DE LOS HECHOS DEL DIA CON LOS FILTROS02090004
//*              SOLICITADOS                                            02090004
//**********************************************************************02100004
//PHC36P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHU54A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZMHCPE13,DISP=SHR
//ZMHU54A2 DD DSN=MXCP.ZM.FIX.ARCH.BIVA,DISP=SHR
//*
//ZMOH54A3 DD DSN=MXCP.ZM.FIX.ARCH.BIVA.A,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=63,BLKSIZE=0),
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC36T05),DISP=SHR                   02180004
//*                                                                     02190004
//**********************************************************************02080004
//* PASO:        PHC36P02                                               02090004
//* PROGRAMA:    ICEMAN                                                 02090004
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE BIVA                      02090004
//**********************************************************************02100004
//PHC36P02 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ARCH.BIVA.A,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ARCH.ZMHEPD36.BIVA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=63,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC36T04),DISP=SHR                     02180004
//*                                                                     02190004
//**********************************************************************02080004
//* PASO:        PHC36P01                                               02090004
//* PROGRAMA:    IKJEFT01/ZM4DHV65                                      02090004
//* DESCRIPCION: GENERAR REPORTE 1 DE CONCILIACION                      02090004
//*              CON LOS ARCHIVOS DE HECHOS GENERA EL REPORTE DE        02090004
//*              CONCILIACION DE HECHOS SIVA X BIVA                     02090004
//**********************************************************************02100004
//PHC36P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV65A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZMHCPE13,DISP=SHR
//ZMHV65A2 DD DSN=MXCP.ZM.FIX.ARCH.ZMHEPD36.HECHOS.ORD,DISP=SHR
//ZMHV65A3 DD DSN=MXCP.ZM.FIX.ARCH.ZMHEPD36.BIVA,DISP=SHR
//*
//ZMHV65R1 DD DSN=MXCP.ZM.FIX.ARCH.ZMHEPD36.CONCIL1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC36T02),DISP=SHR                   02180004
//*
//**********************************************************************
//* PASO:        PHC36P00
//* PROGRAMA:    IKJEFT01/ZM4DHV66
//* DESCRIPCION: GENERAR REPORTE 2 DE CONCILIACION
//*              CON LAS DIFERENCIAS EN LA CONCILIACION SIVA VS BIVA
//**********************************************************************
//PHC36P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV66A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZMHCPE13,DISP=SHR
//ZMHV66A2 DD DSN=MXCP.ZM.FIX.ARCH.ZMHEPD36.HECHOS.ORD,DISP=SHR
//ZMHV66A3 DD DSN=MXCP.ZM.FIX.ARCH.ZMHEPD36.BIVA,DISP=SHR
//*
//ZMHV66R1 DD DSN=MXCP.ZM.FIX.ARCH.ZMHEPD36.CONCIL2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=193,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC36T00),DISP=SHR
//*
//**********************************************************************
//* PASO:        PHC36P0A
//* PROGRAMA:    IKJEFT01
//* DESCRIPCION: GENERAR REPORTE A CONTR-D
//**********************************************************************
//PHC06P0A EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ARCH.ZMHEPD36.CONCIL1,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO:        PHC36P0B
//* PROGRAMA:    IKJEFT01
//* DESCRIPCION: GENERAR REPORTE A CONTR-D
//**********************************************************************
//PHC06P0B EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ARCH.ZMHEPD36.CONCIL2,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
