//FDD1800 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PFDFDD18                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  RETORNAR EL IREF INVERTIDO DURANTE LA OPERACION  *
//*                   ON-LINE DEL DIA AL NUMERO DE REFERENCIA ORIGINAL.*
//*                                                                    *
//*                   EN LAS TABLAS SIVATE, OPERTET Y SIVASI           *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PFDFDD05, PFDFDD06, PFDFDD06, PFDFDD08, PFDFDD09 *
//*                   PFDFDD10, PFDFDD11, PFDFDD12, PFDFDD13, PFDFDD14 *
//*                                                                    *
//* DESPUES DE     :  PFDFDD01, PFDFDD02, PFDFDD03, PFDFDD04           *
//*                                                                    *
//* REALIZO        :  JOEL GONZALEZ MARTINEZ / SAUL CONTRERAS TELLEZ   *
//* FECHA          :  FEBRERO DE 1991                                  *
//*                                                                    *
//* MODIFICADO     :  JOEL GONZALEZ / VIRGILIO ELEAZAR RODRIGUEZ D.    *
//* FECHA          :  ENERO   DE 1996                                  *
//*                                                                    *
//*                   SE LE AGREGARON 3 PASOS DEL 4 AL 2 REFERENTES    *
//*                   A LA IMPRESION BATCH DE CREDITOS "T + 1"         *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//*                        -- VOBF59D --                               *
//*                                                                    *
//*   OBJETIVO: REPORTE Y ACTUALIZA LOS MOVIMIENTOS INDICATIVOS PR     *
//*             PORTAFOLIO TECNICO SEGUN LA TABLA TO5                  *
//*             (SE INHIBIO DEL IDT0700)                               *
//* OJO EN CASO DE CANCELAR HABLAR A OSCAR ANDRADE                     *
//* PASO REINICIABLE POR RESTART.                     ***M. CAPITALES  *
//**********************************************************************
//FDD1805  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR
//VOBF59R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=SIVA.CARDS(FDD1806),DISP=SHR
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1805),DISP=SHR
//*
//*******************************************************************
//*           EMISION DE RECIBOS T + 1 AUTOMATICAMENTE
//*                   PARA LAS SUCURSALES              *** TESORERIA
//*******************************************************************
//FDD1804 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*
//VIB753A2 DD DSN=&&ARCHPASO,DISP=(NEW,DELETE),UNIT=VIO,
//            DCB=(LRECL=274,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(5,1),RLSE)
//VTB798A1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD'),FCB=CD01
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1804),DISP=SHR
//*
//*-------------------------------------------------------------------* 00400000
//* PROGRAMA: VIBG77D.                                                * 00410003
//* FUNCION:  PROGRAMA QUE GENERA IMPRESION DE LOS RECIBOS DE         * 00420001
//*           CREDITOS PARA CADA SUCURSAL.                            * 00421001
//*           TESORERIA.         ---   JFE   ---                      * 00430001
//*                                                                   * 00440000
//*-------------------------------------------------------------------* 00450000
//FDD1803 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)           00470002
//*                                                                     00480000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0                                   00500000
//SYSPRINT DD  SYSOUT=X                                                 00510000
//SYSOUT   DD  SYSOUT=X                                                 00520000
//VIBG77R1 DD DSN=SIVA.TES.FIX.RECBCRED,                                00530003
//             DISP=(NEW,CATLG,DELETE),                                 00540000
//             UNIT=SYSDA,SPACE=(CYL,(10,1),RLSE),                      00550000
//             DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0)                      00560001
//SYSDBOUT DD  SYSOUT=X                                                 00570000
//SYSABOUT DD  DUMMY                                                    00580000
//SYSUDUMP DD  DUMMY                                                    00590000
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD1803),DISP=SHR                         00600001
//********************************************************************  00620000
//*                                                                     00630000
//*  SE AGREGO PASO PARA QUE HAGA UN IEBGENER DEL ARCHIVO QUE GENERA    00640000
//*  EL PASO ANTERIOR.             ---   JFE   ---                      00650000
//*                                                                     00660000
//********************************************************************  00670000
//FDD1802  EXEC PGM=ICEGENER,REGION=4M,COND=(4,LT)                      00680002
//SYSPRINT DD  SYSOUT=X                                                 00690000
//SYSUT1   DD  DSN=SIVA.TES.FIX.RECBCRED,DISP=SHR                       00700001
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD'),FCB=CD01           00710000
//SYSIN    DD DUMMY                                                     00720000
//**********************************************************************
//*                        -- VNBG16D --                               *
//*                                                                    *
//* OBJETIVO:  RETORNAR EL IREF INVERTIDO A SU STATUS NORMAL           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                    *** TESORERIA      *
//**********************************************************************
//FDD1801 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1801),DISP=SHR
//*
//*******************************************************************
//*                     --  VOBG45D --                              *
//* SE AGREGO LA GENERACION DEL ARCHIVO CON LA INFORMACION PARA     *
//* COMPLETAR LA INTERFAZ CONTABLE DE LA CONCILIACION BANCARIA      *
//*                           ADE                   *** TESORERIA   *
//*******************************************************************
//FDD1801A EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*
//VOBG45A1 DD DSN=SIVA.TES.FIX.DEPOS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(5,5),RLSE),
//            DCB=(LRECL=57,BLKSIZE=570,RECFM=FB),
//            UNIT=SYSDA
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1801A),DISP=SHR
//*
