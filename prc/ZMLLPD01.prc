//ZMLLPD01 PROC
//**********************************************************************
//*   APLICACION:  ZM - PRODUCTO ESTRUCTURADO (NEW)                    *
//*                                                                    *
//*   PROCEDIM. :  ZMLLPD01                                            *
//*                                                                    *
//*   OBJETIVO  :  EJECUTA PROGRAMA DE EXTRACCION DE EMISORAS Y CORTES *
//*                DE CUPON DE MERCADO DE DINERO PARA LAS NOTAS        *
//*                ESTRUCTURADAS                                       *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIA                                        *
//*                                                                    *
//*   FECHA           : ABRIL 2016                                     *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//**********************************************************************
//*  PASO: PHLLAP05                                                    *00030000
//*  PROGRAMA: ZM4DLC01                                                *00040000
//*  FUNCION: GENERA REPORTE CON LAS EMISORAS Y CORTES DE CUPON CORRES-*00020000
//*           PONDIENTES A M.DINERO PARA NEW                           *00020000
//**********************************************************************
//PHLLPD05 EXEC PGM=IKJEFT01
//*
//SALIDA01 DD DSN=MXC&AMB..ZM.FIX.NEW&EMP..F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=201,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHLLPD05),DISP=SHR
//*                                                                    *
