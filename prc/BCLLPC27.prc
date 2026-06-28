//BCLLPC27 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA : ZM(MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO)            *
//*                                                                    *
//* PROCESO : BCLLPC27                                                 *
//*                                                                    *
//* OBJETIVO: GENERACION DE ARCHIVO SECUENCIAL CON EL DETALLE DE LAS   *
//*           DEMANDAS DE UNA EMISORA EN PARTICULAR                    *
//*                                                                    *
//* REALIZO : HITSS(RCC)                                               *
//*                                                                    *
//* FECHA   : ENERO 2016                                               *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*   MARCA      AUTOR   FECHA       DESCRIPCION                       *
//* ----------  ------- ------- ---------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*PASO:PJ01T300                                                       *
//*PROGRAMA: ZM4OJ300/IKJEFT01                                         *
//*DESCRIPCION: GENERACION DE ARCHIVO DE CONSULTA DE DEMANDAS          *
//*             DE UNA EMISORA EN ESPECIFICO                           *
//*--------------------------------------------------------------------*
//PJ01T300 EXEC PGM=IKJEFT01
//*
//ARCENTRA DD DSN=MXCP.ZM.FIX.EMP.SUC.PARAM123,DISP=SHR
//ARCDMDAS DD DSN=MXCP.ZM.FIX.EBCM.COLOCACI.DEMANDAS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=244,BLKSIZE=0),
//            UNIT=3390
//*
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJ01T300),DISP=SHR
//*
//*
