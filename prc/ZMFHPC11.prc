//ZMFHPC11 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIMI.:  ZMFHPC21                                            *
//*                                                                    *
//*   OBJETIVO  :  EJECUCION PREVIO DE FHIPO (ZU92)                    *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA     :  DICIEMBRE 2017                                      *
//*                                                                    *
//*   AUTOR     :  ACCENTURE.                                          *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*====================================================================*
//* PASO     : PDO62050                                                *
//* OBJETIVO : GENERA REPORTE PREVIO DE FHIPO                          *
//* PROGRAMA : ZM4CSCC0                                                *
//**********************************************************************
//*INI-FHIPO-02-2018
//*====================================================================*
//* PASO     : PDO62050                                                *
//* OBJETIVO : GENERA CAPAS FICTICIAS                                  *
//* PROGRAMA : ZM4CSCC0                                                *
//**********************************************************************
//PDO62060 EXEC PGM=IKJEFT01
//*
//PIO62060 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ENTRADA1 DD DSN=MXCP.ZM.FIX.ENTRADA.ZMJLPCC1,DISP=SHR
//*
//SALIDA02 DD DSN=MXCP.ZM.FIX.FHIPO.ZM4CSCC0.INC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=246,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL21C00),DISP=SHR
//*FIN-FHIPO-02-2018
//*
//*====================================================================*
//* PASO     : PDO62050                                                *
//* OBJETIVO : GENERA REPORTE PREVIO DE FHIPO                          *
//* PROGRAMA : ZM4CSCC2                                                *
//**********************************************************************
//PDO62050 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62050 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ENTRADA1 DD DSN=MXCP.ZM.FIX.ENTRADA.ZMJLPCC1,DISP=SHR
//*
//CUENTAVA DD DSN=MXCP.ZM.FIX.FHIPO.ZM4CSCC2.VAC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=120,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//REGESTC  DD DSN=MXCP.ZM.FIX.FHIPO.ZM4CSCC2.ARCHTXT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*           DCB=(DSORG=PS,LRECL=120,RECFM=FBA,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=127,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SALIDAD  DD DSN=MXCP.ZM.FIX.FHIPO.ZM4CSCC2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*           DCB=(DSORG=PS,LRECL=118,RECFM=FBA,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=126,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SALIDA01 DD DSN=MXCP.ZM.FIX.FHIPO.ZM4CSCC2.INC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=246,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL21C11),DISP=SHR
//*
//*====================================================================*
//* PASO     : PIO62040                                                *
//* OBJETIVO : ENVIO A CONTROL-D ARCHIVO GENERADO EN EL PASO PDO62050  *
//* PROGRAMA : CODIGO 1  BCM                                           *
//**********************************************************************
//PDO62040 EXEC PGM=ICEGENER,COND=(0,NE,PDO62050)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.FHIPO.ZM4CSCC2,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//**********************************************************************
//*                 F  I  N                                            *
//**********************************************************************
