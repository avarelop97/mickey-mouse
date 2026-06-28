//ZMPPG608 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - PPG.                                           *
//* PROCESO      : ZMPPG608.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : DA FORMATO A DESCARGA TABLA ZMDT608 PARA ENVIO.     *
//*                INGESTA EN TABLAS APX-ORACLE                        *
//* REALIZO      : ANGEL SANCHEZ OSORNO                                *
//* FECHA        : AGOSTO 2025.                                        *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//* PASO    : ZMHO0300                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: COPIA DE DESCARGA TABLA ZMDT608                          *
//*--------------------------------------------------------------------*
//ZMHO0300 EXEC PGM=ICEMAN
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.HORIZON.SZMDT608.D&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.LOMBARDO.SZMDT608,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=76,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T18),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM3PPG60                                                 *
//* OBJETIVO: RECIBE ARCHIVO CON LA DESCARGA DE LA TABLA ZMDT608       *
//*           LE DA FORMATO ALFANUMERICO                               *
//*--------------------------------------------------------------------*
//ZMHO0200 EXEC PGM=ZM3PPG60,COND=(4,LT)
//*
//ZM3PPGE1 DD DSN=MXCP.ZM.FIX.LOMBARDO.SZMDT608,DISP=SHR
//*
//ZM3PPGS1 DD DSN=MXCP.ZM.FIX.LOMBARDO.FORMAT.ZMDT608.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,200),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=VB,LRECL=90,BLKSIZE=0)
//ZM3PPGS2 DD DSN=MXCP.ZM.FIX.LOMBARDO.VACIO.ZMDT608.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(1,1),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=VB,LRECL=90,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMPPG150                                                 *
//* PROGRAMA: IOACND.                                                  *
//* OBJETIVO: LEVANTA CONDICION PARA DISTRIBUIDO                       *
//*--------------------------------------------------------------------*
//ZMPPG150 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND MX2CRX_BCPPGD6080 &FEC'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*-------------------------------------------------------------------
//*                     FIN PROCESO ZMPPG608
//*-------------------------------------------------------------------
