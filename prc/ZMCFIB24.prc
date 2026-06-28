//ZMCFIB24 PROC
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* MEXD-LSGM01  XMZ0423  17FEB17 SE RECUPERAN ARCHIVOS DE BCO TRADER. *
//*--------------------------------------------------------------------*
//* FS-01.02.00  XMBB157  03JUL19 SE MODIFICA LA LONGITUD EL ARCHIVO   *
//*                               DE ADMITIVOS DE 2851 A 3247 Y EL     *
//*                               ARCHIVO DE DIVIDENDOS DE 326 A 336   *
//*                               Y TAMBIEN CAMBIA DE LONGITUD EL      *
//*                               ARCHIVO DE ACCIONES DE 489 A 551.    *
//*--------------------------------------------------------------------*
//*   PASO    : PHIB2420                                               *
//*   OBJETIVO: GENERA ARCHIVO DE ACCIONES CORREO                      *
//*--------------------------------------------------------------------*
//PHIB2420 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=551)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.CFDI.ACCMEDC.CORR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=551,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHIB2419                                               *
//*   OBJETIVO: GENERA ARCHIVO DE ACCIONES PRESENTE                    *
//*--------------------------------------------------------------------*
//PHIB2419 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=551)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.CFDI.ACCMEDC.PRES,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=551,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHIB2418                                               *
//*   OBJETIVO: GENERA ARCHIVO ADMINISTRATIVO DE CORREO                *
//*--------------------------------------------------------------------*
//PHIB2418 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=3247)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.CFDI.ADMMEDC.CORR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=3247,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHIB2417                                               *
//*   OBJETIVO: GENERA ARCHIVO ADMINISTRATIVO DE PRESENTE              *
//*--------------------------------------------------------------------*
//PHIB2417 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=3247)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.CFDI.ADMMEDC.PRES,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=3247,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHIB2416                                               *
//*   OBJETIVO: GENERA ARCHIVO DE DIVIDENDOS CORREO                    *
//*--------------------------------------------------------------------*
//PHIB2416 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=336)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.CFDI.DIVMEDC.CORR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=336,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHIB2415                                               *
//*   OBJETIVO: GENERA ARCHIVO DE DIVIDENDOS PRENSENTE                 *
//*--------------------------------------------------------------------*
//PHIB2415 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=336)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.CFDI.DIVMEDC.PRES,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=336,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHIB2414                                               *
//*   OBJETIVO: GENERA ARCHIVO DE CONTROL                              *
//*--------------------------------------------------------------------*
//PHIB2414 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=10)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.CONTROL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=10,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*MEXD-LSGM01-INI
//*--------------------------------------------------------------------*
//*   PASO    : PHIB2413                                               *
//*   OBJETIVO: GENERA ARCHIVO DE ACCIONES CORREO  BCO - TRADER        *
//*--------------------------------------------------------------------*
//PHIB2413 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=551)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ACCMEDC.CORR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=551,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHIB2412                                               *
//*   OBJETIVO: GENERA ARCHIVO DE ACCIONES PRESENT BCO - TRADER        *
//*--------------------------------------------------------------------*
//PHIB2412 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=551)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ACCMEDC.PRES,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=551,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHIB2411                                               *
//*   OBJETIVO: GENERA ARCHIVO ADMINISTRATIVO DE CORREO BCO - TRADER   *
//*--------------------------------------------------------------------*
//PHIB2411 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=3247)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.CORR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=3247,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHIB2410                                BCO - TRADER   *
//*   OBJETIVO: GENERA ARCHIVO ADMINISTRATIVO DE PRESENTE              *
//*--------------------------------------------------------------------*
//PHIB2410 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=3247)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.PRES,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=3247,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHIB2409                                               *
//*   OBJETIVO: GENERA ARCHIVO DE DIVIDENDOS CORREO     BCO - TRADER   *
//*--------------------------------------------------------------------*
//PHIB2409 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=336)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.DIVMEDC.CORR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=336,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHIB2408                                               *
//*   OBJETIVO: GENERA ARCHIVO DE DIVIDENDOS PRENSENTE  BCO - TRADER   *
//*--------------------------------------------------------------------*
//PHIB2408 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=336)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.DIVMEDC.PRES,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=336,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*MEXD-LSGM01-FIN
