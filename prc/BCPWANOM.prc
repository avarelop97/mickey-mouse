//BCPWANOM PROC
//*--------------------------------------------------------------
//* PASO       : BCRPT110.
//* UTILERIA   : IKJEFT01
//* OBJETIVO   : GENERA REPORTE DE NOTA ESTRUCTURADA Y WARRANTS MENSUAL
//**********************************************************************
//*                                                                    *
//* SISTEMA  : ZM / CASA DE BOLSA                                      *
//*                                                                    *
//* PROCESO  : BCPWANOM                                                *
//*                                                                    *
//* OBJETIVO : REPORTE MENSUAL DE NOTAS Y WARRANTS                     *
//*                                                                    *
//* REALIZO  : FSW-EVERIS                                              *
//*                                                                    *
//* FECHA    : 01 DE AGOSTO DEL 2017                                   *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION
//* ----------- --------- ------- -------------------------------------*
//**********************************************************************
//*
//NOWAPR02 EXEC PGM=IKJEFT01
//*
//ZMJNOTES DD DSN=MXC&AMB..ZM.FIX.REPWANOM.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=233,BLKSIZE=0,RECFM=FB)
//*
//ZMJINCID DD DSN=MXC&AMB..ZM.FIX.INC.REPWANOM.F&FECHA,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCWANOM),DISP=SHR
//*
