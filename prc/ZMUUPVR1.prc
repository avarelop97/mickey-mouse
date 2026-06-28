//ZMUUPVR1 PROC                                                         00001003
//**********************************************************************
//*  OBJETIVO :   CARGA DATOS AL ARCHIVO                               *
//**********************************************************************
//PUUR1P01 EXEC PGM=IKJEFT01
//PARAM01  DD DSN=MXCP.ZM.FIX.EDC.PARAM01.REPROS01,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMT01TR1),DISP=SHR
//*
