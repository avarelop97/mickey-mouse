//ZMPPGD20 PROC
//*                                                                   *
//*-------------------------------------------------------------------*
//* PROYECTO     : ZM - BCPPGD20.                                     *
//* PROCESO      : ZMPPGD20.                                          *
//* PERIODICIDAD : DIARIO.                                            *
//* OBJETIVO     : VALIDA Y CARGA INFORMACION DE PRODUCTOS A 5C03 PARA*
//*                RECOLOCAR                                          *
//* REALIZO      : XMCB099                                            *
//* FECHA        : MARZO  DE 2019                                     *
//*-------------------------------------------------------------------*
//*-------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                 *
//*-------------------------------------------------------------------*
//*   MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------ *
//*********************************************************************
//* PASO    :  ZMPPG140                                               *
//* PGM/UTIL:  ADUUMAIN                                               *
//* OBJETIVO:  DESCARGA DE LAS TABLAS CARTERA Y ZMDT800 EN UN SOLO    *
//*         :  ARCHIVO                                                *
//*-------------------------------------------------------------------*
//*********************************************************************
//ZMPPG140 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMPPG140,NEW,,MSGLEVEL(1)',COND=(4,LT)
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//SYSREC   DD DSN=MXC&AMB..ZM.TMP.UNLOAD.ZMPPGD20.CARTERA.TIT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(400,200),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*           AMPL ICONCEPT SDATOOL-41254 CTC
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPPG145),DISP=SHR
//SYSCNTL  DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*-------------------------------------------------------------------*
//* PASO    :  ZMPPG120                                               *
//* PGM/UTIL:  ICEMAN                                                 *
//* OBJETIVO:  SORTEA EL ARCHIVO DE LA DESCARGA DE LAS TABLAS CARTERA *
//*         :  Y ZMDT800, POR ICUENTA, DESEMPACANDO LOS CAMPOS        *
//*         :  COMP Y QUITANDO NULLOS                                 *
//*-------------------------------------------------------------------*
//ZMPPG120 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.UNLOAD.ZMPPGD20.CARTERA.TIT,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.WKF.SORT.ZMPPGD20.CARTERA.Z800,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(400,200),RLSE),
//            UNIT=3390,
//*           AMPL ICONCEPT SDATOOL-41254
//            DCB=(RECFM=FB,LRECL=55,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//*           AMPL ICONCEPT SDATOOL-41254
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPPG125),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PASO    :  ZMPPG110                                               *
//* PGM/UTIL:  ICEMAN                                                 *
//* OBJETIVO:  SORTEA ARCHIVO DE DESCARGA POR NUMERO DE CLIENTE       *
//*         :  QUITANDO DUPLICADOS PARA VALIDACION DEL CLIENTE CON UG *
//*-------------------------------------------------------------------*
//ZMPPG110 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.UNLOAD.ZMPPGD20.CARTERA.TIT,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.WKF.SORT.CARTERA.ZMDT800.CLIE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(400,200),RLSE),
//            UNIT=3390,
//*           AMPL ICONCEPT SDATOOL-41254
//            DCB=(RECFM=FB,LRECL=43,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPPG115),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*-------------------------------------------------------------------*
//* PASO    :  ZMPPG100                                               *
//* PGM/UTIL:  ZM3PPG18                                               *
//* OBJETIVO:  FORMATEA ARCHIVO DE LA TRANSFERENCIA DEL SERVIDOR 16   *
//*            CON CONTRATOS UG 5C03 PPG                              *
//*-------------------------------------------------------------------*
//ZMPPG100 EXEC PGM=ZM3PPG18,COND=(4,LT)
//E1PPG18  DD DSN=MBV&AMB..AJ.FIX.PPG.RECO.AJPRMP04.TRAN,
//            DISP=SHR
//S1PPG18  DD DSN=MXC&AMB..ZM.FIX.PPG.FORM.ZMPPGD20.FORM,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(LRECL=75,RECFM=FB,BLKSIZE=0,DSORG=PS)
//S2PPG43  DD DSN=MXC&AMB..ZM.TMP.PPG.RECO.ZMPPGD20.INCID100,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=119,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*-------------------------------------------------------------------*
//* PASO    :  ZMPPG090                                               *
//* PGM/UTIL:  ICEMAN                                                 *
//* OBJETIVO:  SORTEA EL ARCHIVO FORMATEADO DE TRANSFERENCIA POR CLTE *
//*-------------------------------------------------------------------*
//ZMPPG090 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.PPG.FORM.ZMPPGD20.FORM,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.PPG.FORM.ZMPPGD20.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=75,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPPG090),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*-------------------------------------------------------------------*
//* PASO    :  ZMPPG080                                               *
//* PGM/UTIL:  ZM3PPG19                                               *
//* OBJETIVO:  MATCH ENTRE DESCARGA DE MUV Y EL ARCHIVO FORMATEADO POR*
//*            CLIENTE                                                *
//*-------------------------------------------------------------------*
//ZMPPG080 EXEC PGM=ZM3PPG19,COND=(4,LT)
//ENTRADA1 DD DSN=MXC&AMB..ZM.FIX.PPG.FORM.ZMPPGD20.SORT,
//            DISP=SHR
//ENTRADA2 DD DSN=MXC&AMB..ZM.WKF.SORT.CARTERA.ZMDT800.CLIE,
//            DISP=SHR
//SALIDA01 DD DSN=MXC&AMB..ZM.TMP.PPG.FORM.ZMPPGD20.PURO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(LRECL=75,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SALIDA02 DD DSN=MXC&AMB..ZM.TMP.PPG.RECO.ZMPPGD20.INCID080,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=119,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*-------------------------------------------------------------------*
//* PASO    :  ZMPPG070                                               *
//* PGM/UTIL:  IKJEFT01/ZM4PPG57                                      *
//* OBJETIVO:  OBTIENE UN ARCHIVO QUE INCLUIRA LA CUENTA PATRIMONIAL  *
//*         :  QUE SE OBTENDRA DE LA TABLA ZMDT608 Y EN CASO DE NO    *
//*         :  EXISTIR EL CLIENTE POR SER TITULAR OBTENDRA DE LA TABLA*
//*         :  ZMDT800 EL NUMERO DEL TITULAR Y CON ESE CLIENTE IRA A  *
//*         :  NUEVAMENTE A LA ZMDT608 PARA OBTENER LA CUENTA.        *
//*-------------------------------------------------------------------*
//ZMPPG070 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1PPG57  DD DSN=MXC&AMB..ZM.WKF.SORT.ZMPPGD20.CARTERA.Z800,
//             DISP=SHR
//S1PPG57  DD DSN=MXC&AMB..ZM.FIX.MATCH.ZMPPGD20.CARTERA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(LRECL=55,RECFM=FB,BLKSIZE=0,DSORG=PS)
//S2PPG57  DD DSN=MXC&AMB..ZM.TMP.PPG.RECO.ZMPPGD20.INCID070,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=119,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPPG025),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PASO    :  ZMPPG060                                               *
//* PGM/UTIL:  ICEMAN                                                 *
//* OBJETIVO:  SORTEA EL ARCHIVO DE SALIDA DEL PROGRAMA ZM4PPG57      *
//*-------------------------------------------------------------------*
//ZMPPG060 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.MATCH.ZMPPGD20.CARTERA,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.WKF.SORT.ZMDT800.CARTERA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=55,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPPG060),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*-------------------------------------------------------------------*
//* PASO    :  ZMPPG050                                               *
//* PGM/UTIL:  ICEMAN                                                 *
//* OBJETIVO:  SORTEA EL ARCHIVO DE SALIDA DEL MATCH DEL ARCHIVO FORMA*
//*         :  TEADO DE LA TRANSFERENCIA DEL SERVIDOR 16              *
//*-------------------------------------------------------------------*
//ZMPPG050 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.PPG.FORM.ZMPPGD20.PURO,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.WKF.SORT.PPG.FORM.ZMPPGD20,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=75,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPPG050),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PASO    :  ZMPPG040                                               *
//* PGM/UTIL:  ZM3PPG16                                               *
//* OBJETIVO:  OBTIENE UN ARCHIVO CON LA SUMATORIA DE LOS TITULOS     *
//*         :  QUE PUEDE TRAER CLASIFICADOS X CUENTA21+SERIE+EMISORA  *
//*-------------------------------------------------------------------*
//ZMPPG040 EXEC PGM=ZM3PPG16,COND=(4,LT)
//ENTRADA1 DD DSN=MXC&AMB..ZM.WKF.SORT.PPG.FORM.ZMPPGD20,
//            DISP=SHR
//SALIDA01 DD DSN=MXC&AMB..ZM.FIX.PPG.FORM.ZMPPGD20.PURO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(LRECL=92,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*-------------------------------------------------------------------*
//* PASO    :  ZMPPG030                                               *
//* PGM/UTIL:  ICEMAN                                                 *
//* OBJETIVO:  SORTEA EL ARCHIVO DE SALIDA DEL MATCH DEL ARCHIVO FORMA*
//*         :  TEADO DE LA TRANSFERENCIA DEL SERVIDOR 16              *
//*-------------------------------------------------------------------*
//ZMPPG030 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.PPG.FORM.ZMPPGD20.PURO,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.WKF.SORT.FORM.ZMPPGD20.PURO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=92,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPPG030),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPPG020.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG43                                     *
//* OBJETIVO   : VALIDA Y CARGA INFORMACION DE PRODUCTOS A 5C03        *
//*--------------------------------------------------------------------*
//ZMPPG020 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1PPG43  DD DSN=MXC&AMB..ZM.WKF.SORT.FORM.ZMPPGD20.PURO,
//            DISP=SHR
//E2PPG43  DD DSN=MXC&AMB..ZM.WKF.SORT.ZMDT800.CARTERA,
//            DISP=SHR
//S1PPG43  DD DSN=MXC&AMB..ZM.TMP.PPG.RECO.ZMPPGD20.INCID020,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=119,BLKSIZE=0,DSORG=PS,BUFNO=30)
//S2PPG43  DD DSN=MXC&AMB..ZM.FIX.PPG.RECO.ZMPPGD20.CIFRAS,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=120,BLKSIZE=0,DSORG=PS,BUFNO=30)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPPG020),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPPG010.                                             *
//* UTILERIA   : IDCAMS                                                *
//* OBJETIVO   : PEGA LOS ARCHIVOS DE INCIDENCIAS DE CADA PASO Y LO DE-*
//*            : JA EN UN SOLO ARCHIVO                                 *
//*--------------------------------------------------------------------*
//ZMPPG010 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.PPG.RECO.ZMPPGD20.INCID100,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.TMP.PPG.RECO.ZMPPGD20.INCID080,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.TMP.PPG.RECO.ZMPPGD20.INCID020,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.PPG.RECO.ZMPPGD20.INCIDEN,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=119,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPPG010),DISP=SHR
//SYSPRINT DD SYSOUT=*
//*--------------------------------------------------------------------*
//*                       FIN PROCESO ZMPPGD20                         *
//*--------------------------------------------------------------------*
