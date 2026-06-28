//ZMHCPD35  PROC                                                        00010004
//**********************************************************************00020004
//* SISTEMA    :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)               *00120004
//* PROCESO    :  ZMHCPD35                                             *00140004
//* OBJETIVO   :  PRC PARA EJECUTAR PROGRAMAS DE CONCILIACION          *00170004
//*               ENTRE EL SISTEMA SIVA Y CIBOLSA                      *00190004
//* AUTOR      :  INTERNACIONAL DE SISTEMAS                            *00240004
//**********************************************************************00300004
//*                      LOG DE MODIFICACIONES                         *
//*--------------------------------------------------------------------*
//*  MARCA   AUTOR   FECHA  DESCRIPCION                                *
//* ------- ------- ------- ------------------------------------------ *
//**********************************************************************
//*
//**********************************************************************02080004
//* PASO:        PHC35P05                                               02090004
//* PROGRAMA:    IKJEFT01/ZM4DHV52                                      02090004
//* DESCRIPCION: GENERAR ARCHIVO DE HECHOS GENERADOS EN EL DIA          02090004
//*              RECIBE LOS PARAMETROS ENVIADOS DEL DISPARADOR PARA     02090004
//*              REALIZAR EL QUERY DE LOS HECHOS DEL DIA CON LOS        02090004
//*              SOLICITADOS                                            02090004
//**********************************************************************02100004
//PHC35P05 EXEC PGM=IKJEFT01
//*
//ZMHU52A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZMHCPE12,DISP=SHR
//*
//ZMOH52A2 DD DSN=MXCP.ZM.FIX.ARCH.ZMHCPD35.HECHOS,
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
//SYSPRINT DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC35T05),DISP=SHR                   02180004
//*                                                                     02190004
//**********************************************************************02080004
//* PASO:        PHC35P04                                               02090004
//* PROGRAMA:    ICEMAN                                                 02090004
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE HECHOS GENERADOS EN EL DIA02090004
//**********************************************************************02100004
//PHC35P04 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ARCH.ZMHCPD35.HECHOS,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ARCH.ZMHCPD35.HECHOS.ORD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=63,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC35T04),DISP=SHR                     02180004
//*                                                                     02190004
//**********************************************************************02080004
//* PASO:        PHC35P03                                               02090004
//* PROGRAMA:    IKJEFT01/ZM4DHV54                                      02090004
//* DESCRIPCION: MODIFICACION DEL FORMATO DE FECHA DEL ARCHIVO CIBOLSA  02090004
//*              RECIBE LOS PARAMETROS ENVIADOS DEL DISPARADOR PARA     02090004
//*              REALIZAR EL QUERY DE LOS HECHOS DEL DIA CON LOS FILTROS02090004
//*              SOLICITADOS                                            02090004
//**********************************************************************02100004
//PHC35P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHU54A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZMHCPE12,DISP=SHR
//ZMHU54A2 DD DSN=MXCP.ZM.FIX.ARCH.CIBOLSA,DISP=SHR
//*
//ZMOH54A3 DD DSN=MXCP.ZM.FIX.ARCH.CIBOLSA.A,
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
//SYSPRINT DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC35T03),DISP=SHR                   02180004
//*                                                                     02190004
//**********************************************************************02080004
//* PASO:        PHC35P02                                               02090004
//* PROGRAMA:    ICEMAN                                                 02090004
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE CIBOLSA                   02090004
//**********************************************************************02100004
//PHC35P02 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ARCH.CIBOLSA.A,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ARCH.ZMHCPD35.CIBOLSA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=63,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC35T02),DISP=SHR                     02180004
//*                                                                     02190004
//**********************************************************************02080004
//* PASO:        PHC35P01                                               02090004
//* PROGRAMA:    IKJEFT01/ZM4DHV55                                      02090004
//* DESCRIPCION: GENERAR REPORTE 1 DE CONCILIACION                      02090004
//*              CON LOS ARCHIVOS DE HECHOS GENRERA EL REPORTE DE       02090004
//*              CONCILIACION DE HECHOS SIVA X BLOQBMV                  02090004
//**********************************************************************02100004
//PHC35P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV55A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZMHCPE12,DISP=SHR
//ZMHV55A2 DD DSN=MXCP.ZM.FIX.ARCH.ZMHCPD35.HECHOS.ORD,DISP=SHR
//ZMHV55A3 DD DSN=MXCP.ZM.FIX.ARCH.ZMHCPD35.CIBOLSA,DISP=SHR
//*
//ZMHV55R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC35T01),DISP=SHR                   02180004
//*
//**********************************************************************02080004
//* PASO:        PHC35P00                                               02090004
//* PROGRAMA:    IKJEFT01/ZM4DHV56                                      02090004
//* DESCRIPCION: GENERAR REPORTE 2 DE CONCILIACION                      02090004
//*              CON LOS ARCHIVOS DE HECHOS GENERA EL REPORTE 2 DE      02090004
//*              CONCILIACION DE HECHOS SIVA X BLOQBMV                  02090004
//**********************************************************************02100004
//PHC35P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV56A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZMHCPE12,DISP=SHR
//ZMHV56A2 DD DSN=MXCP.ZM.FIX.ARCH.ZMHCPD35.HECHOS.ORD,DISP=SHR
//ZMHV56A3 DD DSN=MXCP.ZM.FIX.ARCH.ZMHCPD35.CIBOLSA,DISP=SHR
//*
//ZMHV56R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC35T00),DISP=SHR                   02180004
//*
