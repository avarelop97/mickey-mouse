//ZMSFPD26 PROC
//********************************************************************
//* SISTEMA  : ZM - HOST / SIVA                                      *
//* PROCESO  : ZMSFPD26                                              *
//* OBJETIVO : PROCESO PARA CREAR ARCHIVOS ORIGINALES EN CASO DE     *
//*            CONTIGNGENCIA                                         *
//* REALIZO  : CAPGEMINI                                             *
//* FECHA    : NOVIEMBRE 2011                                        *
//**********************************************************************
//*                  LOG DE MODIFICACIONES                             *
//**********************************************************************
//* MODIFI      AUTOR     FECHA    DESCRIPCION                         *
//* ----------- --------- -------- ----------------------------------- *
//* XMZ7865 MAR/2016   SE AGREGA FILTRO POR ARCHIVO ENV DE ESPA A    *
//* FS-1.0.0-01  *         *        *                                  *
//**********************************************************************
//*------------------------------------------------------------------*
//* PASO        : PSF26P20                                           *
//* DESCRIPCION : CREAR INTERFASES PARA RIC (MAESTRO DE VALORES Y    *
//*               OPERACIONES DE VALORES.                            *
//* PROGRAMA    : ZM4CR025                                           *
//*------------------------------------------------------------------*
//PSF26P20 EXEC PGM=IKJEFT01
//ZMCR23A1 DD DSN=MXCP.ZM.FIX.RIC.MAESVALO.F&FECHA..ORIG,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//            UNIT=3390
//ZMCR23A2 DD DSN=MXCP.ZM.FIX.RIC.OPERVALO.MAEST.F&FECHA..ORIG,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=300,BLKSIZE=0),
//            UNIT=3390
//ZMCR23A3 DD DSN=MXCP.ZM.FIX.RIC.CONTROLE.F&FECHA..ORIG,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PSF26P20),DISP=SHR
//*
//*------------------------------------------------------------------*
//* PASO        : PSF26P18                                           *
//* DESCRIPCION : ORDENA EL ARCHIVO DE OPERACIÓN DE VALORES POR      *
//*               RFC PARA MATCH CON ARCH DE ESPAñA                  *
//* PROGRAMA    : ICEMAN                                             *
//*------------------------------------------------------------------*
//PSF26P18 EXEC  PGM=ICEMAN,COND=(4,LT)                                 00530018
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.RIC.OPERVALO.MAEST.F&FECHA..ORIG,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RIC.OPERVALO.ORDRFC.F&FECHA..ORIG,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=300,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PSF26T18),DISP=SHR                   00630018
//*
//*------------------------------------------------------------------*
//* PASO        : PSF26P16                                           *
//* DESCRIPCION : MATCH PARA EXTRAER LAS OPERACIONES A REPORTART     *
//* PROGRAMA    : ZM4CR010                                           *
//*------------------------------------------------------------------*
//PSF26P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//ENTRADA1 DD DSN=MXCP.ZM.FIX.RIC.OPERVALO.ORDRFC.F&FECHA..ORIG,
//            DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.GDGD.RIC.CUENTAS(0),
//            DISP=SHR
//ECIFRAS1 DD DSN=MXCP.ZM.FIX.RIC.CONTROLE.F&FECHA..ORIG,
//            DISP=SHR
//SALIDA1  DD DSN=MXCP.ZM.FIX.RIC.OPERVALO.F&FECHA..ORIG,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0),
//            UNIT=3390
//SCIFRAS1 DD DSN=MXCP.ZM.FIX.RIC.CIFRAMAE.F&FECHA..ORIG,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PSF26T16),DISP=SHR
//*
//*------------------------------------------------------------------*
//* PASO        : PSF26P15                                           *
//* DESCRIPCION : ORDENA EL ARCHIVO DE OPERACION DE VALORES POR      *
//*               CONTRATO.                                          *
//* PROGRAMA    : ICEMAN                                             *
//*------------------------------------------------------------------*
//PSF26P15 EXEC  PGM=ICEMAN,COND=(4,LT)                                 00530018
//SORTIN   DD DSN=MXCP.ZM.FIX.RIC.OPERVALO.MAEST.F&FECHA..ORIG,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RIC.OPERVALO.SORT.F&FECHA..ORIG,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=300,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PSF26P15),DISP=SHR                   00630018
//*
//*------------------------------------------------------------------*
//* PASO        : PSF26P10                                           *
//* DESCRIPCION : ORDENA EL MAESTRO POR CONTRATO, SECUENCIA Y CLASI- *
//*               FICACION DE TITULARIDAD.                           *
//* PROGRAMA    : ICEMAN                                             *
//*------------------------------------------------------------------*
//PSF26P10 EXEC  PGM=ICEMAN,COND=(4,LT)                                 00530018
//SORTIN   DD DSN=MBVP.AJ.FIX.AMCP.RELPRD21.PORCEN,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RIC.RELPRD21.SORT.F&FECHA..ORIG,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=512,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PSF26P10),DISP=SHR                   00630018
//*
//*------------------------------------------------------------------*
//* PASO        : PSF26P05                                           *
//* DESCRIPCION : CREAR INTERFACES PARA RIC (CONTRATOS DE VALORES)   *
//* PROGRAMA    : ZM4CR026                                           *
//*------------------------------------------------------------------*
//PSF26P05 EXEC PGM=IKJEFT01,COND=(04,LT)
//ZMCR24A1 DD DSN=MXCP.ZM.FIX.RIC.RELPRD21.SORT.F&FECHA..ORIG,
//            DISP=SHR
//ZMCR24A2 DD DSN=MXCP.ZM.FIX.RIC.OPERVALO.SORT.F&FECHA..ORIG,
//            DISP=SHR
//ZMCR24A3 DD DSN=MXCP.ZM.FIX.RIC.CONTVALO.F&FECHA..ORIG,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0),
//            UNIT=3390
//ZMCR24A4 DD DSN=MXCP.ZM.FIX.RIC.CONTROL2.F&FECHA..ORIG,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PSF26P05),DISP=SHR
//*
//*------------------------------------------------------------------*
//* PASO        : PSF26P00                                           *
//* DESCRIPCION : ORDENA EL ARCHIVO OPERACION DE VALORES POR CONTRATO*
//* PROGRAMA    : ICEGENER                                           *
//*------------------------------------------------------------------*
//PSF26P00 EXEC  PGM=ICEGENER,COND=(4,LT)                               00530018
//SYSUT1   DD DSN=MXCP.ZM.FIX.RIC.CIFRAMAE.F&FECHA..ORIG,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.RIC.CONTROL2.F&FECHA..ORIG,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.RIC.CIFRAOK.F&FECHA..ORIG,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=042,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
