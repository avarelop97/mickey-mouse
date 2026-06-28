//ZMLIND07 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM.                                                 *
//* PROCESO      : ZMLIND07.                                           *
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
//* PASO       : PZMD0701.                                             *
//* UTILERIA   : IKJEFT1A/ZM4OU077.                                    *
//* OBJETIVO   : GENERACION DE ARCHIVO DE BAJAS Y CAMBIOS.             *
//*--------------------------------------------------------------------*
//PZMD0701 EXEC PGM=IKJEFT1A
//*
//ZMJ087S1 DD DSN=MXCP.ZM.FIX.F&FECHA..ACTMOK&DIA..MKT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=414,BLKSIZE=0,DSORG=PS)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD07T01),DISP=SHR
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLIND07                        *
//*--------------------------------------------------------------------*
//*
