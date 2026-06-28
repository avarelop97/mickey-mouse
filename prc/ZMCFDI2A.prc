//ZMCFDI2A PROC
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*              XMY1561  15MAY18 SE GENERA ARCHIVO VACIO.             *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : PFDI2420                                               *
//*   OBJETIVO: GENERA ARCHIVO VACIO PARA LA TRANSMISIÓN DE LOS SELLOS *
//*             FISCALES.                                              *
//*--------------------------------------------------------------------*
//PDFI2420 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=1044)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.SELLOMDC.REP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=1044,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
