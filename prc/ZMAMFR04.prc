//ZMAMFR04 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM -                                                *
//* PROCESO      : ZMAMFR04                                            *
//* PERIODICIDAD : EVENTUAL                                            *
//* OBJETIVO     : REPORTE CONTRATOS SIN ASIGNACION A FONDEO AUTOMATICO*
//* REALIZO      :                                                     *
//* FECHA        :                                                     *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0490.                                             *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : REALIZA DESCARGA DE LA INFORMACION DE CONTRATOS       *
//*              INVOLUCRADOS EN EL FONDEO AUTOMATICO                  *
//*              CUENTA, AGPOCTA                                       *
//*--------------------------------------------------------------------*
//ZMAM0490 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFM20T09,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCAMFR04.UNLOAD.CTOFON,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMAMTC37),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0480.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : AMPLIA LA TARJETA DE CONTROL                          *
//*--------------------------------------------------------------------*
//ZMAM0480 EXEC PGM=ICEMAN,COND=(4,LT)
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
//* PASO       : ZMAM0470.                                             *
//* PROGRAMA   : ZM4FON08                                              *
//* OBJETIVO   : GENERAR ARCHIVO CON RELACION DE CONTRATOS ASOCIADOS   *
//*              A UN GRUPO DE CUENTA DEL FONDEO AUTOMATICO            *
//*--------------------------------------------------------------------*
//ZMAM0470 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMON08A1 DD DSN=&&SORTOUT,DISP=(OLD,DELETE)
//ENTRAD2  DD DISP=SHR,DSN=MXCP.ZM.FIX.BCAMFR04.UNLOAD.CTOFON
//ZMON08A2 DD DSN=MXCP.ZM.FIX.REP4.CTOS.FONDEO,
//            DISP=(,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=036,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCFON10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0460.                                             *
//* UTILERIA   :                                                       *
//* OBJETIVO   : ADICIONA CONDICION GLOBAL PARA INICIAR TRANSFERENCIA  *
//*              DATAX (MMFDA_MUVCONSULTACONTRATOSFONDEOFIDGTTXT_1)    *
//*--------------------------------------------------------------------*
//ZMAM0460 EXEC PGM=IOACND,
//         PARM='ADD COND MX2CRX_BCAMFR0400_CO WDATE'
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
