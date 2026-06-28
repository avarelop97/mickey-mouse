//ZMLLPC13 PROC                                                         00040000
//**********************************************************************00003000
//*                 B A N C A   P A T R I M O N I A L                  *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  M U V                                               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPC13-COVAF                                      *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  GENERACION DE ARCHIVO PARA CONCILIACION DE COVAF    *00003000
//*                                                                    *00003000
//*    ORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  BCLLPC13                                      *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- --------------------------------------*
//* @MEX001      XM09480 11NOV11 AGREGAR UN NUEVO ARCHIVO DE SALIDA EN *00003000
//*                              EL PASO PLC13P07 QUE EJECUTA EL       *
//*                              PROGRAMA ZM4DLD93.                    *
//*--------------------------------------------------------------------*
//*********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DESDE CICS Y LOS GRABA EN ARCHIVO
//*********************************************************************
//*
//PLC13P10 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','     ','     ',)
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC13,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*****************************************************************
//* PROGRAMA: ZM4DLD93                                            *
//* OBJETIVO: GENERACION DE ARCHIVO DE PRESTVAL-CONCILIACIONES    *
//*           EVENTOS CORP. TITULOS & CASH (PROCESO LINEA)        *
//*****************************************************************
//PLC13P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD93A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZM4DLD93,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=350,BLKSIZE=0),
//            UNIT=3390
//*@MEX001-INI
//ZMLD93A2 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..SIVALD93,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=361,BLKSIZE=0),
//            UNIT=3390
//*@MEX001-FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP11T05),DISP=SHR
//*
//*****************************************************************
//* PROGRAMA: ZM4DLD94                                            *
//* OBJETIVO: GENERACION DE ARCHIVO PARA CONCILIACION DE COVAF    *
//*****************************************************************
//PLC13P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD94P1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZXLLPC13,DISP=SHR
//*
//ZMLD94A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..COVAFDIA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=350,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP13T05),DISP=SHR
//*
//*****************************************************************
