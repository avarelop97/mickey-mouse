//ZMPCFTCT PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : ZM@ CASA DE BOLSA                                    *
//* DECRIPCION  : FATCA + CRS                                          *
//* AUTOR       : INDRA AHL / JRTH                                     *
//* FECHA       : AGOSTO 2019.                                         *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*   @MEX000   XXXXXXX  DDMMMAA ..................................... *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO     : ZMRCTE99                                                *
//* PROGRAMA : ICEGENER                                                *
//* FUNCION  : COPIADO DE ARCHIVO DE CATALOGO DE NIFS                  *
//*            MBVP.AJ A MXCP.ZM                                       *
//*--------------------------------------------------------------------*
//ZMRCTE99 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=MBVP.AJ.FIX.FATCA.NIFS,
//            DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.FATCA.NIFS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(05,02),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//**
//*--------------------------------------------------------------------*
//*                  FIN DE PROCESO ZMPCFTCT                           *
//*--------------------------------------------------------------------*
