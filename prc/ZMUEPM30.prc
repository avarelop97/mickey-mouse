//ZMUEPM30 PROC
//*ZMUEPM30 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM30                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERACION DE ARCHIVO IMPRESOS Y NO IMPRESOS        *
//*                                                                    *
//*   CORRE ANTES DE  :  CBUENM31                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMUEPM05                                      *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   ENERO 2011                                                       *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//**********************************************************************
//* PASO     : PUE30P00                                                *
//* PGM/UTIL : IKJEFT01                                                *
//* OBJETIVO : GENERA LOS ARCHIVOS DE IMPRESOS Y NO IMPRESOS           *
//**********************************************************************
//PUE30P00 EXEC PGM=IKJEFT01
//*
//ZMU330LE DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDOSCTA.LISTA(0),
//            DISP=SHR
//*
//ZMU330SI DD DSN=MXCP.ZM.FIX.ECT.ECBP.SIMPRE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=50,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//ZMU330NI DD DSN=MXCP.ZM.FIX.ECT.ECBP.NIMPRE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=50,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMECBD03),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM29 SIVA MULTIEMPRESA                  *
//**********************************************************************
