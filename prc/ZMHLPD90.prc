//ZMHLPD90 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : ZM                                                      *
//*                                                                    *
//* PROCESO  : ZMHLPD90                                                *
//*                                                                    *
//* OBJETIVO : PROCESO DE GENERACION DE REPORTE DIARIO CUOTAS DE       *
//*            ADMINISTRACION Y DISTRIBUICION DE INGRESOS.             *
//*                                                                    *
//* REALIZO  :                                                         *
//*                                                                    *
//* FECHA    : 28-OCTUBRE-2014                                         *
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
//* PASO     : PHL90P01                                                *
//* PROGRAMA : IKJEFT01/ZM4DHA13                                       *
//* FUNCION  : GENERACION DE REPORTE DIARIO CUOTAS DE                  *
//*            ADMINISTRACION Y DISTRIBUICION DE INGRESOS.             *
//*--------------------------------------------------------------------*
//PHL90P01 EXEC PGM=IKJEFT01
//*
//ZMHA13A1 DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..CR,DISP=SHR
//*
//ZMHA13R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL01T90),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                  FIN DE PROCESO ZMJFPD51                           *
//*--------------------------------------------------------------------*
