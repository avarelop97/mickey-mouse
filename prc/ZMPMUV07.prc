//ZMPMUV07 PROC
//**********************************************************************
//* SISTEMA  : ZM  MUV                                                 *
//*                                                                    *
//* PROCESO  : ZMPMUV07                                                *
//*                                                                    *
//* OBJETIVO : GENERA EL ACUMULADO DE MESES PARA EL SAT                *
//*            APLICATIVO: FONDOS DE INVERSION MUV                     *
//*            GENERA ARCHIVO DEL MES DE ENERO AL MES DE DICIEMBRE     *
//* FECHA    : AGOSTO 2017                                             *
//**********************************************************************
//*********************************************************************
//* PASO     : ZMPCM024
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU24 EXEC PGM=ICEMAN
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVMD.ENE,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.ENE,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPCM023
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPWMU23  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.ENE,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.SAT.VECTOR.VACIO.MUV,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.ENE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPCM022
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU22 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVMD.FEB,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.FEB,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPCM021
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPWMU21  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.FEB,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.ENE,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.FEB,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPCM020
//*                *********   MARZO    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU20 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVMD.MAR,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.MAR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPCM019
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPWMU19  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.MAR,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.FEB,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.MAR,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPCM018
//*                *********   ABRIL    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU18 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVMD.ABR,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.ABR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPCM017
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPWMU17  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.ABR,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.MAR,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.ABR,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPCM016
//*                *********   MAYO     ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU16 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVMD.MAY,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.MAY,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPCM015
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPWMU15  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.MAY,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.ABR,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.MAY,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPCM014
//*                *********   JUNIO    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU14 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVMD.JUN,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.JUN,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPCM013
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPWMU13  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.JUN,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.MAY,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.JUN,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPCM012
//*                *********   JULIO    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU12 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVMD.JUL,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.JUL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPCM011
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPWMU11  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.JUL,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.JUN,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.JUL,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPCM010
//*                *********   AGOSTO   ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU10 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVMD.AGO,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.AGO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPCM009
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPWMU09  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.AGO,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.JUL,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.AGO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPCM008
//*                *********   SEPTIEMBRE ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU08 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVMD.SEP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.SEP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPCM007
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPWMU07  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.SEP,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.AGO,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.SEP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPCM006
//*                *********   OCTUBRE    ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU06 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVMD.OCT,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.OCT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPCM005
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPWMU05  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.OCT,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.SEP,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.OCT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPCM004
//*                *********   NOVIEMBRE  ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU04 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVMD.NOV,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.NOV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPCM003
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPWMU03  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.NOV,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.OCT,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.NOV,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : ZMPCM002
//*                *********   DICIEMBRE  ************
//* PROGRAMA : ICEMAN
//*********************************************************************
//ZMPWMU02 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SAT.MUVMD.DIC,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.DIC,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=242,DSORG=PS,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPWMU04),
//            DISP=SHR
//*
//*********************************************************************
//* PASO     : ZMPCM001
//* PROGRAMA : ZM3MU012
//*********************************************************************
//ZMPWMU01  EXEC PGM=ZM3MU012,COND=(4,LT)
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//MISPRODU  DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SORT.DIC,
//             DISP=SHR
//MISSAT    DD DSN=MXCP.ZM.FIX.ZMPMUV07.INVOK.SAT.NOV,
//             DISP=SHR
//MISNVO    DD DSN=MXCP.ZM.FIX.VECTOR.MUV09.MERCAP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(RECFM=FB,LRECL=201,BLKSIZE=0,DSORG=PS)
//*
