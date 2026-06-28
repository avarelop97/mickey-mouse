//ZMHLPZ39 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMHLPZ39                                         *
//*                                                                    *
//* OBJETIVO       :  IMPLEMENTACION DE FILTROS CASA DE BOLSA          *
//*                                                                    *
//* REALIZO        :  FABRICA DE SOFTWARE ACCENTURE (XM09522)          *
//*                                                                    *
//* FECHA          :  SEPTIEMBRE 28, 2011                              *
//*                                                                    *
//**********************************************************************
//**********************************************************************00001000
//*                     LOG DE MODIFICACIONES                          *00001100
//*  FECHA     ID       DESCRIPCION                                    *00001200
//*  --------  -------  ---------------------------------------------  *00001300
//* 11OCT2011  XM09522  @MEX01                                         *00001400
//*                     EN DONDE DICE SALIDAS DEL PROCESO:             *00001400
//*                     AGREGAR LA VARIABLE DE FECHA AL FINAL DEL      *00001400
//*                     NOMBRE DE LOS ARCHIVOS.                        *00001400
//* 16MAY2012  XMGY061  *FS-1.2.0-01                                   *00001400
//*                     SE ELIMINA PASO PHL39P04                       *00001400
//* 28MAY2018  XM02816  @MEX02                                         *00001400
//*                     SE AGREGA UN PASO DESPUES DEL PROGRAMA QUE     *00001400
//*                     GENERA EL SIGUIENTE ARCHIVO:                   *00001400
//*                     - MXC&AMB..ZM.FIX.CLIENTE.EXT.TRIM.D&FECHA     *00001400
//*                     CON LA FINALIDAD DE CONVERTIR DICHO ARCHIVO A: *00001400
//*                     - FORMATO DE LONGITUD VARIABLE.                *00001400
//*                     - AGREGARLE PIPES '|' ENTRE CADA CAMPO.        *00001400
//*                     - AGREGARLE AL FINAL DE CADA REGISTRO CRLF.    *00001400
//**********************************************************************00001600
//*FS-1.2.0-01-INI
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4MH018                                                 *
//* OBJETIVO    :  PROGRAMA QUE GENERA ARCHIVO TRIMESTRAL DE CLIENTES  *
//*                NACIONALES DE CASA DE BOLSA VIGENTES Y DE BAJAS Y   *
//*                ARCHIVO DE CIFRAS DE CONTROL                        *
//*--------------------------------------------------------------------*
//*PHL39P04 EXEC PGM=IKJEFT01
//**@MEX01-I
//**ZM4MH0A1 DD DSN=MXC&AMB..ZM.FIX.CLIENTE.TRIMES.NAL,
//*ZM4MH0A1 DD DSN=MXC&AMB..ZM.FIX.CLIENTE.TRIMES.NAL.D&FECHA.,
//**@MEX01-F
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(4,2),RLSE),
//*            DCB=(LRECL=274,RECFM=FB,BLKSIZE=0,DSORG=PS)
//**@MEX01-I
//**ZM4MH0A2 DD DSN=MXC&AMB..ZM.FIX.CTENAL.CIFRCON,
//*ZM4MH0A2 DD DSN=MXC&AMB..ZM.FIX.CTENAL.CIFRCON.D&FECHA.,
//**@MEX01-F
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(4,2),RLSE),
//*            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL39T02),DISP=SHR
//**
//*FS-1.2.0-01-FIN
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4MH019                                                 *
//* OBJETIVO    :  PROGRAMA QUE GENERA ARCHIVOTRIMESTRAL DE CLIENTES   *
//*                EXTRANJEROS DE CASA DE BOLSA VIGENTES Y DE BAJAS Y  *
//*                ARCHIVO DE CIFRAS DE CONTROL                        *
//*--------------------------------------------------------------------*
//PHL39P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*@MEX01-I
//*ZM4MH0A1 DD DSN=MXC&AMB..ZM.FIX.CLIENTE.EXT.TRIM,
//ZM4MH0A1 DD DSN=MXC&AMB..ZM.FIX.CLIENTE.EXT.TRIM.D&FECHA.,
//*@MEX01-F
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(LRECL=274,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*@MEX01-I
//*ZM4MH0A2 DD DSN=MXC&AMB..ZM.FIX.CTEEXT.CIFRCON,
//ZM4MH0A2 DD DSN=MXC&AMB..ZM.FIX.CTEEXT.CIFRCON.D&FECHA.,
//*@MEX01-F
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL39P01),DISP=SHR
//*
//*@MEX02-I
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4MH028                                                 *
//* OBJETIVO    :  PROGRAMA QUE LE AGREGA EL CARACTER PIPE '|' ENTRE   *
//*                LOS CAMPOS DEL REGISTRO, ADEMAS AL FINAL DE CADA    *
//*                REGISTRO SE AGREGA EL CRLF Y DEJA FINALMENTE EL     *
//*                REGISTRO EN FORMATO VARIABLE.                       *
//*--------------------------------------------------------------------*
//PHL39P02 EXEC PGM=ZM4MH028,COND=(4,LT)
//*
//ZM4MH0A1 DD DSN=MXC&AMB..ZM.FIX.CLIENTE.EXT.TRIM.D&FECHA,DISP=SHR
//*
//ZM4MH0A2 DD DSN=MXC&AMB..ZM.FIX.CLIENTE.EXT.TRIMPIPE.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(LRECL=278,RECFM=VB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*@MEX02-F
