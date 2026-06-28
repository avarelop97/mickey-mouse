//ZMDDES04 PROC
//*--------------------------------------------------------------------*
//* PASO     : PHC04P03                                                *
//* PROGRAMA : IKJEFT1A/ZM4SEC01.                                      *
//* OBJETIVO : EJECUTA PROGRAMA QUE GENERA CARGA INICIAL EN LA TABLA   *
//*            DE CARTERA           / JULIO 2014.                      *
//*--------------------------------------------------------------------*
//PHC04P03 EXEC PGM=IKJEFT1A
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.SSECART.D140731.MEN,
//            DISP=SHR
//*
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDS1T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                       F I N   D E   P R O C                        *
//*--------------------------------------------------------------------*
