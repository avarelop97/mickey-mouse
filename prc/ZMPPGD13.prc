//ZMPPGD13 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - ZMPPGD13.                                      *
//* PROCESO      : ZMPPGD13.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : ACTUALIZA LOS SALDOS EN LA TABLAS ZMDT834.          *
//* REALIZO      : INDRA.                                              *
//* FECHA        : 18/02/2016.                                         *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* XXXXXXXXXXX  XXXXX    XXXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  *
//*--------------------------------------------------------------------*
//* PASO       : ZPP13T01.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG36                                     *
//* OBJETIVO   : RECIBE SALDOS DE UG Y LOS ACTUALIZACION EN ZMDT834.   *
//*--------------------------------------------------------------------*
//*
//ZPP13T01 EXEC PGM=IKJEFT01
//*
//ZM01PPE1 DD DSN=MXBP.YH.FIX.F&FECHA..PPGSAMUV.MONITINV,
//            DISP=SHR
//*
//ZM01PPS1 DD DSN=MXCP.ZM.FIX.F&FECHA..ZM4PPG36.MONITINV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=54,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP13T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                      FIN PROCESO ZMPPGD13                          *
//*--------------------------------------------------------------------*
