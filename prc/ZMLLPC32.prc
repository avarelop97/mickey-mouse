//ZMLLPC32 PROC
//**********************************************************************
//*   APLICACION:  ZM - DISTRIBUCION DE INGRESOS A LAS BANCAS.         *
//*                                                                    *
//*   PROCEDIM. :  ZMLLPC32                                            *
//*                                                                    *
//*   OBJETIVO  :  EJECUTA PROGRAMA DE CARGA AUTOMATICA DE CUOTAS DE   *
//*                ADMINISTRACION Y DISTRIBUCION.                      *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIA                                        *
//*                                                                    *
//*   ELABORADO POR   : CDA INFORMATICA                                *
//*                                                                    *
//*   FECHA           : 26 DE SEPTIEMBRE DE 2014                       *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//**********************************************************************
//*  PASO: PHL32P05                                                    *00030000
//*  PROGRAMA: ZM4OJ085                                                *00040000
//*  FUNCION: SE GENERARA LA CARGA AUTOMATICA DE LAS CUOTAS DE         *00020000
//*           DISTRIBUCION Y ADMINISTRACION A LA PARAM QA1.            *00020000
//**********************************************************************
//PHL32P05 EXEC PGM=IKJEFT01
//*
//ZMJ085E1 DD DSN=MXCP.ZM.FIX.CBP.CUOTADMI.SIVA,DISP=SHR
//*
//ZMJ085S1 DD DSN=MXCP.ZM.FIX.CBP.CUOTADMI.INCI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHL32P05),DISP=SHR
//*                                                                    *
