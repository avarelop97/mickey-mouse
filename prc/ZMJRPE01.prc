//ZMJRPE01 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMJRPE01.                                           *
//* OBJETIVO     : CARGA TABLA ZMDTPAI Y ZMDTENT.                      *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* LLAMADO AL PROGRAMA QUE EJECUTA LA CARGA A LAS TABLAS ZMDTPAI      *
//* Y LA TABLA ZMDTENT                                                 *
//*--------------------------------------------------------------------*
//PSR00101 EXEC PGM=IKJEFT01
//*
//ZMENTPAI DD DISP=SHR,DSN=MXCP.ZM.FIX.CARGA.ZMDTPAI.CARGA
//*
//ZMENTENT DD DISP=SHR,DSN=MXCP.ZM.FIX.CARGA.ZMDTENT.CARGA
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJR01TR1),DISP=SHR
//*
//
