//ZMHLPZ82 PROC
//**********************************************************************
//* SISTEMA  : MODULO UNICO DE VALORES (MUV)                           *
//* PROCESO  : ZMHLPZ82                                                *
//* PERIODIC : DIARIA                                                  *
//* OBJETIVO : GENERA REPORTE A INICIO DE DIA CON LOS CONTRATOS DE     *
//*            BANCA PATRIMONIAL QUE PRESENTAN DIFERENCIAS ENTRE       *
//*            EL SALDO DE MUV Y EL SALDO DE BG PRODUCTO 10.           *
//*            AURORA G. GONZALEZ PE#A (ANS-HILDEBRANDO) AGOSTO-2013   *
//*--------------------------------------------------------------------*
//* LOG DE MODIFICACIONES.                                             *
//*--------------------------------------------------------------------*
//* MODIF.    FECHA    DESCRIPCION                                     *
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO        : PJH82P2A                                             *
//* DESCRIPCION : GENERA ARCHIVO A INICIO DE DIA CON DIFERENCIAS DE    *
//*               EFECTIVO.                                            *
//* PROGRAMA    : ZM4OU082                                             *
//**********************************************************************
//PJH82P2A EXEC PGM=IKJEFT01
//ZMOU82S1 DD DSN=MXCP.ZM.FIX.DIF.MUVVSBG,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=82,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL82T01),DISP=SHR
//*
