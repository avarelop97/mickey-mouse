//ZMHCPD34  PROC                                                        00010004
//**********************************************************************00020004
//* SISTEMA    :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)               *00120004
//* PROCESO    :  ZMHCPD34                                             *00140004
//* OBJETIVO   :  PRC PARA GENERAR ARCHIVO DE HECHOS SIVA              *00170004
//**********************************************************************00300004
//*                      LOG DE MODIFICACIONES                         *
//*--------------------------------------------------------------------*
//*  MARCA   AUTOR   FECHA  DESCRIPCION                                *
//* ------- ------- ------- ------------------------------------------ *
//**********************************************************************
//**********************************************************************02080004
//* PASO:        PHC34P01                                               02090004
//* PROGRAMA:    IKJEFT01                                               02090004
//* DESCRIPCION: GENERAR ARCHIVO DE HECHOS                              02090004
//**********************************************************************02100004
//PHC34P01 EXEC PGM=IKJEFT01
//*
//ZMHV59A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZMHCPE11,DISP=SHR
//ZMHV59A2 DD DSN=MXCP.ZM.FIX.ARCH.ZMHCPD34.HECHOS.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=080,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC34T01),DISP=SHR                   02180004
//*
//**********************************************************************
//* PASO:        PHC36P04
//* PROGRAMA:    ICEMAN
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE HECHOS GENERADOS EN EL DIA
//**********************************************************************
//PHC34P00 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ARCH.ZMHCPD34.HECHOS.A1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ARCH.ZMHCPD34.HECHOS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=080,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC34T00),DISP=SHR
//*
