//ZMJCPD06 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*              <<  I.D.S. COMERCIAL, S.A. DE C.V.  >>                *
//*                 <<  SOCIEDADES DE INVERSION   >>                   *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBJCCD06 (DISPARADOR)                            *
//*                   ZMJCPD06 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  DISTRIBUCION DE FONDOS POR LA RED                *
//*                                                                    *
//* CORRE ANTES DE :  INDEPENDIENTE                                    *
//*                                                                    *
//* DESPUES DE     :  CBJCCD05                                         *
//*                                                                    *
//* REALIZO        :  ROSARIO RAMIREZ        (JULIO DEL 2003)          *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO                                           *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*R.R.T |JULIO 2003|       |        |CONVERSION A MULTIEMPRESA        *
//**********************************************************************
//**********************************************************************
//*                        == ZM4EGV92 ==                              *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO DE PRECIOS Y CALIFICACIONES DE           *
//*            FONDOS DE DEUDA Y DE SOCIEDADES DE INVERSION            *
//*            COMUNES.                                                *
//**********************************************************************
//PJC06P01 EXEC PGM=IKJEFT01,COND=(0,LT)
//*
//PI601765 DD DUMMY
//*
//ZMJV92A1 DD DSN=SIVA.SIA.FIX.PRECIO.CALIF.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(LRECL=97,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(10,10),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC06T01),DISP=SHR
//*
//**********************************************************************
//*** PEND        FIN DEL PROCEDIMIENTO ZMJCPD06                       *
//**********************************************************************
