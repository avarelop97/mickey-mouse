//ZMHFPD51 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : SISTEMAS ETF'S.                                     *
//* PROCESO      : ZMHFPD51.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERA LOS ARCHIVOS CORRESPONDIENTES A LOS          *
//*                MOVIMIENTOS DE RETIROS DE VALORES.                  *
//* REALIZO      : ITS / XMBJ040                                       *
//* FECHA        : 17 JUNIO 2013                                       *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PHF51P02.                                             *
//* UTILERIA   : ZM4DH099 / IKJEFT01                                   *
//* OBJETIVO   : GENERA ARCHIVO CON LOS REGISTROS RECHAZADOS POR       *
//*              RETIROS DE VALORES                                    *
//*--------------------------------------------------------------------*
//PHF51P02 EXEC PGM=IKJEFT01
//*
//ZMFH0991 DD DSN=MXCP.ZM.FIX.ETF842.RET.D&FECHA,DISP=SHR
//*
//ZMFH0992 DD DSN=MXCP.ZM.FIX.ETF.RECHA.RET.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=114,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHF51P02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHF51P01                                              *
//* UTILERIA   : IEFBR14                                              *
//* OBJETIVO   : BORRAR EL ARCHIVO CON LOS REGISTROS DE RETIROS DE     *
//*              VALORES.                                              *
//*--------------------------------------------------------------------*
//*
//PHF51P01 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//ARCHSA   DD DSN=MXCP.ZM.FIX.ETF842.RET.D&FECHA,
//            DISP=(OLD,DELETE,DELETE)
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMHFPD51                        *
//*--------------------------------------------------------------------*
