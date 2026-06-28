//ZMSFPD08 PROC                                                         00010006
//**********************************************************************00010006
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00010006
//* PROCESO        :  CBSFCD08                                         *00010006
//*                   ARCHIVOS EXTRACTORES BANPAT BCM                  *00010006
//* OBJETIVO       :  GENERAR LOS 8 ARCHIVOS DE INFORMACION ESTADISTICO*00010006
//*                   DEL AREA DE GESTION Y CONTROL (LUIS CARLOS ORONA)*00010006
//* CORRE                                                              *00010006
//* ANTES DE       :                                                   *00010006
//* DESPUES DE     :  CBSFCD07  -  ZMSFPD07                            *00010006
//* REALIZO        :  MARTIN SANTOS GONZALEZ                           *00010006
//* FECHA          :  MAYO  2006                                       *00010006
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *00010006
//**********************************************************************00010006
//PSF08P26 EXEC PGM=ZM3DG001,                                           00300009
//         PARM=('&EMP','   ','   ','   ',)                             00310006
//SYSTSPRT DD SYSOUT=*                                                  00312006
//SYSPRINT DD SYSOUT=*                                                  00313006
//SYSOUT   DD SYSOUT=*                                                  00314006
//SYSDBOUT DD SYSOUT=*                                                  00315006
//SYSABOUT DD DUMMY                                                     00316006
//SYSUDUMP DD DUMMY                                                     00317006
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZMSFPD08,                  00319006
//            DISP=(NEW,CATLG,DELETE),                                  00320006
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00330006
//            UNIT=3390,                                                00340006
//            SPACE=(CYL,(2,1),RLSE)                                    00350008
//*--------------------------------------------------------------------*
//*   EJECUCION DEL PROGRAMA:  ZM3DS120                                *
//*  REFORMATEAR ARCHIVO CONCIL2 PARA GENERAR ARCHIVO DE TENENCIA CBP  *
//*--------------------------------------------------------------------*
//PSF08P25 EXEC PGM=ZM3DS120,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMS120A1 DD DSN=MXC&AMB..ZM.TMP.SIE.VIBB80D.CONCIL2,DISP=SHR
//ZMS120A2 DD DSN=MXC&AMB..ZM.FIX.SIE.ZM3DS120.CONCIL2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=643,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*--------------------------------------------------------------------*
//* PROGRAMA: ICEMAN                SORT                               *
//* OBJETIVO: SORTEA LA INFORMACION POR CUENTA (CONCILIA)              *
//*--------------------------------------------------------------------*
//PSF08P24 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.SIE.ZM3DS120.CONCIL2,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.SIE.ZM3DS120.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=643,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSFS8T31),DISP=SHR
//*--------------------------------------------------------------------*
//*   EJECUCION DEL PROGRAMA:  ZM4DS121                                *
//* GENERAR ARCHIVO DE TENENCIA CBP A PARTIR DE ARCHIVO DE CONCIL2     *
//*--------------------------------------------------------------------*
//PSF08P23 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//ZMS121A1 DD DSN=MXC&AMB..ZM.TMP.SIE.ZM3DS120.SORT,DISP=SHR
//ZMS121A2 DD DSN=MXC&AMB..ZM.FIX.SIE.ZM4DS121.TENECB01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=57,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//ZMS121A3 DD DSN=MXC&AMB..ZM.FIX.SIE.ZM4DS121.TENECB02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=65,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T30),DISP=SHR
//*--------------------------------------------------------------------*00950310
//*   EJECUCION DEL PROGRAMA:  ZM4DS083                                *00950410
//*   GENERAR ARCHIVO DE MOVTOS. DEL EDO.DE CTA PARA EL CAM            *00951006
//*--------------------------------------------------------------------*00950310
//PSF08P22 EXEC PGM=IKJEFT01,COND=(4,LT)                                00953006
//SYSTSPRT DD SYSOUT=*                                                  00953206
//ZMS083A2 DD DSN=MXC&AMB..ZM.FIX.SIE.ZM4DS083.MOVTSCAM,                00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=200,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00953708
//SYSPRINT DD SYSOUT=*                                                  00953806
//SYSOUT   DD SYSOUT=*                                                  00953906
//SYSDBOUT DD SYSOUT=*                                                  00954006
//SYSABOUT DD SYSOUT=*                                                  00954106
//SYSUDUMP DD DUMMY                                                     00954206
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T28),DISP=SHR                   00954306
//*--------------------------------------------------------------------*00950310
//*   EJECUCION DEL PROGRAMA:  ZM4DS081                                *00950410
//*   GENERAR ARCHIVO DE MOVTOS. DEL EDO.DE CTA PARA EL CAM, SOLO 1 DIA*00951006
//*--------------------------------------------------------------------*00950310
//PSF08P21 EXEC PGM=IKJEFT01,COND=(4,LT)                                00953006
//SYSTSPRT DD SYSOUT=*                                                  00953206
//ZMS081A1 DD DSN=MXC&AMB..ZM.FIX.SIE.ZM4DS083.MOVTSCAM,DISP=SHR        00953406
//ZMS081A2 DD DSN=MXC&AMB..ZM.FIX.SIE.ZM4DS081.MOVTSCAM.DIA,            00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=200,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00953708
//SYSPRINT DD SYSOUT=*                                                  00953806
//SYSOUT   DD SYSOUT=*                                                  00953906
//SYSDBOUT DD SYSOUT=*                                                  00954006
//SYSABOUT DD SYSOUT=*                                                  00954106
//SYSUDUMP DD DUMMY                                                     00954206
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T29),DISP=SHR                   00954306
//*                                                                     00954406
//*--------------------------------------------------------------------*00950310
//*   EJECUCION DEL PROGRAMA:  ZM4DS024                                *00950410
//*   GENERAR ARCHIVO DE DEPOSITOS Y RETIROS PARA CALCULO DE REDIMIENTO*00951006
//*--------------------------------------------------------------------*00950310
//PSF08P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                00953006
//SYSTSPRT DD SYSOUT=*                                                  00953206
//ZMS024A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..DEPRET.F&FECHA,            00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),               00953606
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00953708
//SYSPRINT DD SYSOUT=*                                                  00953806
//SYSOUT   DD SYSOUT=*                                                  00953906
//SYSDBOUT DD SYSOUT=*                                                  00954006
//SYSABOUT DD SYSOUT=*                                                  00954106
//SYSUDUMP DD DUMMY                                                     00954206
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T26),DISP=SHR                   00954306
//*                                                                     00954406
//*--------------------------------------------------------------------*00950310
//*   EJECUCION DEL PROGRAMA:  ZM4DS023                                *00950410
//*   GENERAR ARCHIVO DE RENDIMIENTOS                                  *00951006
//*--------------------------------------------------------------------*00950310
//PSF08P19 EXEC PGM=IKJEFT01,COND=(4,LT)                                00953006
//SYSTSPRT DD SYSOUT=*                                                  00953206
//ZMS023A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..RENDIM.F&FECHA,            00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=300,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00953708
//SYSPRINT DD SYSOUT=*                                                  00953806
//SYSOUT   DD SYSOUT=*                                                  00953906
//SYSDBOUT DD SYSOUT=*                                                  00954006
//SYSABOUT DD SYSOUT=*                                                  00954106
//SYSUDUMP DD DUMMY                                                     00954206
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T25),DISP=SHR                   00954306
//*                                                                     00954406
//*--------------------------------------------------------------------*00941606
//* PROGRAMA: ICEMAN                SORT                               *00941706
//* OBJETIVO: SORTEA VALUACION DE CONTABILIDAD                         *00941806
//*--------------------------------------------------------------------*00942006
//PSF08P18 EXEC PGM=ICEMAN,COND=(4,LT)                                  00943006
//SYSOUT   DD SYSOUT=*                                                  00945006
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.ECO.VALUAC.F&FECHA,DISP=SHR           00946006
//         DD DSN=MXC&AMB..ZM.TMP.ECO.VALCAP.F&FECHA,DISP=SHR           00946006
//         DD DSN=MXC&AMB..ZM.TMP.ECO.INTFAZ.VALMDD.F&FECHA,DISP=SHR    00946006
//         DD DSN=MXC&AMB..ZM.TMP.ECO.INTFAZ.VA2MDD.F&FECHA,DISP=SHR    00946006
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..TENEN02,                   00948006
//            DISP=(NEW,CATLG,DELETE),                                  00949006
//            DCB=(LRECL=400,RECFM=FB,BLKSIZE=0,DSORG=PS),              00949106
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00949208
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSFS8T24),DISP=SHR                   00950110
//*                                                                     00950210
//*--------------------------------------------------------------------*00950310
//*   EJECUCION DEL PROGRAMA:  ZM4DS018                                *00950410
//*   EMITIR EL INFORME DE INGRESOS                                    *00951006
//*--------------------------------------------------------------------*00950310
//PSF08P17 EXEC PGM=IKJEFT01,COND=(4,LT)                                00953006
//SYSTSPRT DD SYSOUT=*                                                  00953206
//ZMS018A1 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZMSFPD08,DISP=SHR          00953306
//ZMS018A2 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..INGMES.F&FECHA,            00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=200,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00953708
//SYSPRINT DD SYSOUT=*                                                  00953806
//SYSOUT   DD SYSOUT=*                                                  00953906
//SYSDBOUT DD SYSOUT=*                                                  00954006
//SYSABOUT DD SYSOUT=*                                                  00954106
//SYSUDUMP DD DUMMY                                                     00954206
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T01),DISP=SHR                   00954306
//*                                                                     00954406
//*--------------------------------------------------------------------*
//*   EJECUCION DEL PROGRAMA:  ZM4DS020                                *
//*   GENERACION DE INTERFAZ PARA FIDEICOMISOS (MOVTOS).               *
//*--------------------------------------------------------------------*
//PSF08P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS020A1 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZMSFPD08,DISP=SHR
//ZMS020A2 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZM4DS020.ANT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T11),DISP=SHR
//*                                                                     00890006
//*--------------------------------------------------------------------*
//*   EJECUCION DEL PROGRAMA:  ZM4DS003                                *
//*   GENERACION DE INTERFAZ PARA CKDB                                 *
//*--------------------------------------------------------------------*
//PSF08P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS003A1 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZMSFPD08,DISP=SHR
//ZMS003A2 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZM4DS003.CKDB,
//            DISP=(NEW,CATLG,DELETE),
//*           DCB=(LRECL=387,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*           DCB=(LRECL=480,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=481,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//ZMS003A3 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZM4DS003.CIFR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=080,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T10),DISP=SHR
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM4DS001                                 00370006
//*   GENERACION DE ARCHIVOS DE CLIENTES                                00380006
//********************************************************************* 00390006
//PSF08P14 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400006
//ZMS001A1 DD DSN=MXC&AMB..ZM.FIX.CON.AMCP,DISP=SHR                     00420006
//ZMS001A2 DD DSN=MXC&AMB..ZM.GDGD.SIE.E&EMP..CLIENTES(+1),             00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(BKUP.MODEL,LRECL=860,RECFM=FB,BLKSIZE=0,DSORG=PS),   00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T07),DISP=SHR                   00530006
//*
//*--------------------------------------------------------------------*00939706
//*   EJECUCION DEL PROGRAMA:  ZM4DS002                                *00939806
//*   OBTIENE OPERACIONES PARA SISTEMA ESTADISTICO                     *00939906
//*--------------------------------------------------------------------*00939706
//PSF08P13 EXEC PGM=IKJEFT01,COND=(4,LT)                                00940106
//SYSTSPRT DD SYSOUT=*                                                  00940306
//ZMS002A1 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZMSFPD08,DISP=SHR          00940406
//ZMS002A2 DD DSN=MXC&AMB..ZM.GDGD.SIE.E&EMP..MOVTOS(+1),               00940506
//            DISP=(NEW,CATLG,DELETE),                                  00940606
//            DCB=(BKUP.MODEL,LRECL=235,RECFM=FB,BLKSIZE=0,DSORG=PS),   00940706
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00940808
//ZMS002A3 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZM4S002.EFEVTAS,           00940506
//            DISP=(NEW,CATLG,DELETE),                                  00940606
//            DCB=(LRECL=074,RECFM=FB,BLKSIZE=0,DSORG=PS),              00940706
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00940808
//****ZMS002A4 DD DSN=MXC&AMB..ZM.FIX.SIE.EBCM.MOVTOCAM,                00940506
//ZMS002A4 DD DSN=MXC&AMB..ZM.GDGD.SIE.EBCM.MOVTOCAM(+1),               00940506
//            DISP=(NEW,CATLG,DELETE),                                  00940606
//****        DCB=(LRECL=235,RECFM=FB,BLKSIZE=0,DSORG=PS),              00940706
//            DCB=(BKUP.MODEL,LRECL=271,RECFM=FB,BLKSIZE=0,DSORG=PS),   00940706
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00940808
//SYSPRINT DD SYSOUT=*                                                  00940906
//SYSOUT   DD SYSOUT=*                                                  00941006
//SYSDBOUT DD SYSOUT=*                                                  00941106
//SYSABOUT DD SYSOUT=*                                                  00941206
//SYSUDUMP DD DUMMY                                                     00941306
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T02),DISP=SHR                   00941406
//*                                                                     00941506
//********************************************************************* 00540006
//*   EJECUCION DEL PROGRAMA:  ZM4DS004                                 00550006
//*   EMITIR ARCHIVOS EXTRACTORES DE BANCA PATRIMONIAL                  00560006
//********************************************************************* 00570006
//PSF08P12 EXEC PGM=IKJEFT01,COND=(4,LT)                                00580006
//ZMS004A1 DD DSN=MXC&AMB..ZM.GDGD.SIE.E&EMP..EMISORAS(+1),             00660006
//            DISP=(NEW,CATLG,DELETE),                                  00670006
//            DCB=(BKUP.MODEL,LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS),   00680006
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00690008
//ZMS004A2 DD DSN=MXC&AMB..ZM.GDGD.SIE.E&EMP..PROMOT(+1),               00620006
//            DISP=(NEW,CATLG,DELETE),                                  00630006
//            DCB=(BKUP.MODEL,LRECL=142,RECFM=FB,BLKSIZE=0,DSORG=PS),   00640006
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00650008
//ZMS004A3 DD DSN=MXC&AMB..ZM.GDGD.SIE.E&EMP..CCOSTOS(+1),              00700006
//            DISP=(NEW,CATLG,DELETE),                                  00710006
//            DCB=(BKUP.MODEL,LRECL=050,RECFM=FB,BLKSIZE=0,DSORG=PS),   00720006
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00721008
//SYSTSPRT DD SYSOUT=*                                                  00600006
//SYSPRINT DD SYSOUT=*                                                  00722006
//SYSOUT   DD SYSOUT=*                                                  00723006
//SYSDBOUT DD SYSOUT=*                                                  00724006
//SYSABOUT DD SYSOUT=*                                                  00725006
//SYSUDUMP DD DUMMY                                                     00726006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T06),DISP=SHR                   00727006
//*                                                                     00890006
//*********************************************************************
//*   EJECUCION DEL PROGRAMA:  ZM4DS044    (AGP)
//*   EMITIR ARCHIVO DE EMISORAS INCLUYE IISIN
//*********************************************************************
//PSF08P1A EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS044A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..EMISISIN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=113,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//ZMS044A2 DD DUMMY
//ZMS044A3 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T32),DISP=SHR
//*
//*--------------------------------------------------------------------*00941606
//* PROGRAMA: ICEMAN                SORT                               *00941706
//* OBJETIVO: SORTEA LA INFORMACION POR CUENTA (CONCILIA)              *00941806
//*--------------------------------------------------------------------*00942006
//PSF08P11 EXEC PGM=ICEMAN,COND=(4,LT)                                  00943006
//SYSOUT   DD SYSOUT=*                                                  00945006
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.SIE.VIBB80D.CONCIL2,DISP=SHR          00946006
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..TENEN01,                   00948006
//            DISP=(NEW,CATLG,DELETE),                                  00949006
//            DCB=(LRECL=625,RECFM=FB,BLKSIZE=0,DSORG=PS),              00949106
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00949208
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSFS8T05),DISP=SHR                   00950110
//*                                                                     00950210
//**********************************************************************00941606
//* PROGRAMA: ICEMAN                SORT                                00941706
//* OBJETIVO: SORTEA LA INFORMACION DE ARCHIVO EFEVTAS                  00941806
//**********************************************************************00941606
//PSF08P10 EXEC PGM=ICEMAN,COND=(4,LT)                                  00943006
//SYSOUT   DD SYSOUT=*                                                  00945006
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZM4S002.EFEVTAS,DISP=SHR   00946006
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..EFEVTAS.SORT,              00948006
//            DISP=(NEW,CATLG,DELETE),                                  00949006
//            DCB=(LRECL=70,RECFM=FB,BLKSIZE=0,DSORG=PS),               00949106
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00949208
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSFS8T08),DISP=SHR                   00950110
//*                                                                     00950210
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS005                                *00910006
//*    OBTENER TENENCIA                                                *00920006
//*--------------------------------------------------------------------*00900006
//PSF08P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//*                                                                     00932006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS005A1 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZMSFPD08,DISP=SHR          00934006
//ZMS005A2 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..TENEN01,DISP=SHR           00935006
//ZMS005A3 DD DSN=MXC&AMB..ZM.GDGD.SIE.E&EMP..TENENV2(+1),              00935006
//            DISP=(NEW,CATLG,DELETE),                                  00936006
//            DCB=(BKUP.MODEL,LRECL=340,RECFM=FB,BLKSIZE=0,DSORG=PS),   00937006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00938008
//ZMS005A4 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZM4S005.PASO1,             00935006
//            DISP=(NEW,CATLG,DELETE),                                  00936006
//            DCB=(LRECL=137,RECFM=FB,BLKSIZE=0,DSORG=PS),              00937006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00938008
//ZMS005A5 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..EFEVTAS.SORT,DISP=SHR      00935006
//ZMS005A6 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZM4S005.PASO2,             00935006
//            DISP=(NEW,CATLG,DELETE),                                  00936006
//            DCB=(LRECL=070,RECFM=FB,BLKSIZE=0,DSORG=PS),              00937006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00938008
//ZMS005A7 DD DSN=MXC&AMB..ZM.GDGD.SIE.E&EMP..TENENCIA(+1),             00935006
//            DISP=(NEW,CATLG,DELETE),                                  00936006
//            DCB=(BKUP.MODEL,LRECL=230,RECFM=FB,BLKSIZE=0,DSORG=PS),   00937006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00938008
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T09),DISP=SHR                   00939506
//*                                                                     00939606
//*--------------------------------------------------------------------*
//*   EJECUCION DEL PROGRAMA:  ZM4DS043    (AGP)                       *
//*   EMITIR ARCHIVO DE TENECIA  INCLUYE IISIN                         *
//*--------------------------------------------------------------------*
//PSF08P9A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//ZMS043A1 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZMSFPD08,DISP=SHR
//ZMS043A2 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..TENEN01,DISP=SHR
//ZMS043A3 DD DUMMY
//ZMS043A4 DD DUMMY
//ZMS043A5 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..EFEVTAS.SORT,DISP=SHR
//ZMS043A6 DD DUMMY
//ZMS043A7 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..TENEISIN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=243,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T33),DISP=SHR
//*
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS006                                *00910006
//*    OBTENER TENENCIA                                                *00920006
//*--------------------------------------------------------------------*00900006
//PSF08P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//*                                                                     00932006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS006A1 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZMSFPD08,DISP=SHR          00934006
//ZMS006A2 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..TENEN02,DISP=SHR           00935006
//ZMS006A3 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..TENCONTA.F&FECHA,          00935006
//            DISP=(NEW,CATLG,DELETE),                                  00936006
//            DCB=(LRECL=230,RECFM=FB,BLKSIZE=0,DSORG=PS),              00937006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00938008
//ZMS006A4 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZM4S006.PASO,              00935006
//            DISP=(NEW,CATLG,DELETE),                                  00936006
//            DCB=(LRECL=111,RECFM=FB,BLKSIZE=0,DSORG=PS),              00937006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00938008
//ZMS006A5 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZM4S006X.F&FECHA,          00935006
//            DISP=(NEW,CATLG,DELETE),                                  00936006
//            DCB=(LRECL=500,RECFM=FB,BLKSIZE=0,DSORG=PS),              00937006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00938008
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T04),DISP=SHR                   00939506
//*                                                                     00939606
//*--------------------------------------------------------------------*00950310
//*   EJECUCION DEL PROGRAMA:  ZM4DS017                                *00950410
//*   EMITIR EL INFORME DE INGRESOS                                    *00951006
//*--------------------------------------------------------------------*00950310
//PSF08P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                00953006
//SYSTSPRT DD SYSOUT=*                                                  00953206
//ZMS017A1 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZMSFPD08,DISP=SHR          00953306
//ZMS017A2 DD DSN=MXC&AMB..ZM.GDGD.SIE.E&EMP..INGRESOS(+1),             00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(BKUP.MODEL,LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),   00953606
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00953708
//ZMS017A3 DD DSN=MXC&AMB..ZM.GDGD.SIE.E&EMP..INGRSCAM(+1),             00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(BKUP.MODEL,LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),   00953606
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00953708
//SYSPRINT DD SYSOUT=*                                                  00953806
//SYSOUT   DD SYSOUT=*                                                  00953906
//SYSDBOUT DD SYSOUT=*                                                  00954006
//SYSABOUT DD SYSOUT=*                                                  00954106
//SYSUDUMP DD DUMMY                                                     00954206
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T23),DISP=SHR                   00954306
//*                                                                     00954406
//********************************************************************* 00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS010                                 00910006
//*   OBTIENE CARGOS VARIOS                                             00920006
//********************************************************************* 00930006
//PSF08P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS010A1 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZMSFPD08,DISP=SHR          00934006
//ZMS010A2 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CARGOSV,                   00935006
//            DISP=(NEW,CATLG,DELETE),                                  00936006
//            DCB=(LRECL=70,RECFM=FB,BLKSIZE=0,DSORG=PS),               00937006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00938008
//ZMS010A3 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CGOSVCAM,                  00935006
//            DISP=(NEW,CATLG,DELETE),                                  00936006
//            DCB=(LRECL=70,RECFM=FB,BLKSIZE=0,DSORG=PS),               00937006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00938008
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T03),DISP=SHR                   00939506
//*                                                                     00954406
//*--------------------------------------------------------------------*00941606
//* PROGRAMA: ICEMAN                SORT                               *00941706
//* OBJETIVO: SORTEA LA INFORMACION POR CUENTA (CONCILIA)              *00941806
//*--------------------------------------------------------------------*00942006
//*PSF08P05 EXEC PGM=ICEMAN,COND=(4,LT)                                 00943006
//*SYSOUT   DD SYSOUT=*                                                 00945006
//*SORTIN   DD DSN=MXCP.ZM.TMP.SIE.VIBB80D.CONCIL2,DISP=SHR             00946006
//*SYSUT2   DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..CONCIL01(+1),                00948006
//*            DISP=(NEW,CATLG,DELETE),                                 00953506
//*            DCB=(BKUP.MODEL,LRECL=625,RECFM=FB,BLKSIZE=0,DSORG=PS),  00953606
//*            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                      00953708
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*SORTWK02 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*SORTWK03 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSFS8T27),DISP=SHR                  00950110
//*                                                                     00950210
//**********************************************************************00941606
//* PROGRAMA: IEBGENER                                                  00941706
//* OBJETIVO: COPIA ARCHIVO CONCIL3(CAM) A GDT                          00941806
//**********************************************************************00941606
//*PSF08P04 EXEC PGM=ICEGENER,COND=(4,LT)                               00943006
//*SYSPRINT DD SYSOUT=*                                                 00945006
//*SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.VIBB80D.CONCIL3,DISP=SHR             00946006
//*SYSUT2   DD DSN=MXCP.ZM.FIX.SIE.E&EMP..CONCIL03.F&FECHA,             00948006
//*            DISP=(NEW,CATLG,DELETE),                                 00953506
//*            DCB=(LRECL=643,RECFM=FB,BLKSIZE=0,DSORG=PS),             00953606
//*            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                      00953708
//*SYSIN    DD DUMMY                                                    00949810
//*                                                                     00954406
//**********************************************************************00941606
//* PROGRAMA: IEBGENER                                                  00941706
//* OBJETIVO: COPIA ARCHIVO COMISIONES CAM BASICAS A GDT                00941806
//**********************************************************************00941606
//PSF08P04 EXEC PGM=ICEGENER,COND=(4,LT)                                00943006
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CARGOSV,DISP=SHR           00946006
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CGOSVCAM,DISP=SHR
//SYSUT2   DD DSN=MXC&AMB..ZM.GDGD.SIE.E&EMP..CARGOSV(+1),              00948006
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(BKUP.MODEL,LRECL=70,RECFM=FB,BLKSIZE=0,DSORG=PS),    00953606
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00953708
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY                                                     00949810
//*                                                                     00954406
//**********************************************************************00941606
//* PROGRAMA: IEBGENER                                                  00941706
//* OBJETIVO: COPIA ARCHIVO DEL CAM A GDT                               00941806
//**********************************************************************00941606
//PSF08P03 EXEC PGM=ICEGENER,COND=(4,LT)                                00943006
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.SIE.RIB060D,DISP=SHR                  00946006
//SYSUT2   DD DSN=MXC&AMB..ZM.GDGD.SIE.E&EMP..POSICAM(+1),              00948006
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(BKUP.MODEL,LRECL=334,RECFM=FB,BLKSIZE=0,DSORG=PS),   00953606
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)                        00953708
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY                                                     00949810
//*                                                                     00950210
//*-------------------------------------------------------------------**
//*  PASO: 2      REALIZA LA TRANSFERENCIA DEL ARCHIVO DE TENENCIA     *
//*                   AL SERVIDOR BLADE CBNOCFS03\C_CB003              *
//*                                                                    *
//*  TRANSMITE :  &DSN1='MXCP.ZM.GDGD.SIE.EBCM.TENENCIA(0)'            *
//*               &DSN2='\\CBNOCFS03\C_CB003\ZM\CUSTODIA\TENENCIA.TXT' *
//*-------------------------------------------------------------------**
//PSF08P02 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZSFS8T21),DISP=SHR
//*
//*-------------------------------------------------------------------**
//*  PASO: 1      REALIZA LA TRANSFERENCIA DEL ARCHIVO DE INGRESOS     *
//*                   AL SERVIDOR BLADE CBNOCFS03\C_CB003              *
//*                                                                    *
//*  TRANSMITE :  &DSN1='MXCP.ZM.GDGD.SIE.EBCM.INGRESOS(0)'            *
//*               &DSN2='\\CBNOCFS03\C_CB003\ZM\CUSTODIA\INGRESOS.TXT' *
//*-------------------------------------------------------------------**
//PSF08P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZSFS8T22),DISP=SHR
//*
//**********************************************************************00900006
//*                    F I N   Z M S F P D 0 8                         *00900006
//**********************************************************************00900006
