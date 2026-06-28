//ZMUFPD99 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD99                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  CARGA DE TABLAS ZMDT804, ZMDT806                 *00090002
//*                                                                    *00090002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//**********************************************************************
//*         : COPIA DEL DE DB2                                         *
//**********************************************************************
//ZMUF9901 EXEC  PGM=ICEGENER
//SYSIN    DD  DUMMY
//SYSPRINT DD  SYSOUT=*
//SYSUT1   DD  DSN=MXBP.B2.VD07.PRODUSVP.ZMDT804.SYSREC,
//             DISP=SHR,BUFNO=30
//SYSUT2   DD  DSN=MXCP.ZM.FIX.ZMDT804.FMTOLD,
//             DISP=(NEW,CATLG,DELETE),BUFNO=30,
//             SPACE=(CYL,(1000,500),RLSE),UNIT=3390,
//             DCB=(RECFM=FB,LRECL=179,BLKSIZE=0,DSORG=PS)
//*
//**********************************************************************
//*         : COPIA DEL DE DB2                                         *
//**********************************************************************
//ZMUF9902 EXEC  PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD  DUMMY
//SYSPRINT DD  SYSOUT=*
//SYSUT1   DD  DSN=MXBP.B2.VD07.PRODUSVP.ZMDT806.SYSREC,
//             DISP=SHR,BUFNO=30
//SYSUT2   DD  DSN=MXCP.ZM.FIX.ZMDT806.FMTOLD,
//             DISP=(NEW,CATLG,DELETE),BUFNO=30,
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//             DCB=(RECFM=FB,LRECL=092,BLKSIZE=0,DSORG=PS)
//*
//**********************************************************************
//* PROGRAMA: ADUUMAIN
//* OBJETIVO: REALIZA LA DESCARGA DE LA TABLA ZMDT804
//**********************************************************************
//ZMUF9903  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMUF9903,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMUFPD99.UNLOAD.ZMDT804,
//            UNIT=3390,DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1000,500),RLSE),                              2),RLSE)
//            BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T15),DISP=SHR
//*SYSIN    DD DSN=XM07027.PO.CONTROL(ZUF03T15),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ADUUMAIN
//* OBJETIVO: REALIZA LA DESCARGA DE LA TABLA ZMDT806
//**********************************************************************
//ZMUF9904  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMUF9904,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMUFPD99.UNLOAD.ZMDT806,
//            UNIT=3390,DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),                                2),RLSE)
//            BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T16),DISP=SHR
//*SYSIN    DD DSN=XM07027.PO.CONTROL(ZUF03T16),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM3DUA99
//* OBJETIVO: REFORMATEA ZMDT804
//**********************************************************************
//ZMUF9905 EXEC PGM=ZM3DUA99,COND=(4,LT)                                00780700
//INP01    DD DSN=MXCP.ZM.FIX.ZMDT804.FMTOLD,                           00006200
//            DISP=SHR
//OUT01    DD DSN=MXCP.ZM.FIX.ZMDT804.FMTNEW,                           00006200
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,                         00006300
//            SPACE=(CYL,(1000,500),RLSE),                              YL,(4,2)
//            DCB=(RECFM=FB,LRECL=204,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSTSPRT DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSOUT   DD SYSOUT=*                                                  00780900
//*                                                                    *00780300
//**********************************************************************
//* PROGRAMA: ZM3DUA98
//* OBJETIVO: REFORMATEA ZMDT806
//**********************************************************************
//ZMUF9906 EXEC PGM=ZM3DUA98,COND=(4,LT)                                00780700
//INP01    DD DSN=MXCP.ZM.FIX.ZMDT806.FMTOLD,                           00006200
//            DISP=SHR
//OUT01    DD DSN=MXCP.ZM.FIX.ZMDT806.FMTNEW,                           00006200
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,                         00006300
//            SPACE=(CYL,(100,50),RLSE),                                YL,(4,2)
//            DCB=(RECFM=FB,LRECL=98,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSTSPRT DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSOUT   DD SYSOUT=*                                                  00780900
//*                                                                    *00780300
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: RESPALDA LA TABLA ZMDT804
//**********************************************************************
//ZMUF9907 EXEC PGM=AMUUMAIN,COND=(4,LT),                               00781000
//         PARM='MXP1,ZMUF9907,NEW,,MSGLEVEL(1)'                        00781100
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.LOAD                                 00781300
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT                       00780900
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00781400
//SYSREC1  DD DSN=MXCP.ZM.FIX.ZMDT804.FMTNEW,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ZMUFPD99.UNLOAD.ZMDT804,
//            DISP=SHR
//SYSUT1   DD DSN=MXCP.ZM.FIX.ZMUFPD99.T804.SYSUT01,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(100,50),RLSE),                                4,2),CYL
//            UNIT=3390
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMUFPD99.T804.SYSERR,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(100,50),RLSE),                                4,2),CYL
//            UNIT=3390
//SYSERR   DD DSN=MXCP.ZM.FIX.ZMUFPD99.T804.SORTOUT,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(100,50),RLSE),                                4,2),CYL
//            UNIT=3390
//ABNLIGNR DD DUMMY
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T20),DISP=SHR
//*SYSIN    DD DSN=XM07027.PO.CONTROL(ZUF03T20),DISP=SHR
//*                                                                    *00780300
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: RESPALDA LA TABLA ZMDT806
//**********************************************************************
//ZMUF9908 EXEC PGM=AMUUMAIN,COND=(4,LT),                               00781000
//         PARM='MXP1,ZMUF9908,NEW,,MSGLEVEL(1)'                        00781100
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.LOAD                                 00781300
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT                       00780900
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00781400
//SYSREC2  DD DSN=MXCP.ZM.FIX.ZMDT806.FMTNEW,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ZMUFPD99.UNLOAD.ZMDT806,
//            DISP=SHR
//SYSUT1   DD DSN=MXCP.ZM.FIX.ZMUFPD99.T806.SYSUT01,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(100,50),RLSE),                                4,2),CYL
//            UNIT=3390
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMUFPD99.T806.SYSERR,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(100,50),RLSE),                                4,2),CYL
//            UNIT=3390
//SYSERR   DD DSN=MXCP.ZM.FIX.ZMUFPD99.T806.SORTOUT,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(100,50),RLSE),                                4,2),CYL
//            UNIT=3390
//ABNLIGNR DD DUMMY
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T22),DISP=SHR
//*SYSIN    DD DSN=XM07027.PO.CONTROL(ZUF03T22),DISP=SHR
//*                                                                    *00780300
//**********************************************************************
