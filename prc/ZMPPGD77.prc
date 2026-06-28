//ZMPPGD77 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - PPG.                                           *
//* PROCESO      : ZMPPGD77.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : DA FORMATO A DESCARGA TABLA YHDTVAL PARA ENVIO.     *
//*                INGESTA EN TABLAS APX-ORACLE                        *
//* REALIZO      : ANGEL SANCHEZ OSORNO                                *
//* FECHA        : JULIO 2025.                                         *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//* PASO    : ZPP05T18                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: COPIA DE DESCARGA TABLA YHDTVAL                          *
//*--------------------------------------------------------------------*
//ZPP05T18 EXEC PGM=ICEMAN
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXB&AMB..YH.FIX.F&FECHA..MYHPPD05.YHDTVAL,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PREV.YHDTVAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=197,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T18),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: IKJEFT01/ZM4PPG77                                        *
//* OBJETIVO: RECIBE ARCHIVO CON LA DESCARGA DE LA TABLA YHDTVAL       *
//*           LE DA FORMATO ALFANUMERICO                               *
//*--------------------------------------------------------------------*
//ZMHO0200 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4PPGE1 DD DSN=MXCP.ZM.FIX.PREV.YHDTVAL,DISP=SHR
//*
//ZM4PPGS1 DD DSN=MXCP.ZM.FIX.LOMBARDO.FORMAT.YHDTVAL.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,200),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=VB,LRECL=284,BLKSIZE=0)
//ZM4PPGS2 DD DSN=MXCP.ZM.FIX.LOMBARDO.FIJO.YHDTVAL.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,200),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=280,BLKSIZE=0)
//ZM4PPGS3 DD DSN=MXCP.ZM.FIX.LOMBARDO.VACIO.YHDTVAL.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(1,1),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=VB,LRECL=280,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP05T77),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMPPG150                                                 *
//* PROGRAMA: IOACND.                                                  *
//* OBJETIVO: LEVANTA CONDICION PARA DISTRIBUIDO                       *
//*--------------------------------------------------------------------*
//ZMPPG150 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND MX2CRX_BCPPGD7700 &FEC'
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
//*                     FIN PROCESO ZMPPGD77
//*-------------------------------------------------------------------
