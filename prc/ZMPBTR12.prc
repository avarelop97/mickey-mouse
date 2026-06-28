//ZMPBTR12 PROC
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-01.02.00  XMBB157  08JUL19 SE MODIFICA LA LONGITUD EL ARCHIVO   *
//*                               DE ADMITIVOS DE 2851 A 3246.         *
//*--------------------------------------------------------------------*
//*   PASO    : PHDR1220                                               *
//*   OBJETIVO: GENERA RESPALDO DE ARCHIVO DE COLTOMEX CON LOS DATOS   *
//*             ADMINISTRATIVOS DE LA CONSTANCIA DE BANCA PATRIMONIAL  *
//*--------------------------------------------------------------------*
//PHDR1220 EXEC PGM=ICEGENER
//*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.FS,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.FS.RESP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=3246,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDR1218                                               *
//*   OBJETIVO: GENERA RESPALDO DE ARCHIVO DE COLTOMEX CON LOS DATOS   *
//*             ADMINISTRATIVOS DE LA CONSTANCIA DE BANCA PATRIMONIAL  *
//*--------------------------------------------------------------------*
//PHDR1218 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.CANC,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.REPR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=3246,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
