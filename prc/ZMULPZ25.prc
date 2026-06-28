//ZMULPZ25 PROC
//**********************************************************************
//**                                                                   *
//*                  SISTEMA ENLACE CONTABLE                           *
//*                  ENERO 1993                                        *
//*                                                                    *
//**********************************************************************
//*******************************************************************
//*   REPORTE DE POLIZA A DETALLE
//*******************************************************************
//PJL25P02 EXEC PGM=IKJEFT01
//*
//ZMUM26A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMJLPE25,DISP=SHR
//*
//ZMUM26A2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL25T01),DISP=SHR
//*
