//ZMHFND36 PROC
//*--------------------------------------------------------------------*
//* APLICACION  : MUV                                                  *
//* PROCESO     : ZMHFND36                                             *
//* OBJETIVO    : GENERA ARCHIVO DE CREDITOS UG CON CARTA ACT / DESACT *
//*PERIODICIDAD : DIARIO.                                              *
//* REALIZO     : HITSS                                                *
//* FECHA       : AGOSTO 2017                                          *
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-00  CDRXXX  DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX       *
//*--------------------------------------------------------------------*
//* PASO        : PHF36P02                                             *
//* PROGRAMA    : ZM3DG001.                                            *
//* OBJETIVO    : DEFINITIVO.                                          *
//* REINICIO DESDE ESTE PASO.                                          *
//*--------------------------------------------------------------------*
//PHF36P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.VAL.E&EMP..S&SUC..ZMHFPD36,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//*--------------------------------------------------------------------*
//* PASO        : PHF36P02                                             *
//* PROGRAMA    : IKJEFT01                                             *
//* OBJETIVO    : DEFINITIVO.                                          *
//* REINICIO DESDE ESTE PASO.                                          *
//*
//*--------------------------------------------------------------------*
//PHF36P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFIJU02 DD DSN=MXC&AMB..ZM.TMP.E&EMP..S&SUC..CREDMUV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=20,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(50,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF36T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    :    PHF36P01                                            *
//*   PROGRAMA:    ICEMAN                                              *
//*   OBJETIVO:    ORDENA ARCHIVO POR CONTRATO DE CREDITO              *
//*--------------------------------------------------------------------*
//PHF36P01 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.E&EMP..S&SUC..CREDMUV,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..CREDMUV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=20,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(50,20),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF36T00),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    :    PHF36P00                                            *
//*   PROGRAMA:    IOACND                                              *
//*   OBJETIVO:    ADICIONA CONDICION PARA ENTRADA DE ARCHIVO DE       *
//*                NUEVAS CONSTANCIAS PARA LA PLATAFORMA FISCAL        *
//*--------------------------------------------------------------------*
//PHF36P00 EXEC PGM=IOACND,
//         PARM='ADD COND BCHFND36_IN_OK WDATE',
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
//*                        Z M H F P D 3 4                             *
//*--------------------------------------------------------------------*
