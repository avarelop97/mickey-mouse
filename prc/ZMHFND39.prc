//ZMHFND39 PROC
//*--------------------------------------------------------------------*
//* APLICACION  : MUV                                                  *
//* PROCESO     : ZMHFND39                                             *
//* OBJETIVO    : GENERA ARCHIVO DE CARTAS AUTORIZADAS PARA ENVIO A MP *
//* PERIODICIDAD: DIARIO                                               *
//* REALIZO     : XMY4145                                              *
//* FECHA       : MAYO 2018                                            *
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* XXXXXXXXXXX  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX       *
//*--------------------------------------------------------------------*
//* PASO        : PHF39P02                                             *
//* PROGRAMA    : ZM3DG001.                                            *
//* OBJETIVO    : DEFINITIVO.                                          *
//* REINICIO DESDE ESTE PASO.                                          *
//*--------------------------------------------------------------------*
//PHF39P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.VAL.E&EMP..S&SUC..ZMHFPD39,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE)
//*--------------------------------------------------------------------*
//* PASO        : PHF39P01                                             *
//* PROGRAMA    : IKJEFT01                                             *
//* OBJETIVO    : DEFINITIVO.                                          *
//* REINICIO DESDE ESTE PASO.                                          *
//*--------------------------------------------------------------------*
//PHF39P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFIJU01 DD DSN=MXC&AMB..ZM.WKF.E&EMP..S&SUC..CARTTDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=20,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF39T01),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO        : PHF39P0B                                             *
//* PROGRAMA    : ICEMAN                                               *
//* OBJETIVO    : ORDENA ARCHIVO POR CONTRATO DE TDC A 10 POSICION     *
//* REINICIO DESDE ESTE PASO.                                          *
//*--------------------------------------------------------------------*
//PHF39P0B EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.WKF.E&EMP..S&SUC..CARTTDC,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.WKF.E&EMP..S&SUC..CARTTDC.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=20,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF39T0B),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO        : PHF39P0A                                             *
//* PROGRAMA    : ICEMAN                                               *
//* OBJETIVO    : ORDENA ARCHIVO POR CONTRATO DE CREDITO A 10 POSICION *
//* REINICIO DESDE ESTE PASO.                                          *
//*
//*--------------------------------------------------------------------*
//PHF39P0A EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.WKF.E&EMP..S&SUC..CARTTDC.SORT,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..CARTTDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=20,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF39T0A),DISP=SHR
//*--------------------------------------------------------------------*
//*   PASO    :    PHF39P0A                                            *
//*   PROGRAMA:    IOACND                                              *
//*   OBJETIVO:    ADICIONA CONDICION PARA ENTRADA DE ARCHIVO DE       *
//*                NUEVAS CONSTANCIAS PARA LA PLATAFORMA FISCAL        *
//*--------------------------------------------------------------------*
//PHF39P00 EXEC PGM=IOACND,
//         PARM='ADD COND BCHFND39_IN_OK WDATE',
//         COND=(4,LT)
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
//*--------------------------------------------------------------------*
//*                        Z M H F P D 3 9                             *
//*--------------------------------------------------------------------*
