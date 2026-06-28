//ZMCFDR11 PROC
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-01.02.00  XMBB157  08JUL19 SE MODIFICA LA LONGITUD EL ARCHIVO   *
//*                               DE ADMITIVOS DE 2850 A 3246.         *
//*--------------------------------------------------------------------*
//*   PASO    : PHDR1120                                               *
//*   OBJETIVO: GENERA RESPALDO DEL ARCHIVO DE COLTOMEX CON LOS DATOS  *
//*             ADMINISTRATIVOS DE LA CONSTANCIA DE CASA DE BOLSA      *
//*--------------------------------------------------------------------*
//PHDR1120 EXEC PGM=ICEGENER
//*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.FS,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.FS.RESP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=3246,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDR1118                                               *
//*   OBJETIVO: GENERA RESPALDO DEL ARCHIVO DE COLTOMEX CON LOS DATOS  *
//*             ADMINISTRATIVOS DE LA CONSTANCIA DE CASA DE BOLSA      *
//*             POR CANCELACION                                        *
//*--------------------------------------------------------------------*
//PHDR1118 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.CANC,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.REPR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=3246,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
