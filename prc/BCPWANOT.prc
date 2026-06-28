//BCPWANOT PROC
//*--------------------------------------------------------------
//* PASO       : BCRPT110.
//* UTILERIA   : IKJEFT01/ZM4CRPT1
//* OBJETIVO   : GENERA REPORTE DE NOTA ESTRUCTURADA Y WARRANTS
//**********************************************************************
//*                                                                    *
//* SISTEMA  : ZM / CASA DE BOLSA                                      *
//*                                                                    *
//* PROCESO  : BCPWANOT                                                *
//*                                                                    *
//* OBJETIVO : MODULO DE MIGRACION MATCH DE INVERSION DM VS ART6       *
//*                                                                    *
//* REALIZO  : FSW-EVERIS                                              *
//*                                                                    *
//* FECHA    : 27 DE FEBRERO DEL 2017                                  *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION
//* ----------- --------- ------- -------------------------------------*
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX      *
//*--------------------------------------------------------------------*
//PPDV2P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJNOTES DD DSN=MXC&AMB..ZM.FIX.REPWANOT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=233,BLKSIZE=0,RECFM=FB)
//*
//ZMJINCID DD DSN=MXC&AMB..ZM.FIX.INC.REPWANOT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=127,BLKSIZE=0,RECFM=FB)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCWANOT),DISP=SHR
//*--------------------------------------------------------------------*
//*                       FIN DEL PRC BCPWANOT                         *
//*--------------------------------------------------------------------*
