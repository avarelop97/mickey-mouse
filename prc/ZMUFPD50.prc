//ZMUFPD50 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD50                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  CARGA DE TABLAS ZMDT809                          *00090002
//*                                                                    *00090002
//*                                                                    *00090002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NINGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  GESFOR MEXICO (GCC-MVD) 26/FEB/2010              *00160002
//*                                                                    *00170002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: RESPALDA LA TABLA ZMDT809
//**********************************************************************
//ZMUF50P1 EXEC PGM=AMUUMAIN,COND=(4,LT),                               00781000
//         PARM='MXD1,ZMUF50P1,NEW,,MSGLEVEL(1)'                        00781100
//*                                                                     00781200
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00781300
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT                       00780900
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00781400
//*
//SYSREC1  DD DSN=MXCP.ZM.FIX.ZM4DUA12.CARGA809.ESTRUC,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ZM4DUA12.CARGA809,
//            DISP=SHR
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ZM4DUA12.C809.SYSUT01,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(050,025),RLSE),
//            UNIT=3390
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZM4DUA12.C809.SYSERR,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(050,025),RLSE),
//            UNIT=3390
//SYSERR   DD DSN=MXCP.ZM.TMP.ZM4DUA12.C809.SORTOUT,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(050,025),RLSE),
//            UNIT=3390
//ABNLIGNR DD DUMMY
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T24),DISP=SHR
//*                                                                    *00780300
