//ZMCFDI17 PROC
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* MEXD-LSGM01  XMZ0423  17FEB17 SE RECUPERAN ARCHIVOS DE BCO TRADER. *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-01.02.00  XMBB157  03JUL19 SE MODIFICA LA LONGITUD EL ARCHIVO   *
//*                               DE ADMITIVOS DE 2851 A 3246.         *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : PHIB2420                                               *
//*   OBJETIVO: GENERA CASCARON DE ARCHIVO ADMINISTRATIVO PARA CARGA   *
//*             MASIVA                                                 *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : PHIB2418                                               *
//*   OBJETIVO: GENERA ARCHIVO ADMINISTRATIVO DE CORREO                *
//*--------------------------------------------------------------------*
//PHIB2418 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=3246)
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.CFDI.ADMMEDM.CORR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=3246,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
