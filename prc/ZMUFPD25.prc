//ZMUFPD25 PROC                                                         00010002
//*********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD25                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  ACTUALIZA EL ESTADO GENERAL DEL CONTRATO EN LAS  *00090002
//*                   TABLAS ZMDT802, ZMDT803 Y ZMDT804                *00090002
//* CORRE                                                              *00110002
//* ANTES DE       :  BCUFND18 Y BCUTND10                              *00120002
//*                                                                    *00130002
//* DESPUES DE     :  BCUFND05                                         *00140002
//*                                                                    *00150002
//* REALIZACION    :  SOFTTEK                             JUL/2017     *00160002
//*       ZUF03T14                                                     *00170002
//*********************************************************************00240002
//*
//*********************************************************************00240002
//*                  LOG DE MODIFICACIONES                             *
//**********************************************************************
//* MARCA    AUTOR   FECHA             DESCRIPCION                     *
//* ------- ------- ------- -------------------------------------------*
//*           RRT    AGO-2017    SE ADICIONA DESCARGA DE ZMDT802 Y     *
//*                              ZMDT802 SE ORDENAN LOS DATOS          *
//**********************************************************************
//* PROGRAMA: ADUUMAIN
//* OBJETIVO: REALIZA LA DESCARGA DE LA TABLA ZMDT802
//**********************************************************************
//ZMUF2508 EXEC PGM=ADUUMAIN,
//          PARM='MXP1,ZMUF2507,NEW,,MSGLEVEL(1)'
//*
//STEPLIB DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZM4DU.ZMDT802,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMUF2508),DISP=SHR
//*
//*********************************************************************
//*PROGRAMA: ADUUMAIN
//*OBJETIVO: REALIZA LA DESCARGA DE LA TABLA ZMDT803
//*********************************************************************
//ZMUF2507 EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMUF2507,NEW,,MSGLEVEL(1)'
//*
//STEPLIB DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZM4DU.ZMDT803,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMUF2507),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4DUB10
//* OBJETIVO: OBTIENE EL ESTADO GENERAL DEL CONTRATO Y
//*           GENERA ARCHIVO DE ZMDT802
//**********************************************************************
//ZMUF2506 EXEC PGM=IKJEFT1A,COND=(4,LT)
//E1DUB10 DD DSN=MXCP.ZM.FIX.ZM4DU.ZMDT802,
//            DISP=SHR
//S1DUB10 DD DSN=MXCP.ZM.FIX.ZM4DUB10.ZMDT802,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=60,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,100),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZMUF2506),DISP=SHR
//*                                                                    *
//*********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO ZMDT802
//*
//*********************************************************************
//ZMUF2505 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4DUB10.ZMDT802,
//            DISP=SHR
//SORTOUT DD DSN=MXCP.ZM.FIX.ZM4DUB10.ZMDT802.S1,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=60,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMUF2505),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO ZMDT802
//*
//*********************************************************************
//ZMUF25A5 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4DU.ZMDT802,
//            DISP=SHR
//SORTOUT DD DSN=MXCP.ZM.FIX.ZM4DU.ZMDT802.S1,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=22,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMUF25A5),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PROGRAMA: ZM4DUB20
//* OBJETIVO: OBTIENE EL ESTADO GENERAL DEL CONTRATO Y
//*           GENERA ARCHIVO DE ZMDT802
//**********************************************************************
//ZMUF2504 EXEC PGM=IKJEFT1A,COND=(4,LT)
//E1DUB20 DD DSN=MXCP.ZM.FIX.ZM4DU.ZMDT802.S1,
//            DISP=SHR
//E2DUB20 DD DSN=MXCP.ZM.FIX.ZM4DUB10.ZMDT802.S1,
//            DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZMUF2504),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4DUB30
//* OBJETIVO: OBTIENE EL ESTADO GENERAL DEL CONTRATO Y
//*           GENERA ARCHIVO DE ZMDT803
//**********************************************************************
//ZMUF2503 EXEC PGM=IKJEFT1A,COND=(4,LT)
//E1DUB30 DD DSN=MXCP.ZM.FIX.ZM4DU.ZMDT803,
//            DISP=SHR
//S1DUB30 DD DSN=MXCP.ZM.FIX.ZM4DUB30.ZMDT803,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=60,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,100),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZMUF2503),DISP=SHR
//*
//*********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO ZMDT803
//*
//*********************************************************************
//ZMUF2502 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4DUB30.ZMDT803,
//            DISP=SHR
//SORTOUT DD DSN=MXCP.ZM.FIX.ZM4DUB30.ZMDT803.S1,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=60,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMUF2502),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO ZMDT803
//*
//*********************************************************************
//ZMUF25A2 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4DU.ZMDT803,
//            DISP=SHR
//SORTOUT DD DSN=MXCP.ZM.FIX.ZM4DU.ZMDT803.S1,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=18,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMUF25A2),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PROGRAMA: ZM3DUB40
//* OBJETIVO: OBTIENE EL ESTADO GENERAL DEL CONTRATO Y
//*           GENERA ARCHIVO DE ZMDT803
//**********************************************************************
//ZMUF2501 EXEC PGM=ZM3DUB40,COND=(4,LT)
//E1DUB40 DD DSN=MXCP.ZM.FIX.ZM4DUB30.ZMDT803.S1,
//            DISP=SHR
//S1DUB40 DD DSN=MXCP.ZM.FIX.ZM4DUB30.ZMDT803.S2,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=60,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,100),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* PROGRAMA: ZM4DUB50
//* OBJETIVO: OBTIENE EL ESTADO GENERAL DEL CONTRATO Y
//*           ACTUALIZA ZMDT803
//**********************************************************************
//ZMUF2500 EXEC PGM=IKJEFT1A,COND=(4,LT)
//E1DUB50 DD DSN=MXCP.ZM.FIX.ZM4DU.ZMDT803.S1,
//            DISP=SHR
//E2DUB50 DD DSN=MXCP.ZM.FIX.ZM4DUB30.ZMDT803.S2,
//            DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZMUF2500),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4DUB80
//* OBJETIVO: ACTUALIZA ESTADO GENERAL DEL CONTRATO EN ZMDT804
//**********************************************************************
//ZMUF25A0 EXEC PGM=IKJEFT1A,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZMUF25A0),DISP=SHR
//
