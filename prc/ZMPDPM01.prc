//ZMPDPM01 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA: ZM@ (CASA DE BOLSA)                                       *
//*                                                                    *
//* PROCESO: CBPDNM01.                                                 *
//*                                                                    *
//* OBJETIVO : PROCESO MENSUAL QUE EFECTUA LA CONSULTA A LA TABLA      *
//*            SYSIBM.SYSTABLES Y OBTIENE LAS CARACTERISTICAS DE TABLAS*
//*            Y CAMPOS DE LA BASE DE DATOS DE CASA DE BOLSA QUE HAN   *
//*            SIDO CREADOS O MODIFICADOS EN LOS ULTIMOS 3 MESES A     *
//*            PARTIR DE LA FECHA DEL SISTEMA.                         *
//*                                                                    *
//* REALIZO :  CDA TECNOLOGIA INFORMATICA.                             *
//*                                                                    *
//* FECHA   :  12 DE OCTUBRE DE 2011                                   *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//*  ----------  ------- ------- ------------------------------------- *
//*            *        *       *                                      *
//*--------------------------------------------------------------------*
//**********************************************************************
//*- PASO       : PPD01P01                                             *
//*- PROGRAMA   : ADUUMAIN                                             *
//*- DESCRIPCION: DESCARGA INFORMACION A ARCHIVO SECUENCIAL LA TABLA   *
//*               SYSIBM.SYSTABLES PARA EL PROYECTO PDP.               *
//**********************************************************************
//PPD01P01 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PPD01P01,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXC&AMB..ZM.FIX.SYSTABLE.PDP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,LRECL=1081,BLKSIZE=0,DSORG=PS)
//*
//SYSPUNCH DD DUMMY
//SYSOUT   DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPD01T01),DISP=SHR
//*
