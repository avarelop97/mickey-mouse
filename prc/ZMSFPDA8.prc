//ZMSFPDA8 PROC                                                         00010006
//**********************************************************************00010006
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00010006
//* PROCESO        :  BCSFCDA8                                         *00010006
//*                   ARCHIVOS EXTRACTORES BANPAT BCM                  *00010006
//* CORRE                                                              *00010006
//* ANTES DE       :                                                   *00010006
//* DESPUES DE     :                                                   *00010006
//* REALIZO        :  FSW DGCM.                                        *00010006
//* FECHA          :  JUNIO 2017.                                      *00010006
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *00010006
//**********************************************************************00010006
//PSFA8P90 EXEC PGM=ZM3DG001,                                           00300009
//         PARM=('&EMP','   ','   ','   ',)                             00310006
//SYSTSPRT DD SYSOUT=*                                                  00312006
//SYSPRINT DD SYSOUT=*                                                  00313006
//SYSOUT   DD SYSOUT=*                                                  00314006
//SYSDBOUT DD SYSOUT=*                                                  00315006
//SYSABOUT DD DUMMY                                                     00316006
//SYSUDUMP DD DUMMY                                                     00317006
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZMSFPDA8,                  00319006
//            DISP=(NEW,CATLG,DELETE),                                  00320006
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00330006
//            UNIT=3390,                                                00340006
//            SPACE=(CYL,(2,1),RLSE)                                    00350008
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM4DS0A1                                 00370006
//*   GENERACION DE ARCHIVOS DE CLIENTES                                00380006
//********************************************************************* 00390006
//PSFA8P85 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400006
//ZMS001A1 DD DSN=MXC&AMB..ZM.FIX.CON.AMCP,DISP=SHR                     00420006
//ZMS001A2 DD DSN=MXC&AMB..ZM.FIX.SIE.ZMSFPDA8.CLIENTES.F&FECHA,        00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=779,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//*
//ZMS001A3 DD DSN=MXC&AMB..ZM.FIX.SIE.ZMSFPDA8.CLIENTES.CIFRAS,         00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=080,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PSFA8P85),DISP=SHR                   00530006
//*
//**********************************************************************00939706
//*   EJECUCION DEL PROGRAMA:  ZM4DS0A2                                *00939806
//*   OBTIENE OPERACIONES PARA SISTEMA ESTADISTICO                     *00939906
//**********************************************************************00939706
//PSFA8P80 EXEC PGM=IKJEFT01,COND=(4,LT)                                00940106
//SYSTSPRT DD SYSOUT=*                                                  00940306
//ZMS002A1 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZMSFPDA8,DISP=SHR          00940406
//ZMS002A2 DD DSN=MXC&AMB..ZM.FIX.SIE.ZMSFPDA8.OPERA.F&FECHA,           00940506
//            DISP=(NEW,CATLG,DELETE),                                  00940606
//            DCB=(LRECL=248,RECFM=FB,BLKSIZE=0,DSORG=PS),              00940706
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00940808
//ZMS002A3 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZM4S002.EFEVTAS,           00940506
//            DISP=(NEW,CATLG,DELETE),                                  00940606
//            DCB=(LRECL=074,RECFM=FB,BLKSIZE=0,DSORG=PS),              00940706
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00940808
//ZMS002A4 DD DUMMY                                                     00940506
//ZMS002A5 DD DSN=MXC&AMB..ZM.FIX.SIE.ZMSFPDA8.OPERA.CIFRAS,            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=080,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//SYSPRINT DD SYSOUT=*                                                  00940906
//SYSOUT   DD SYSOUT=*                                                  00941006
//SYSDBOUT DD SYSOUT=*                                                  00941106
//SYSABOUT DD SYSOUT=*                                                  00941206
//SYSUDUMP DD DUMMY                                                     00941306
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PSFA8P80),DISP=SHR                   00941406
//*
//**********************************************************************00941606
//* PROGRAMA: ICEMAN                SORT                               *00941706
//* OBJETIVO: SORTEA LA INFORMACION POR CUENTA (CONCILIA)              *00941806
//**********************************************************************00942006
//PSFA8P75 EXEC PGM=ICEMAN,COND=(4,LT)                                  00943006
//SYSOUT   DD SYSOUT=*                                                  00945006
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.SIE.VIBB80D.CONCIL2,DISP=SHR          00946006
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..TENEN01,                   00948006
//            DISP=(NEW,CATLG,DELETE),                                  00949006
//            DCB=(LRECL=625,RECFM=FB,BLKSIZE=0,DSORG=PS),              00949106
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00949208
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PSFA8P75),DISP=SHR                   00950110
//*                                                                     00950210
//**********************************************************************00941606
//* PROGRAMA: ICEMAN                SORT                                00941706
//* OBJETIVO: SORTEA LA INFORMACION DE ARCHIVO EFEVTAS                  00941806
//**********************************************************************00941606
//PSFA8P70 EXEC PGM=ICEMAN,COND=(4,LT)                                  00943006
//SYSOUT   DD SYSOUT=*                                                  00945006
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZM4S002.EFEVTAS,DISP=SHR   00946006
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..EFEVTAS.SORT,              00948006
//            DISP=(NEW,CATLG,DELETE),                                  00949006
//            DCB=(LRECL=70,RECFM=FB,BLKSIZE=0,DSORG=PS),               00949106
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00949208
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PSFA8P70),DISP=SHR                   00950110
//*                                                                     00941506
//**********************************************************************
//*   EJECUCION DEL PROGRAMA:  ZM4DSA43    (AGP)                       *
//*   EMITIR ARCHIVO DE TENECIA  INCLUYE IISIN                         *
//**********************************************************************
//PSFA8P65 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//ZMS043A1 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZMSFPDA8,DISP=SHR
//ZMS043A2 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..TENEN01,DISP=SHR
//ZMS043A3 DD DUMMY
//ZMS043A4 DD DUMMY
//ZMS043A5 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..EFEVTAS.SORT,DISP=SHR
//ZMS043A6 DD DUMMY
//ZMS043A7 DD DSN=MXC&AMB..ZM.FIX.SIE.ZMSFPDA8.CARTERA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=310,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//ZMS043A8 DD DSN=MXC&AMB..ZM.FIX.SIE.ZMSFPDA8.CARTERA.CIFRAS,          00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=080,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PSFA8P65),DISP=SHR
//*
//*JCVZ.I
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM4DS0A4                                 00370006
//*   GENERACION DE ARCHIVOS DE CLIENTES                                00380006
//********************************************************************* 00390006
//PSFA8P60 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400006
//ZMS001A1 DD DSN=MXC&AMB..ZM.FIX.CON.AMCP,DISP=SHR                     00420006
//ZMS001A2 DD DSN=MXC&AMB..ZM.FIX.SIE.ZMSFPDA8.CONSOLID.F&FECHA,        00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=52,RECFM=FB,BLKSIZE=0,DSORG=PS),               00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//*
//ZMS001A3 DD DSN=MXC&AMB..ZM.FIX.SIE.ZMSFPDA8.CONSOLID.CIFRAS,         00450006
//           DISP=(NEW,CATLG,DELETE),                                   00460006
//            DCB=(LRECL=080,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PSFA8P60),DISP=SHR                   00530006
//*
//*JCVZ.F
//**********************************************************************00900006
//*                    F I N   Z M S F P D A 8                         *00900006
//**********************************************************************00900006
