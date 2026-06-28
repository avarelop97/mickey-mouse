//ZMHTDT01 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - BASE ACTUAL (ADA)                              *
//* PROCESO      : ZMHTDT01.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : ARCHIVO DE POSICIONES Y SALDOS PROMEDIO BASE ACTUAL *
//* REALIZO      : BBVA BPYP                                           *
//* FECHA        : FEBRERO 2026.                                       *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT608 Y CUENTA A SECUENCIAL      *
//*--------------------------------------------------------------------*
//ZBA15T25 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZBA15T25,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.BAC.ZM4BAC15.ZMDT608,
//            SPACE=(CYL,(600,300),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=49,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZBA15T50),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA:    ICEMAN                      (ARCH. MENSUAL)           *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO MENSUAL DE POSICION         *
//*--------------------------------------------------------------------*
//ZBA15T20 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.BAC.ZM4BAC15.POS.FIN.BACK,
//            DISP=(MOD,DELETE,DELETE)
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.BAC.ZM4BAC15.POS.FIN.FANT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=141,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZBA20T40),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* UTILERIA   : IKJEFT01/ZM4BAC15                                     *
//* OBJETIVO   : OBTIENE POSICION DE LA BASE DE DATOS PARA BASE ACTUAL *
//*--------------------------------------------------------------------*
//ZBA15T15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM15FME1 DD DSN=MXCP.ZM.TMP.BAC.ZM4BAC15.ZMDT608,DISP=SHR
//ZM15FME2 DD DSN=MXCP.ZM.TMP.BAC.ZM4BAC15.POS.FIN.FANT,DISP=SHR
//*
//ZM15FMS1 DD DSN=MXCP.ZM.TMP.BAC.ZM4BAC15.POS.FIN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=141,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZBA15T15),DISP=SHR
//*                                                                    *
//*--------------------------------------------------------------------*
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO POR LOS CAMPOS LLAVE DEL PROG. ZM4BAC15  *
//*--------------------------------------------------------------------*
//ZBA15T10 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.BAC.ZM4BAC15.POS.FIN.FANT,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.BAC.ZM4BAC15.POS.FIN,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.BAC.ZM4BAC15.POS.FIN.BACK,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=141,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZBA20T40),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* UTILERIA   : IKJEFT01/ZM4BAC20                                     *
//* OBJETIVO   : OBTIENE ACUMULADO DE REGISTROS DE POSIC Y SALDOS      *
//*--------------------------------------------------------------------*
//ZBA15T05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM20FME1 DD DSN=MXCP.ZM.FIX.BAC.ZM4BAC15.POS.FIN.BACK,DISP=SHR
//*
//ZM20FMS1 DD DUMMY,LRECL=141,RECFM=FB
//*
//ZM20FMS2 DD DSN=MXCP.ZM.FIX.BCHTDT01.BASEACTU.F&FEC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(3000,900),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//*
//*---------------------------------------------------------------------
//* ARCHIVOS SALIDA PROCESO MULTIPLE BASE ACTUAL (SOLO REPROCESOS)
//*---------------------------------------------------------------------
//ZM20SD01 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD02 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD03 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD04 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD05 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD06 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD07 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD08 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD09 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD10 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD11 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD12 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD13 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD14 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD15 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD16 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD17 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD18 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD19 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD20 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD21 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD22 DD DUMMY,LRECL=240,RECFM=FB
//ZM20SD23 DD DUMMY,LRECL=240,RECFM=FB
//*---------------------------------------------------------------------
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZBA15T20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZBA15T03.                                             *
//* PROGRAMA   : IOACND          (DIARIO)                              *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO DE DATIO        *
//*--------------------------------------------------------------------*
//ZBA15T03 EXEC PGM=IOACND,COND=(3,NE,ZBA15T05),
//         PARM='ADD COND MX2CRX_BCHTDT0100 &FE1'
//*
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
//*
//*--------------------------------------------------------------------*
//*                    TERMINA ZMHTDT01                                *
//*--------------------------------------------------------------------*
