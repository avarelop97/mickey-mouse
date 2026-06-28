//ZMUFND17 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA  : ZM (MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO)          *
//*                                                                    *
//* AUTOR    : SOFTTEK (JEGI)                                          *
//*                                                                    *
//* FECHA    : 03-05-2010                                              *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//*GENERA ARCHIVOS PARA LA CNBV DE OPERACIONES Y ORDENES DE CAPITALES. *
//**********************************************************************
//ZLF17T01 EXEC PGM=IKJEFT01
//*
//PI601765 DD DUMMY
//*
//ZMLU80A1 DD DSN=SIVA.MDC.FIX.ASIGN.CNBV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=300,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//*
//ZMLU80A2 DD DSN=SIVA.MDC.FIX.ORDEN.CNBV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=310,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF17T01),DISP=SHR
//*
