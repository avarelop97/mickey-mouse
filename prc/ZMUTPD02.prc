//ZMUTPD02 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : ZM - BANCA PATRIMONIAL                                  *
//*                                                                    *
//* PROCESO  : ZMUTPD02                                                *
//*                                                                    *
//* OBJETIVO : ACTULIZAR LA COMISION POR SUPERVISION Y ADMINSTRACION   *
//*            DE LA BANCA PATRIMONIAL Y PRIVADA                       *
//*                                                                    *
//* REALIZO  : CDA INFORMATICA (XTCDACI)                               *
//*                                                                    *
//* FECHA    : 24 DE ENERO DE 2012                                     *
//*--------------------------------------------------------------------*
//**********************************************************************
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//*  ----------  ------- ------- ------------------------------------- *
//*            *        *       *                                      *
//*--------------------------------------------------------------------*
//**********************************************************************
//*--------------------------------------------------------------------*
//* PASO     :  ZMU01P01                                               *
//* PROGRAMA :  IKJEFT01                                               *
//* OBJETIVO :  ACTULIZAR LA COMISION POR SUPERVISION Y ADMINSTRACION  *00040078
//*             DE LA BANCA PATRIMONIAL Y PRIVADA,GENERAR REPORTE DE   *00040078
//*             CONTRATOS ACTUALIZADOS.                                *00040078
//*--------------------------------------------------------------------*
//ZMU01P01 EXEC PGM=IKJEFT1A
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.ACTUALIZ.CONTRATO,
//            DISP=SHR
//SALIDA1  DD DSN=MXCP.ZM.FIX.REPORTE.CTAACTLZ,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=47,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDUMP  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUT17T01),DISP=SHR
//*--------------------------------------------------------------------*
//*                       FIN  PROCESO  ZMUTPD02
//*--------------------------------------------------------------------*
