//ZMUFPM02 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ODT1 PDV CASA DE BOLSA REPORTING.                   *
//* PROCESO      : ZMUFPM02.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REPORTE SIVA SERVICIOS DE INVERSION.                *
//* REALIZO      : FABRICA DE SOFTWARE DGCM (XMZ2596 -OFP).            *
//* FECHA        : 02 DE OCTUBRE DE 2014.                              *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PUF02P02.                                             *
//* UTILERIA   : IKJEFT1A/ZM4PDV08.                                    *
//* OBJETIVO   : GENERA REPORTE DE SERVICIOS DE INVERSION.             *
//*--------------------------------------------------------------------*
//PUF02P02 EXEC PGM=IKJEFT1A
//*
//ZMDPSS01 DD DSN=MXCP.ZM.FIX.ZM4PDV08.SERVINV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,300),RLSE),BUFNO=30,
//*DGCM-INI    SE CAMBIA LA LONTIGUD
//*            DCB=(DSORG=PS,LRECL=294,BLKSIZE=0,RECFM=FB)
//            DCB=(DSORG=PS,LRECL=238,BLKSIZE=0,RECFM=FB)
//*DGCM-FIN
//*
//ZMDPSS02 DD DSN=MXCP.ZM.FIX.ZM4PDV08.SERVIN2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,300),RLSE),BUFNO=30,
//*DGCM-INI    SE CAMBIA LA LONTIGUD
//*            DCB=(DSORG=PS,LRECL=294,BLKSIZE=0,RECFM=FB)
//            DCB=(DSORG=PS,LRECL=238,BLKSIZE=0,RECFM=FB)
//*DGCM-FIN
//*
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF02T07),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUF02P01.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : GENERA REPORTE DE SERVICIOS DE INVERSION.             *
//*--------------------------------------------------------------------*
//PUF02P01 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.ZM4PDV08.SERVINV,
//            DISP=SHR
//SORTJNF2 DD DSN=MXCP.ZM.FIX.ZM4PDV08.SERVIN2,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZM4PDV08.SERVIN3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,300),RLSE),BUFNO=30,
//*DGCM-INI    SE CAMBIA LA LONTIGUD
//*            DCB=(DSORG=PS,LRECL=294,BLKSIZE=0,RECFM=FB)
//            DCB=(DSORG=PS,LRECL=238,BLKSIZE=0,RECFM=FB)
//*DGCM-FIN
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF02T08),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                  TERMINA PROCESO ZMUFPM02                          *
//*--------------------------------------------------------------------*
