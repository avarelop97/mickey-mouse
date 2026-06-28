//ZMUFPM03 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : PRACTICAS DE VENTA DE CASA DE BOLSA                 *
//* PROCESO      : ZMUFPM03.                                           *
//* PERIODICIDAD : MENSUAL.                                            *
//* OBJETIVO     : REPORTE POST TRADE CDB.                             *
//* REALIZO      : FABRICA DE SOFTWARE DGCM (MPZG).                    *
//* FECHA        : 31 DE DICIEMBRE 2014.                               *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PUPM0302.                                             *
//* UTILERIA   : IKJEFT1A/ZM4PDV17.                                    *
//* OBJETIVO   : GENERA REPORTE DE SERVICIOS DE INVERSION.             *
//*--------------------------------------------------------------------*
//PUPM0302 EXEC PGM=IKJEFT1A
//*
//S1DESPDV DD DSN=MXCP.ZM.FIX.ZM4PDV17.POSTRADE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,300),RLSE),BUFNO=30,
//            DCB=(DSORG=PS,LRECL=169,BLKSIZE=0,RECFM=FB)
//*
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF02T11),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                  TERMINA PROCESO ZMUFPM03                          *
//*--------------------------------------------------------------------*
