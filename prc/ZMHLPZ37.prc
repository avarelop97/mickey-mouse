//ZMHLPZ37 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMHLPZ37                                         *
//*                                                                    *
//* OBJETIVO       :  IMPLEMENTACION DE FILTROS CASA DE BOLSA          *
//*                                                                    *
//* REALIZO        :  FABRICA DE SOFTWARE ACCENTURE (XM09522)          *
//*                                                                    *
//* FECHA          :  SEPTIEMBRE 28, 2011                              *
//*                                                                    *
//**********************************************************************
//*                     LOG DE MODIFICACIONES                          *00001100
//*  FECHA     ID       DESCRIPCION                                    *00001200
//*  --------  -------  ---------------------------------------------  *00001300
//* 11OCT2011  XM09522  @MEX01                                         *00001400
//*                     EN DONDE DICE SALIDAS DEL PROCESO: AGREGAR LA  *00001400
//*                     VARIABLE DE FECHA AL FINAL DEL NOMBRE DE LOS   *00001400
//*                     ARCHIVOS.                                      *00001400
//* 16MAY2012  XMGY061  FS-1.2.0-01                                    *00001400
//*                     - SE CAMBIA NOMBRE DE PASO PHL37P01 A PHL37P15 *00001400
//*                     - SE AGREGA PASO QUE GENERA ARCHIVO MENSUAL    *00001400
//*                       DE CLIENTES NACIONALES DE CASA DE BOLSA Y    *00001400
//*                       VIGENTES Y DE BAJAS                          *00001400
//*                     - SE AGREGA PASO QUE GENERA ARCHIVO MENSUAL,   *00001400
//*                       ANTES TRIMESTRAL DE CLIENTES NACIONALES DE   *00001400
//*                       CASA DE BOLSA VIGENTES Y DEBAJAS Y ARCHIVO   *00001400
//*                       DE CIFRAS DE CONTROL                         *00001400
//* 28MAY2018  XM02816  @MEX02                                         *00001400
//*                     SE AGREGA UN PASO DESPUES DE CADA PROGRAMA QUE *00001400
//*                     GENERAN LOS SIGUIENTES ARCHIVOS:               *00001400
//*                     - MXC&AMB..ZM.FIX.CLIENTE.MENSUAL.D&FECHA.     *00001400
//*                     - MXC&AMB..ZM.FIX.CTEMENS.INCREMEN.D&FECHA     *00001400
//*                     - MXC&AMB..ZM.FIX.CLIENTE.MENSATRI.NAL.D&FECHA *00001400
//*                     CON LA FINALIDAD DE CONVERTIR DICHOS ARCHIVOS A*00001400
//*                     - FORMATO DE LONGITUD VARIABLE.                *00001400
//*                     - AGREGARLE PIPES '|' ENTRE CADA CAMPO.        *00001400
//*                     - AGREGARLE AL FINAL DE CADA REGISTRO CRLF.    *00001400
//**********************************************************************00001600
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4MH017                                                 *
//* OBJETIVO    :  PROGRAMA QUE GENERA ARCHIVO MENSUAL DE CLIENTES     *
//*                DE CASA DE BOLSA VIGENTES Y DE BAJAS                *
//*--------------------------------------------------------------------*
//*FS-1.2.0-01-INI
//*PHL37P01 EXEC PGM=IKJEFT01
//PHL37P15 EXEC PGM=IKJEFT01
//*FS-1.2.0-01-FIN
//*@MEX01-I
//*ZM4MH0A1 DD DSN=MXC&AMB..ZM.FIX.CLIENTE.MENSUAL,
//ZM4MH0A1 DD DSN=MXC&AMB..ZM.FIX.CLIENTE.MENSUAL.D&FECHA.,
//*@MEX01-F
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(LRECL=274,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*@MEX01-I
//*ZM4MH0A2 DD DSN=MXC&AMB..ZM.FIX.CTEMEN.CIFRCON,
//ZM4MH0A2 DD DSN=MXC&AMB..ZM.FIX.CTEMEN.CIFRCON.D&FECHA.,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL37T20),DISP=SHR
//*
//*FS-1.2.0-01-INI
//*@MEX02-I
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4MH026                                                 *
//* OBJETIVO    :  PROGRAMA QUE LE AGREGA EL CARACTER PIPE '|' ENTRE   *
//*                LOS CAMPOS DEL REGISTRO, ADEMAS AL FINAL DE CADA    *
//*                REGISTRO SE AGREGA EL CRLF Y DEJA FINALMENTE EL     *
//*                REGISTRO EN FORMATO VARIABLE.                       *
//*--------------------------------------------------------------------*
//PHL37P13 EXEC PGM=ZM4MH026,COND=(4,LT)
//*
//ZM4MH0A1 DD DSN=MXC&AMB..ZM.FIX.CLIENTE.MENSUAL.D&FECHA,DISP=SHR
//*
//ZM4MH0A2 DD DSN=MXC&AMB..ZM.FIX.CLIENTE.MENSUAL.PIPE.D&FECHA,
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
//*--------------------------------------------------------------------*
//* PASO    : PHL37P10                                                 *
//* PROGRAMA: IKJEFT1A/ZM4MH020                                        *
//* OBJETIVO: PROGRAMA QUE GENERA ARCHIVO MENSUAL INCREMENTAL DE       *
//*           CLIENTES NACIONALES DE CASA DE BOLSA VIGENTES Y DE BAJAS *
//*--------------------------------------------------------------------*
//PHL37P10 EXEC PGM=IKJEFT1A,COND=(4,LT)
//ZM4MH0A1 DD DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(250,100),RLSE),UNIT=3390,
//            DCB=(LRECL=274,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            DSN=MXC&AMB..ZM.FIX.CTEMENS.INCREMEN.D&FECHA
//ZM4MH0A2 DD DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(250,100),RLSE),UNIT=3390,
//            DCB=(LRECL=80,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            DSN=MXC&AMB..ZM.FIX.CIFRCONT.INCREMEN.D&FECHA
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZHL37T21)
//*@MEX02-I
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4MH029                                                 *
//* OBJETIVO    :  PROGRAMA QUE LE AGREGA EL CARACTER PIPE '|' ENTRE   *
//*                LOS CAMPOS DEL REGISTRO, ADEMAS AL FINAL DE CADA    *
//*                REGISTRO SE AGREGA EL CRLF Y DEJA FINALMENTE EL     *
//*                REGISTRO EN FORMATO VARIABLE.                       *
//*--------------------------------------------------------------------*
//PHL37P08 EXEC PGM=ZM4MH029,COND=(4,LT)
//*
//ZM4MH0A1 DD DSN=MXC&AMB..ZM.FIX.CTEMENS.INCREMEN.D&FECHA,DISP=SHR
//*
//ZM4MH0A2 DD DSN=MXC&AMB..ZM.FIX.CTEMENS.INCREMEN.PIPE.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(250,100),RLSE),UNIT=3390,
//            DCB=(LRECL=278,BLKSIZE=0,RECFM=VB,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*@MEX02-F
//*--------------------------------------------------------------------*
//* PASO    : PHL37P05                                                 *
//* PROGRAMA: IKJEFT1A/ZM4MH018                                        *
//* OBJETIVO: PROGRAMA QUE GENERA ARCHIVO MENSUAL, ANTES TRIMESTRAL DE *
//*           CLIENTES NACIONALES DE CASA DE BOLSA VIGENTES Y DE BAJAS *
//*           Y ARCHIVO DE CIFRAS DE CONTROL                           *
//*--------------------------------------------------------------------*
//PHL37P05 EXEC PGM=IKJEFT1A,COND=(4,LT)
//ZM4MH0A1 DD DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(250,100),RLSE),UNIT=3390,
//            DCB=(LRECL=274,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            DSN=MXC&AMB..ZM.FIX.CLIENTE.MENSATRI.NAL.D&FECHA
//ZM4MH0A2 DD DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(250,100),RLSE),UNIT=3390,
//            DCB=(LRECL=80,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            DSN=MXC&AMB..ZM.FIX.CTENAL.CIFRCON.D&FECHA
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZHL39T02)
//*FS-1.2.0-01-FIN
//*@MEX02-I
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4MH027                                                 *
//* OBJETIVO    :  PROGRAMA QUE LE AGREGA EL CARACTER PIPE '|' ENTRE   *
//*                LOS CAMPOS DEL REGISTRO, ADEMAS AL FINAL DE CADA    *
//*                REGISTRO SE AGREGA EL CRLF Y DEJA FINALMENTE EL     *
//*                REGISTRO EN FORMATO VARIABLE.                       *
//*--------------------------------------------------------------------*
//PHL37P03 EXEC PGM=ZM4MH027,COND=(4,LT)
//*
//ZM4MH0A1 DD DSN=MXC&AMB..ZM.FIX.CLIENTE.MENSATRI.NAL.D&FECHA,DISP=SHR
//*
//ZM4MH0A2 DD DSN=MXC&AMB..ZM.FIX.CLIENTE.MENSATRI.NALPIPE.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(250,100),RLSE),UNIT=3390,
//            DCB=(LRECL=278,BLKSIZE=0,RECFM=VB,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*@MEX02-F
