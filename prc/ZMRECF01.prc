//ZMRECF01 PROC
//*********************************************************************
//*                     C A S A   D E   B O L S A                     *
//*                     =========================                     *
//*                    << MERCADO DE CAPITALES >>                     *
//*                                                                   *
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  *
//*                                                                   *
//*   JCL              :  ZMRECF01                                    *
//*                                                                   *
//*   OBJETIVO         :  RETIMBRAR EDC BANCA PATRIMOMIAL             *
//*                                                                   *
//*   CORRE DESPUES DE :  HORARIO, 21:00 HRS                          *
//*                                                                   *
//*   ELABORADO POR    :  HGM                                         *
//*********************************************************************
//*MJVG-I
//**********************************************************************00010200
//* PASO        : PRECF270                                             *00010301
//* OBJETIVO    : REALIZA CONVERSION DE CARACTER Ñ#VAR POR ENIE        *00010302
//**********************************************************************00010304
//PRECF270 EXEC PGM=ZM3CFD04                                            00010305
//*                                                                     00010306
//ZM3CFDE1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.REPROG,
//            DISP=SHR
//*
//ZM3CFDS1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.REPRO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*                                                                     00010320
//**********************************************************************00010200
//* PASO        : PRECF260                                             *00010301
//* OBJETIVO    : REALIZA CONVERSION DE CARACTER Ñ## POR ENIE          *00010302
//**********************************************************************00010304
//PRECF260 EXEC PGM=ZM3CFD04                                            00010305
//*                                                                     00010306
//ZM3CFDE1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.REPROG,
//            DISP=SHR
//*
//ZM3CFDS1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.REPRO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*                                                                     00010320
//**********************************************************************00010200
//* PASO        : PRECF250                                             *00010301
//* OBJETIVO    : REALIZA CONVERSION DE CARACTER Ñ## POR ENIE          *00010302
//**********************************************************************00010304
//PRECF250 EXEC PGM=ZM3CFD04                                            00010305
//*                                                                     00010306
//ZM3CFDE1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.REPROG,
//            DISP=SHR
//*
//ZM3CFDS1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.REPRO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*                                                                     00010320
//**********************************************************************00010200
//* PASO        : PRECF240                                             *00010301
//* OBJETIVO    : REALIZA CONVERSION DE CARACTER Ñ## POR ENIE          *00010302
//**********************************************************************00010304
//PRECF240 EXEC PGM=ZM3CFD04                                            00010305
//*                                                                     00010306
//ZM3CFDE1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.REPROG,
//            DISP=SHR
//*
//ZM3CFDS1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.REPRO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*                                                                     00010320
//**********************************************************************00010200
//* PASO        : PRECF230                                             *00010301
//* OBJETIVO    : REALIZA CONVERSION DE CARACTER Ñ## POR ENIE          *00010302
//**********************************************************************00010304
//PRECF230 EXEC PGM=ZM3CFD04                                            00010305
//*                                                                     00010306
//ZM3CFDE1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.REPROG,
//            DISP=SHR
//*
//ZM3CFDS1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.REPRO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*                                                                     00010320
//**********************************************************************00010200
//* PASO        : PRECF220                                             *00010301
//* OBJETIVO    : REALIZA CONVERSION DE CARACTER Ñ## POR ENIE          *00010302
//**********************************************************************00010304
//PRECF220 EXEC PGM=ZM3CFD04                                            00010305
//*                                                                     00010306
//ZM3CFDE1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.REPROG,
//            DISP=SHR
//*
//ZM3CFDS1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.REPRO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*                                                                     00010320
//**********************************************************************
//* PASO     : PRECF210                                                *
//* OBJETIVO : BORRA LOS ARCHIVOS DESPUES DE SER PROCESADOS DE MANERA  *
//*            CORRECTA.                                               *
//**********************************************************************
//PRECF210 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=X
//*
//SYSIN    DD  DUMMY
//DD1      DD  DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.REPROG,
//             DISP=(OLD,DELETE,DELETE)
//*
//SYSIN    DD  DUMMY
//DD1      DD  DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.REPROG,
//             DISP=(OLD,DELETE,DELETE)
//*
//SYSIN    DD  DUMMY
//DD1      DD  DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.REPROG,
//             DISP=(OLD,DELETE,DELETE)
//*
//SYSIN    DD  DUMMY
//DD1      DD  DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.REPROG,
//             DISP=(OLD,DELETE,DELETE)
//*
//SYSIN    DD  DUMMY
//DD1      DD  DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.REPROG,
//             DISP=(OLD,DELETE,DELETE)
//*
//SYSIN    DD  DUMMY
//DD1      DD  DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.REPROG,
//             DISP=(OLD,DELETE,DELETE)
//*
//*MJVG-F
//*********************************************************************
//*   PASO    : PRECF200                                               *
//*   OBJETIVO: ORDENA ARCHIVO DE CONTRATOS A CANCELAR                 *
//**********************************************************************
//PRECF200 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.ZMRECF01.RETIMBR.EDC,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.ZMRECF01.CUENTA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=21,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDB4003),DISP=SHR
//*
//*********************************************************************
//*   PASO    : PRECF190                                              *
//*   OBJETIVO: RETIMBRADO PIPES EDC SIMPR PATRIMONIAL CON NVOS NODOS *
//*             RELACIONADOS AL UUID CANCELADO.                       *
//*********************************************************************
//PRECF190 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ZM3MU501 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.REPRO,DISP=SHR
//*
//ZM3MU502 DD DSN=MXCP.ZM.FIX.EBCM.ZMRECF01.CUENTA,DISP=SHR
//*
//FDSALIDA DD DSN=MXCP.ZM.FIX.BPATR.SIIMPR.RETIM.MEDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=427,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE)
//*
//FDSALID3 DD DSN=MXCP.ZM.FIX.BPATR.SIIMP.SUSTITU,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=56,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCREC02),DISP=SHR
//*
//*********************************************************************
//*   PASO    : PRECF180                                              *
//*   OBJETIVO: RETIMBRADO PIPES EDC NOIMPR PATRIMONIAL CON NVOS NODOS*
//*             RELACIONADOS AL UUID CANCELADO.                       *
//*********************************************************************
//PRECF180 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ZM3MU501 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.REPRO,DISP=SHR
//*
//ZM3MU502 DD DSN=MXCP.ZM.FIX.EBCM.ZMRECF01.CUENTA,DISP=SHR
//*
//FDSALIDA DD DSN=MXCP.ZM.FIX.BPATR.NOIMPR.RETIM.MEDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=427,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE)
//*
//FDSALID3 DD DSN=MXCP.ZM.FIX.BPATR.NOIMP.SUSTITU,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=56,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCREC02),DISP=SHR
//*
//*********************************************************************
//*   PASO    : PRECF170                                              *
//*   OBJETIVO: RETIMBRADO PIPES EDC SIMPR PRIVADA CON NUEVOS NODOS   *
//*             RELACIONADOS AL UUID CANCELADO.                       *
//*********************************************************************
//PRECF170 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ZM3MU501 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.REPRO,DISP=SHR
//*
//ZM3MU502 DD DSN=MXCP.ZM.FIX.EBCM.ZMRECF01.CUENTA,DISP=SHR
//*
//FDSALIDA DD DSN=MXCP.ZM.FIX.BPRIV.SIIMPR.RETIM.MEDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=427,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE)
//*
//FDSALID3 DD DSN=MXCP.ZM.FIX.BPRIV.SIIMP.SUSTITU,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=56,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCREC02),DISP=SHR
//*
//*********************************************************************
//*   PASO    : PRECF160                                              *
//*   OBJETIVO: RETIMBRADO PIPES EDC NOIMPR PRIVADA CON NVOS NODOS    *
//*             RELACIONADOS AL UUID CANCELADO.                       *
//*********************************************************************
//PRECF160 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ZM3MU501 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.REPRO,DISP=SHR
//*
//ZM3MU502 DD DSN=MXCP.ZM.FIX.EBCM.ZMRECF01.CUENTA,DISP=SHR
//*
//FDSALIDA DD DSN=MXCP.ZM.FIX.BPRIV.NOIMPR.RETIM.MEDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=427,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE)
//*
//FDSALID3 DD DSN=MXCP.ZM.FIX.BPRIV.NOIMP.SUSTITU,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=56,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCREC02),DISP=SHR
//*
//*********************************************************************
//*   PASO    : PRECF150                                              *
//*   OBJETIVO: RETIMBRADO PIPES EDC SIMPR UHN CON NUEVOS NODOS       *
//*             RELACIONADOS AL UUID CANCELADO.                       *
//*********************************************************************
//PRECF150 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ZM3MU501 DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.REPRO,DISP=SHR
//*
//ZM3MU502 DD DSN=MXCP.ZM.FIX.EBCM.ZMRECF01.CUENTA,DISP=SHR
//*
//FDSALIDA DD DSN=MXCP.ZM.FIX.BUHN.SIIMPR.RETIM.MEDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=427,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE)
//*
//FDSALID3 DD DSN=MXCP.ZM.FIX.BUHN.SIIMP.SUSTITU,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=56,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCREC02),DISP=SHR
//*
//*********************************************************************
//*   PASO    : PRECF140                                              *
//*   OBJETIVO: RETIMBRADO PIPES EDC NOIMPR UHN CON NVOS NODOS        *
//*             RELACIONADOS AL UUID CANCELADO.                       *
//*********************************************************************
//PRECF140 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ZM3MU501 DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.REPRO,DISP=SHR
//*
//ZM3MU502 DD DSN=MXCP.ZM.FIX.EBCM.ZMRECF01.CUENTA,DISP=SHR
//*
//FDSALIDA DD DSN=MXCP.ZM.FIX.BUHN.NOIMPR.RETIM.MEDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=427,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE)
//*
//FDSALID3 DD DSN=MXCP.ZM.FIX.BUHN.NOIMP.SUSTITU,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=56,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCREC02),DISP=SHR
//*
//*********************************************************************
//*   PASO    : PRECF130                                              *
//*   OBJETIVO: CONSOLIDA LA INFORMACION DE LOS 6 ARCHIVOS RETIMBRADOS*
//*********************************************************************
//PRECF130 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DISP=SHR,DSN=MXCP.ZM.FIX.BPATR.SIIMP.SUSTITU
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.BPATR.NOIMP.SUSTITU
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.BPRIV.SIIMP.SUSTITU
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.BPRIV.NOIMP.SUSTITU
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.BUHN.SIIMP.SUSTITU
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.BUHN.NOIMP.SUSTITU
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCM.SUSTITU.UUID,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=56,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCREC08),DISP=SHR
//*
