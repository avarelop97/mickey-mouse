//ZMUFPD27 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - ISR DE LA REFORMA FISCAL                       *
//* PROCESO      : ZMUFPD27.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERA REPORTE DE ISR RETENIDO.                     *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 17 DE ABRIL DE 2015.                                *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : PUF27P10.                                             *
//* UTILERIA   : ZM4DLG46.                                             *
//* OBJETIVO   : SE GENERA REPORTE DE ISR RETENIDO PARA CASA DE BOLSA. *
//*--------------------------------------------------------------------*
//*
//PUF27P10 EXEC PGM=IKJEFT01
//*
//ZM4DL461 DD DSN=MXCP.ZM.FIX.ISR.RETENIDO.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(2500,500),RLSE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF27T0A),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                       FIN DEL PROCESO ZMUFPD27                     *
//*--------------------------------------------------------------------*
