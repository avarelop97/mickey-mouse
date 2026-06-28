//ZMLLPC95 PROC
//**********************************************************************
//*   APLICACION:  ZM - DISTRIBUCION DE INGRESOS A LAS BANCAS.         *
//*                                                                    *
//*   PROCEDIM. :  ZMLLPC95                                            *
//*                                                                    *
//*   OBJETIVO  :  EJECUTA PROGRAMA QUE REALIZA EL FORMATEO DE LOS     *
//*                CAMPOS PARA LA CONCILIACION DE DISTRIBUCION.        *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIA                                        *
//*                                                                    *
//*   ELABORADO POR   : DGCM                                           *
//*                                                                    *
//*   FECHA           : SEPTIEMBRE DE 2015                             *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//**********************************************************************
//*  PASO: PHL95P05                                                    *00030000
//*  PROGRAMA: ZM4OJ095                                                *00040000
//*  FUNCION: SE GENERARA FORMATEO DE DATOS PARA ARCHIVO DE            *00020000
//*           CONCILIACION.                                            *00020000
//**********************************************************************
//PHL95P05 EXEC PGM=IKJEFT01
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBP.INGEMISE.F&FECHA.,DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.CBP.DISTCONC.INCI.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//SALIDA02 DD DSN=MXCP.ZM.FIX.CBP.DISEMISE.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=120,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHL95P05),DISP=SHR
//*                                                                    *
