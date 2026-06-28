//ZPJOT081 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA : ZM(MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO)            *
//*                                                                    *
//* PROCESO : ZPJOT081                                                 *
//*                                                                    *
//* OBJETIVO: REGENERACION DE CAPAS ISR MERCADO DE DINERO              *
//*           PROCESO 1/2.                                             *
//*                                                                    *
//* REALIZO : JOSE OSCAR SEGURA PEREZ                                  *
//*                                                                    *
//* FECHA   : ABRIL 2015                                               *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*   MARCA      AUTOR   FECHA       DESCRIPCION                       *
//* ----------  ------- ------- ---------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*PASO:PH01T081                                                       *
//*PROGRAMA: ZM4SIV01                                                  *
//*DESCRIPCION: REGENERACION DE CAPAS ISR MERCADO DE DINERO  (1/2)     *
//*                                                                    *
//*--------------------------------------------------------------------*
//PH01T081 EXEC PGM=IKJEFT01
//*
//ARCISR1  DD DSN=MXCP.ZM.FIX.EBCM.CAPAS.ISR01,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZH1OT081),DISP=SHR
//*
