//ZMSFPDB3 PROC
//*****************************************************************
//*   PROGRAMA QUE CAMBIA LA BANDERA A ESP EN LA TABLA PARAM      *
//*****************************************************************
//PSFB3P01 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF60TB3),DISP=SHR
//**********************************************************************
//**CAMBIAR EL CONTENIDO DE LA CONTROL DESA  O TEST*********************
//*********************  F I N   D E   P R O C E S O  ******************
//**********************************************************************
