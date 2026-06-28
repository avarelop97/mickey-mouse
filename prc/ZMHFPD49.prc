//ZMHFPD49 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - ODT2 SISTEMA DE ADMON DE OPERACIONES ETFS      *
//* PROCESO      : ZMHFPD47.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERA ARCHIVO ANUAL EL CUAL CONTIENE LOS DIAS      *
//*                INHABILES EN EL SIVA.                               *
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
//* PASO       : PJL49P01                                              *
//* UTILERIA   : IKJEFT01 / ZM4DH090                                   *
//* OBJETIVO   : GENERA ARCHIVO ANUAL EL CUAL CONTIENE LOS DIAS        *
//*              INHABILES EN EL SIVA.                                 *
//*--------------------------------------------------------------------*
//PJL49P01 EXEC PGM=IKJEFT01
//*
//ZMFH0901 DD DSN=MXCP.ZM.FIX.ETF.DIASFER.D&FECHA,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=10,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJL49P01),DISP=SHR
//*--------------------------------------------------------------------*
//*                      FIN DEL PROCESO ZMHFPD49                      *
//*--------------------------------------------------------------------*
