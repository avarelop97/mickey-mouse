//ZMJFPD31 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBJFCD31                                            *
//*                FIN DE DIA DEL SIVA.                                *
//*                                                                    *
//*   OBJETIVO  :  GENERACION DE REPORTE                               *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE: PFDFDD08,PFDFDD29,PFDFDD30.                    *
//*                                                                    *
//*   PERIODICIDAD    : DIARIO                                         *
//*                                                                    *
//*   ELABORADO POR   : ASATECK.                                       *
//*                                                                    *
//*   OBSERVACIONES   :EL PROCESO FINDIA SE DIVIDIO EN    SUBPROCESOS  *
//*                    A MANERA DE OPTIMIZAR EL TIEMPO TOTAL DE EJECU -*
//*                    CION LOS CUALES SERAN SUBMITIDOS POR DISPARADOR *
//*                    Y NO POR CONSOLA                                *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*H.P.C.|19/JUN/03 |IDCEX52|        |APLICAR STD. A PU.               *
//*--------------------------------------------------------------------*
//*FS-1.1|10/ENE/19 |XMBB157|PJF31P02|SE INTEGRA LA DESCARGA DE LA     *
//*                         |PJF31PR2|TABLA CUENTA PARA EL SETEO EN    *
//*                                   CEROS DE LAS RETENCIONES A       *
//*                                   PROCESAR EN LA TABLA RISRSOC EN  *
//*                                   EL PROGRAMA ZM4DJ110             *
//*                                   (OPTIMIZACION POR VD'S).         *
//*                                                                    *
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00030000
//*  PJF31P09     GRABA EN UN ARCHIVO SECUENCIAL.                      *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PJF31P08 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','     ','     ',)
//*
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD31,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00010000
//*        >>>>>>  PASO REINICIABLE POR RESTART <<<<<                  *00020000
//*  PASO:  2     OBTIENE LA POSICION DE LA CASA PARA CONCILIACION     *00030000
//*  PJF31P08     ACTUALIZA  :   CTLPROC, CCONIND                      *00040000
//*               M.DINERO.                                  ZM4DHB50  *00040000
//**********************************************************************00060000
//PJF31P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                00140000
//*
//ZMHB50A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD31,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00150000
//SYSPRINT DD SYSOUT=*                                                  00160000
//SYSOUT   DD SYSOUT=*                                                  00170000
//SYSDBOUT DD SYSOUT=*                                                  00180000
//SYSABOUT DD DUMMY                                                     00190000
//SYSUDUMP DD DUMMY                                                     00200000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF31T01),DISP=SHR                   00210000
//*                                                                     00430000
//**********************************************************************00010000
//*             >>>>> PASO REINICIABLE POR RESTART  <<<<<              *00020000
//*  PASO:  3     REPORTEADOR                                          *00030000
//*  PJF31P06                     CAPITALES                  ZM4DGJ81  *00040000
//**********************************************************************00060000
//PJF31P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00310000
//*
//PI601765  DD DUMMY
//*
//ZMGL81A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD31,DISP=SHR
//*
//ZMGJ81T1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZM4DGJ81,               00380000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00380000
//            DCB=(RECFM=FB,LRECL=120,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(20,10),RLSE)
//*
//ZMGJ81R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00400000
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00410000
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00410000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00320000
//SYSPRINT DD SYSOUT=*                                                  00330000
//SYSOUT   DD SYSOUT=*                                                  00340000
//SYSDBOUT DD SYSOUT=*                                                  00350000
//SYSABOUT DD DUMMY                                                     00360000
//SYSUDUMP DD DUMMY                                                     00370000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF31T02),DISP=SHR                   00420000
//*
//**********************************************************************00010000
//*             >>>>> PASO REINICIABLE POR RESTART  <<<<<              *00020000
//*  PASO:  4     REPORTEADOR                                          *00030000
//*  PJF31P05                     CAPITALES                  ZM4DGJ83  *00040000
//**********************************************************************00060000
//PJF31P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00310000
//*
//ZMGJ83A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD31,DISP=SHR
//*
//ZMGJ83R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00320000
//SYSPRINT DD SYSOUT=*                                                  00330000
//SYSOUT   DD SYSOUT=*                                                  00340000
//SYSDBOUT DD SYSOUT=*                                                  00350000
//SYSABOUT DD DUMMY                                                     00360000
//SYSUDUMP DD DUMMY                                                     00370000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF31T03),DISP=SHR                   00420000
//*                                                                     00480000
//**********************************************************************00010000
//*             >>>>> PASO REINICIABLE POR RESTART  <<<<<    TESORERIA *00020000
//*  PASO:  5     ACTUALIZA EFECTIVO DE TESORERIA.                     *00030000
//*  PJF31P04     (AFECTA : CARTES Y CARTERA)                ZM4DJ772  *00040000
//**********************************************************************00060000
//PJF31P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00560000
//*
//ZMJ772A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD31,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00570000
//SYSPRINT DD SYSOUT=*                                                  00580000
//SYSOUT   DD SYSOUT=*                                                  00590000
//SYSDBOUT DD SYSOUT=*                                                  00600000
//SYSABOUT DD SYSOUT=*                                                  00610000
//SYSUDUMP DD DUMMY                                                     00620000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF31T04),DISP=SHR                   00630000
//*                                                                     00640000
//**********************************************************************00010000
//*             >>>>> PASO REINICIABLE POR RESTART  <<<<<    TESORERIA *00020000
//*  PASO:  6     ACTUALIZAR FECHAS DE CARTERA.                        *00030000
//*  PJF31P03     (AFECTA : CARTAUX)                         ZM4DJ225  *00040000
//**********************************************************************00060000
//PJF31P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00880000
//*                                                                     00890000
//ZMJ225A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD31,DISP=SHR
//*                                                                     00890000
//ZMJ225R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*                                                                     00890000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00900000
//SYSPRINT DD SYSOUT=*                                                  00910000
//SYSOUT   DD SYSOUT=*                                                  00920000
//PRINT    DD SYSOUT=*                                                  00930000
//SYSDBOUT DD SYSOUT=*                                                  00950000
//SYSABOUT DD DUMMY                                                     00960000
//SYSUDUMP DD DUMMY                                                     00970000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF31T05),DISP=SHR                   00980000
//*                                                                     00990000
//*FS-1.1-INI
//*--------------------------------------------------------------------*
//* PASO       : PJF31PR2                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE TF9 DE PARAM.                             *
//*--------------------------------------------------------------------*
//PJF31PR2 EXEC PGM=ADUUMAIN,COND=((0,NE,PJF31P07),(4,LT)),
//         PARM='MXP1,PEC31P02,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.WKF.ZMJFPD31.UNLOAD.CUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJF31PR2),
//            DISP=SHR
//*
//*FS-1.1-FIN
//**********************************************************************00010000
//*                                                       SOC. DE INV. *00020000
//*                                                                    *00020000
//*  PASO:  7     SE INVIERTE SECUENCIA DE PASO CON EL SIGUIENTE.      *01040000
//*  PASO:  8->7  ACTUALIZAR TABLA RISRSOC CON CARTERA INICIAL DEL DIA *00030000
//*  PJF31P01->02 (AFECTA : RISRSOC)                                   *00040000
//*                                                                    *01040000
//* PASO REINICIABLE POR RESTART                                       *01050000
//*                                                                    *01040000
//* NOTA:  ESTE PASO DEBE DE CORRER DIARIAMENTE Y SOLO UNA VEZ AL DIA. *01090000
//*                                                                    *01100000
//*                                                          ZM4DJ110  *01100000
//**********************************************************************00060000
//PJF31P02 EXEC PGM=IKJEFT01,COND=((0,NE,PJF31P07),(4,LT))              01410000
//*                                                                     01420000
//ZMJ110A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD31,DISP=SHR
//*                                                                     00890000
//*FS-1.1-INI
//ZMJ310A2 DD DSN=MXCP.ZM.WKF.ZMJFPD31.UNLOAD.CUENTA,DISP=SHR
//*FS-1.1-FIN
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01430000
//SYSPRINT DD SYSOUT=*                                                  01440000
//SYSOUT   DD SYSOUT=*                                                  01450000
//PRINT    DD SYSOUT=*                                                  01460000
//SYSDBOUT DD SYSOUT=*                                                  01470000
//SYSABOUT DD SYSOUT=*                                                  01480000
//SYSUDUMP DD DUMMY                                                     01490000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF31T07),DISP=SHR                   01510000
//*                                                                     01520000
//**********************************************************************00010000
//*                                                       SOC. DE INV. *00020000
//*                                                                    *00020000
//*  PASO:  8     SE INVIERTE SECUENCIA DE PASO CON EL ANTERIOR.       *01040000
//*  PASO:  7->8  CALCULO, REPORTE Y ACUMULADO DEL ISR DIARIO S.I.     *00030000
//*  PJF31P02->01 (AFECTA : RISRSOC)                                   *00040000
//*                                                                    *01040000
//* PASO NO REINICIABLE : RESTAURAR EL RESPALDO DE LA TABLA DB2        *01050000
//* ===================   DE RISRSOC Y REINICIAR EN ESTE PASO POR      *01060000
//*                       RESTART                                      *01070000
//*                                                                    *01040000
//* NOTA:  ESTE PASO DEBE DE CORRER DIARIAMENTE Y SOLO 1 VEZ AL DIA.   *01090000
//*        SIEMPRE CORRER DESPUES DEL ZM4DJ110 (FEBRERO 2003 OSCT).    *01090000
//*                                                          ZM4DJ100  *01100000
//* IFF - 12/05/2015 - SE COMENTARIZA TEMPORALMENTE POR ALTOS CONSUMOS *01100000
//*                    DE DURACION                                     *01100000
//**********************************************************************00060000
//*PJF31P01 EXEC PGM=IKJEFT01,COND=(4,LT)                               01130000
//**                                                                    01140000
//*PI601765  DD DUMMY
//*                                                                     01140000
//*ZMJ100A2 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD31,DISP=SHR
//*                                                                     00890000
//*ZMJ100A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..S&SUC..RISRSOC.PASO,          01220000
//*            UNIT=3390,DISP=(NEW,CATLG,DELETE),                       01230000
//*            SPACE=(CYL,(16,8),RLSE),                                 01240000
//*            DCB=(LRECL=80,BLKSIZE=0,RECFM=FB,DSORG=PS)               01250000
//**                                                                    00890000
//*ZMJ100R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                   01150000
//*SYSPRINT DD SYSOUT=*                                                 01160000
//*SYSOUT   DD SYSOUT=*                                                 01170000
//*PRINT    DD SYSOUT=*                                                 01180000
//*SYSDBOUT DD SYSOUT=*                                                 01190000
//*SYSABOUT DD SYSOUT=*                                                 01200000
//*SYSUDUMP DD DUMMY                                                    01210000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF31T06),DISP=SHR                  01270000
//**                                                                    01280000
//**********************************************************************00010000
//*                   F I N    Z M J F P D 3 1                         *00020000
//**********************************************************************00010000
