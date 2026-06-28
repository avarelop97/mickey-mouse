//ZPJOT080 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA : ZM(MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO)            *
//*                                                                    *
//* PROCESO : ZPJOT080                                                 *
//*                                                                    *
//* OBJETIVO: GENERACON DE ARCHIVO QUE CONTENDRA INFORMACION DE LOS    *
//*           FACTORES DE LOS FONDOS SOCIEDADES DE INVERSION DE CASA   *
//*           DE BOLSA, SIMULTANEO CON LA OPCION 517 DEL SIVA          *
//*                                                                    *
//* REALIZO : SOFTTEK(OHBA)                                            *
//*                                                                    *
//* FECHA   : MAYO 2011                                                *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*   MARCA      AUTOR   FECHA       DESCRIPCION                       *
//* ----------  ------- ------- ---------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*PASO:PH01T080                                                       *
//*PROGRAMA: ZM4OJ080/IKJEFT01                                         *
//*DESCRIPCION: GENERACION DE ARCHIVO DE FACTORES / PARALELO CON OPC.  *
//*             517                                                    *
//*--------------------------------------------------------------------*
//PH01T080 EXEC PGM=IKJEFT01
//*
//ARCFACT  DD DSN=MXCP.ZM.FIX.ECBP.FACTORES.OPC517,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=40,BLKSIZE=0),
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZH1OT080),DISP=SHR
//*
