//ZMCFDI04 PROC
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI01                                              *
//* OBJETIVO   : SORT ARCHIVO SELLOS                                   *
//*--------------------------------------------------------------------*
//PHCFDI01 EXEC PGM=ICEMAN
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.SELLOMDC,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.CFDI.SELLOS.FSS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=1044,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCF4T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI02                                              *
//* OBJETIVO   : SORT ARCHIVO ADM.FS                                   *
//*--------------------------------------------------------------------*
//*PHCFDI02 EXEC PGM=ICEMAN,COND=(4,LT)
//*SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.FS,DISP=SHR
//*SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.FSS,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=2850,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*SYSOUT   DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCF4T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI03                                              *
//* OBJETIVO   : GENERA ARCHIVOS SELLOS ZM4ECF15                       *
//*--------------------------------------------------------------------*
//PHCFDI03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ZM4ECE01 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.FSS,DISP=SHR
//ZM4ECE02 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.SELLOS.FSS,DISP=SHR
//*FDSALIDA DD DSN=MXCP.ZM.FIX.ECBP.CFDI.SELLOS.CORR,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=29780,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*FDSALIDB DD DSN=MXCP.ZM.FIX.ECBP.CFDI.SELLOS.PRES,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCF4T03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI04                                              *
//* OBJETIVO   : SORT ARCHIVO SELLOS CORR                              *
//*--------------------------------------------------------------------*
//*PHCFDI04 EXEC PGM=ICEMAN,COND=(4,LT)
//*SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.SELLOS.CORR,DISP=SHR
//*SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.CFDI.SELLOS.CORR.FS,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=29780,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*SYSOUT   DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCF4T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI05                                              *
//* OBJETIVO   : SORT ARCHIVO SELLOS PRES                              *
//*--------------------------------------------------------------------*
//*PHCFDI05 EXEC PGM=ICEMAN,COND=(4,LT)
//*SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.SELLOS.PRES,DISP=SHR
//*SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.CFDI.SELLOS.PRES.FS,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=29780,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*SYSOUT   DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCF4T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI06                                              *
//* OBJETIVO   : SELLOS CORREO (ALINEACION IZQ)                        *
//*                      -- ZM4ECF13 --                                *
//*--------------------------------------------------------------------*
//*PHCFDI06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ZMCF13A1 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.SELLOS.CORR.FS,DISP=SHR
//*
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCF4T06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI07                                              *
//* OBJETIVO   : SELLOS  PRESNTE (ALINEACION IZQ)                      *
//*                      -- ZM4ECF13 --                                *
//*--------------------------------------------------------------------*
//*PHCFDI07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ZMCF13A1 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.SELLOS.PRES.FS,DISP=SHR
//*
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCF4T06),DISP=SHR
//*
