//ZMSFPD10 PROC                                                         00010006
//**********************************************************************00010006
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00010006
//* PROCESO        :  BCSFCD10                                         *00010006
//*                   ARCHIVOS EXTRACTORES BANPAT BCM                  *00010006
//* OBJETIVO       :  GENERA ARCHIVOS ACUMULADOS DE INFORMACION        *00010006
//*                   ESTADISTICA PARA EL AREA DE GESTION PATRIMONIAL  *00010006
//* CORRE                                                              *00010006
//* ANTES DE       :                                                   *00010006
//* DESPUES DE     :  BCSFCD08  -  ZMSFPD08                            *00010006
//* REALIZO        :  MARTIN SANTOS GONZALEZ                           *00010006
//* FECHA          :  MAYO  2007                                       *00010006
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIO                        *00010006
//**********************************************************************
//**********************************************************************
//*                           --ZM4DS087--                             *
//* OBJETIVO    : GENERAR ARCHIVO EXTRACTOR GESTIONADOS Y FIDEICOMISOS *
//*               PLAZA 902 Y PLAZA 900(EN EL FUTURO)                  *
//*                                                                    *
//*               ARCHIVO (325 POSC.) HOMOLOGADO A SIASTMN2/CONCILI3   *
//**********************************************************************
//PSF10P13 EXEC PGM=IKJEFT01
//*
//ZMS087A1 DD DSN=MXCP.ZM.FIX.GTI.CTASSET.FIDEICOM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=414,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF10T13),DISP=SHR
//*                                                                    *
//**********************************************************************
//PSF10P12 EXEC PGM=ZM3DG001,                                           00300009
//         PARM=('&EMP','   ','   ','   ',),COND=(4,LT)                 00310006
//SYSTSPRT DD SYSOUT=*                                                  00312006
//SYSPRINT DD SYSOUT=*                                                  00313006
//SYSOUT   DD SYSOUT=*                                                  00314006
//SYSDBOUT DD SYSOUT=*                                                  00315006
//SYSABOUT DD DUMMY                                                     00316006
//SYSUDUMP DD DUMMY                                                     00317006
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIE.E&EMP..ZMSFPD10,                      00319006
//            DISP=(NEW,CATLG,DELETE),                                  00320006
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00330006
//            UNIT=3390,                                                00340006
//            SPACE=(CYL,(2,1),RLSE)                                    00350008
//*
//*--------------------------------------------------------------------*00939706
//*   EJECUCION DEL PROGRAMA:  ZM4DS082                                *00939806
//*   OBTIENE ACUMULADO DE MOVIMIENTOS                                 *00939906
//*--------------------------------------------------------------------*00939706
//PSF10P11 EXEC PGM=IKJEFT01,COND=(4,LT)                                00940106
//SYSTSPRT DD SYSOUT=*                                                  00940306
//ZMS082A1 DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-31),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-30),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-29),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-28),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-27),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-26),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-25),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-24),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-23),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-22),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-21),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-20),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-19),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-18),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-17),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-16),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-15),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-14),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-13),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-12),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-11),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-10),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-09),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-08),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-07),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-06),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-05),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-04),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-03),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-02),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(-01),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOCAM(0),DISP=SHR            00940406
//ZMS082A2 DD DSN=MXCP.ZM.FIX.SIE.EBCM.AMOVTCAM.F&FECHA,                00940506
//            DISP=(NEW,CATLG,DELETE),                                  00940606
//            DCB=(LRECL=271,RECFM=FB,BLKSIZE=0,DSORG=PS),              00940706
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00940808
//SYSPRINT DD SYSOUT=*                                                  00940906
//SYSOUT   DD SYSOUT=*                                                  00941006
//SYSDBOUT DD SYSOUT=*                                                  00941106
//SYSABOUT DD SYSOUT=*                                                  00941206
//SYSUDUMP DD DUMMY                                                     00941306
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF10T11),DISP=SHR                   00941406
//*                                                                     00941506
//**********************************************************************
//*                           --ZM4DS086--                             *
//* OBJETIVO    : GENERAR ARCHIVO EXTRACTOR GESTIONADOS Y FIDEICOMISOS *
//*               PLAZA 902 Y PLAZA 900(EN EL FUTURO)                  *
//**********************************************************************
//PSF10P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMS086A1 DD DSN=MXCP.ZM.FIX.GTI.ZM4DS087.FIDEICOM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=266,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF10T10),DISP=SHR
//*                                                                    *
//*--------------------------------------------------------------------*00939706
//*   EJECUCION DEL PROGRAMA:  ZM4DS008                                *00939806
//*   OBTIENE ACUMULADO DE OPERACIONES                                 *00939906
//*--------------------------------------------------------------------*00939706
//PSF10P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                00940106
//SYSTSPRT DD SYSOUT=*                                                  00940306
//ZMS008A1 DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-31),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-30),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-29),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-28),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-27),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-26),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-25),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-24),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-23),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-22),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-21),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-20),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-19),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-18),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-17),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-16),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-15),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-14),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-13),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-12),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-11),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-10),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-09),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-08),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-07),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-06),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-05),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-04),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-03),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-02),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-01),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(0),DISP=SHR            00940406
//ZMS008A2 DD DSN=MXCP.ZM.FIX.SIE.E&EMP..ACUMOVTS,                      00940506
//            DISP=(NEW,CATLG,DELETE),                                  00940606
//            DCB=(LRECL=235,RECFM=FB,BLKSIZE=0,DSORG=PS),              00940706
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00940808
//*ZMS008A3 DD DSN=MXCP.ZM.FIX.SIE.EBCM.AMOVTCAM.F&FECHA,               00940506
//*            DISP=(NEW,CATLG,DELETE),                                 00940606
//*            DCB=(LRECL=271,RECFM=FB,BLKSIZE=0,DSORG=PS),             00940706
//*            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                      00940808
//SYSPRINT DD SYSOUT=*                                                  00940906
//SYSOUT   DD SYSOUT=*                                                  00941006
//SYSDBOUT DD SYSOUT=*                                                  00941106
//SYSABOUT DD SYSOUT=*                                                  00941206
//SYSUDUMP DD DUMMY                                                     00941306
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF10T06),DISP=SHR                   00941406
//*                                                                     00941506
//*--------------------------------------------------------------------*00950310
//*   EJECUCION DEL PROGRAMA:  ZM4DS009                                *00950410
//*   ACUMULADO DE INGRESOS                                            *00951006
//*--------------------------------------------------------------------*00950310
//PSF10P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                00953006
//SYSTSPRT DD SYSOUT=*                                                  00953206
//ZMS009A1 DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-31),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-30),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-29),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-28),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-27),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-26),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-25),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-24),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-23),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-22),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-21),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-20),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-19),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-18),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-17),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-16),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-15),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-14),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-13),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-12),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-11),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-10),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-09),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-08),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-07),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-06),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-05),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-04),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-03),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-02),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(-01),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRESOS(0),DISP=SHR          00953306
//ZMS009A2 DD DSN=MXCP.ZM.FIX.SIE.E&EMP..ACUINGRE,                      00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00953708
//ZMS009A3 DD DSN=MXCP.ZM.FIX.SIE.E&EMP..ACUINGR1,                      00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00953708
//SYSPRINT DD SYSOUT=*                                                  00953806
//SYSOUT   DD SYSOUT=*                                                  00953906
//SYSDBOUT DD SYSOUT=*                                                  00954006
//SYSABOUT DD SYSOUT=*                                                  00954106
//SYSUDUMP DD DUMMY                                                     00954206
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF10T05),DISP=SHR                   00954306
//*                                                                     00941506
//*--------------------------------------------------------------------*00950310
//*   EJECUCION DEL PROGRAMA:  ZM4DS009                                *00950410
//*   ACUMULADO DE INGRESOS CAM                                        *00951006
//*--------------------------------------------------------------------*00950310
//PSF10P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                00953006
//SYSTSPRT DD SYSOUT=*                                                  00953206
//ZMS009A1 DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-31),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-30),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-29),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-28),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-27),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-26),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-25),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-24),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-23),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-22),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-21),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-20),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-19),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-18),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-17),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-16),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-15),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-14),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-13),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-12),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-11),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-10),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-09),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-08),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-07),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-06),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-05),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-04),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-03),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-02),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(-01),DISP=SHR        00953306
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..INGRSCAM(0),DISP=SHR          00953306
//ZMS009A2 DD DSN=MXCP.ZM.FIX.SIE.E&EMP..ACINGCAM,                      00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//            UNIT=3390,SPACE=(CYL,(60,30),RLSE)                        00953708
//ZMS009A3 DD DSN=MXCP.ZM.FIX.SIE.E&EMP..ACUINGR2,                      00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00953708
//SYSPRINT DD SYSOUT=*                                                  00953806
//SYSOUT   DD SYSOUT=*                                                  00953906
//SYSDBOUT DD SYSOUT=*                                                  00954006
//SYSABOUT DD SYSOUT=*                                                  00954106
//SYSUDUMP DD DUMMY                                                     00954206
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF10T05),DISP=SHR                   00954306
//*                                                                     00954406
//*HGM-I
//**********************************************************************
//* PROGRAMA: ICEMAN                SORT
//* OBJETIVO: OBTIENE REGISTROS DE FIDEICOMISOS
//**********************************************************************
//PSF10PA7 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SIE.E&EMP..ACINGCAM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.FID.INGCAM.MES.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(60,30),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF10TA7),DISP=SHR
//*
//**********************************************************************
//* COPIA EL ARCHIVO DE FIDEICOMISOS A FIX PARA ENVIAR A SERVIDOR      *
//**********************************************************************
//PSF10PB7 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.WKF.FID.INGCAM.MES.SORT,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.FID.INGCAM.MES.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(60,30),RLSE)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PROGRAMA: ZM4DCAMF
//* OBJETIVO: ARCHIVO DE PRODUCTIVIDAD CAM, OBTIENE EL CR DESTINO DE
//*           TABLA ZMDT737 PARA FIDEICOMISOS.
//**********************************************************************
//PSF10PC7 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//A01ENTRA DD DSN=MXCP.ZM.FIX.FID.INGCAM.MES.SORT,DISP=SHR
//A02SALID DD DSN=MXCP.ZM.FIX.FID.INGCAM.MES.CROK,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(60,30),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF10TA8),DISP=SHR
//*
//*HGM-F
//*
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS013                                *00910006
//*    ACUMULADO DE TENENCIA.                                          *00920006
//*--------------------------------------------------------------------*00900006
//PSF10P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS013A1 DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-31),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-30),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-29),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-28),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-27),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-26),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-25),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-24),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-23),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-22),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-21),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-20),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-19),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-18),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-17),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-16),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-15),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-14),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-13),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-12),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-11),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-10),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-09),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-08),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-07),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-06),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-05),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-04),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-03),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-02),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(-01),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENCIA(0),DISP=SHR
//ZMS013A2 DD DSN=MXCP.ZM.FIX.SIE.E&EMP..ACUTEN.F&FECHA,                00935006
//            DISP=(NEW,CATLG,DELETE),                                  00936006
//            DCB=(LRECL=230,RECFM=FB,BLKSIZE=0,DSORG=PS),              00937006
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00938008
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF10T04),DISP=SHR                   00939506
//*                                                                     00950210
//**********************************************************************00941606
//* PROGRAMA: ICEMAN                SORT                                00941706
//* OBJETIVO: SORTEA LA TENENCIA ACUMULADA                              00941806
//**********************************************************************00941606
//PSF10P05 EXEC PGM=ICEMAN,COND=(4,LT)                                  00943006
//SYSOUT   DD SYSOUT=*                                                  00945006
//SORTIN   DD DSN=MXCP.ZM.FIX.SIE.E&EMP..ACUTEN.F&FECHA,DISP=SHR        00946006
//SORTOUT  DD DSN=MXCP.ZM.TMP.SIE.E&EMP..ACUTENEN.SORT,                 00948006
//            DISP=(NEW,CATLG,DELETE),                                  00949006
//            DCB=(LRECL=230,RECFM=FB,BLKSIZE=0,DSORG=PS),              00949106
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00949208
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF10T03),DISP=SHR                   00950110
//*                                                                     00950210
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS015                                *00910006
//*    TENENCIA PROMEDIO.                                              *00920006
//*--------------------------------------------------------------------*00900006
//PSF10P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS015A1 DD DSN=MXCP.ZM.TMP.SIE.E&EMP..ACUTENEN.SORT,DISP=SHR         00935006
//ZMS015A2 DD DSN=MXCP.ZM.FIX.SIE.E&EMP..ACUPROM,                       00935006
//            DISP=(NEW,CATLG,DELETE),                                  00936006
//            DCB=(LRECL=230,RECFM=FB,BLKSIZE=0,DSORG=PS),              00937006
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00938008
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF10T02),DISP=SHR                   00939506
//*                                                                     00950210
//*---------------------------------------------------------------------
//*                          PGM   ZM4DS025
//*  PROGRAMA QUE PASA INFORMACION DE ARCHIVO A TABLA ZMDT707
//*---------------------------------------------------------------------
//PSF10P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//ZMS025A1 DD DSN=MXCP.ZM.FIX.SIE.E&EMP..ACUINGRE,
//         DISP=SHR
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF10T0A),DISP=SHR                   00939506
//*
//*---------------------------------------------------------------------
//*                          PGM   ZM4DS085
//*  PROGRAMA QUE PASA INFORMACION DE ARCHIVO A TABLA ZMDT707
//*---------------------------------------------------------------------
//PSF10P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZME085A1 DD DSN=MXCP.ZM.FIX.SIE.E&EMP..CARGOSV,
//         DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF10T0B),DISP=SHR                   00939506
//*                                                                     00950210
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DSFID                                *00910006
//*    GENERA ARCHIVOS ACUMULADOS DE INFORMACION ESTADISTICA PARA EL   *00920006
//*    AREA DE GESTION PATRIMONIAL                                     *
//*--------------------------------------------------------------------*00900006
//PSF10P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF10T0C),DISP=SHR                   00939506
//*                                                                     00950210
//*-------------------------------------------------------------------**
//*  PASO:  A1    REALIZA TRANSFERENCIA DE ARCHIVO DE GESTIONADOS      *
//*               Y FIDECOMISOS PLAZA 902 Y PLAZA 900(EN EL FUTURO)    *
//*               GENERADO EN PASO "PSF10P13 Y/O 10"                   *
//*                                                                    *
//*               "DSN1='\\SBBV04\PUBLIC\POSDIA\EXTRADIA.TXT  "   A    *
//*               "DSN2=MXCP.ZM.FIX.GTI.CTASSET.FIDEICOM ' "           *
//*                                                                    *
//* NOTA: SI SE PRESENTARA ERROR EN ESTE PASO DARLO POR BUENO Y        *
//*       CONTINUAR CON LA CADENA NORMAL (AVISAR A HECTOR PAZ CONCHA)  *
//*                                                                    *
//*-------------------------------------------------------------------**
//*PSF10PA1 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//**
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//**
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//**
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZSF07T0B),DISP=SHR
//*
//*-------------------------------------------------------------------**
//*  PASO:  A2    REALIZA TRANSFERENCIA DE ARCHIVO DE GESTIONADOS      *
//*               Y FIDECOMISOS PLAZA 902 Y PLAZA 900(EN EL FUTURO)    *
//*               GENERADO EN PASO "PSF10P13 Y/O 10"                   *
//*                                                                    *
//*               "DSN1='\\CBNOCFS03\C_CB003\SIE\PATRIM\EXTRADIA.TXT   *
//*               "DSN2=MXCP.ZM.FIX.GTI.CTASSET.FIDEICOM               *
//*                                                                    *
//* NOTA: SI SE PRESENTARA ERROR EN ESTE PASO DARLO POR BUENO Y        *
//*       CONTINUAR CON LA CADENA NORMAL (AVISAR A HECTOR PAZ CONCHA)  *
//*                                                                    *
//*-------------------------------------------------------------------**
//*PSF10PA2 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//**
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//**
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//**
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZSF07T0C),DISP=SHR
//**
//**HGM-I*FIDEICOMISOS
//*
//*-------------------------------------------------------------------**
//*  PASO:  D7    REALIZA TRANSFERENCIA DE ARCHIVO DE PRODUCTIVIDAD    *
//*               DE FIDEICOMISOS GENERADO EN EL PASO PSF10PB7.        *
//*                                                                    *
//*       ***     "&DSN1='\\CBNOCFS03\C_CB003\PX\TCONT\MESCAMFI.TXT'   *
//*               "&DSN2='MXCP.ZM.FIX.FID.INGCAM.MES.CROK'             *
//*                                                                    *
//* NOTA: SI SE PRESENTARA ERROR EN ESTE PASO DARLO POR BUENO Y        *
//*       CONTINUAR CON LA CADENA NORMAL (AVISAR A SISTEMAS MUV /CASA  *
//*       DE BOLSA).                                                   *
//*-------------------------------------------------------------------**
//*PSF10PD7 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//**
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//**
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//**
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZSF10TC7),DISP=SHR
//**
//**HGM-F FIDEICOMISOS
//*
//**********************************************************************00900006
//*                    F I N   Z M S F P D 1 0                         *00900006
//**********************************************************************00900006
