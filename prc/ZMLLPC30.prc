//ZMLLPC30 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A).              *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPC30.                                           *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  PROCESO DE CARDA AUTOMATICA DE FACTORES SIVA.       *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO.                                      *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO.                                      *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*--------------------------------------------------------------------*//
//*        L O G    D E   M O D I F I C A C I O N E S                  *//
//*--------------------------------------------------------------------*//
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *//
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.1.0-01  XMCH019 04OCT12 SE MODIFICA EL PASO PLC30P01 Y SE     *
//*                              AGREGA EL PASO PLC30P0A.              *
//*            *        *       *                                      *
//*--------------------------------------------------------------------*
//*---------------------------------------------------------------------
//*---------------------------------------------------------------------
//* PASO    : PLC30P01
//* PROGRAMA: IKJEFT01
//* OBJETIVO: CARGA AUTOMATICA DE FACTORES Y TENENCIA
//*---------------------------------------------------------------------
//PLC30P01 EXEC PGM=IKJEFT01
//*
//ZMJ081E1 DD DSN=MXC&AMB..ZM.FIX.CBP.FACTORES.SIVA,DISP=SHR
//*
//ZMJ081S1 DD DSN=MXC&AMB..ZM.FIX.CBP.FACTORES.INCI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//* FS-1.1.0-01-INI
//ZMJ081S2 DD DSN=MXC&AMB..ZM.TMP.SIN.ECBP.ZMJDPE11,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=96,BLKSIZE=0,DSORG=PS)
//* FS-1.1.0-01-FIN
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC30T01),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//****************************************************************
//* PASO DE BORRADO DE ARCHIVO FATORES
//****************************************************************
//PLC30P00 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.CBP.FACTORES.SIVA,
//         DISP=(SHR,DELETE,DELETE)
//*
//* FS-1.1.0-01-INI
//**********************************************************************
//*                SE ADICIONA CONDICION                               *
//*                PARA QUE SEA TOMADA POR CTL-M                       *
//**********************************************************************
//PLC30P0A EXEC  PGM=CTMCND,PARM='ADD COND SIVAXRTE_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB   DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM    DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//          DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG     DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG    DD SYSOUT=*
//SYSPRINT  DD DUMMY
//SYSUDUMP  DD DUMMY
//DAPRINT   DD SYSOUT=*
//DACNDIN   DD DDNAME=SYSIN
//* FS-1.1.0-01-FIN
//*
