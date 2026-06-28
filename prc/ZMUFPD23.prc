//ZMUFPD23  PROC
//*********************************************************************
//*                                                                   *
//*  APLICACION      : ZM@ CONVERSION A COBOL II                      *
//*                                                                   *
//*  VERSION         : 1.0                NIVEL  : 0                  *
//*                                                                   *
//*  CRITICIDAD      :BAJA                                            *
//*                                                                   *
//*  PERIODICIDAD    :DIARIA                                          *
//*                                                                   *
//*                                                                   *
//*  FUNCION:   RESPALDO E INICLAIZACION DE ARCHIVO DE INTERFAZ       *
//*             CONTABLE DESPUES DE SER ENVIADA A ALTAMIRA            *
//*  VERSIONADO      :                                                *
//*  AUTOR           :FABRICA EXTERNA SOFTTEK(XTSOCGS).               *
//*  DATE-WRITTEN    :23/ABRIL/2010.                                  *
//**--------------------------------------------------------------*****
//**            L O G   D E   M O D I F I C A C I O N E S         *****
//**--------------------------------------------------------------*****
//* @MOD   | FECHA   |                  DESCRIPCION                ****
//**-------+---------+--------------------------------------------*****
//******************************************************************
//*  PASO         PUF23P10                                         *
//*  PROGRAMA     ICEGENER                                         *
//*  OBJETIVO:   PROCESO DE RESPALDO DE ARCHIVO DE ENLACE CONTABLE *
//*                                                                *
//******************************************************************
//PUF23P10 EXEC PGM=ICEGENER
//SYSIN    DD  DUMMY
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=&GLMV..GLMV303.ENCON.DETAIL,
//             DISP=SHR
//SYSUT2   DD  DSN=&GLMV..GDGMIL.ENCON(+1),
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(10,50),RLSE),
//             DCB=(BKUD.MODEL,LRECL=218,RECFM=FB,BLKSIZE=0),
//             UNIT=3390
//*
//******************************************************************
//*  PASO         PUF23P05                                         *
//*  PROGRAMA     ICEGENER                                         *
//*  OBJETIVO:   PROCESO DE INICIALIZACION DEL ARCHIVO DE ENTRADA  *
//*                                                                *
//******************************************************************
//PUF23P05 EXEC PGM=ICEGENER,COND=(0,LT,PUF23P10)
//SYSIN    DD  DUMMY
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=NULLFILE,
//             DCB=(RECFM=FB,LRECL=218)
//SYSUT2   DD  DSN=&GLMV..GLMV303.ENCON.DETAIL,
//             DISP=SHR
//*
