//ZMUIPD04 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CASA DE BOLSA.                                 *
//* PROCESO      : ZMUIPD04.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : COPIA DE ARCHIVO PROPORCIONADO POR RECURSOS HUMANOS *
//*                A ARCHIVO PROPIO CASA DE BOLSA PARA SU PROCESAMIENTO*
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 14 DE NOVIEMBRE DE 2014.                            *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*  XMYECC       XMY3220  120419  SE AGREGA UN PASO PAARA VALIDAR EL  *
//*                                ARCHIVO QUE SE COPIA. LA VALIDACION *
//*                                CONSISTE EN CONTAR EL NUMERO DE REG.*
//*                                QUE NOS ESTA ENVIANDO RH Y COMPARAR *
//*                                CON UN PARAMETRO DEFINIDO, SI LOS   *
//*                                REG. SON MAYORES AL PARAMETRO, EL   *
//*                                PROCESO CANCELA CON CODIGO 16.      *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PDC04P01.                                             *
//* UTILERIA   : ICEGENER.                                             *
//* OBJETIVO   : COPIA ARCHIVO MBVD.AJ.FIX.RRHHMUV.F&FECHA..MUV        *
//*              A MXCD.ZM.FIX.RRHHMUV.F&FECHA..MUV.                   *
//*--------------------------------------------------------------------*
//PDC04P02 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=MBVP.AJ.FIX.RRHHMUV.F&FECHA..MUV,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.RRHHMUV.F&FECHA..MUV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=555,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--XMYECC-INI
//**********************************************************************
//*                           --ZM4RHP01--                             *
//* OBJETIVO    : VALIDA ARCHIVO DE RH PROMOTORES                      *
//*               NUM REG. PROM > PARAM CANCELA CON CODIGO 16          *
//* MODIFICO:     XMY3220                                              *
//**********************************************************************
//PDC04P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//FILEIN   DD DSN=MXCP.ZM.FIX.RRHHMUV.F&FECHA..MUV,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRRHH01),DISP=SHR
//*
//*--XMYECC-FIN
//*------------------------------ -------------------------------------*
//*                    FIN DEL PROCESO ZMUIPD04                        *
//*--------------------------------------------------------------------*
//*
