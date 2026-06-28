//ZMPWTR13 PROC
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-01.02.00  XMBB157  08JUL19 SE MODIFICA LA LONGITUD EL ARCHIVO   *
//*                               DE ADMITIVOS DE 2851 A 3246.         *
//*--------------------------------------------------------------------*
//*   PASO    : PHDR1420                                               *
//*   OBJETIVO: GENERA RESPALDO DE LOS DATOS ADMINISTRATIVOS DE LA     *
//*             CONSTANCIA DE BANCA PATRIMONIAL  POR CANCELACION       *
//*--------------------------------------------------------------------*
//PHDR1420 EXEC PGM=ICEGENER
//*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.FS,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.CANC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=3246,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
