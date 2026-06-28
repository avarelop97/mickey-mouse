//ZMHHPZ10 PROC                                                         01140002
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  C A P I T A L E S >>                       *
//*                                                                    *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES.(HOST TO HOST).      *
//*                                                                    *
//* PROCESO        :  SIVAXEFF                                         *
//*                   EXTRACTOR PARA FONDO DE FONDOS.                  *
//*                                                                    *
//* OBJETIVO       :  EXTRACTOR PARA FONDO DE FONDOS.                  *
//*                   HOST TO HOST.                                    *
//*                                                                    *
//* GRUPO          :  06         SOC. DE INV. QUE OPERAN SOC. DE INV.  *
//*                                                                    *
//*                                                                    *
//* DESPUES DE     :  A PETICION DEL USUARIO,                          *
//*                   SUBMITE POR OPCION 868.                          *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO, DE LUNES A VIERNES, A PETICION.          *
//*                                                                    *
//* ELABORADO POR  :  EQUIPO DE HOST TO HOST.                          *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*********************************************************************
//*                            (ZM4DHH08)                              *
//* PASO     : PHH10P02                                                *
//* PHH10P02                                                           *
//* OBJETIVO : GENERA EXTRACCION PARA SOC. DE INV. QUE OPERAN SOC. DE  *
//*            INV.                                                    *
//*            LA EXTRACCION SE HACE EN FECHA DE LIQUIDACION.          *
//*                                                                    *
//**********************************************************************
//PHH10P02 EXEC PGM=IKJEFT01
//*
//ZMHH09A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHHPD10,DISP=SHR
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMH10T01),DISP=SHR
//*
//**********************************************************************
//*  PASO:     PHH10P01                                                *
//*  PROGRAMA: ZM4ODEL1                                                *
//*  OBJETIVO  PASO REINICIABLE POR RESTART                            *
//*            ACTUALIZA EL RENGLON DE INTERFACES EN CTLPROC 'DFBEFF'  *
//**********************************************************************
//PHH10P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHHPD10,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMH10T00),DISP=SHR
//**********************************************************************
//*  PASO:     PHH10P00                                                *
//*  PROGRAMA: ZM4ODEL1                                                *
//*  OBJETIVO  PASO REINICIABLE POR RESTART                            *
//*            ACTUALIZA EL RENGLON DE INTERFACES EN CTLPROC 'DFBEFF'  *
//**********************************************************************
//PHH10P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHHPD10,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMH10T0A),DISP=SHR
//**********************************************************************
//*                      F I N   Z M L L P E 4 4                       *
//**********************************************************************
