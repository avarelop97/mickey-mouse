//ZMHFPD48 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : SISTEMAS ETF'S.                                     *
//* PROCESO      : ZMHFPD48.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERA LOS ARCHIVOS CORRESPONDIENTES A LOS          *
//*                MOVIMIENTOS DE VALORES.                             *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 22 DE ABRIL DE 2013.                                *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PHF48P02.                                             *
//* UTILERIA   : IKJEFT01/ZM4DH098.                                    *
//* OBJETIVO   : GENERA ARCHIVO CON LOS REGISTROS RECHAZADOS POR       *
//*              DEPOSITOS DE VALORES.                                 *
//*--------------------------------------------------------------------*
//PHF48P02 EXEC PGM=IKJEFT01
//*
//ZMFH0981 DD DSN=MXCP.ZM.FIX.ETF841.DEP.D&FECHA,DISP=SHR
//*
//ZMFH0982 DD DSN=MXCP.ZM.FIX.ETF.RECHA.DEP.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=114,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHF48P02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHF49P01                                              *
//* UTILERIA   : IEFBR14                                              *
//* OBJETIVO   : BORRAR EL ARCHIVO CON LOS REGISTROS DE DEPOSITOS DE   *
//*              VALORES.                                              *
//*--------------------------------------------------------------------*
//*
//PHF48P01 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//ARCHSA   DD DSN=MXCP.ZM.FIX.ETF841.DEP.D&FECHA,
//            DISP=(OLD,DELETE,DELETE)
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMHFPD48                        *
//*--------------------------------------------------------------------*
