//ZMCFIB50 PROC
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//*   PASO    : PHIB2420                                               *
//*   OBJETIVO: GENERA ARCHIVO VACIO DE CATALOGO DE CUENTAS PORVENIR   *
//*--------------------------------------------------------------------*
//PHIB2420 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=119)
//SYSUT2   DD DSN=MXCP.ZM.FIX.BCM.CUENTA.CATPPVR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=119,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*                         FIN DE PROCESO                             *
//*--------------------------------------------------------------------*
