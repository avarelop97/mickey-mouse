//ZMUEDSVF PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : CASA DE BOLSA ZM.                                    *
//* OBJETIVO    : SE HACE RESPALDO DE LA TABLA DE LAS OPERACIONES DE   *
//*               FONDOS DE INVERSION DE LA TABLA ZMDTSVF.             *
//* PERIODICIDAD: DIARIA.                                              *
//* AUTOR       : SWF DGCM (MPZG).                                     *
//* FECHA       : DICIEMBRE 2017.                                      *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*  @MEX00-I  ......... ....... ..................................... *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNDVF01                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : REALIZA LA DESCARGA DE LA TABLA ZMDTSVF DE LAS          *
//*            OPERACIONES DE FONDOS DE INVERSION.                     *
//*--------------------------------------------------------------------*
//ZMNDVF01 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMNDVF01,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCUENDVF.DESCSVF1.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),                                  00160000
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,                      00170000
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0)                         00180000
//SYSCNTL  DD DUMMY                                                     00190000
//SYSTSIN  DD SYSOUT=*                                                  00200000
//SYSTSPRT DD SYSOUT=*                                                  00210000
//UTPRINT  DD SYSOUT=*                                                  00220000
//SYSPRINT DD SYSOUT=*                                                  00230000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNDVF01),DISP=SHR
//*--------------------------------------------------------------------*
//*                       FIN PROCESO  ZMUEDSVF                        *
//*--------------------------------------------------------------------*
