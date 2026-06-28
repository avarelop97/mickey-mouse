//ZMSFPD22 PROC
//********************************************************************
//* SISTEMA  : ZM - HOST / SIVA                                      *
//* PROCESO  : ZMSFPD22                                              *
//* PERIODIC : DIARIA                                                *
//* OBJETIVO : DENTRO DEL APLICATIVO HOST / SIVA SE GENERAN ARCHIVOS *
//*            CON INFORMACION BURSATIL PARA EL APROVISIONAMIENTO    *
//*            DE ARCHIVOS SISTEMA RIC.                              *
//*            (AGP)                                                 *
//* FECHA : JUN/2010            AUTHOR: FSW-STEFANINI MX (XMA3057).  *
//*------------------------------------------------------------------*
//* LOG DE MODIFICACIONES.                                           *
//*------------------------------------------------------------------*
//* MODIF.    FECHA    DESCRIPCION                                   *
//* XMZ7865 MAR/2016   SE AGREGA FILTRO POR ARCHIVO ENV DE ESPAñA    *
//********************************************************************
//*------------------------------------------------------------------*
//* PASO        : PSF22P20                                           *
//* DESCRIPCION : CREAR INTERFASES PARA RIC (MAESTRO DE VALORES Y    *
//*               OPERACIONES DE VALORES.                            *
//* PROGRAMA    : ZM4CR023                                           *
//*------------------------------------------------------------------*
//PSF22P20 EXEC PGM=IKJEFT01
//ZMCR23A1 DD DSN=MXCP.ZM.FIX.RIC.MAESVALO.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//            UNIT=3390
//ZMCR23A2 DD DSN=MXCP.ZM.FIX.RIC.OPERVALO.MAEST.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=300,BLKSIZE=0),
//            UNIT=3390
//ZMCR23A3 DD DSN=MXCP.ZM.FIX.RIC.CONTROLE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=42,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF22T20),DISP=SHR
//*
//*------------------------------------------------------------------*
//* PASO        : PSF22P18                                           *
//* DESCRIPCION : ORDENA EL ARCHIVO DE OPERACIÓN DE VALORES POR      *
//*               RFC PARA MATCH CON ARCH DE ESPAñA                  *
//* PROGRAMA    : ICEMAN                                             *
//*------------------------------------------------------------------*
//PSF22P18 EXEC  PGM=ICEMAN,COND=(4,LT)                                 00530018
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.RIC.OPERVALO.MAEST.F&FECHA,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RIC.OPERVALO.ORDRFC.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=300,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF22T18),DISP=SHR                   00630018
//*
//*------------------------------------------------------------------*
//* PASO        : PSF22P16                                           *
//* DESCRIPCION : MATCH PARA EXTRAER LAS OPERACIONES A REPORTART     *
//* PROGRAMA    : ZM4CR010                                           *
//*------------------------------------------------------------------*
//PSF22P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ENTRADA1 DD DSN=MXCP.ZM.FIX.RIC.OPERVALO.ORDRFC.F&FECHA,
//            DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.GDGD.RIC.CUENTAS(0),
//            DISP=SHR
//ECIFRAS1 DD DSN=MXCP.ZM.FIX.RIC.CONTROLE.F&FECHA,
//            DISP=SHR
//SALIDA1  DD DSN=MXCP.ZM.FIX.RIC.OPERVALO.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0),
//            UNIT=3390
//SCIFRAS1 DD DSN=MXCP.ZM.FIX.RIC.CIFRAMAE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=42,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF22T16),DISP=SHR
//*------------------------------------------------------------------*
//* PASO        : PSF22P15                                           *
//* DESCRIPCION : ORDENA EL ARCHIVO DE OPERACIÓN DE VALORES POR      *
//*               CONTRATO.                                          *
//* PROGRAMA    : ICEMAN                                             *
//*------------------------------------------------------------------*
//PSF22P15 EXEC  PGM=ICEMAN,COND=(4,LT)                                 00530018
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.RIC.OPERVALO.MAEST.F&FECHA,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RIC.OPERVALO.SORT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=300,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF22T15),DISP=SHR                   00630018
//*
//*------------------------------------------------------------------*
//* PASO        : PSF22P10                                           *
//* DESCRIPCION : ORDENA EL MAESTRO POR CONTRATO,  SECUENCIA Y       *
//*               CLASIFICACION DE TITULARIDAD.                      *
//* PROGRAMA    : ICEMAN                                             *
//*------------------------------------------------------------------*
//PSF22P10 EXEC  PGM=ICEMAN,COND=(4,LT)                                 00530018
//*
//SORTIN   DD DSN=MBVP.AJ.FIX.AMCP.RELPRD21.PORCEN,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RIC.RELPRD21.SORT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=512,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF22T10),DISP=SHR                   00630018
//*
//*------------------------------------------------------------------*
//* PASO        : PSF22P05                                           *
//* DESCRIPCION : CREAR INTERFACES PARA RIC (CONTRATOS DE VALORES)   *
//* PROGRAMA    : ZM4CR024                                           *
//*------------------------------------------------------------------*
//PSF22P05 EXEC PGM=IKJEFT01,COND=(04,LT)
//ZMCR24A1 DD DSN=MXCP.ZM.FIX.RIC.RELPRD21.SORT.F&FECHA,
//            DISP=SHR
//ZMCR24A2 DD DSN=MXCP.ZM.FIX.RIC.OPERVALO.SORT.F&FECHA,
//            DISP=SHR
//ZMCR24A3 DD DSN=MXCP.ZM.FIX.RIC.CONTVALO.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0),
//            UNIT=3390
//ZMCR24A4 DD DSN=MXCP.ZM.FIX.RIC.CONTROL2.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=42,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF22T05),DISP=SHR
//*
//*------------------------------------------------------------------*
//* PASO        : PSF22P00                                           *
//* DESCRIPCION : UNE LAS CIFRAS DE CONTROL.                         *
//* PROGRAMA    : ICEGENER                                           *
//*------------------------------------------------------------------*
//PSF22P00 EXEC  PGM=ICEGENER,COND=(4,LT)                               00530018
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.RIC.CIFRAMAE.F&FECHA,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.RIC.CONTROL2.F&FECHA,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.RIC.CIFRAOK.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=042,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
