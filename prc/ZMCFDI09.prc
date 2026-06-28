//ZMCFDI09 PROC
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-01  XMBB157  15MAY19 SE INCREMENTA LA LONGITUD DE LOS     *
//*                               ARCHIVOS DE INTERESES DE 1262 A      *
//*                               1406 Y EL DE FIBRAS DE 343 A 450     *
//*--------------------------------------------------------------------*
//* FS-1.1.0-01  XM09858  15DIC19 SE INCREMENTA LA LONGITUD DEL        *
//*                               ARCHIVO DE ACCIONES CBP DE 634 A     *
//*                               725.                                 *
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0910                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE INTERESES EN VACIO            *
//*--------------------------------------------------------------------*
//PHDI0910 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=1406)
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECBP.KARDEX.INTERES,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=1406,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0909                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE ACCIONES EN VACIO             *
//*--------------------------------------------------------------------*
//PHDI0909 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=725)
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECBP.KARDEX.ACCION,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=725,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0907                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE FIBRAS EN VACIO               *
//*--------------------------------------------------------------------*
//PHDI0907 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=450)
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECBP.KARDEX.FIBRAS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0906                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE CKDS EN VACIO                 *
//*--------------------------------------------------------------------*
//PHDI0906 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=598)
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECBP.KARDEX.CKDS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=598,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0905                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE WARRANTS EN VACIO             *
//*--------------------------------------------------------------------*
//PHDI0905 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=637)
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECBP.KARDEX.WARRANT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=637,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0904                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE DIVIDENDOS SOCIEDADES         *
//*--------------------------------------------------------------------*
//PHDI0904 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=606)
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECBP.KARDEX.DIVSOC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=606,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0903                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE DIVIDENDO DE CAPITALES        *
//*--------------------------------------------------------------------*
//PHDI0903 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=540)
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECBP.KARDEX.DIVCAP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=540,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
