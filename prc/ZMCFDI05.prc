//ZMCFDI05 PROC
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//*   PASO    : PHCFDI01                                               *
//*   OBJETIVO: CONSOLIDA ARCH DIVIDENDOS DE CORREO Y PRESENTE         *
//*--------------------------------------------------------------------*
//PHCFDI01 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.DIVMEDC.CORR,DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.DIVMEDC.F,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=336,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHCFDI02                                               *
//*   OBJETIVO: CONSOLIDA ARCH ACCIONES DE CORREO Y PRESENTE           *
//*--------------------------------------------------------------------*
//PHCFDI02 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ACCMEDC.CORR,DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ACCMEDC.F,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=551,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHCFDI03                                               *
//*   OBJETIVO: CONSOLIDA ARCH ADMINISTRATIVOS DE CORREO Y PRESENTE    *
//*--------------------------------------------------------------------*
//PHCFDI03 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.CORR,DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.F,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=3247,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHCFDI04                                               *
//*   OBJETIVO: DIVIDENDOS (ALINEACION DER)                            *
//*                     -- ZM4ECF12 --                                 *
//*--------------------------------------------------------------------*
//PHCFDI04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMCF12A1 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.DIVMEDC.F,DISP=SHR
//ZMCF12A2 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ACCMEDC.F,DISP=SHR
//ZMCF12A3 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.F,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCF3T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI05.                                             *
//* OBJETIVO   : SORT ARCHIVO DIVIDENDOS                               *
//*--------------------------------------------------------------------*
//PHCFDI05 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.DIVMEDC.F,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.CFDI.DIVMEDC.FS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=335,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCF3T05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI06                                              *
//* OBJETIVO   : SORT ARCHIVO ACCIONES                                 *
//*--------------------------------------------------------------------*
//PHCFDI06 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ACCMEDC.F,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ACCMEDC.FS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=550,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCF3T06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI07                                              *
//* OBJETIVO   : SORT ARCHIVO ADM                                      *
//*--------------------------------------------------------------------*
//PHCFDI07 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.F,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.FS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=3246,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCF3T07),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI08                                              *
//* OBJETIVO   : GENERA ARCHIVO XML                                    *
//*                        -- ZM3ECF16 --                              *
//*--------------------------------------------------------------------*
//PHCFDI08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMCF16A1 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.FS,DISP=SHR
//ZMCF16A2 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ACCMEDC.FS,DISP=SHR
//ZMCF16S3 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.XMLMEDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=852,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCF3T08),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI09                                              *
//* OBJETIVO   : CARGA DE SALDOS EN XML                                *
//*                         -- ZM4ECF14 --                             *
//*--------------------------------------------------------------------*
//PHCFDI09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMCF14A1 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.DIVMEDC.FS,DISP=SHR
//ZMCF14A2 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.XMLMEDC,DISP=SHR
//ZMCF14A3 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.XMLMEDC.FS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=2392,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCF3T09),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI10                                              *
//* OBJETIVO   : GENERACION ARCHIVO DE PIPES CBP                       *
//*                         -- ZM4ECF17 --                             *
//*--------------------------------------------------------------------*
//PHCFDI10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4ECE01 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.FS,DISP=SHR
//ZM4ECE02 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.DIVMEDC.FS,DISP=SHR
//ZM4ECE03 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ACCMEDC.FS,DISP=SHR
//ZM4ECE04 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.XMLMEDC.FS,DISP=SHR
//*
//FDSALIDA DD DSN=MXCP.ZM.FIX.ECBP.CFDI.PIPMEDC.PREV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,300),RLSE),
//            DCB=(RECFM=FB,LRECL=1000,BLKSIZE=0,DSORG=PS)
//*
//FDCIFRAS DD DSN=MXCP.ZM.FIX.ECBP.CFDI.CON09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(RECFM=FB,LRECL=36,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCF3T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI11                                              *
//* OBJETIVO   : AGREGAR NODO CFDI RELACIONADO                         *
//*                         -- ZM4CFI15 --                             *
//*--------------------------------------------------------------------*
//PHCFDI11 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.CFDI.PIPMEDC.PREV,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.PIPMEDC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,300),RLSE),
//            DCB=(RECFM=FB,LRECL=1000,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCF3T15),DISP=SHR
//*
