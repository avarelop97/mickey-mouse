//ZMHFID32 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MUV MODULO UNICO DE VALORES ANTES SIVA.          *
//*                                                                    *
//* PROCESO        :  ZMHFID32                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVO MUVCAR DESDE TABLA ZMDT932 DE EDC *
//*                                                                    *
//*                   CORRER UNA VEZ QUE SE GENERO LA TABLA ZM4MU504   *
//*                                                                    *
//* REALIZO        :  FSW-DGCM(XMY1076)  28-FEBRERO-2019               *
//*                                                                    *
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*--------------------------------------------------------------------*
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          === ZM3DG001 ===                          *
//* PASO     : ZMHF3295                                                *
//* OBJETIVO : RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO FIJO A 96 CHAR *
//* UTILERIA : ZM3DG001                                                *
//**********************************************************************
//ZMHF3295 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.KFID.E&EMP..ZMHFID32,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*--------------------------------------------------------------------*
//*                          === ZM3DU933 ===                          *
//* PASO     : ZMHF3290                                                *
//* PROGRAMA : ZM3DU933                                                *
//* OBJETIVO : CREA LAS TARJETAS DE CONTROLS P/REALIZAR LAS DESCARGAS  *
//*            DE LAS POSICIONES Y EMISORAS EN EL PASO ZMHD3280        *
//*                                                                    *
//*--------------------------------------------------------------------*
//ZMHF3290 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMEQUER1 DD DSN=ZIVA.ZME.CONTROL(ZHF32T01),
//            DISP=SHR
//*
//ZMSVFQS1 DD DSN=MXCP.ZM.FIX.KFID.CTCCART.QUERIE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,2),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF32T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                          === ADUUMAIN ===                          *
//* PASO     : ZMHF3280                                                *
//* PROGRAMA : UNLOAD / ADUUMAIN                                       *
//*            OBT. REG FIDUCIARIO DE POSICION DESDE ZMDT932 --> MUVCAR*
//*--------------------------------------------------------------------*
//ZMHF3280 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMHF3280,NEW/RESTART,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSREC   DD DSN=MXCP.ZM.FIX.KFID.ADUUMAIN.ZM932,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=364,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(060,030),RLSE)
//SYSIN    DD DISP=SHR,DSN=MXCP.ZM.FIX.KFID.CTCCART.QUERIE
//*
//*--------------------------------------------------------------------*
//*                          === ZM4DU934 ===                          *
//* PASO     : ZMHF3270                                                *
//* OBJETIVO : GENERA ARCHIVO C/VALUACION CARTERA SDI, MDD, MDC Y PLAZO*
//* UTILERIA : IKJEFT01/ZM4DU934                                       *
//*                                                                    *
//*--------------------------------------------------------------------*
//ZMHF3270 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMENT934 DD DSN=MXCP.ZM.FIX.KFID.ADUUMAIN.ZM932,
//            DISP=SHR
//ZMSAL934 DD DSN=MXCP.ZM.FIX.KFID.ZM4MU934.ZM932,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF32T03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                          ===  ICEMAN  ===                          *
//* PASO     : ZMHF3265                                                *
//* OBJETIVO : SORTEAR POR CTA PATRIMONIAL, EMI, SER, CUP, NUPAPEL     *
//* UTILERIA : ICEMAN + SUM DE TITULOS, IMPORTE E INTERESES            *
//*                                                                    *
//*--------------------------------------------------------------------*
//ZMHF3265 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.KFID.ZM4MU934.ZM932,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.KFID.ZM4MU934.ZM932.SUMSORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=140,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1,2),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF32T04),DISP=SHR
//*
//**********************************************************************
//*                          === ZM3DU936 ===                          *
//* PASO     : ZMHF3250                                                *
//* OBJETIVO : GENERA ARCHIVO DESEMPACADO DE MUVCART-NEW ZMDT932       *
//* UTILERIA : ZM3DU936                                                *
//*                                                                    *
//**********************************************************************
//ZMHF3250 EXEC PGM=ZM3DU936,COND=(4,LT)
//*
//ZMENT936 DD DSN=MXCP.ZM.FIX.KFID.ZM4MU934.ZM932.SUMSORT,
//            DISP=SHR
//ZMSAL936 DD DSN=MXCP.ZM.FIX.KFID.MUVCART.SUM932,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=165,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*====================================================================
