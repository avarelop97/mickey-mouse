//ZMPMPDV5 PROC                                                         00000100
//*--------------------------------------------------------------------*00000200
//*                                                                    *00000900
//*               C A S A     D E     B O L S A                        *00000300
//*               -----------------------------                        *00000400
//*               REPORTE MENSUAL DE LA CARTERA PARA PDV               *00000500
//*                                                                    *00000600
//*  PASO:  1     REPORTE MENSUAL DE PDV (BANCA PATRIMONIAL)           *00000700
//*               DESDE MUV  HACIA  PDV                                *00000800
//*--------------------------------------------------------------------*00001000
//*  ELABORO: RAUL RAMIREZ NUNEZ     (GRUPO GESFOR)                    *00001100
//*  FECHA  : OCTUBRE DE 2014                                          *00001200
//*--------------------------------------------------------------------*00001300
//*  MODIFICACIONES                                                    *00001400
//* FECHA    DESCRIPCION                                               *00001500
//*--------------------------------------------------------------------*00005000
//*--------------------------------------------------------------------*00005010
//*             L O G   D E   M O D I F I C A C I O N E S              *00005020
//*--------------------------------------------------------------------*00005030
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *00005040
//* -----------  ------- -------  -------------------------------------*00005050
//* DD-JIGV      JIGV    31012022 SE HOMOLOGA LONGITUD DE ARCHIVO DE   *00005060
//*                               123 A 171 PARA QUE COINCIDA CON      *00005060
//*                               LONGITUD DE INTERFAZ CALYPSO DONDE   *00005060
//*                               ESTA CONTENDRA LOS CAMPOS NOMBRE, CR *00005060
//*                               Y DESCRIPCION DE BANCA.              *00005060
//*                               CALIBRACION DE REPORTES CNBV.        *
//*--------------------------------------------------------------------*00005070
//*--------------------------------------------------------------------*
//* PASO       : PPDV5P10.                                             *
//* UTILERIA   : IKJEFT01.                                             *
//* OBJETIVO   : COPIA ARCHIVO                                         *
//*                                                                    *
//*--------------------------------------------------------------------*
//PPDV5P10 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.F&FECHA..BCJDPDV5.REPOTING,
//            DISP=SHR
//*DD-JIGV-I
//*SYSUT2   DD DSN=MXC&AMB..ZM.FIX.REPBPP01.BCJDPDV5,
//SYSUT2   DD DSN=MXC&AMB..ZM.FIX.REPBPP02.BCJDPDV5,
//*DD-JIGV-F
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,100),RLSE),
//            DCB=(DSORG=PS,LRECL=123,BLKSIZE=0,RECFM=FB)
//*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//*DD-JIGV-I
//*--------------------------------------------------------------------*
//* PASO       : PPDV5P05.                                             *
//* UTILERIA   : IKJEFT01.                                             *
//* OBJETIVO   : INCREMENTA LA LONGITUD DEL ARCHIVO DE 123 A 217.      *
//*--------------------------------------------------------------------*
//PPDV5P05 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.REPBPP02.BCJDPDV5,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.REPBPP01.BCJDPDV5,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,100),RLSE),
//            DCB=(DSORG=PS,LRECL=217,BLKSIZE=0,RECFM=FB)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPDV501),DISP=SHR
//*
//*DD-JIGV-F
//**********************************************************************00045600
//*        TERMINA PROCESO ZMPMPDV5 BANCA PATRIMONIAL                  *00045700
//**********************************************************************00045800
