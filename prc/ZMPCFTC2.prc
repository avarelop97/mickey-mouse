//ZMPCFTC2 PROC                                                         00010002
//*
//*--------------------------------------------------------------------*
//* PASO       : NMPD0201                                              *
//* UTILERIA   : DELETE                                                *
//* OBJETIVO   : ELIMINA REGISTROS DEL CATALOGO FATCA EN TABLA ZMDT780 *
//*--------------------------------------------------------------------*
//NMPD0201 EXEC PGM=IKJEFT01,COND=(4,LT)
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE42T01),DISP=SHR
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : NMPD020A                                              *
//* OBJETIVO   : COPIA DATOS DEL CATALOGO DE NIFS FATCA A TABLA ZMDT780*
//*--------------------------------------------------------------------*
//NMPD020A EXEC PGM=IKJEFT01,COND=(4,LT)
//E1DQENT1 DD DSN=MXCP.ZM.FIX.FATCA.NIFS,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCTFTC2),DISP=SHR
//********************************************************************
//* COPIA DATOS DEL CATALOGO DE NIFS A LA TABLA ZMDT780              *
//********************************************************************
