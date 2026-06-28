//ZMCFSI01  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : SIVA - MULTIEMPRESA                                  *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMCFSI01                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//*     DESCARGA DE LA TABLA PRECIO Y CONCEPT DE LAS EMISORAS QUE      *
//*          CORRESPONDAN A SU PRECIO FISCAL IGUAL A CERO              *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*====================================================================*
//* PASO     : ZHCFI010                                                *
//* PROGRAMA : IKJEFT01/ZM4CSIP1
//* OBJETIVO : OBTENER ARCHIVO CON LAS EMISORAS DE PRECIO FISCAL = 0   *
//*====================================================================*
//ZHCFI050 EXEC PGM=IKJEFT01
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.SIFI.SOIN.PRCIO.CONCEPT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=25,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCFI010),DISP=SHR
//*====================================================================*
//* PASO     : ZHCFI009                                                *
//* PROGRAMA : ICEMAN
//* OBJETIVO : ELIMINA REGISTROS DUPLICADOS                            *
//*====================================================================*
//ZHCFI009 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SIFI.SOIN.PRCIO.CONCEPT,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SIFI.SOIN.PRCIO.CONCEPF,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=25,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCFI009),DISP=SHR
//*
//*====================================================================*
//* PASO     : ZHCFI008                                                *
//* PROGRAMA : ZM4CSIP2                                                *
//* OBJETIVO : CARGA A LA TABLA ZMDTSIC EMISORAS CON PRECIO FISCAL     *
//*====================================================================*
//ZHCFI008 EXEC PGM=IKJEFT01,COND=(4,LT)                                01130000
//E1DQRAUM DD DSN=MXCP.ZM.FIX.SIFI.SOIN.PRCIO.CONCEPF,DISP=SHR          01220000
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCFI008),DISP=SHR
//*====================================================================*
//* PASO     : ZHCFI007                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDTSIC <> P                       *
//*====================================================================*
//ZHCFI007 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00015400
//         PARM='MXP1,D&EMP,NEW/RESTART,,MSGLEVEL(1)'                   00015500
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00015600
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT                       00015700
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00015800
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESC.ZMDT.SIC00.PREFISC,                  00016200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00016300
//            DCB=(DSORG=PS,LRECL=21,RECFM=FB,BLKSIZE=0),               00016400
//            SPACE=(CYL,(80,40),RLSE)                                  00016500
//*
//SYSCNTL  DD DUMMY                                                     00024000
//*
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCFI007),DISP=SHR                   00016600
//*
//*====================================================================*
//* PASO     : ZHCFI006                                                *
//* PROGRAMA : ZM4CSIPF                                                *
//* OBJETIVO : PROCESAR ARCHIVO DEL PASO ZHCFI007.                     *
//*====================================================================*
//ZHCFI006 EXEC PGM=IKJEFT01,COND=(4,LT)                                01130000
//DESTSIC  DD DSN=MXCP.ZM.FIX.DESC.ZMDT.SIC00.PREFISC,DISP=SHR          01220000
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCFI006),DISP=SHR
//**********************************************************************
//**********************************************************************
