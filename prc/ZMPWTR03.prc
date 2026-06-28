//ZMPWTR03 PROC
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-01.02.00  XMBB157  08JUL19 SE MODIFICA LA LONGITUD EL ARCHIVO   *
//*                               DE ADMITIVOS DE 2851 A 3247 Y EL     *
//*                               ARCHIVO DE DIVIDENDOS DE 326 A 336   *
//*                               Y TAMBIEN CAMBIA DE LONGITUD EL      *
//*                               ARCHIVO DE ACCIONES DE 489 A 551.    *
//* ANEXO20-XML  XMA3149  30DIC19 SE MODIFICA LA LONGITUD DEL ARCHIVO  *
//*                               DE XML DE 2146 A 2392 PARA AGREGAR   *
//*                               LOS ACUMULADOS DE LAS NUEVAS CKDS    *
//*--------------------------------------------------------------------*
//*   PASO    : PHCFDI01                                               *
//*   OBJETIVO: CONSOLIDA ARCH DIVIDENDOS DE CORREO Y PRESENTE         *
//*--------------------------------------------------------------------*
//PHCFDI01 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.DIVMEDC.CORR,DISP=SHR
//*        DD DSN=MXCP.ZM.FIX.EBTR.CFDI.DIVMEDC.PRES,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.DIVMEDC.F,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=336,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHCFDI02                                               *
//*   OBJETIVO: CONSOLIDA ARCH ACCIONES DE CORREO Y PRESENTE           *
//*--------------------------------------------------------------------*
//PHCFDI02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ACCMEDC.CORR,DISP=SHR
//*        DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ACCMEDC.PRES,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ACCMEDC.F,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=551,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHCFDI03                                               *
//*   OBJETIVO: CONSOLIDA ARCH ADMINISTRATIVOS DE CORREO Y PRESENTE    *
//*--------------------------------------------------------------------*
//PHCFDI03 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.CORR,DISP=SHR
//*        DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.PRES,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.F,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=3247,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHCFDI04                                               *
//*   OBJETIVO: DIVIDENDOS (ALINEACION DER)                            *
//*                     -- ZM4ECF02 --                                 *
//*--------------------------------------------------------------------*
//PHCFDI04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMCFDIA1 DD DSN=MXCP.ZM.FIX.EBTR.CFDI.DIVMEDC.F,DISP=SHR
//ZMCFDIA2 DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ACCMEDC.F,DISP=SHR
//ZMCFDIA3 DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.F,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCF1T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI05.                                             *
//* OBJETIVO   : SORT ARCHIVO DIVIDENDOS                               *
//*--------------------------------------------------------------------*
//PHCFDI05 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.DIVMEDC.F,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBTR.CFDI.DIVMEDC.FS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=335,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCF1T05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI06                                              *
//* OBJETIVO   : SORT ARCHIVO ACCIONES                                 *
//*--------------------------------------------------------------------*
//PHCFDI06 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ACCMEDC.F,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ACCMEDC.FS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=550,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCF1T06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI07                                              *
//* OBJETIVO   : SORT ARCHIVO ADM                                      *
//*--------------------------------------------------------------------*
//PHCFDI07 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.F,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.FS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=3246,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCF1T07),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI08                                              *
//* OBJETIVO   : GENERA ARCHIVO XML                                    *
//*                        -- ZM3ECF06 --                              *
//*--------------------------------------------------------------------*
//PHCFDI08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM3ECE01 DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.FS,DISP=SHR
//ZM3ECE02 DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ACCMEDC.FS,DISP=SHR
//FDSALIDA DD DSN=MXCP.ZM.FIX.EBTR.CFDI.XMLMEDC,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCF1T08),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI09                                              *
//* OBJETIVO   : CARGA DE SALDOS EN XML                                *
//*                         -- ZM4ECF04 --                             *
//*--------------------------------------------------------------------*
//PHCFDI09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMCFDIA1 DD DSN=MXCP.ZM.FIX.EBTR.CFDI.DIVMEDC.FS,DISP=SHR
//ZMCFDIA2 DD DSN=MXCP.ZM.FIX.EBTR.CFDI.XMLMEDC,DISP=SHR
//ZMCFDIA3 DD DSN=MXCP.ZM.FIX.EBTR.CFDI.XMLMEDC.FS,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCF1T09),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI10                                              *
//* OBJETIVO   : GENERACION ARCHIVO DE PIPES BCM                       *
//*                         -- ZM4ECF33 --                             *
//*--------------------------------------------------------------------*
//PHCFDI10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4ECE01 DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.FS,DISP=SHR
//ZM4ECE02 DD DSN=MXCP.ZM.FIX.EBTR.CFDI.DIVMEDC.FS,DISP=SHR
//ZM4ECE03 DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ACCMEDC.FS,DISP=SHR
//ZM4ECE04 DD DSN=MXCP.ZM.FIX.EBTR.CFDI.XMLMEDC.FS,DISP=SHR
//*
//FDSALIDA DD DSN=MXCP.ZM.FIX.EBTR.CFDI.PIPMEDC.PREV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,300),RLSE),
//            DCB=(RECFM=FB,LRECL=1000,BLKSIZE=0,DSORG=PS)
//*
//FDCIFRAS DD DSN=MXCP.ZM.FIX.EBTR.CFDI.CON13,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(RECFM=FB,LRECL=35,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCF1T11),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDI11                                              *
//* OBJETIVO   : AGREGAR NODO CFDI RELACIONADO                         *
//*                         -- ZM4CFI15 --                             *
//*--------------------------------------------------------------------*
//PHCFDI11 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBTR.CFDI.PIPMEDC.PREV,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBTR.CFDI.PIPMEDC,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCF1T15),DISP=SHR
//*
