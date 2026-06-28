//ZMUEPM39 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM39                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERAR REPORTE DE ESTADOS DE CUENTA CON MAS DE 150 *
//*                HOJAS.                                              *
//*                                                                    *
//*   CORRE ANTES DE  :  CBUENM34                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMUEPM29                                      *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   JULIO   2011                                                     *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*
//**********************************************************************
//**********************************************************************
//* PASO     : PUE39P02                                                *
//* PGM/UTIL : ICEMAN                                                  *
//* OBJETIVO : GENERA ARCHIVO CON CUENTAS MAYORES A 150 HOJAS          *
//**********************************************************************
//PUE39P02 EXEC PGM=ICEMAN
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.DIGTA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.DIGTA.SORT150,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=25,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMECBD00),DISP=SHR
//**********************************************************************
//* PASO     : PUE39P01                                                *
//* PGM/UTIL : IKJEFT01 (ZM4CBD00)                                     *
//* OBJETIVO : GENERA ARCHIVO CON CUENTAS MAYORES A 150 HOJAS Y TOTALES*
//**********************************************************************
//PUE39P01 EXEC PGM=ZM3MU000,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//E1SIIMP  DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.DIGTA.SORT150,DISP=SHR
//S1SIIMP  DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.DIGTA.SORTTOT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=8,RECFM=FB,BLKSIZE=0)
//*           DCB=(DSORG=PS,LRECL=33,RECFM=FB,BLKSIZE=0)
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM39 SIVA MULTIEMPRESA                  *
//**********************************************************************
