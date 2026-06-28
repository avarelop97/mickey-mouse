//ZMSFPDB1 PROC
//*****************************************************************
//*   PROGRAMA QUE CAMBIA LA BANDERA A ESP EN LA TABLA PARAM      *
//*****************************************************************
//PSFB1P01 EXEC PGM=IKJEFT01
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF60TB1),DISP=SHR
//**********************************************************************
//**CAMBIAR EL CONTENIDO DE LA CONTROL DESA  O TEST*********************
//*********************  F I N   D E   P R O C E S O  ******************
//**********************************************************************
