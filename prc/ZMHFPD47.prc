//ZMHFPD47 PROC
//*
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - ODT2 SISTEMA DE ADMON DE OPERACIONES ETFS      *
//* PROCESO      : ZMHFPD47.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERA LOS ARCHIVOS CORRESPONDIENTES A LOS          *
//*                MOVIMIENTOS DE VALORES, ASI COMO GENERA EL ARCHIVO  *
//*                CON LA COMPOSICION DE LOS ETF'S Y SUS CANASTAS.     *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 17 DE ABRIL DE 2013.                                *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- -------------------------------------*
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PHF29P01                                              *
//* UTILERIA   : IKJEFT01 / ZM4DH097                                   *
//* OBJETIVO   : GENERA LOS ARCHIVOS CON LA COMPOSICION DE LOS ETFS Y  *
//*              SUS CANASTAS.                                         *
//*--------------------------------------------------------------------*
//PHF29P02 EXEC PGM=IKJEFT01
//*
//***ZMFH0971 DD DSN=MXCP.ZM.FIX.ETF.FRMIV.F&FECHA,
//ZMFH0971 DD DSN=MXCP.ZM.FIX.ETF.FRMIV.PASO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=250,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMFH0972 DD DSN=MXCP.ZM.FIX.ETF.RESP.EMI.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=034,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHF29P01),DISP=SHR
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*   OBJETIVO: VALIDA SI LA DESCARGA SE GENERO EN VACIO               *
//*--------------------------------------------------------------------*
//PHF29P01 EXEC PGM=ICEMAN,COND=(04,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ETF.FRMIV.PASO,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ETF.FRMIV.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=250,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PHF29P03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                      FIN DEL PROCESO ZMHFPD47                      *
//*--------------------------------------------------------------------*
