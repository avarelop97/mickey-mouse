//ZMPCMISC PROC
//*====================================================================*
//*    NOMBRE            : ZMPCMISC                                    *
//*    APLICATIVO        : ZM@ - MODULO DE SIVA                        *
//*                        MULTI EMPRESA ALTAMIRIZADO                  *
//*    PROYECTO          : REDISENO DE EECC BANCA PATRIMONIAL Y PRIVADA*
//*    PERIODICIDAD      : DIARIA                                      *
//*    OBJETIVO          : GENERACION DE ARCHIVO DE CUENTAS            *
//*                        DYD CASA DE BOLSA CON POSICION POR MERCADO  *
//*    AUTOR             : FABRICA DE SOFTWARE DGCM. (XM26266).        *
//*    FECHA DE CREACION : 01 DE AGOSTO DE 2016.                       *
//*====================================================================*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*    XXXXXXX    XXXXXXX  DDMMMAA    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  *
//*--------------------------------------------------------------------*
//*====================================================================*
//* PASO     : ZMMISC95                                                *
//* PROGRAMA : ZM3CTCD1                                                *
//* OBJETIVO : REALIZA DE FORMA DINAMICA LOS CONTROL PARA LA DESCARGA  *
//*            DE LAS TABLAS DE ESTADOS DE CUENTA ZMDT9300 Y ZMDT931   *
//*====================================================================*
//ZMMISC95 EXEC PGM=ZM3CTCD1,PARM=('&FECHA&AMB')
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.CTCTB930,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//S2DQSAL2 DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.CTCTB931,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*                                                  00008100
//SYSPRINT DD SYSOUT=*                                                  00008200
//SYSTSPRT DD SYSOUT=*                                                  00008300
//SYSDBOUT DD SYSOUT=*                                                  00008400
//SYSABOUT DD SYSOUT=*                                                  00008500
//SYSUDUMP DD DUMMY                                                     00008600
//QRLSDB2  DD SYSOUT=*                                                  00008700
//*
//*====================================================================*
//* PASO     : ZMMISC90                                                *
//* PROGRAMA : ZM3CTCD2                                                *
//* OBJETIVO : REALIZA DE FORMA DINAMICA LOS CONTROL PARA LA SELECCION *
//*            DE LAS DATOS DE LAS TABLAS  ZMDT9300 Y ZMDT931          *
//*====================================================================*
//ZMMISC90 EXEC PGM=ZM3CTCD2,PARM=('&FECHA&AMB'),COND=(4,LT)
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.CTCIC930,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//S2DQSAL2 DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.CTCIC931,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*                                                  00008100
//SYSPRINT DD SYSOUT=*                                                  00008200
//SYSTSPRT DD SYSOUT=*                                                  00008300
//SYSDBOUT DD SYSOUT=*                                                  00008400
//SYSABOUT DD SYSOUT=*                                                  00008500
//SYSUDUMP DD DUMMY                                                     00008600
//QRLSDB2  DD SYSOUT=*                                                  00008700
//*
//*====================================================================*
//* PASO     : ZMMISC85                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT930.                           *
//*====================================================================*
//ZMMISC85 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMMISC85,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMDT930K.ZMPCDEZM.P1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.CTCTB930,DISP=SHR
//*
//*====================================================================*
//* PASO     : ZMMISC80                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT931.                           *
//*====================================================================*
//ZMMISC80 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMMISC80,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMDT931K.ZMPCDEZM.P1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.CTCTB931,DISP=SHR
//*
//*====================================================================*
//* PASO     : ZMMISC75                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT608.                           *
//*====================================================================*
//ZMMISC75 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMMISC75,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMDT608K.ZMPCDEZM.P1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMMISC96),DISP=SHR
//*
//*====================================================================*
//* PASO     : ZMMISC70                                                *
//* PROGRAMA : ICEMAN TABLA 930                                        *
//* OBJETIVO : REALIZA LA SELECCION DE DATOS Y CAMPOS NECESARIOS       *
//*            DE LA DESCARGA A ZMDT930                                *
//*====================================================================*
//ZMMISC70 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMDT930K.ZMPCDEZM.P1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMDT930K.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=66,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.CTCIC930,DISP=SHR
//*
//*====================================================================*
//* PASO     : ZMMISC65                                                *
//* PROGRAMA : ICEMAN  931                                             *
//* OBJETIVO : REALIZA LA SELECCION DE DATOS Y CAMPOS NECESARIOS       *
//*            DE LA DESCARGA A ZMDT931                                *
//*====================================================================*
//ZMMISC65 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMDT931K.ZMPCDEZM.P1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EIMR.ZMDT931K.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=13,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.CTCIC931,DISP=SHR
//*
//*====================================================================*
//* PASO     : ZMMISC60                                                *
//* PROGRAMA : ICEMAN ARCHIVO DOMENV                                   *
//* OBJETIVO : SELECCIONA LOS DATOS NECESARIOS DE PERSONAS PARA HACER  *
//*            EL CRUCE CON ESTADOS DE CUENTA SIVA                     *
//*====================================================================*
//ZMMISC60 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.CON.AMCP,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.AMCP.DOMENV.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=26,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMMISC85),DISP=SHR
//*
//*====================================================================*
//* PASO     : ZMMISC55                                                *
//* PROGRAMA : ICEMAN ARCHIVO ZMDT608                                  *
//* OBJETIVO : REALIZA LA SELECCION DE DATOS Y CAMPOS NECESARIOS DE    *
//*            LA TABLA ZMDT608                                        *
//*====================================================================*
//ZMMISC55 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMDT608K.ZMPCDEZM.P1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMDT608.P00.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=22,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN   DD DSN=ZIVA.ZME.CONTROL(ZMMISC80),DISP=SHR
//*
//*====================================================================*
//* PASO     : ZMMISC50                                                *
//* PROGRAMA : ZM3CBAL1                                                *
//* OBJETIVO : REALIZA EL MATCH DE LAS TABLAS DE ESTADOS DE CUENTA     *
//*            SIVA POR NUMERO DE CUENTA                               *
//*====================================================================*
//ZMMISC50 EXEC PGM=ZM3CBAL1,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.EIMR.ZMDT931K.SORT,DISP=SHR
//*
//E2DQENT2 DD DSN=MXCP.ZM.FIX.ZMDT930K.SORT,DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.ZM3CBAL1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=136,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*                                                  00008100
//SYSPRINT DD SYSOUT=*                                                  00008200
//SYSTSPRT DD SYSOUT=*                                                  00008300
//SYSDBOUT DD SYSOUT=*                                                  00008400
//SYSABOUT DD SYSOUT=*                                                  00008500
//SYSUDUMP DD DUMMY                                                     00008600
//QRLSDB2  DD SYSOUT=*                                                  00008700
//*
//*====================================================================*
//* PASO     : ZMMISC48                                                *
//* PROGRAMA : ICEMAN                                                  *
//* OBJETIVO : ORDENACION DE ARCHIVO POR CUENTA MUV DE 7 POSICIONES    *
//*====================================================================*
//ZMMISC48 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.ZM3CBAL1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.ZM3CBAL1.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=136,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMMISC48),DISP=SHR
//*
//*====================================================================*
//* PASO     : ZMMISC45                                                *
//* PROGRAMA : ZM3CBAL2                                                *
//* OBJETIVO : REALIZA EL MATCH DE LAS TABLAS DE ESTADOS DE CUENTA     *
//*            SIVA CONTRA EL ARCHIVO DE DESCARGA ZMDT608 POR CUENTA   *
//*            PARA ENCONTRAR CUENTA-CLIENTE                           *
//*====================================================================*
//ZMMISC45 EXEC PGM=ZM3CBAL2,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.ZM3CBAL1.SORT,DISP=SHR
//*
//E2DQENT2 DD DSN=MXCP.ZM.FIX.ZMDT608.P00.SORT,DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.ZM3CBAL2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=147,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*                                                  00008100
//SYSPRINT DD SYSOUT=*                                                  00008200
//SYSTSPRT DD SYSOUT=*                                                  00008300
//SYSDBOUT DD SYSOUT=*                                                  00008400
//SYSABOUT DD SYSOUT=*                                                  00008500
//SYSUDUMP DD DUMMY                                                     00008600
//QRLSDB2  DD SYSOUT=*                                                  00008700
//*
//*====================================================================*
//* PASO     : ZMMISC42                                                *
//* PROGRAMA : ICEMAN  931                                             *
//* OBJETIVO : ORDENACION DE ARCHIVO POR CUENTA DE 10 POSICIONES PARA  *
//*            CRUCE CON   APLICATIVO DE PERSONAS                      *
//*====================================================================*
//ZMMISC42 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.ZM3CBAL2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.ZM3CBAL2.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=147,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMMISC42),DISP=SHR
//*
//*====================================================================*
//* PASO     : ZMMISC40                                                *
//* PROGRAMA : ZM3CBAL3                                                *
//* OBJETIVO : REALIZA EL MATCH DE ESTADOS DE CUENTA-608 CONTRA ARCH   *
//*            DE PERSONAS                                             *
//*====================================================================*
//ZMMISC40 EXEC PGM=ZM3CBAL3,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.ZM3CBAL2.SORT,DISP=SHR
//*
//E2DQENT2 DD DSN=MXCP.ZM.FIX.AMCP.DOMENV.SORT,DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.ZM3CBAL3,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=163,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*                                                  00008100
//SYSPRINT DD SYSOUT=*                                                  00008200
//SYSTSPRT DD SYSOUT=*                                                  00008300
//SYSDBOUT DD SYSOUT=*                                                  00008400
//SYSABOUT DD SYSOUT=*                                                  00008500
//SYSUDUMP DD DUMMY                                                     00008600
//QRLSDB2  DD SYSOUT=*                                                  00008700
//*
//*====================================================================*
//* PASO     : ZMMISC35                                                *
//* PROGRAMA : ZM3CVAL1                                                *
//* OBJETIVO : REALIZA EL FORMATEO DE DATOS DE ACUERDO A POSICION DE   *
//*            MERCADO POR CUENTA SIVA                                 *
//*====================================================================*
//ZMMISC35 EXEC PGM=ZM3CVAL1,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.ZM3CBAL3,DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.AMCP.BCJCMISC.ZM3CVAL1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=148,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*                                                  00008100
//SYSPRINT DD SYSOUT=*                                                  00008200
//SYSTSPRT DD SYSOUT=*                                                  00008300
//SYSDBOUT DD SYSOUT=*                                                  00008400
//SYSABOUT DD SYSOUT=*                                                  00008500
//SYSUDUMP DD DUMMY                                                     00008600
//QRLSDB2  DD SYSOUT=*                                                  00008700
//*
//*====================================================================*
//* PASO     : ZMMISC30                                                *
//* PROGRAMA : CTMCND                                                  *
//* OBJETIVO : SE ADICIONA CONDICION PARA QUE SE EJECUTE EL PROCESO    *
//*            DE AJENOS                                               *
//*====================================================================*
//ZMMISC30 EXEC  PGM=CTMCND,PARM='ADD COND BCJCMISC_IN_OK WDATE',
//         COND=(4,LT)
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
