//ZMUFPD45 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD45                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  CARGA DE TABLAS ZMDT802, ZMDT803, ZMDT805,       *00090002
//*                   ZMDT809                                          *00090002
//*                                                                    *00090002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NINGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  SOFTWARE FACTORY STEFANINI (PGR) 08/ENE/2010     *00160002
//*                                                                    *00170002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-2.2.0-19  CAPGEMI 03ENE12  SE AGREGAN LOS PASOS ZMUF45P4 Y      *
//*                               ZMUF45P0.SE MODIFICAN LA NOMENCLATURA*
//*                               DEL RESTO DE LOS PASOS EXISTINES     *
//*                                                                    *
//* @JSM-01      XMY4584 14JUN18  SE MODIFICA LONGITUD DE ARCHIVO, CTC *
//*                               ZUF04T39, ZUF03T18 Y ZUF03T19  POR   *
//*                               3 NUEVOS MERCADOS: PCA, GEF Y CRE.   *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- -------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* FS-2.2.0-19-INI
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: COPIA FICHERO Y RECORTA LA UGESTORA                      *
//**********************************************************************
//ZMUF45P6 EXEC PGM=ICEMAN
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM3DUA13.CARGA802.MODELO,
//            DISP=SHR
//MODELO1  DD DSN=MXCP.ZM.FIX.ZM3DUA13.CARGA802.MODELO1,
//            DISP=(NEW,CATLG,DELETE),BUFNO=30,
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE),
//*@JSM-01-I
//*           DCB=(LRECL=300,RECFM=FB,BLKSIZE=0,DSORG=PS)
//            DCB=(LRECL=381,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF04T39),DISP=SHR
//SYSOUT   DD SYSOUT=*
//* FS-2.2.0-19-FIN
//*
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: RESPALDA LA TABLA ZMDT802
//**********************************************************************
//ZMUF45P5 EXEC MBMCLOAD,COND=(4,LT),                                   00120000
//         SYSTEM=MXP1,                                                 00210000
//         UID=CBJLPD45.ZMDT802,                                        00210000
//         ENTORNO=PRODUSVP,                                            00210000
//         NOMTAB=ZMDT802,                                              00210000
//         OPTION=REPLACE,                                              00210000
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZUF03T18),                       00210000
//         INPREC=DSN=MXCP.ZM.FIX.ZM3DUA13.CARGA802.MODELO1             00210000
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: RESPALDA LA TABLA ZMDT803
//**********************************************************************
//ZMUF45P4 EXEC MBMCLOAD,COND=(4,LT),                                   00120000
//         SYSTEM=MXP1,                                                 00210000
//         UID=CBJLPD45.ZMDT803,                                        00210000
//         ENTORNO=PRODUSVP,                                            00210000
//         NOMTAB=ZMDT803,                                              00210000
//         OPTION=REPLACE,                                              00210000
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZUF03T19),                       00210000
//         INPREC=DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA803                     00210000
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: RESPALDA LA TABLA ZMDT803
//**********************************************************************
//ZMUF45P3 EXEC MBMCLOAD,COND=(4,LT),                                   00120000
//         SYSTEM=MXP1,                                                 00210000
//         UID=CBJLPD45.ZMDT803,                                        00210000
//         ENTORNO=PRODUSVP,                                            00210000
//         NOMTAB=ZMDT803,                                              00210000
//         OPTION=RESUME,                                               00210000
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZUF03T19),                       00210000
//         INPREC=DSN=MXCP.ZM.FIX.ZM3DUA06.CARGA803.EXTRA1              00210000
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: RESPALDA LA TABLA ZMDT803
//**********************************************************************
//ZMUF45P2 EXEC MBMCLOAD,COND=(4,LT),                                   00120000
//         SYSTEM=MXP1,                                                 00210000
//         UID=CBJLPD45.ZMDT803,                                        00210000
//         ENTORNO=PRODUSVP,                                            00210000
//         NOMTAB=ZMDT803,                                              00210000
//         OPTION=RESUME,                                               00210000
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZUF03T19),                       00210000
//         INPREC=DSN=MXCP.ZM.FIX.ZM3DUA06.CARGA803.EXTRA2              00210000
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: RESPALDA LA TABLA ZMDT803
//**********************************************************************
//*ZMUF45P2 EXEC PGM=AMUUMAIN,COND=(4,LT),                              00781000
//*         PARM='MXP1,ZMUF45P2,NEW,,MSGLEVEL(1)'                       00781100
//*                                                                     00781200
//*STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                           00781300
//*         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT                      00780900
//*         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                      00781400
//*ECM-MODIFICACION
//*SYSREC2  DD DSN=MXCP.ZM.FIX.ZM4DUA04.CARGA803,
//*SYSREC2  DD DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA803,
//*            DISP=SHR
//*         DD DSN=MXCP.ZM.FIX.ZM3DUA06.CARGA803.EXTRA1,DISP=SHR
//*         DD DSN=MXCP.ZM.FIX.ZM3DUA06.CARGA803.EXTRA2,DISP=SHR
//*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.ZM4DUA04.C803.SYSUT01,
//*           DISP=(NEW,CATLG,CATLG),
//*           SPACE=(CYL,(050,025),RLSE),
//*           UNIT=3390,
//*           DCB=(BLKSIZE=0)
//*SORTOUT  DD DSN=MXCP.ZM.TMP.ZM4DUA04.C803.SYSERR,
//*           DISP=(NEW,CATLG,CATLG),
//*           SPACE=(CYL,(050,025),RLSE),
//*           UNIT=3390,
//*           DCB=(BLKSIZE=0)
//*SYSERR   DD DSN=MXCP.ZM.TMP.ZM4DUA04.C803.SORTOUT,
//*           DISP=(NEW,CATLG,CATLG),
//*           SPACE=(CYL,(050,025),RLSE),
//*           UNIT=3390,
//*           DCB=(BLKSIZE=0)
//*ABNLIGNR DD DUMMY
//*SYSTSPRT DD SYSOUT=*
//*UTPRINT  DD SYSOUT=*
//*SYSUDUMP DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T19),DISP=SHR
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T19),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: RESPALDA LA TABLA ZMDT805
//**********************************************************************
//ZMUF45PA EXEC MBMCLOAD,COND=(4,LT),                                   00120000
//         SYSTEM=MXP1,                                                 00210000
//         UID=CBJLPD45.ZMDT805,                                        00210000
//         ENTORNO=PRODUSVP,                                            00210000
//         NOMTAB=ZMDT805,                                              00210000
//         OPTION=REPLACE,                                              00210000
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZUF03T21),                       00210000
//         INPREC=DSN=MXCP.ZM.FIX.ZM3DUA05.CARGA805                     00210000
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: RESPALDA LA TABLA ZMDT805
//**********************************************************************
//ZMUF45P1 EXEC MBMCLOAD,COND=(4,LT),                                   00120000
//         SYSTEM=MXP1,                                                 00210000
//         UID=CBJLPD45.ZMDT805,                                        00210000
//         ENTORNO=PRODUSVP,                                            00210000
//         NOMTAB=ZMDT805,                                              00210000
//         OPTION=RESUME,                                               00210000
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZUF03T21),                       00210000
//         INPREC=DSN=MXCP.ZM.FIX.ZM3DUA05.CARGA805.AMBAS               00210000
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: RESPALDA LA TABLA ZMDT805
//**********************************************************************
//*ZMUF45P1 EXEC PGM=AMUUMAIN,COND=(4,LT),                              00781000
//*         PARM='MXP1,ZMUF45P1,NEW,,MSGLEVEL(1)'                       00781100
//*                                                                     00781200
//*STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                           00781300
//*        DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT                       00780900
//*        DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00781400
//*
//*SYSREC3  DD DSN=MXCP.ZM.FIX.ZM3DUA05.CARGA805,
//*           DISP=SHR
//*        DD DSN=MXCP.ZM.FIX.ZM3DUA05.CARGA805.AMBAS,
//*           DISP=SHR
//*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.ZM3DUA05.C805.SYSUT01,
//*           DISP=(NEW,CATLG,CATLG),
//*           SPACE=(CYL,(050,025),RLSE),
//*           UNIT=3390,
//*           DCB=(BLKSIZE=0)
//*SORTOUT  DD DSN=MXCP.ZM.TMP.ZM3DUA05.C805.SYSERR,
//*           DISP=(NEW,CATLG,CATLG),
//*           SPACE=(CYL,(050,025),RLSE),
//*           UNIT=3390,
//*           DCB=(BLKSIZE=0)
//*SYSERR   DD DSN=MXCP.ZM.TMP.ZM3DUA05.C805.SORTOUT,
//*           DISP=(NEW,CATLG,CATLG),
//*           SPACE=(CYL,(050,025),RLSE),
//*           UNIT=3390,
//*           DCB=(BLKSIZE=0)
//*ABNLIGNR DD DUMMY
//*SYSTSPRT DD SYSOUT=*
//*UTPRINT  DD SYSOUT=*
//*SYSUDUMP DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T21),DISP=SHR
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T21),DISP=SHR
//*FS-2.2.0-19-INI
//*                                                                    *00780300
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: RESPALDA LA TABLA ZMDT809
//**********************************************************************
//ZMUF45P0 EXEC MBMCLOAD,COND=(4,LT),                                   00120000
//         SYSTEM=MXP1,                                                 00210000
//         UID=CBJLPD45.ZMDT809,                                        00210000
//         ENTORNO=PRODUSVP,                                            00210000
//         NOMTAB=ZMDT809,                                              00210000
//         OPTION=REPLACE,                                              00210000
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZUF03T24),                       00210000
//         INPREC=DSN=MXCP.ZM.TMP.ZM4DUA12.CARGA809.SINDUP              00210000
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: RESPALDA LA TABLA ZMDT809
//**********************************************************************
//*ZMUF45P0 EXEC PGM=AMUUMAIN,COND=(4,LT),                              00781000
//*        PARM='MXP1,ZMUF45P0,NEW,,MSGLEVEL(1)'                        00781100
//*                                                                     00781200
//*STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                           00781300
//*        DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT                       00780900
//*        DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00781400
//*
//*SYSREC1  DD DSN=MXCP.ZM.TMP.ZM4DUA12.CARGA809.SINDUP,
//*           DISP=SHR
//*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.ZM4DUA12.C809.SYSUT01,
//*           DISP=(NEW,CATLG,CATLG),
//*           SPACE=(CYL,(050,025),RLSE),
//*           UNIT=3390,
//*           DCB=(BLKSIZE=0)
//*SORTOUT  DD DSN=MXCP.ZM.TMP.ZM4DUA12.C809.SYSERR,
//*           DISP=(NEW,CATLG,CATLG),
//*           SPACE=(CYL,(050,025),RLSE),
//*           UNIT=3390,
//*           DCB=(BLKSIZE=0)
//*SYSERR   DD DSN=MXCP.ZM.TMP.ZM4DUA12.C809.SORTOUT,
//*           DISP=(NEW,CATLG,CATLG),
//*           SPACE=(CYL,(050,025),RLSE),
//*           UNIT=3390,
//*           DCB=(BLKSIZE=0)
//*ABNLIGNR DD DUMMY
//*SYSTSPRT DD SYSOUT=*
//*UTPRINT  DD SYSOUT=*
//*SYSUDUMP DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T24),DISP=SHR
//*FS-2.2.0-19-FIN
//*                                                                    *00780300
