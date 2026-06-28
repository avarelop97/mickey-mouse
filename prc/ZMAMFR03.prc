//ZMAMFR03 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM -                                                *
//* PROCESO      : ZMAMFR03.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REPORTES DE LA CONSULTA DE POSICION DE LA 181       *
//* REALIZO      :                                                     *
//* FECHA        :                                                     *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0390.                                             *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : REALIZA DESCARGA DE LA TABLA DE CARTERA               *
//*--------------------------------------------------------------------*
//ZMAM0390 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFM20T09,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCAMFR03.UNLOAD.POSICION,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMAMTC33),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0380.                                             *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : REALIZA DESCARGA DE LA TABLA DE CARTERA               *
//*--------------------------------------------------------------------*
//ZMAM0380 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFM20T09,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCAMFR03.UNLOAD.EFECTIVO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMAMTC34),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0370.                                             *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : REALIZA DESCARGA DE LA TABLA DE VECPRE                *
//*--------------------------------------------------------------------*
//ZMAM0370 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFM20T09,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCAMFR03.UNLOAD.VECPRE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMAMTC35),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0360.                                             *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : REALIZA DESCARGA DE LA TABLA DE FONDOS                *
//*--------------------------------------------------------------------*
//ZMAM0360 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFM20T09,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCAMFR03.UNLOAD.FONDOS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMAMTC36),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0325.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : AMPLIA LA TARJETA DE CONTROL                          *
//*--------------------------------------------------------------------*
//ZMAM0325 EXEC PGM=ICEMAN,COND=(4,LT)
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
//* PASO       : ZMAM0320.                                             *
//* PROGRAMA   : ZM4FON07                                              *
//* OBJETIVO   :                                                       *
//*              GENERAR ARCHIVO CON EL EFECTIVO DE LOS CLIENTES       *
//*              Y SON CONSULTADAS EN LA OPC 181                       *
//*--------------------------------------------------------------------*
//ZMAM0320 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMON07A1 DD DSN=&&SORTOUT,DISP=(OLD,DELETE)
//ENTRAD2  DD DISP=SHR,DSN=MXCP.ZM.FIX.BCAMFR03.UNLOAD.FONDOS
//ZMON07A2 DD DSN=&&MSORTOUT,
//*ZMON07A2 DD DSN=MXCP.ZM.FIX.REP3.POSICION.OPC181,
//           DISP=(,PASS,DELETE),
//*            DISP=(,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=202,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCFOND7),DISP=SHR
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0315.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : GENERA ARCHIVO MXCT.ZM.FIX.REP3.POSICION.OPC181       *
//* CON PRECIO                                                         *
//*--------------------------------------------------------------------*
//ZMAM0315 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=&&MSORTOUT,DISP=(OLD,DELETE)
//SORTJNF2 DD DSN=MXCP.ZM.FIX.BCAMFR03.UNLOAD.VECPRE,DISP=SHR
//SORTOUT  DD DSN=&&OPC181,
//            DISP=(,PASS,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=202,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SORTOUT1 DD DSN=&&OPC1811,
//            DISP=(,PASS,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=202,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCFOND8),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0310.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : CONJUNTA ARCHIVOS                                     *
//*--------------------------------------------------------------------*
//ZMAM0310 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DISP=(OLD,DELETE),DSN=&&OPC181
//         DD DISP=(OLD,DELETE),DSN=&&OPC1811
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP3.POSICION.OPC181,
//            DISP=(,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=202,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCFOND9),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0305.                                             *
//* UTILERIA   :                                                       *
//* OBJETIVO   : ADICIONA CONDICION GLOBAL PARA INICIAR TRANSFERENCIA  *
//*              DATAX (MMFDA_MUVCONSULTAPOSICIONEFECTIVOFIDGTTXT_1)   *
//*--------------------------------------------------------------------*
//ZMAM0305 EXEC PGM=IOACND,
//         PARM='ADD COND MX2CRX_BCAMFR0300_CO WDATE'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//*
//SYSIN    DD  DUMMY
//*
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//*--------------------------------------------------------------------*
