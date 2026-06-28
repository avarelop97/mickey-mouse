//ZMAMFR01 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM                                                  *
//* PROCESO      : ZMAMFR01.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REPORTES DE LA CONSULTA DE CORROS                   *
//* REALIZO      :                                                     *
//* FECHA        :                                                     *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0130.                                             *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : REALIZA DESCARGA DE LA TABLA DE CORROS                *
//*--------------------------------------------------------------------*
//ZMAM0130 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFM20T09,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCAMFR01.UNLOAD.CORROS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMAMTC30),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0120.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : AMPLIA LA TARJETA DE CONTROL                          *
//*--------------------------------------------------------------------*
//ZMAM0120 EXEC PGM=ICEMAN,COND=(4,LT)
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
//* PASO       : ZMAM0110.                                             *
//* PROGRAMA   : ZM4FON01                                              *
//* OBJETIVO   :                                                       *
//*              GENERAR ARCHIVO CON LAS TASAS REGISTRADAS EN LA       *
//*              OPCION 445 CONSULTA DE CORROS OPERACIONES MDD         *
//*--------------------------------------------------------------------*
//ZMAM0110 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMON01A1 DD DSN=&&SORTOUT,DISP=(OLD,DELETE)
//ENTRAD   DD  DISP=SHR,DSN=MXCP.ZM.FIX.BCAMFR01.UNLOAD.CORROS
//ZMON01A2 DD DSN=MXCP.ZM.FIX.REP.OPER.CORROS.FFECHA,
//            DISP=(,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=116,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCFOND1),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0105.                                             *
//* PROGRAMA   :                                                       *
//* OBJETIVO   :                                                       *
//*              ADICIONA CONDICION GLOBAL PARA INICIAR TRANSFERENCIA  *
//*              DATAX (MMFA_CORROSFIDEICOMISOS_1)                     *
//*--------------------------------------------------------------------*
//ZMAM0110 EXEC PGM=IOACND,
//         PARM='ADD COND MX2CRX_BCAMFR0100_CO WDATE'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
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
