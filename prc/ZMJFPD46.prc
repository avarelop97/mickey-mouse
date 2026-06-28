//ZMJFPD46 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  NO AFECTA BANCOS   >>                      *
//*                                                                    *
//*   APLICACION: OPERACIÓN DE DIVISAS DEL DIA (CBJFCD46)              *
//*                                                                    *
//*   PROCEDIMI.:  ZMJFPD46                                            *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   FECHA  :  MAYO DEL 2008                                          *
//*                                                                    *
//*   AUTOR  :  DIANA CHAVEZ OCANA (GESFOR)                            *
//*                                                                    *
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DESDE EL DISPARADOR
//*    Y LO GRABA EN ARCHIVO SECUENCIAL
//**********************************************************************
//PJL46P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','   ','   ',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPD46,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//* PROGRAMA: ZM4DGG67   -                                             *
//* FUNCION:  OPERACION DE DIVISAS DEL DIA                             *
//*                                                                    *
//**********************************************************************
//PJL46P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ796A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPD46,
//            DISP=SHR
//ZMJ796R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMJ796R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL46T01),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJFPD46 SIVA MULTIEMPRESA                  *
//**********************************************************************
