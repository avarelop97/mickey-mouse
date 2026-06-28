//ZMPLPC92 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : ZM                                                      *
//*                                                                    *
//* PROCESO  : ZMPLPC92                                                *
//*                                                                    *
//* OBJETIVO : PROCESO DE GENERACION DE ARCHIVO MENSUAL PARA CONSTANCIA*
//*            DEL SAT                                                 *
//*                                                                    *
//* REALIZO  :                                                         *
//*                                                                    *
//* FECHA    : 31-OCTUBRE-2014                                         *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*                       LOG DE MODIFICACIONES                        *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR     FECHA              DESCRIPCION              *
//* ----------- --------  -------  ------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO     : ZMPC9250                                                *
//* PROGRAMA : IKJEFT01 / ZM4OJ092                                     *
//* FUNCION  : GENERACION DE ARCHIVO DIARIO EXTRANJEROS PARA CONSTANCIA*
//*            DEL SAT                                                 *
//*--------------------------------------------------------------------*
//ZMPC9250 EXEC PGM=IKJEFT01
//*
//ZMJ092S1 DD DSN=MXCP.ZM.FIX.REP.CLIEXTR.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=139,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPC9250),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                  FIN DE PROCESO ZMPLPC92                           *
//*--------------------------------------------------------------------*
