//ZMCFDI10 PROC
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-01  XMBB157  15MAY19 SE INCREMENTA LA LONGITUD DE LOS     *
//*                               ARCHIVOS DE INTERESES DE 1262 A      *
//*                               1406 Y EL DE FIBRAS DE 343 A 450     *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-01  XM09858  09DIC19 SE INCREMENTA LA LONGITUD DE LOS     *
//*                               ARCHIVOS DE ACCIONES DE 634 A 725.   *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-01  XM09858  03DIC20 SE INCREMENTA ESPACIO EN EL ARCHIVO  *
//*                               KARDEX.INTERES.                      *
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1020                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE INTERESES EN VACIO MUV        *
//*--------------------------------------------------------------------*
//PHDI1020 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=1406)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.KARDEX.INTERES,
//            DISP=(NEW,CATLG,DELETE),
//*           SPACE=(CYL,(300,150),RLSE),
//*           SPACE=(CYL,(1500,1500),RLSE),
//            SPACE=(CYL,(3000,1500),RLSE),
//            DCB=(DSORG=PS,LRECL=1406,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1019                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE ACCIONES EN VACIO MUV         *
//*--------------------------------------------------------------------*
//PHDI1019 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//*           DCB=(RECFM=FB,LRECL=634)
//            DCB=(RECFM=FB,LRECL=725)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.KARDEX.ACCION,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//*           DCB=(DSORG=PS,LRECL=634,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=725,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1018                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE FIBRAS EN VACIO MUV           *
//*--------------------------------------------------------------------*
//PHDI1018 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=450)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.KARDEX.FIBRAS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1017                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE CKDS EN VACIO MUV             *
//*--------------------------------------------------------------------*
//PHDI1017 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=598)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.KARDEX.CKDS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=598,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1016                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE DIVIDENDO DE SOCIEDADES       *
//*--------------------------------------------------------------------*
//PHDI1016 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=606)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.KARDEX.DIVSOC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=606,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1015                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE DIVIDENDO DE CAPITALES        *
//*--------------------------------------------------------------------*
//PHDI1015 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=540)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.KARDEX.DIVCAP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=540,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1014                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE WARRANTS EN VACIO MUV         *
//*--------------------------------------------------------------------*
//PHDI1014 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=637)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.KARDEX.WARRANT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=637,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1013                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE INTERESES EN VACIO FID        *
//*--------------------------------------------------------------------*
//PHDI1013 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=1406)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EFID.KARDEX.INTERES,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=1406,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1012                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE ACCIONES EN VACIO FID         *
//*--------------------------------------------------------------------*
//PHDI1012 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//*           DCB=(RECFM=FB,LRECL=634)
//            DCB=(RECFM=FB,LRECL=725)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EFID.KARDEX.ACCION,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//*           DCB=(DSORG=PS,LRECL=634,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=725,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1011                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE FIBRAS EN VACIO FID           *
//*--------------------------------------------------------------------*
//PHDI1011 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=450)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EFID.KARDEX.FIBRAS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1010                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE CKDS EN VACIO FID             *
//*--------------------------------------------------------------------*
//PHDI1010 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=598)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EFID.KARDEX.CKDS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=598,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1009                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE WARRANTS EN VACIO FID         *
//*--------------------------------------------------------------------*
//PHDI1009 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=637)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EFID.KARDEX.WARRANT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=637,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1008                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE DIVIDENDO DE SOCIEDADES       *
//*--------------------------------------------------------------------*
//PHDI1008 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=606)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EFID.KARDEX.DIVSOC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=606,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1007                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE DIVIDENDO DE CAPITALES        *
//*--------------------------------------------------------------------*
//PHDI1007 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=540)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EFID.KARDEX.DIVCAP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=540,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1006                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE INTERESES EN VACIO CUS        *
//*--------------------------------------------------------------------*
//PHDI1006 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=1406)
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECUS.KARDEX.INTERES,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=1406,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1005                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE ACCIONES EN VACIO CUS         *
//*--------------------------------------------------------------------*
//PHDI1005 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//*           DCB=(RECFM=FB,LRECL=634)
//            DCB=(RECFM=FB,LRECL=725)
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECUS.KARDEX.ACCION,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//*           DCB=(DSORG=PS,LRECL=634,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=725,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1004                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE FIBRAS EN VACIO CUS           *
//*--------------------------------------------------------------------*
//PHDI1004 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=450)
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECUS.KARDEX.FIBRAS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1003                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE CKDS EN VACIO CUS             *
//*--------------------------------------------------------------------*
//PHDI1003 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=598)
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECUS.KARDEX.CKDS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=598,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1002                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE WARRANTS EN VACIO CUS         *
//*--------------------------------------------------------------------*
//PHDI1002 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=637)
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECUS.KARDEX.WARRANT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=637,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1001                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE DIVIDENDO DE SOCIEDADES       *
//*--------------------------------------------------------------------*
//PHDI1001 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=606)
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECUS.KARDEX.DIVSOC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=606,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1000                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE DIVIDENDO DE CAPITALES        *
//*--------------------------------------------------------------------*
//PHDI1000 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=540)
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECUS.KARDEX.DIVCAP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=540,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
