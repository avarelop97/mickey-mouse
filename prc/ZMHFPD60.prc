//ZMHFPD60 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CANCELACIONES                                  *
//* PROCESO      : ZMHFPD60.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : ACTUALIZA COSTO PROMEDIO EN CARTERA DE LIQUIDACION  *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : PUHFPD10.                                             *
//* UTILERIA   : ZM4DH201.                                             *
//* OBJETIVO   : ACTUALIZA COSTO PROMEDIO PARA TITULO LIQUIDADOS PARA  *
//*              CAPITAL DE RENTA VARIABLE                             *
//*--------------------------------------------------------------------*
//PUHFPD10 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF60T0A),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUHFPD08.                                             *
//* UTILERIA   : ZM4DH101.                                             *
//* OBJETIVO   : ACTUALIZA COSTO PROMEDIO PARA TITULO LIQUIDADOS PARA  *
//*              SOCIEDADES DE INVERSION DE RENTA VARIABLE             *
//*--------------------------------------------------------------------*
//PUHFPD08 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF60T0B),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                       FIN DEL PROCESO ZMHFPD60                     *
//*--------------------------------------------------------------------*
