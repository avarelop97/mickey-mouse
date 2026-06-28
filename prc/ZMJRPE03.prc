//ZMJRPE03 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMJRPE03.                                           *
//* OBJETIVO     :                                                     *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PROCESO QUE VALIDAD EL CODIGO GIIN                                 *
//*                                                                    *
//*--------------------------------------------------------------------*
//*====================================================================*
//* PASO    : ZMJRP010                                                 *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDTFAM                            *
//* PROGRAMA : ADUUMAIN                                                *
//**********************************************************************
//ZMJRP010 EXEC PGM=ADUUMAIN,
//            PARM='MXP1,ZMJRPE03,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ZMDTFAM.DESC,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=365,BLKSIZE=0)
//SYSPUNCH DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJR01TR3),DISP=SHR
//*
//*====================================================================*
//* PASO    : ZMJRP005                                                 *
//* OBJETIVO : VALIDA EL CODIGO GIIN PARA ACTUALIZAR LA CLASIFICACION  *
//*            FATCA EN LA TABLA ZMDTFAM                               *
//* PROGRAMA : IKJEFT01                                                *
//**********************************************************************
//ZMJRP005 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMENTFAM DD DISP=SHR,DSN=MXCP.ZM.TMP.ZMDTFAM.DESC
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.DES.ZMDTFAM.ACTUAL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=365,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJR02TR3),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZMJRP004                                               *
//* PROGRAMA :  ADUUMAIN                                               *
//* OBJETIVO :  GENERA ARCHIVO SYSPUNCH DE LA TABLA ZMDTFAM            *
//*--------------------------------------------------------------------*
//ZMJRP004 EXEC PGM=ADUUMAIN,COND=(04,LT),
//         PARM='MXP1,ZMJRPE03,NEW,,MSGLEVEL(1)'
//STEPLIB  DD  DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DUMMY
//SYSCNTL  DD DSN=MXCP.ZM.FIX.PONCH.ZMDTFAM.SYSP1,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE),
//            UNIT=3390
//*
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJR03TR3),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMJRP003                                              *
//* PROGRAMA   : ICEMAN                                                *
//* DESCRIPCION: SE LE QUITAN LOS PRIMEROS 4 RENGLONES AL SYSPONCH     *
//*--------------------------------------------------------------------*
//ZMJRP003 EXEC PGM=ICEMAN,COND=(04,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PONCH.ZMDTFAM.SYSP1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PONCH.ZMDTFAM.SYSP2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJR04TR3),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMJRP002                                              *
//* PROGRAMA   : ICEMAN                                                *
//* DESCRIPCION: COMPRIME CAMPOS NUMERICOS                             *
//* GENERA ARCHIVO: MXCP.ZM.FIX.DES.ZMDTFAM.ACTUAL2                    *
//*                 PARA CARGAR LA TABLA ZMDTFAM                       *
//*--------------------------------------------------------------------*
//ZMJRP002 EXEC PGM=ICEMAN,COND=(04,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.DES.ZMDTFAM.ACTUAL,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.DES.ZMDTFAM.ACTUAL2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=347,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJR05TR3),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO        : ZMJRP001                                             *
//* PROGRAMA    : MBMCLOAD                                             *
//* DESCRIPCION : CARGA DE LA TABLA ZMDTFAM                            *
//*--------------------------------------------------------------------*
//ZMJRP001 EXEC MBMCLOAD,COND=(04,LT),
//         UID=ZMJRPE04.LOMEN,
//         ENTORNO=PRODUSVP,
//         NOMTAB=ZMDTFAM,
//         OPTION=REPLACE,
//         INPPUN=DSN=MXCP.ZM.FIX.PONCH.ZMDTFAM.SYSP2,
//         INPREC=DSN=MXCP.ZM.FIX.DES.ZMDTFAM.ACTUAL2
//*
//
