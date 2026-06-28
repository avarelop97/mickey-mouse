//ZMND4300 PROC
//**********************************************************************
//* SISTEMA        :  SISTEMA INTEGRAL DE INFORMACION ESTADISTICA      *
//*                               (S. I. I. E.)                        *
//*                                                                    *
//* PROCESO        :  EXTRACTORES DE ADMINISTRACION DE PROMOCION       *
//*                                                                    *
//* OBJETIVO       :  DAR NUEVO FORMATO A LOS EXTRACTORES QUE SON      *
//*                   USADOS POR EL NUEVO SSTEMA DE ADMINISTRACION     *
//*                   DE PROMOCION                                     *
//*                                                                    *
//* CORRE          :  DESPUES DEL SIIE                                 *
//*                                                                    *
//* REALIZO        :  CDA INFORMATICA                                  *
//*                                                                    *
//* FECHA          :  MAYO DE 2010                                     *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF43P85 EXEC PGM=ICEMAN                                              00070000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SORTIN   DD DSN=SIVA.SIE.FIX.IDINSEM,DISP=SHR                         00100000
//SORTOUT  DD DSN=SIVA.SIE.FIX.IDINSEM.NUEVO,                           00130000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00130000
//            DCB=(DSORG=PS,LRECL=101,RECFM=FB,BLKSIZE=0),              00130000
//            SPACE=(CYL,(10,5),RLSE)                                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF43T01),DISP=SHR                   00130000
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF43P80 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SORTIN   DD DSN=SIVA.SIE.FIX.IDTESEM,DISP=SHR                         00100000
//SORTOUT  DD DSN=SIVA.SIE.FIX.IDTESEM.NUEVO,                           00130000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00130000
//            DCB=(DSORG=PS,LRECL=172,RECFM=FB,BLKSIZE=0),              00130000
//            SPACE=(CYL,(10,5),RLSE)                                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF43T02),DISP=SHR                   00130000
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF43P75 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SORTIN   DD DSN=SIVA.SIE.FIX.IDAPMES,DISP=SHR                         00100000
//SORTOUT  DD DSN=SIVA.SIE.FIX.IDAPMES.NUEVO,                           00130000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00130000
//            DCB=(DSORG=PS,LRECL=179,RECFM=FB,BLKSIZE=0),              00130000
//            SPACE=(CYL,(10,5),RLSE)                                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF43T03),DISP=SHR                   00130000
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF43P70 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SORTIN   DD DSN=SIVA.SIE.FIX.IDAPMES,DISP=SHR                         00100000
//SORTOUT  DD DSN=SIVA.SIE.FIX.IDAPMES2.NUEVO,                          00130000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00130000
//            DCB=(DSORG=PS,LRECL=179,RECFM=FB,BLKSIZE=0),              00130000
//            SPACE=(CYL,(10,5),RLSE)                                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF43T04),DISP=SHR                   00130000
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF43P65 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SORTIN   DD DSN=SIVA.SIE.FIX.IDBAMES,DISP=SHR                         00100000
//SORTOUT  DD DSN=SIVA.SIE.FIX.IDBAMES.NUEVO,                           00130000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00130000
//            DCB=(DSORG=PS,LRECL=78,RECFM=FB,BLKSIZE=0),               00130000
//            SPACE=(CYL,(10,5),RLSE)                                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF43T05),DISP=SHR                   00130000
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF43P60 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SORTIN   DD DSN=SIVA.SIE.FIX.CAPTACIO.CUENTA,DISP=SHR                 00100000
//SORTOUT  DD DSN=SIVA.SIE.FIX.CAPTACIO.CUENTA.NUEVO,                   00130000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00130000
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),               00130000
//            SPACE=(CYL,(10,5),RLSE)                                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF43T06),DISP=SHR                   00130000
//*                                                                     00130000
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF43P55 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SORTIN   DD DSN=SIVA.SIE.FIX.CAPTACIO.PROMOT,DISP=SHR                 00100000
//SORTOUT  DD DSN=SIVA.SIE.FIX.CAPTACIO.PROMOT.NUEVO,                   00130000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00130000
//            DCB=(DSORG=PS,LRECL=96,RECFM=FB,BLKSIZE=0),               00130000
//            SPACE=(CYL,(10,5),RLSE)                                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF43T07),DISP=SHR                   00130000
//*                                                                     00130000
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF43P50 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SORTIN   DD DSN=SIVA.SIE.FIX.IDDPMES,DISP=SHR                         00100000
//SORTOUT  DD DSN=SIVA.SIE.FIX.IDDPMES.NUEVO,                           00130000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00130000
//            DCB=(DSORG=PS,LRECL=103,RECFM=FB,BLKSIZE=0),              00130000
//            SPACE=(CYL,(10,5),RLSE)                                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF43T08),DISP=SHR                   00130000
//*                                                                     00130000
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF43P45 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SORTIN   DD DSN=SIVA.SIE.FIX.IDINMES,DISP=SHR                         00100000
//SORTOUT  DD DSN=SIVA.SIE.FIX.IDINMES.NUEVO,                           00130000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00130000
//            DCB=(DSORG=PS,LRECL=116,RECFM=FB,BLKSIZE=0),              00130000
//            SPACE=(CYL,(10,5),RLSE)                                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF43T09),DISP=SHR                   00130000
//*                                                                     00130000
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF43P40 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SORTIN   DD DSN=SIVA.SIE.FIX.PRINMES,DISP=SHR                         00100000
//SORTOUT  DD DSN=SIVA.SIE.FIX.PRINMES.NUEVO,                           00130000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00130000
//            DCB=(DSORG=PS,LRECL=116,RECFM=FB,BLKSIZE=0),              00130000
//            SPACE=(CYL,(10,5),RLSE)                                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF43T10),DISP=SHR                   00130000
//*                                                                     00130000
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF43P35 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SORTIN   DD DSN=SIVA.SIE.FIX.IDSGMES,DISP=SHR                         00100000
//SORTOUT  DD DSN=SIVA.SIE.FIX.IDSGMES.NUEVO,                           00130000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00130000
//            DCB=(DSORG=PS,LRECL=85,RECFM=FB,BLKSIZE=0),               00130000
//            SPACE=(CYL,(10,5),RLSE)                                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF43T11),DISP=SHR                   00130000
//*                                                                     00130000
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF43P30 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SORTIN   DD DSN=SIVA.SIE.FIX.IDTCMES,DISP=SHR                         00100000
//SORTOUT  DD DSN=SIVA.SIE.FIX.IDTCMES.NUEVO,                           00130000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00130000
//            DCB=(DSORG=PS,LRECL=94,RECFM=FB,BLKSIZE=0),               00130000
//            SPACE=(CYL,(10,5),RLSE)                                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF43T12),DISP=SHR                   00130000
//*                                                                     00130000
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF43P25 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SORTIN   DD DSN=SIVA.SIE.FIX.IDTEMES,DISP=SHR                         00100000
//SORTOUT  DD DSN=SIVA.SIE.FIX.IDTEMES.NUEVO,                           00130000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00130000
//            DCB=(DSORG=PS,LRECL=161,RECFM=FB,BLKSIZE=0),              00130000
//            SPACE=(CYL,(10,5),RLSE)                                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF43T13),DISP=SHR                   00130000
//*                                                                     00130000
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF43P20 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SORTIN   DD DSN=SIVA.SIE.FIX.IDDPTRI,DISP=SHR                         00100000
//SORTOUT  DD DSN=SIVA.SIE.FIX.IDDPTRI.NUEVO,                           00130000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00130000
//            DCB=(DSORG=PS,LRECL=105,RECFM=FB,BLKSIZE=0),              00130000
//            SPACE=(CYL,(10,5),RLSE)                                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF43T14),DISP=SHR                   00130000
//*                                                                     00130000
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF43P15 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SORTIN   DD DSN=SIVA.SIE.FIX.IDDPANUA,DISP=SHR                        00100000
//SORTOUT  DD DSN=SIVA.SIE.FIX.IDDPANUA.NUEVO,                          00130000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00130000
//            DCB=(DSORG=PS,LRECL=107,RECFM=FB,BLKSIZE=0),              00130000
//            SPACE=(CYL,(10,5),RLSE)                                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF43T16),DISP=SHR                   00130000
//*                                                                     00130000
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF43P10 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SORTIN   DD DSN=SIVA.SIE.FIX.IDTCDIA,DISP=SHR                         00100000
//SORTOUT  DD DSN=SIVA.SIE.FIX.IDTCDIA.NUEVO,                           00130000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00130000
//            DCB=(DSORG=PS,LRECL=94,RECFM=FB,BLKSIZE=0),               00130000
//            SPACE=(CYL,(10,5),RLSE)                                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF43T12),DISP=SHR                   00130000
//*                                                                     00130000
