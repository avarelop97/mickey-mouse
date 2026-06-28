//ZMCFDC45 PROC
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//*   PASO    : PHIB4502                                               *
//*   OBJETIVO: GENERA CASCARON DE ARCHIVO ADMINISTRATIVO PARA CARGA   *
//*             MASIVA                                                 *
//*--------------------------------------------------------------------*
//PHIB4502 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=3247)
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDM.CORR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=3247,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
