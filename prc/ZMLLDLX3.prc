//ZMLLDLX3 PROC                                                         00010800
//*                                                                     00020000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *
//*                                                                    *
//*   PROCEDIM. :  ZMLLDLX3 .                                          *
//*                                                                    *
//*   OBJETIVO  :  PREVIO DE REVERSO DE CORTE DE CUPON                 *
//*                                                                    *
//*   CORRE DESPUES DE:  ZXLLDLX3                                      *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   PERIODICIDAD    :  A PETICION                                    *
//*                                                                    *
//*   ELABORADO POR   :                                                *
//*                                                                    *
//*   FECHA:  MAYO 2016.                                               *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  GENERA REPORTE CON LA POSICION DE TODO EL CUPON A REVERSAR        *00030000
//**********************************************************************00060000
//PLCX3P50 EXEC PGM=IKJEFT01                                            00510002
//*                                                                     00520000
//ARCENTRA DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZXLLDLX3,DISP=SHR  00520000
//*                                                                     00520000
//ARCPOSIC DD DSN=MXC&AMB..ZM.FIX.MDD.PREVIO.REVCCMDD.D&FECHA,          00520000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00520000
//            DCB=(DSORG=PS,LRECL=118,RECFM=FB,BLKSIZE=0),              00520000
//            SPACE=(CYL,(100,50),RLSE)                                 00520000
//SYSTSPRT DD  SYSOUT=*                                                 00570000
//SYSPRINT DD  SYSOUT=*                                                 00580000
//SYSOUT   DD  SYSOUT=*                                                 00590000
//SYSDBOUT DD  SYSOUT=*                                                 00600000
//SYSABOUT DD  DUMMY                                                    00610000
//SYSUDUMP DD  DUMMY                                                    00620002
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLCX3T50),DISP=SHR                  00630000
//**********************************************************************
//* OBJETIVO : MANDA EL REPORTE ANTERIOR A LA BANDEJA DE REPORTES  -   *
//**********************************************************************
//PLCX3P40 EXEC  PGM=ICEGENER,COND=(0,NE,PLCX3P50)
//SYSUT1   DD  DSN=MXC&AMB..ZM.FIX.MDD.PREVIO.REVCCMDD.D&FECHA,
//             DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//*        SE ADICIONA CONDICION PARA EL BCLLDLX3                      *
//*                PARA QUE SEA TOMADA POR CTL-M                       *
//**********************************************************************
//PLCX3P30 EXEC  PGM=CTMCND,PARM='ADD COND BCLLDLX3_IN_SEP WDATE',
//         COND=(0,NE,PLCX3P50)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//**********************************************************************00010000
//*            F I N      Z M L L D L X 3                              *
//**********************************************************************00060000
