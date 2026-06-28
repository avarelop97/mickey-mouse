//ZMUFPD48 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD48                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  CARGA DE TABLAS ZMDT804, ZMDT806 Y ZMDT811       *00090002
//*                                                                    *00090002
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
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: RESPALDA LA TABLA ZMDT804
//**********************************************************************
//ZMUF48P1 EXEC PGM=AMUUMAIN,COND=(4,LT),                               00781000
//         PARM='MXP1,ZMUF48P1,NEW,,MSGLEVEL(1)'                        00781100
//*                                                                     00781200
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00781300
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT                       00780900
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00781400
//*
//*YSREC1  DD DSN=MXCP.ZM.FIX.ZM4DUA07.DESCA804,
//SYSREC1  DD DSN=MXCP.ZM.FIX.ZM3DUA07.MENOR,
//            DISP=SHR
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ZM3DUA07.C804.SYSUT01,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(050,025),RLSE),
//            UNIT=3390
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZM3DUA07.C804.SYSERR,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(050,025),RLSE),
//            UNIT=3390
//SYSERR   DD DSN=MXCP.ZM.TMP.ZM3DUA07.C804.SORTOUT,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(050,025),RLSE),
//            UNIT=3390
//ABNLIGNR DD DUMMY
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T20),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T20),DISP=SHR
//*                                                                    *00780300
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: RESPALDA LA TABLA ZMDT806
//**********************************************************************
//ZMUF48P2 EXEC PGM=AMUUMAIN,COND=(4,LT),                               00781000
//         PARM='MXP1,ZMUF48P2,NEW,,MSGLEVEL(1)'                        00781100
//*                                                                     00781200
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00781300
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT                       00780900
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00781400
//*
//*YSREC2  DD DSN=MXCP.ZM.FIX.ZM4DUA08.DESCA806,
//SYSREC2  DD DSN=MXCP.ZM.FIX.ZM3DUA08.MENOR,
//            DISP=SHR
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ZM3DUA08.C806.SYSUT01,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(050,025),RLSE),
//            UNIT=3390
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZM3DUA08.C806.SYSERR,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(050,025),RLSE),
//            UNIT=3390
//SYSERR   DD DSN=MXCP.ZM.TMP.ZM3DUA08.C806.SORTOUT,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(050,025),RLSE),
//            UNIT=3390
//ABNLIGNR DD DUMMY
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T22),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T22),DISP=SHR
//*                                                                    *00780300
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: RESPALDA LA TABLA ZMDT811
//**********************************************************************
//ZMUF48P3 EXEC PGM=AMUUMAIN,COND=(4,LT),                               00781000
//         PARM='MXP1,ZMUF48P3,NEW,,MSGLEVEL(1)'                        00781100
//*                                                                     00781200
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00781300
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT                       00780900
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00781400
//*
//*YSREC2  DD DSN=MXCP.ZM.FIX.ZM4DUA08.DESCA811,
//SYSREC2  DD DSN=MXCP.ZM.FIX.ZM3DUA09.MENOR,
//            DISP=SHR
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ZM3DUA09.C811.SYSUT01,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(050,025),RLSE),
//            UNIT=3390
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZM3DUA09.C811.SYSERR,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(050,025),RLSE),
//            UNIT=3390
//SYSERR   DD DSN=MXCP.ZM.TMP.ZM3DUA09.C811.SORTOUT,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(050,025),RLSE),
//            UNIT=3390
//ABNLIGNR DD DUMMY
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T29),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T29),DISP=SHR
//*                                                                    *00780300
