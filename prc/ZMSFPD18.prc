//ZMSFPD18 PROC                                                         00010006
//**********************************************************************00010006
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00010006
//* PROCESO        :  BCSFCD18                                         *00010006
//*                                                                    *00010006
//* OBJETIVO       :  GENERAR ARCHIVO PARA HERMES COMPORTAMENTAL       *00010006
//*                   VERSION CORTA...                                 *00010006
//* CORRE                                                              *00010006
//* ANTES DE       :                                                   *00010006
//* DESPUES DE     :                                                   *00010006
//* REALIZO        :  AURORA G. GONZALEZ PE#A                          *00010006
//* FECHA          :  ABRIL 2009                                       *00010006
//* OBSERVACION    :                                                   *00010006
//**********************************************************************00010006
//*--------------------------------------------------------------------*00941606
//*                           ==  ICEMAN  ==                           *00941706
//* OBJ : ORDENA EL ARCHIVO LAR POR ZM608_CNUMCTE, ZM608_CCTAINVPAT    *00941806
//*--------------------------------------------------------------------*00942006
//PSF18P01 EXEC PGM=ICEMAN                                              00943006
//SYSOUT   DD SYSOUT=*                                                  00945006
//SORTIN   DD DSN=MXB&AMB..LA.FIX.HC0MV.TXT,DISP=SHR                    00946006
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.LAR.ARCHLAR.SORT,                     00948006
//            DISP=(NEW,CATLG,DELETE),                                  00949006
//            DCB=(LRECL=32,RECFM=FB,BLKSIZE=0,DSORG=PS),               00949106
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00949208
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF18T01),DISP=SHR                     00950110
//*                                                                     00950210
//*--------------------------------------------------------------------*00950310
//*   EJECUCION DEL PROGRAMA:  ZM4CR020                                *00950410
//*   CREA INTERFAZ PARA LAR                                           *00951006
//*--------------------------------------------------------------------*00950310
//PSF18P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                00953006
//SYSTSPRT DD SYSOUT=*                                                  00953206
//ZMCR20A1 DD DSN=MXC&AMB..ZM.FIX.LAR.ARCHLAR.SORT,DISP=SHR             00953306
//ZMCR20A2 DD DSN=MXC&AMB..ZM.FIX.LAR.SIVALAR,                          00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=45,RECFM=FB,BLKSIZE=0,DSORG=PS),               00953606
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00953708
//ZMCR20A3 DD DSN=MXC&AMB..ZM.FIX.LAR.COTROLAR,                         00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=080,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00953708
//ZMCR20A4 DD DSN=MXC&AMB..ZM.FIX.LAR.RECHALAR,                         00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=034,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00953708
//SYSPRINT DD SYSOUT=*                                                  00953806
//SYSOUT   DD SYSOUT=*                                                  00953906
//SYSDBOUT DD SYSOUT=*                                                  00954006
//SYSABOUT DD SYSOUT=*                                                  00954106
//SYSUDUMP DD DUMMY                                                     00954206
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF18T00),DISP=SHR                   00954306
//*-------------------------------------------------------------------**
//**********************************************************************
//*                    F I N   Z M S F P D 1 8                         *
//**********************************************************************
