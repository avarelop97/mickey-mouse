//ZMCFDI48 PROC
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//*   PASO    : PHDI1020                                               *
//*   OBJETIVO: GENERA ARCHIVO KARDEX DE INTERESES EN VACIO MUV        *
//*--------------------------------------------------------------------*
//PHDI1020 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=1406)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBPP.KARDEX.INTERES,
//            DISP=(NEW,CATLG,DELETE),
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
//            DCB=(RECFM=FB,LRECL=725)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBPP.KARDEX.ACCION,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
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
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBPP.KARDEX.FIBRAS,
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
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBPP.KARDEX.CKDS,
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
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBPP.KARDEX.DIVSOC,
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
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBPP.KARDEX.DIVCAP,
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
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBPP.KARDEX.WARRANT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=637,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*                         FIN DE PROCESO                             *
//*--------------------------------------------------------------------*
