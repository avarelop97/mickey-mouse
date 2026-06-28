//ZMLIND06 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM.                                                 *
//* PROCESO      : ZMLIND06.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : PROCESO DE CARGA DE PARAM CRP.                      *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 23 DE DICIEMBRE DE 2014.                            *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PZMD0601.                                             *
//* UTILERIA   : IKJEFT1A/ZM4OU076.                                    *
//* OBJETIVO   : PROCESO DE CARGA DE PARAM CRP.                        *
//*--------------------------------------------------------------------*
//PZMD0601 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ZMJ086S1 DD DSN=MXCP.ZM.FIX.F&FECHA..ALTMOK&DIA..MKT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=132,BLKSIZE=0,DSORG=PS)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD06T01),DISP=SHR
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PZMD0600.                                             *
//* UTILERIA   : ICEGENER.                                             *
//* OBJETIVO   : ENVIO DE REPORTE DE ALTAS, BAJAS Y CAMBIOS A COTRL-D. *
//*--------------------------------------------------------------------*
//PZMD0600 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.F&FECHA..ALTMOK&DIA..MKT,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLIND06                        *
//*--------------------------------------------------------------------*
//*
