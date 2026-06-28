//ZMAMFR02 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM                                                  *
//* PROCESO      : ZMAMFR02.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REPORTES DE LA CONSULTA DE OPERACIONES              *
//* REALIZO      :                                                     *
//* FECHA        :                                                     *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0250.                                             *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : REALIZA DESCARGA DE LA TABLA DE OPERDIN               *
//*--------------------------------------------------------------------*
//ZMAM0250 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFM20T09,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCAMFR02.UNLOAD.OPERDIN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMAMTC31),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0240.                                             *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : REALIZA DESCARGA DE LA TABLA DE DEMANDA               *
//*--------------------------------------------------------------------*
//ZMAM0240 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFM20T09,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCAMFR02.UNLOAD.DEMANDA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMAMTC32),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0230.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : AMPLIA LA TARJETA DE CONTROL                          *
//*--------------------------------------------------------------------*
//ZMAM0230 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=ZIVA.ZME.CONTROL(ZMCFND01),DISP=SHR
//SORTOUT  DD DSN=&&SORTOUT,
//            DISP=(,PASS,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=96,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCFND02),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0220.                                             *
//* PROGRAMA   : ZM4FON02                                              *
//* OBJETIVO   :                                                       *
//*              GENERAR ARCHIVO CON LAS OPERACIONES REGISTRADAS       *
//*              Y SON CONSULTADAS EN LA OPC 930 Y OPC                 *
//*--------------------------------------------------------------------*
//ZMAM0220 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMON02A1 DD DSN=&&SORTOUT,DISP=(OLD,DELETE)
//ENTRAD   DD  DISP=SHR,DSN=MXCP.ZM.FIX.BCAMFR02.UNLOAD.OPERDIN
//ZMON02A2 DD DSN=MXCP.ZM.FIX.REP2.OPERA.DIA,
//            DISP=(,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=191,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCFOND2),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0215.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : AMPLIA LA TARJETA DE CONTROL                          *
//*--------------------------------------------------------------------*
//ZMAM0215 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=ZIVA.ZME.CONTROL(ZMCFND01),DISP=SHR
//SORTOUT  DD DSN=&&SORTOUT,
//            DISP=(,PASS,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=96,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCFND02),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0210.                                             *
//* PROGRAMA   : ZM4FON06                                              *
//* OBJETIVO   :                                                       *
//*              GENERAR ARCHIVO CON LAS OPERACIONES REGISTRADAS       *
//*              Y SON CONSULTADAS EN LA OPC 930 Y OPC                 *
//*--------------------------------------------------------------------*
//ZMAM0210 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMON06A1 DD DSN=&&SORTOUT,DISP=(OLD,DELETE)
//ENTRAD   DD  DISP=SHR,DSN=MXCP.ZM.FIX.BCAMFR02.UNLOAD.DEMANDA
//ZMON06A2 DD DSN=MXCP.ZM.FIX.REP2.ORDEN.DIA,
//            DISP=(,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=191,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCFOND6),DISP=SHR
//*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0205.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : AMPLIA LA TARJETA DE CONTROL                          *
//*--------------------------------------------------------------------*
//ZMAM0205 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP2.ORDEN.DIA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP2.OPERA.DIA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP2.MERGE.DIA,
//            DISP=(,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=191,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZME60T17),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0203.                                             *
//* UTILERIA   :                                                       *
//* OBJETIVO   : ADICIONA CONDICION GLOBAL PARA INICIAR TRANSFERENCIA  *
//*              DATAX (MMFDA_MUVCONSULTAOPERACIONESFIDGTTXT_1)        *
//*--------------------------------------------------------------------*
//ZMAM0203 EXEC PGM=IOACND,
//         PARM='ADD COND MX2CRX_BCAMFR0200_CO WDATE'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//*
//SYSIN    DD  DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//*--------------------------------------------------------------------*
