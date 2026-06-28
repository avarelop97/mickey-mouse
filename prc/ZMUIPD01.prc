//ZMUIPD01 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                  << MODULO UNICO  DE VALORES >>                    *
//*                                                                    *
//*   APLICACION:  MODULO UNICO DE VALORES MUV ANTES (SIVA)            *
//*                                                                    *
//*   PROCEDIM. :  ZMUIPD01                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERA ARCHIVO EDITADO DE INTERFAZ CONTABLE MV1     *
//*                (SOCIEDADES DE INVERSION) PARA LA TRANSFERENCIA     *
//*                AL SERVIDOR BLADE (PARA HECTOR LEON)                *
//*                                                                    *
//*                                                                    *
//*          <<<< EDITA ARCHIVOS PARA TRANSF A SERV BLADE >>>>         *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    : DIARIO                                         *
//*                                                                    *
//*   ELABORADO POR: MARCIAL ROSALES (GRUPO CII)                       *
//*                                                                    *
//*   FECHA:  MARZO DEL 2005.                                          *
//*                                                                    *
//*   ACTUALIZA : NINGUNA TABLA                                        *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------**
//*                                                                    *00020000
//*  PASO:  3     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*               EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//*-------------------------------------------------------------------**
//PUI01P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECO.E&EMP..ZMUIPD01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*-------------------------------------------------------------------**
//*                                                                    *00020000
//*  PASO:  2     EDITA INTERFAZ CONTABLE MV1(SOCIEDADES DE INVERSION) *00030000
//*               PARA TRANSFERENCIA A SERVIDOR BLADE                  *00040000
//*                                                                    *00020000
//*-------------------------------------------------------------------**
//PUI01P02 EXEC PGM=ZM3DU800,COND=(4,LT)                                00071023
//ZMU800T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV1,DISP=SHR               00073087
//ZMU800T2 DD DSN=MXCP.ZM.FIX.ECO.INEDIT.ACECMV1,                       00080087
//         DISP=(NEW,CATLG,DELETE),                                     00090000
//         SPACE=(CYL,(20,10),RLSE),                                    00120015
//         DCB=(DSORG=PS,RECFM=FB,LRECL=450,BLKSIZE=0),                 00121019
//         UNIT=3390                                                    00122015
//SYSTSPRT DD SYSOUT=*                                                  00130016
//SYSPRINT DD SYSOUT=*                                                  00140015
//SYSOUT   DD SYSOUT=*                                                  00150015
//SYSDBOUT DD SYSOUT=*                                                  00160015
//SYSABOUT DD DUMMY                                                     00170000
//SYSUDUMP DD DUMMY                                                     00180000
//SYSTSIN  DD DUMMY                                                     00190019
//*                                                                     00230000
//*--------------------------------------------------------------------*00010000
//*                 F I N   Z M U I P D 0 1                            *00020000
//*--------------------------------------------------------------------*00010000
