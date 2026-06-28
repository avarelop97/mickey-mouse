//ZMPCDERR PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : ZM@ CASA DE BOLSA                                    *
//* DESCRIPCION : REALIZA EL DEPURADO DE LA TABLA LOGERR A 1 AñO       *
//* AUTOR       : CDJA (MI13599).                                      *
//* FECHA       : 06 DE OCTUBRE DE 2022.                               *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*   @MEX000   XXXXXXX  DDMMMAA ..................................... *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMDERR99                                              *
//* UTILERIA   : DELETE                                                *
//* OBJETIVO   : DEPURA LOS REGISTROS MAYORES A 1 ANO (LOGERR)         *
//*--------------------------------------------------------------------*
//ZMDERR99 EXEC PGM=IKJEFT01,COND=(4,LT)
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE42T01),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDERR99),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*             FIN DE PROCESO  ZMPCDERR                               *
//*--------------------------------------------------------------------*
