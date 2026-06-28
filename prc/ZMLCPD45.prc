//ZMLCPD45 PROC                                                         00001000
//*                                                                     00002000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBLCCD45                                            *
//*                REPORTE DE LIBERACION DE GARANTIAS POR AMORTIZACION *
//*                                                                    *
//*   OBJETIVO  :  GENERAR ARCHIVO CON LAS OPERACION QUE REALIZARON    *
//*                LIBERACION DE GARANTIAS POR AMORTIZACION DE MMD.    *
//*                                                                    *
//*                ARCHIVO QUE SE ENVIARA VIA NDM A CLIENTE SERVIDOR   *
//*                                                                    *
//*   CORRE ANTES DE  :  BCLCCD38                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  BCLCCD38  CIERRE DE MDD                       *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR: EAM.                                              *
//*                                                                    *
//*   FECHA:  DICIEMBRE 2019.                                          *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF      | FECHA  |USUARIO| PASO  |DESCRIPCION                 *
//*--------------------------------------------------------------------*
//*FS-1.0.0-01 220612   CAPGEMI PLC38P01  SE AGREGA PASO PLC38P00 PARA *
//*                                       REPORTE DIRECTO DE MDD BANCA *
//*                                       PATRIMONIAL Y PRIVADA.       *
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4DLX32                                     *
//* OBJETIVO   : OBTIENE INFORMACION DE OPERDIN OPERACION 1009 Y 625   *
//*            : P05                                                   *
//**********************************************************************
//PLC45P03 EXEC PGM=IKJEFT01
//*
//S1DESOPE DD DSN=MXCP.ZM.FIX.DOPERDIN.DETALLES,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,10),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=285,RECFM=FB,BLKSIZE=0)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PLC45P03),DISP=SHR
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4DLX33                                     *
//* OBJETIVO   : OBTIENE INFORMACION COMPLEMENTARIA NUMERO DE CLIENTE  *
//*              POSICION DE CARTERA.                                  *
//**********************************************************************
//PLC45P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.DOPERDIN.DETALLES,DISP=SHR
//*
//S1SALIDA DD DSN=MXCP.ZM.FIX.DOPERDIN.SALIDA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=315,RECFM=FB,BLKSIZE=0)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PLC45P02),DISP=SHR
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4DLX33                                     *
//* OBJETIVO   : GENERA REPORTE DE LIBERACION DE GARANTIAS ZMDT834     *
//**********************************************************************
//PLC45P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.DOPERDIN.SALIDA,DISP=SHR
//*
//S1SALIDA DD DSN=MXCP.ZM.FIX.DOPERDIN.SALIDA.REP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=256,RECFM=FB,BLKSIZE=0)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PLC45P01),DISP=SHR
//**********************************************************************
//*          F I N      Z M L C P D 4 5                                *
//**********************************************************************
