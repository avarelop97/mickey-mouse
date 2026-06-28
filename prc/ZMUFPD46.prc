//ZMUFPD46 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD46                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  DESCARGA DE TABLAS ZMT804, ZMDT806 Y ZMDT811     *00090002
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
//**********************************************************************00240002
//*
//**********************************************************************
//* PROGRAMA: ADUUMAIN
//* OBJETIVO: REALIZA LA DESCARGA DE LA TABLA ZMDT804
//**********************************************************************
//ZMUF46P1  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMUF46P1,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZM4DUA07.DESCA804,
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),DISP=(NEW,CATLG,DELETE),
//*           DCB=(RECFM=FB,LRECL=179,BLKSIZE=0,DSORG=PS)
//            BLKSIZE=0
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T15),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T15),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ADUUMAIN
//* OBJETIVO: REALIZA LA DESCARGA DE LA TABLA ZMDT806
//**********************************************************************
//ZMUF46P2  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMUF46P2,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZM4DUA08.DESCA806,
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),DISP=(NEW,CATLG,DELETE),
//*           DCB=(RECFM=FB,LRECL=92,BLKSIZE=0,DSORG=PS)
//            BLKSIZE=0
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T16),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T16),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ADUUMAIN
//* OBJETIVO: REALIZA LA DESCARGA DE LA TABLA ZMDT811
//**********************************************************************
//ZMUF46P3  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMUF46P2,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZM4DUA08.DESCA811,
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),DISP=(NEW,CATLG,DELETE),
//            BLKSIZE=0
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T12),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T12),DISP=SHR
//*
