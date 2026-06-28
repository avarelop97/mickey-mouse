//ZMPCCAR6 PROC                                                         00010002
//********************************************************************
//* UPDATE DE RFC EN CUENTA Y CLIENTE EVENTUAL                       *
//********************************************************************
//ZMPCAR61 EXEC PGM=IKJEFT01                                            01125500
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPUNCH DD DUMMY
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCTCAR6),DISP=SHR                   01127700
//*                                                                     01127800
