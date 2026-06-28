//ZMSFPD20 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO.     *
//* PROCESO      : ZMSFPD20.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : COPIA DE ARCHIVO PROPORCIONADO POR PDV A ARCHIVO    *
//*                PROPIO DE MUV, CARGA A TABLA PDV.                   *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 17 DE JUNIO DE 2014.                                *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PSF20P02.                                             *
//* UTILERIA   : ICEGENER.                                             *
//* OBJETIVO   : COPIA ARCH MXB&AMB..YH.FIX.F&FECHA..MYHPPD01.YHDTCON  *
//*              A MXC&AMB..ZM.FIX.F&FECHA..PDV01.                     *
//*--------------------------------------------------------------------*
//PSF20P02 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=MXB&AMB..YH.FIX.F&FECHA..MYHPPD01.YHDTCON,
//            DISP=SHR
//*
//SYSUT2   DD DSN=MXC&AMB..ZM.FIX.F&FECHA..PDV01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=194,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : PSF23P01.                                             *
//* UTILERIA   : IKJEFT01 / ZM4DGD09.                                  *
//* OBJETIVO   : EJECUTA CARGA A TABLA PDV.                            *
//*--------------------------------------------------------------------*
//PSF20P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDG09A1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..PDV01,
//            DISP=SHR
//*
//ZMDG09B1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..ERR01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=63,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF20T00),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMSFPD20                        *
//*--------------------------------------------------------------------*
