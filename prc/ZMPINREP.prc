//ZMPINREP PROC
//*--------------------------------------------------------------------*00050000
//*PASO 6 DESCARGA DE LA TABLA UGDTDRB                                  00060000
//*NO SE PONE LA LONGITUD DEL ARCHIVO PARA QUE TOME LA LONGITUD ACTUAL  00070000
//*DE LA TABLA Y ASI NO MODIFICAR EL PROCESO.                           00080000
//**********************************************************************00081000
//PASO000 EXEC PGM=IDCAMS
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*-------------------------------------------------------------------- 00050000
//*         DESCARGA DE QUERY ZMDTCTH
//*-------------------------------------------------------------------- 00050000
//PASO001 EXEC PGM=ADUUMAIN,COND=(4,LT),                                00082000
//         PARM='MXP1,PASO001,NEW,,MSGLEVEL(1)'                         00083000
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//SYSREC   DD DSN=MXCP.ZM.TMP.BCJINREP.F&FECHA..ZMDTCTH,                00089000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00090000
//            SPACE=(CYL,(350,90),RLSE),                                00100000
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00110000
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCDPO37),DISP=SHR
//*---------------------------------------------------------------------
//*------   ARCHIVO CUENTA ORDENADO
//*---------------------------------------------------------------------
//PASO00A EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN  DD DSN=MXCP.ZM.TMP.BCJINREP.F&FECHA..ZMDTCTH,DISP=SHR
//SORTOUT DD DSN=MXCP.ZM.FIX.BCJINREP.F&FECHA..CTASORDT,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(350,90),RLSE),
//             DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCNTL  DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCDPO42),DISP=SHR
//*---------------------------------------------------------------------
//*------   ARCHIVO CUENTA ORDENADO
//*---------------------------------------------------------------------
//PASO00B EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN  DD DSN=MXCP.ZM.FIX.BCJINREP.F&FECHA..CTASORDT,DISP=SHR
//SORTOUT DD DSN=MXCP.ZM.FIX.BCJINREP.F&FECHA..CTASREPT,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(350,90),RLSE),
//             DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCNTL  DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCDPO24),DISP=SHR
//*---------------------------------------------------------------------
//*-  EJECUCION DE COBOL
//*---------------------------------------------------------------------
//PASO002 EXEC  PGM=IKJEFT1A,COND=(4,LT)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSOUP   DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//*
//E1DQACD6 DD DSN=MXCP.ZM.FIX.BCJINREP.F&FECHA..CTASREPT,
//            DISP=SHR
//S1DQACD6 DD DSN=MXCP.ZM.FIX.BCJINREP.F&FECHA..CUENTAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=MXCP.ZM.FIX.ZMPDBLOQ.F&FECHA..SALSORT7,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCDPO38),DISP=SHR
