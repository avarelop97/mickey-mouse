//ZMUDPV02 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM                                                  *
//* PROCESO      : ZMUDPV02.                                           *
//* OBJETIVO     : GENERA REPORTE DE CONTRATOS POR CLIENTE PDV         *
//* REALIZO      : FSW-DGCM(EDJA)                                      *
//* FECHA        : 30 DE JULIO DE 2014.                                *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZMUPDV01.                                             *
//* UTILERIA   : IKJEFT1A                                              *
//* OBJETIVO   : GENERA REPORTE DE CONTRATOS POR CLIENTE PDV           *
//*--------------------------------------------------------------------*
//ZMUPDV01 EXEC PGM=IKJEFT1A
//*
//ZMREPPDV  DD DSN=MXCP.ZM.FIX.ECBP.ZM4PDV07.REPORTE,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,100),RLSE),
//             DCB=(RECFM=FB,LRECL=190,BLKSIZE=0,DSORG=PS)
//*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMUPDT01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUDPV02                        *
//*--------------------------------------------------------------------*
