//ZPJOT200 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA : ZM(MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO)            *
//*                                                                    *
//* PROCESO : ZPJOT200                                                 *
//*                                                                    *
//* OBJETIVO: GENERACION DE ARCHIVO QUE CONTENDRA INFORMACION DE LOS   *
//*           PRECIOS  DE LOS FONDOS SOCIEDADES DE INVERSION DE CASA   *
//*           DE BOLSA, SIMULTANEO CON LA OPCION 517 DEL SIVA          *
//*                                                                    *
//* REALIZO : SOFTTEK(PEME)                                            *
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
//*PASO:PH01T200                                                       *
//*PROGRAMA: ZM4OJ200/IKJEFT01                                         *
//*DESCRIPCION: GENERACION DE ARCHIVO DE PRECIOS  / PARALELO CON OPC.  *
//*             517                                                    *
//*--------------------------------------------------------------------*
//PH01T200 EXEC PGM=IKJEFT01
//*
//ARCPREC  DD DSN=MXCP.ZM.FIX.ECBP.PRECIOS.OPC512,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZH1OT200),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*PASO:PH01T100                                                       *
//*PROGRAMA: ZM4OJ200/IKJEFT01                                         *
//*DESCRIPCION: GENERACION DE ARCHIVO DE PRECIOS II                    *
//*                                                                    *
//*--------------------------------------------------------------------*
//PH01T100 EXEC PGM=IKJEFT01,COND=(04,LT) ;SE PUEDE REINICIAR
//*
//FILEPREC DD DSN=MXCP.ZM.FIX.ECBP.PRECIOS.LISTAII,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(8,4),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZH1OT206),DISP=SHR
//*
