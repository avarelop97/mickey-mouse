//ZMPCZ727 PROC                                                         00010002
//********************************************************************
//* BORRA REGISTROS DE TABLA ZMDT727, DE ACUERDO A UN USUARIO        *
//********************************************************************
//ZMPC7271 EXEC PGM=IKJEFT01                                            01125500
//E1DMENT1 DD DSN=MXCP.ZM.FIX.ZM4CZ727.DELETE,DISP=SHR                  01126600
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPUNCH DD DUMMY
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCT7271),DISP=SHR                   01127700
//*                                                                     01127800
