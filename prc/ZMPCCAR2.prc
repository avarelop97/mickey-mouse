//ZMPCCAR2 PROC                                                         00010002
//********************************************************************
//* CARGA DE ESTRATOS PARA MIGRACION                                 *
//********************************************************************
//ZMPCAR21 EXEC PGM=IKJEFT01                                            01125500
//E1DMENT1 DD DSN=MXC&AMB..ZM.FIX.ZM4C3636.EDOCTA,DISP=SHR              01126600
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPUNCH DD DUMMY
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCTCAR2),DISP=SHR                   01127700
//*                                                                     01127800
