//ZMSFPD21 PROC                                                         00010006
//**********************************************************************00010006
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00010006
//* PROCESO        :  BCSFCD21                                         *00010006
//*                                                                    *00010006
//* OBJETIVO       :  GENERAR ARCHIVO PARA HERMES COMPORTAMENTAL       *00010006
//*                   FASE III VERSION 0 (HERMES VERSION LARGA)        *00010006
//* CORRE                                                              *00010006
//* ANTES DE       :                                                   *00010006
//* DESPUES DE     :                                                   *00010006
//* REALIZO        :  INFOSYST FSW HRA                                 *00010006
//* FECHA          :  JUNIO 2009                                       *00010006
//* OBSERVACION    :                                                   *00010006
//**********************************************************************00010006
//*--------------------------------------------------------------------*
//*                                                                    *
//*             L O G    D E   M O D I F I C A C I O N E S             *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- --------------------------------------*
//* FS-1.0.0-01  XM01980 30SEP10  SE CAMBIA LONGITUD DE ARCHIVO DE     *
//*                               SALIDA EN PASO PSF21P00 DE 142 A 159 *
//*--------------------------------------------------------------------*00941606
//*                           ==  ICEMAN  ==                           *00941706
//* OBJ : ORDENA EL ARCHIVO LAR POR ZM608_CNUMCTE, ZM608_CCTAINVPAT    *00941806
//*--------------------------------------------------------------------*00942006
//PSF21P01 EXEC PGM=ICEMAN                                              00943006
//SYSOUT   DD SYSOUT=*                                                  00945006
//SORTIN   DD DSN=MBPKDHK.APLXPRMD.MDHKFHE7.HC1MV,DISP=SHR              00946006
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.LAR.ARCHLVL.SORT,                     00948006
//            DISP=(NEW,CATLG,DELETE),                                  00949006
//            DCB=(LRECL=32,RECFM=FB,BLKSIZE=0,DSORG=PS),               00949106
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00949208
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF21T01),DISP=SHR                     00950110
//*                                                                     00950210
//*--------------------------------------------------------------------*00950310
//*   EJECUCION DEL PROGRAMA:  ZM4CR021                                *00950410
//*   CREA INTERFACES PARA LAR                                         *00951006
//*--------------------------------------------------------------------*00950310
//PSF21P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                00953006
//SYSTSPRT DD SYSOUT=*                                                  00953206
//ZMCR21A1 DD DSN=MXC&AMB..ZM.FIX.LAR.ARCHLVL.SORT,DISP=SHR             00953306
//ZMCR21A2 DD DSN=MXC&AMB..ZM.FIX.LAR.SIVALAVL,                         00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//*FS-1.0.0-01-INI
//*           DCB=(LRECL=142,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//            DCB=(LRECL=159,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//*FS-1.0.0-01-FIN
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00953708
//ZMCR21A3 DD DSN=MXC&AMB..ZM.FIX.LAR.COTROLVL,                         00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=080,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00953708
//ZMCR21A4 DD DSN=MXC&AMB..ZM.FIX.LAR.RECHALVL,                         00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=034,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00953708
//SYSPRINT DD SYSOUT=*                                                  00953806
//SYSOUT   DD SYSOUT=*                                                  00953906
//SYSDBOUT DD SYSOUT=*                                                  00954006
//SYSABOUT DD SYSOUT=*                                                  00954106
//SYSUDUMP DD DUMMY                                                     00954206
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF21T00),DISP=SHR                   00954306
//*-------------------------------------------------------------------**
//**********************************************************************
//*                    F I N   Z M S F P D 2 1                         *
//**********************************************************************
