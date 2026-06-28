//ZMPBTR10 PROC
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-01  XMBB157  15MAY19 SE INCREMENTA LA LONGITUD DE LOS     *
//*                               ARCHIVOS DE INTERESES DE 1262 A      *
//*                               1406 Y EL DE FIBRAS DE 343 A 450     *
//*--------------------------------------------------------------------*
//* FS-1.1.0-01  XM09858  17DIC19 SE INCREMENTA LA LONGITUD DEL        *
//*                               ARCHIVO DE ACCIONES DE 634 A 725     *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*00240002
//* PASO    : PHDI9999                                                 *00240002
//* UTIL/PGM: ICEGENER                                                 *00240002
//* OBJETIVO: GENERA ARCHIVO KARDEX DE INTERESES  W E B - T R A D E R  *00240002
//*--------------------------------------------------------------------*
//PHDI9999 EXEC PGM=ICEGENER,COND=(04,LT)
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=1406)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.KARDEX.INTERES,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=1406,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*--------------------------------------------------------------------*00240002
//* PASO    : PHDI9998                                                 *00240002
//* UTIL/PGM: ICEGENER                                                 *00240002
//* OBJETIVO: GENERA ARCHIVO KARDEX DE ACCIONES   W E B - T R A D E R  *00240002
//*--------------------------------------------------------------------*
//PHDI9998 EXEC PGM=ICEGENER,COND=(04,LT)
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=725)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.KARDEX.ACCION,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=725,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*--------------------------------------------------------------------*00240002
//* PASO    : PHDI9997                                                 *00240002
//* UTIL/PGM: ICEGENER                                                 *00240002
//* OBJETIVO: GENERA ARCHIVO KARDEX DE FIBRAS     W E B - T R A D E R  *00240002
//*--------------------------------------------------------------------*
//PHDI9997 EXEC PGM=ICEGENER,COND=(04,LT)
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=450)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.KARDEX.FIBRAS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*--------------------------------------------------------------------*00240002
//* PASO    : PHDI9996                                                 *00240002
//* UTIL/PGM: ICEGENER                                                 *00240002
//* OBJETIVO: GENERA ARCHIVO KARDEX DE CKD'S      W E B - T R A D E R  *00240002
//*--------------------------------------------------------------------*
//PHDI9996 EXEC PGM=ICEGENER,COND=(04,LT)
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=598)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.KARDEX.CKDS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=598,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*--------------------------------------------------------------------*00240002
//* PASO    : PHDI9995                                                 *00240002
//* UTIL/PGM: ICEGENER                                                 *00240002
//* OBJETIVO: GENERA ARCHIVO KARDEX DE DIV/SOCI   W E B - T R A D E R  *00240002
//*--------------------------------------------------------------------*
//PHDI9995 EXEC PGM=ICEGENER,COND=(04,LT)
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=606)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.KARDEX.DIVSOC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=606,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*--------------------------------------------------------------------*00240002
//* PASO    : PHDI9994                                                 *00240002
//* UTIL/PGM: ICEGENER                                                 *00240002
//* OBJETIVO: GENERA ARCHIVO KARDEX DE DIV/CAPI   W E B - T R A D E R  *00240002
//*--------------------------------------------------------------------*
//PHDI9994 EXEC PGM=ICEGENER,COND=(04,LT)
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=540)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.KARDEX.DIVCAP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=540,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*--------------------------------------------------------------------*00240002
//* PASO    : PHDI9993                                                 *00240002
//* UTIL/PGM: ICEGENER                                                 *00240002
//* OBJETIVO: GENERA ARCHIVO KARDEX DE WARRANT´S  W E B - T R A D E R  *00240002
//*--------------------------------------------------------------------*
//PHDI9993 EXEC PGM=ICEGENER,COND=(04,LT)
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=637)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.KARDEX.WARRANT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=637,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*00240002
//*                       FIN DEL PROCESO ZMPBTR10                     *00240002
//*--------------------------------------------------------------------*00240002
//*MEXD-LSGM01-FIN
