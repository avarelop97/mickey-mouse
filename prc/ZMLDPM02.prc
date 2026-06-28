//ZMLDPM02 PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : ZM@ CASA DE BOLSA                                    *
//* DESCRIPCION : REALIZA EL DEPURADO DE LA TABLA LOGERR Y ZMDTLOG     *
//* AUTOR       : XMK0524 GUILLERMO COLON ROJAS   INDRA                *
//* FECHA       : 25 DE NOVIEMBRE DE 2024                              *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*   @MEX000   XXXXXXX  DDMMMAA ..................................... *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PLD01P10                                              *
//* UTILERIA   : DELETE                                                *
//* OBJETIVO   : DEPURA LOS REGISTROS DE LA TABLA ZMDTLOG DE RENTA FIJA*
//*              Y RENTA VARIABLE.                                     *
//*--------------------------------------------------------------------*
//PLD01P10 EXEC PGM=IKJEFT01
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=ZIVA.ZME.LOADLIB.BATCH,DISP=SHR
//**ENTRADA  DD DSN=MBV&AMB..BG.FIX.F&FECHA..AMTD.ALTAS,
//ENTRADA  DD DSN=MXCP.ZM.FVM03.ZMLRPM01.FIJA.ZMDTLOG.F&FECHA,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FVM03.ZMLRPM01.VARIA.ZMDTLOG.F&FECHA,
//            DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//*--------------------------------------------------------------------*
//*             FIN DE PROCESO  ZMLDPM02                               *
//*--------------------------------------------------------------------*
