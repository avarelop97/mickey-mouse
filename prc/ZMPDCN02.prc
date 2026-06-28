//ZMPDCN02 PROC
//*
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : ZMPDCN02                                             *
//* OBJETIVO    : GENERAR DE INFORMACION COMPLEMENTARIA PARA GL.       *
//* REALIZO     : FABRICA DE SOFTWARE BBVA BANCOMER (XM09287)          *
//* FECHA       : 20/OCTUBRE/2010.                                     *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*                                                                    *
//**********************************************************************
//* PASO        : PHCN0201.                                            *
//* PROGRAMA    : IKJEFT01/ZM4MH015                                    *
//* DESCRIPCION : GENERA DE INFORMACION COMPLEMENTARIA GL.             *
//**********************************************************************
//PHCN0201 EXEC PGM=IKJEFT01
//*
//ZMFH0201 DD DSN=MXCP.ZM.FIX.CNBV.COMISION.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=106,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHFC2T01),DISP=SHR
//*
//*FJSS-INI
//**********************************************************************00385100
//* PASO       : PHCN020A.                                             *00385200
//* UTILERIA   : ADUUMAIN                                              *00385300
//* OBJETIVO   : DESCARGA DE OPERA/OPERAVA COMPRAS/VENTAS DEL DIA      *00385400
//**********************************************************************00385500
//PHCN020A EXEC PGM=ADUUMAIN,                                           00385600
//         PARM='MXP1,PHCN020A,NEW,,MSGLEVEL(1)'                        00385700
//*                                                                     00385800
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00385900
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00386000
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00386100
//*                                                                     00386200
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMPDCN02.OPERA.DIA,                       00386300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00386400
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00386500
//            SPACE=(CYL,(500,250),RLSE)                                00386600
//*                                                                     00386700
//SYSTSPRT DD SYSOUT=*                                                  00386800
//SYSPRINT DD SYSOUT=*                                                  00386900
//SYSPUNCH DD SYSOUT=*                                                  00387000
//SYSCNTL  DD DUMMY                                                     00387100
//*                                                                     00387200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHFC3T0A),DISP=SHR                   00387300
//*                                                                     00387500
//**********************************************************************
//* PASO        : PHCN0202.                                            *
//* PROGRAMA    : IKJEFT01/ZM4MH032                                    *
//* DESCRIPCION : GENERA REPORTE DE COMISIONES ACTUALIZADO PARA GL     *
//**********************************************************************
//PHCN0202 EXEC PGM=IKJEFT01
//*
//ZMFH020A DD DSN=MXCP.ZM.FIX.ZMPDCN02.OPERA.DIA,DISP=SHR
//*
//ZMFH0202 DD DSN=MXCP.ZM.FIX.CNBV.COMISION.GL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=117,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHFC3T02),DISP=SHR
//*
//*FJSS-FIN
//*
//**********************************************************************
//*                                                                    *
//*                           FIN DE PROCESO                           *
//*                                                                    *
//**********************************************************************
