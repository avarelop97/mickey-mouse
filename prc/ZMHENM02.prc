//ZMHENM02 PROC
//*--------------------------------------------------------------------*
//* OBJETIVO     : VALIDA LAS CANCELACIONES DE COMPRA/VENTAS PARA      *
//*                VALIDAR SI CORRESPONDEN A OPERACIONES DEL MES       *
//*                ANTERIOR                                            *
//* FECHA        : MAYO 2019                                           *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : ZNM02T01                                               *
//*   OBJETIVO: GENERA TARJETA DE CONTROL DINAMICA PARA REALIZAR LA    *
//*             DESCARGA DE LA TABLA DE OPERA                          *
//*--------------------------------------------------------------------*
//ZNM02T01 EXEC PGM=IKJEFT01
//*
//SOPERA   DD DSN=MXCP.ZM.FIX.TARJETA.SOPERA.CANCELA.UNLOAD,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZNM02T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZNM02T02                                               *
//*   OBJETIVO: DESCARGA DE LA TABLA OPERA                             *
//*--------------------------------------------------------------------*
//ZNM02T02 EXEC PGM=ADUUMAIN,COND=(04,LT),
//         PARM='MXP1,ZNM02T02,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.OPERA.CANCELA.CPAVTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.TARJETA.SOPERA.CANCELA.UNLOAD,DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZNM02T03                                               *
//*   OBJETIVO: GENERA REGISTRO DE BONIFICACIONES EN LAS TABLAS ZMDT883*
//*             Y ZMDT885 CORRESPONDIENTES A LOS REGISTROS OBTENIDOS DE*
//*             LA TABLA OPERA                                         *
//*--------------------------------------------------------------------*
//ZNM02T03 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.OPERA.CANCELA.CPAVTA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZNM02T03),DISP=SHR
//*
