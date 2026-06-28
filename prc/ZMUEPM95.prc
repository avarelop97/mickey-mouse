//ZMUEPM95 PROC
//**********************************************************************00009500
//* SISTEMA        :  MAREA MEXICO                                     *00010006
//* PROCESO        :  ZMUEPM95                                         *00010006
//*                                                                    *00010006
//* OBJETIVO       :  GENERAR LOS ARCHIVOS SOLICITADOS PARA LOS NUEVOS *00010006
//*                   PROCESOS DE INTERFACES DE MAREA-MEXICO           *00010006
//* CORRE                                                              *00010006
//* ANTES DE       :                                                   *00010006
//* DESPUES DE     :                                                   *00010006
//* REALIZO        :  IRMA JULIA CAMACHO NUNEZ                         *00010006
//* FECHA          :  ABRIL 2009                                       *00010006
//* OBSERVACION    :                                                   *00010006
//********************************************************************* 00010006
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA    DESCRIPCION                       *
//* -----------  --------- ------- ----------------------------------- *
//* FS-1.2.0-01  CAPGEMINI 22MAR10 GENERAR LOS ARCHIVOS SOLICITADOS    *
//*                                PARA LOS NUEVOS PROCESOS DE         *
//*                                INTERFACES DE MAREA-MEXICO          *
//* -----------  --------- ------- ----------------------------------- *
//* IJCN 220410   XM09189  22ABR10 ELIMINACION DE LA GENERACION DE LOS *
//*                                ARCHIVOS DE AMORTIZACION Y REPORTO  *
//*                                PARA VALORES, ASI COMO EL SORT Y LA *
//*                                REENUMERACION DE PASOS.             *
//* -----------  --------- ------- ----------------------------------- *
//* IJCN 270510   XM09189  27ABR10 REACTIVACION DE LA GENERACION DE LOS*
//*                                ARCHIVOS DE AMORTIZACION Y REPORTO  *
//*                                PARA VALORES, ASI COMO EL SORT Y LA *
//*                                REENUMERACION DE PASOS.             *
//*--------------------------------------------------------------------*
//********************************************************************* 00010006
//*                EJECUCION DEL PROGRAMA:  ZM403CTE                  * 00370006
//*           PASO ZMLCP011 SORTEA EL ARCHIVO DE PERSONAS             *
//*********************************************************************
//* FS-1.2.0-01-INI
//*ZMLCP007 EXEC PGM=ICEMAN
//* IJCN 27-05-2010.INI
//* IJCN 22-04-2010
//ZMLCP011 EXEC PGM=ICEMAN
//*ZMLCP010 EXEC PGM=ICEMAN
//* IJCN 27-05-2010.FIN
//* FS-1.2.0-01-FIN
//*
//SYSOUT   DD  SYSOUT=*
//SORTIN   DD  DSN=MXCP.ZM.FIX.CON.AMCP,
//             DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.FIX.CON.AMCP1,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(10,05),RLSE)
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZPLCP007),DISP=SHR
//*
//*********************************************************************
//*           GENERACION DE ARCHIVO CLIENTES PARA MAREA               * 00380006
//*                         PASO ZMLCP010                             *
//*                       PROGRAMA ZM403CTE                           *
//*********************************************************************
//* FS-1.2.0-01-INI
//*ZMLCP006 EXEC PGM=IKJEFT01,COND=(4,LT)                               00400006
//* IJCN 27-05-2010
//* IJCN 22-04-2010
//ZMLCP010 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400006
//*ZMLCP009 EXEC PGM=IKJEFT01,COND=(4,LT)                               00400006
//* IJCN 27-05-2010
//* FS-1.2.0-01-FIN
//*
//UTS00PR1 DD DSN=MXCP.ZM.FIX.CON.AMCP1,DISP=SHR                        00420006
//UTS00PR2 DD DSN=MXCP.ZM.FIX.CLIENTE.MAREA,                            00450006
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=259,RECFM=FB,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPLCP006),DISP=SHR                   00530006
//*
//********************************************************************  00010006
//********************************************************************* 00010006
//*           GENERACION DE ARCHIVO CARTERAS PARA MAREA               * 00380006
//*                         PASO ZMLCP009                             *
//*                       PROGRAMA ZM403CAR                            *
//********************************************************************* 00390006
//* FS-1.2.0-01-INI
//*ZMLCP005 EXEC PGM=IKJEFT01,COND=(4,LT)                               00400006
//* IJCN 27-05-2010.INI
//* IJCN 22-04-2010
//ZMLCP009 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400006
//*ZMLCP008 EXEC PGM=IKJEFT01,COND=(4,LT)                               00400006
//* IJCN 27-05-2010.FIN
//* FS-1.2.0-01-FIN
//*
//UTS0ENT1 DD DSN=MXCP.ZM.FIX.CON.AMCP1,DISP=SHR                        00420006
//UTS0SAL2 DD DSN=MXCP.ZM.FIX.CARTERA.MAREA,                            00450006
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=117,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE)
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPLCP05A),DISP=SHR                   00530006
//*
//********************************************************************* 00010006
//*                EJECUCION DEL PROGRAMA:  ZM405CTC                  * 00370006
//*           GENERACION DE ARCHIVO CLIENTES-CARTERA-MAREA            * 00380006
//*                         PASO ZMLCP008                             *
//********************************************************************* 00390006
//* FS-1.2.0-01-INI
//*ZMLCP004 EXEC PGM=IKJEFT01,COND=(4,LT)                               00400006
//* IJCN 27-05-2010.INI
//* IJCN 22-04-2010
//ZMLCP008 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400006
//*ZMLCP007 EXEC PGM=IKJEFT01,COND=(4,LT)                               00400006
//* IJCN 27-05-2010.FIN
//* FS-1.2.0-01-FIN
//*
//UTSCTCR1 DD DSN=MXCP.ZM.FIX.CON.AMCP1,DISP=SHR                        00420006
//UTSCTCR2 DD DSN=MXCP.ZM.FIX.CTESCART.MAREA,                           00450006
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE)
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPLCP004),DISP=SHR                   00530006
//*
//********************************************************************* 00010006
//*               EJECUCION DEL PROGRAMA: ZM404PTR                    * 00370006
//*            GENERACION DE ARCHIVO PATRIMONIO-MAREA                 * 00380006
//*                         PASO ZMLCP007                             *
//********************************************************************* 00390006
//* FS-1.2.0-01-INI
//*ZMLCP003 EXEC PGM=IKJEFT01,COND=(4,LT)                               00400006
//* IJCN 27-05-2010.INI
//* IJCN 22-04-2010
//ZMLCP007 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400006
//*ZMLCP006 EXEC PGM=IKJEFT01,COND=(4,LT)                               00400006
//* IJCN 27-05-2010.FIN
//* FS-1.2.0-01-FIN
//*
//UTS0PTR1 DD DSN=MXCP.ZM.FIX.CARTERA.MAREA,DISP=SHR                    00420006
//UTS0PTR3 DD DSN=MXCP.ZM.FIX.PATRIMON.MAREA,                           00450006
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=88,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE)
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPLCP003),DISP=SHR                   00530006
//*
//********************************************************************* 00010006
//*               EJECUCION DEL PROGRAMA: ZM402POS                    * 00370006
//*            GENERACION DE ARCHIVO POSICIONES-MAREA                 * 00380006
//*                         PASO ZMLCP006                             *
//********************************************************************* 00390006
//* FS-1.2.0-01-INI
//*ZMLCP002 EXEC PGM=IKJEFT01,COND=(4,LT)                               00400006
//*
//*UTS0POS5 DD DSN=MXCP.ZM.FIX.POSICION.MAREA,                          00450006
//* IJCN 27-05-2010.INI
//* IJCN 22-04-2010
//ZMLCP006 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400006
//*ZMLCP005 EXEC PGM=IKJEFT01,COND=(4,LT)                               00400006
//* IJCN 27-05-2010.FIN
//*
//UTS0POS5 DD DSN=MXCP.ZM.FIX.POSORG.MAREA,                             00450006
//* FS-1.2.0-01-FIN
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=199,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE)
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPLCP002),DISP=SHR                   00530006
//*
//********************************************************************* 00010006
//*               EJECUCION DEL PROGRAMA:  ZM400VAL                   * 00370006
//*              GENERACION DE ARCHIVO VALORES-MAREA                  * 00380006
//*                         PASO ZMLCP005                             *
//********************************************************************* 00390006
//* IJCN 220410 > SE COMENTA CAMBIOS Y SE RETOMA ARCHIVO ORIGINAL     * 00390006
//* IJCN 270510 > SE RETOMAN CAMBIOS Y SE COMENTA ARCHIVO VALORG      * 00390006
//********************************************************************* 00390006
//* FS-1.2.0-01-INI
//* IJCN 27-05-2010.INI
//* IJCN 22-04-2010.INI
//*ZMLCP001 EXEC PGM=IKJEFT01,COND=(4,LT)                               00400006
//*ZMLCP004 EXEC PGM=IKJEFT01,COND=(4,LT)                               00400006
//*
//*UTS0VAL8 DD DSN=MXCP.ZM.FIX.VALORES.MAREA,                           00450006
//ZMLCP005 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400006
//*ZMLCP006 EXEC PGM=IKJEFT01,COND=(4,LT)                               00400006
//*
//UTS0VAL8 DD DSN=MXCP.ZM.FIX.VALORG.MAREA,                             00450006
//* IJCN 22-04-2010.FIN
//* IJCN 27-05-2010.FIN
//* FS-1.2.0-01-FIN
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=363,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE)
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPLCP001),DISP=SHR                   00530006
//* FS-1.2.0-01-INI
//*
//********************************************************************* 00010006
//*               EJECUCION DEL PROGRAMA:  ZM400REP                   * 00370006
//*   OBTENCION DE OPERACIONES TIPO REPORTO PARA POSICION Y VALORES   * 00380006
//*                         PASO ZMLCP004                             *
//********************************************************************* 00390006
//* IJCN 27-05-2010.INI
//* IJCN 22-04-2010
//ZMLCP004 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400006
//*ZMLCP003 EXEC PGM=IKJEFT01,COND=(4,LT)                               00400006
//*
//SALPOSIC DD DSN=MXCP.ZM.FIX.POSREP.MAREA,                             00450006
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=199,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE)
//SALVALOR DD DSN=MXCP.ZM.FIX.VALREP.MAREA,                             00450006
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=363,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE)
//* IJCN 22-04-2010
//* IJCN 27-05-2010.FIN
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPLCP008),DISP=SHR                   00530006
//*
//********************************************************************* 00010006
//*               EJECUCION DEL PROGRAMA:  ZM400AMR                   * 00370006
//* OBTENCION DE OPERACIONES TIPO AMORTIZACION PARA POSICION Y VALORES* 00380006
//*                         PASO ZMLCP003                             *
//********************************************************************* 00390006
//* IJCN 27-05-2010.INI
//* IJCN 22-04-2010
//ZMLCP003 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400006
//*ZMLCP002 EXEC PGM=IKJEFT01,COND=(4,LT)                               00400006
//*
//SALPOSIC DD DSN=MXCP.ZM.FIX.POSAMR.MAREA,                             00450006
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=199,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE)
//SALVALOR DD DSN=MXCP.ZM.FIX.VALAMR.MAREA,                             00450006
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=363,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE)
//* IJCN 22-04-2010
//* IJCN 27-05-2010.FIN
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPLCP009),DISP=SHR                   00530006
//*
//********************************************************************* 00010006
//*        SORT DE LOS ARCHIVOS DE POSICION, POSICION-REPORTO,        *
//*                         POSICION-AMORTIZA                         *
//*********************************************************************
//* IJCN 22-04-2010
//ZMLCP002 EXEC PGM=ICEMAN,COND=(4,LT)
//*ZMLCP001 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD  SYSOUT=*
//SORTIN   DD  DSN=MXCP.ZM.FIX.POSORG.MAREA,DISP=SHR
//         DD  DSN=MXCP.ZM.FIX.POSREP.MAREA,DISP=SHR
//         DD  DSN=MXCP.ZM.FIX.POSAMR.MAREA,DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.FIX.POSICION.MAREA,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             DCB=(DSORG=PS,LRECL=199,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(10,05),RLSE)
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZPLCP010),DISP=SHR
//*
//********************************************************************* 00010006
//*        SORT DE LOS ARCHIVOS DE VALORES, VALORES-REPORTO,          *
//*                         VALORES-AMORTIZA                          *
//*********************************************************************
//* IJCN 27-05-2010.INI
//* IJCN 22-04-2010
//ZMLCP001 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD  SYSOUT=*
//SORTIN   DD  DSN=MXCP.ZM.FIX.VALORG.MAREA,DISP=SHR
//         DD  DSN=MXCP.ZM.FIX.VALREP.MAREA,DISP=SHR
//         DD  DSN=MXCP.ZM.FIX.VALAMR.MAREA,DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.FIX.VALORES.MAREA,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             DCB=(DSORG=PS,LRECL=363,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(10,05),RLSE)
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZPLCP011),DISP=SHR
//*
//* IJCN 22-04-2010
//* IJCN 27-05-2010.FIN
//* FS-1.2.0-01-FIN
//**********************************************************************00900006
//*                    F I N   Z M U E P M 9 5                         *00900006
//**********************************************************************00900006
