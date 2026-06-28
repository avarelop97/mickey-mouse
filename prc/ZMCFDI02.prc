//ZMCFDI02 PROC
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI01                                              *
//* OBJETIVO   : SORT ARCHIVO SELLOS                                   *
//*--------------------------------------------------------------------*
//PHCFDI01 EXEC PGM=ICEMAN
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.SELLOMDC,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.CFDI.SELLOS.FSS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=1044,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCF2T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI02                                              *
//* OBJETIVO   : SORT ARCHIVO ADM.FS                                   *
//*--------------------------------------------------------------------*
//*PHCFDI02 EXEC PGM=ICEMAN,COND=(4,LT)
//*SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.CFDI.ADMMEDC.FS,DISP=SHR
//*SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.CFDI.ADMMEDC.FSS,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=2850,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*SYSOUT   DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCF2T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI03                                              *
//* OBJETIVO   : GENERA ARCHIVOS SELLOS ZM4CFDI5 ANTES ZM3DSB04        *
//*--------------------------------------------------------------------*
//PHCFDI03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ZM4ECE01 DD DSN=MXCP.ZM.FIX.EBCM.CFDI.ADMMEDC.FSS,DISP=SHR
//ZM4ECE02 DD DSN=MXCP.ZM.FIX.EBCM.CFDI.SELLOS.FSS,DISP=SHR
//*FDSALIDA DD DSN=MXCP.ZM.FIX.EBCM.CFDI.SELLOS.CORR,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=29780,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*FDSALIDB DD DSN=MXCP.ZM.FIX.EBCM.CFDI.SELLOS.PRES,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=29780,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCF2T03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI04                                              *
//* OBJETIVO   : SORT ARCHIVO SELLOS CORR                              *
//*--------------------------------------------------------------------*
//*PHCFDI04 EXEC PGM=ICEMAN,COND=(4,LT)
//*SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.CFDI.SELLOS.CORR,DISP=SHR
//*SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.CFDI.SELLOS.CORR.FS,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=29780,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*SYSOUT   DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCF2T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI05                                              *
//* OBJETIVO   : SORT ARCHIVO SELLOS PRES                              *
//*--------------------------------------------------------------------*
//*PHCFDI05 EXEC PGM=ICEMAN,COND=(4,LT)
//*SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.CFDI.SELLOS.PRES,DISP=SHR
//*SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.CFDI.SELLOS.PRES.FS,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=29780,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*SYSOUT   DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCF2T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI06                                              *
//* OBJETIVO   : SELLOS CORREO (ALINEACION IZQ)                        *
//*                      -- ZM4CFDI3 --                                *
//*--------------------------------------------------------------------*
//*PHCFDI06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ZMCFDIA1 DD DSN=MXCP.ZM.FIX.EBCM.CFDI.SELLOS.CORR.FS,DISP=SHR
//*
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCF2T06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI07                                              *
//* OBJETIVO   : SELLOS  PRESNTE (ALINEACION IZQ)                      *
//*                      -- ZM4CFDI3 --                                *
//*--------------------------------------------------------------------*
//*PHCFDI07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ZMCFDIA1 DD DSN=MXCP.ZM.FIX.EBCM.CFDI.SELLOS.PRES.FS,DISP=SHR
//*
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCF2T06),DISP=SHR
//*
