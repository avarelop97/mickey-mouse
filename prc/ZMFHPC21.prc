//ZMFHPC21 PROC                                                         00001001
//**********************************************************************00001100
//*                                                                    *00001200
//*                     C A S A   D E   B O L S A                      *00001300
//*                     =========================                      *00001400
//*                     <<  MERCADO DE VALORES >>                      *00001500
//*                                                                    *00001600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00001700
//*                                                                    *00001800
//*   PROCEDIMI.:  ZMFHPC21                                            *00001901
//*                                                                    *00002000
//*   OBJETIVO  :  EJECUCION DEFINITIVO DE FHIPO (Z501)                *00003001
//*                                                                    *00003600
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003700
//*                                                                    *00003800
//*   FECHA     :  DICIEMBRE 2017                                      *00003901
//*                                                                    *00004000
//*   AUTOR     :  ACCENTURE.                                          *00004201
//*                                                                    *00004300
//*                                                                    *00004400
//**********************************************************************00004500
//*                                                                    *00004600
//**********************************************************************00004700
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO    00004800
//**********************************************************************00004900
//*FHIPO-2018-02
//*====================================================================*
//* PASO     : PDO62050                                                *
//* OBJETIVO : GENERA CAPAS FICTICIAS                                  *
//* PROGRAMA : ZM4CSCC0                                                *
//**********************************************************************
//PDO62060 EXEC PGM=IKJEFT01
//*
//PIO62060 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ENTRADA1 DD DSN=MXCP.ZM.FIX.ENTRADA.ZMJLPCC2,DISP=SHR
//*
//SALIDA02 DD DSN=MXCP.ZM.FIX.FHIPO.ZM4CSCC0.INC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=246,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL21C00),DISP=SHR
//*FIN-FHIPO-02-2018
//**********************************************************************00007300
//* PROGRAMA: ZM4CSCC1                                                 *00007400
//* FUNCION:  EJECUCION DE PROCESO DEFINITIVO FHIPO (ZM4CSCC1)         *00007501
//**********************************************************************00007600
//PJH21P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007701
//SYSTSPRT DD SYSOUT=*                                                  00070100
//SYSPRINT DD SYSOUT=*                                                  00070200
//SYSOUT   DD SYSOUT=*                                                  00070300
//SYSDBOUT DD SYSOUT=*                                                  00070400
//SYSABOUT DD SYSOUT=*                                                  00070500
//SYSUDUMP DD DUMMY                                                     00070600
//ENTRADA1 DD DSN=MXCP.ZM.FIX.ENTRADA.ZMJLPCC2,DISP=SHR                 00080100
//*                                                                     00080200
//CUENTAVA DD DSN=MXCP.ZM.FIX.FHIPO.ZM4CSCC1.VAC,                       00080300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00080400
//            DCB=(DSORG=PS,LRECL=120,RECFM=FBA,BLKSIZE=0),             00080500
//            SPACE=(CYL,(100,50),RLSE)                                 00080600
//REGESTC  DD DSN=MXCP.ZM.FIX.FHIPO.ZM4CSCC1.ARCHTXT,                   00080700
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00080800
//*           DCB=(DSORG=PS,LRECL=120,RECFM=FBA,BLKSIZE=0),             00080900
//            DCB=(DSORG=PS,LRECL=127,RECFM=FBA,BLKSIZE=0),             00080900
//            SPACE=(CYL,(100,50),RLSE)                                 00081000
//SALIDAD  DD DSN=MXCP.ZM.FIX.FHIPO.ZM4CSCC1,                           00081001
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00081002
//*           DCB=(DSORG=PS,LRECL=118,RECFM=FBA,BLKSIZE=0),             00081003
//            DCB=(DSORG=PS,LRECL=126,RECFM=FBA,BLKSIZE=0),             00081003
//            SPACE=(CYL,(100,50),RLSE)                                 00081004
//SALIDA01 DD DSN=MXCP.ZM.FIX.FHIPO.ZM4CSCC1.INC,                       00081005
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00081006
//            DCB=(DSORG=PS,LRECL=246,RECFM=FBA,BLKSIZE=0),             00081007
//            SPACE=(CYL,(100,50),RLSE)                                 00081008
//*                                                                     00081009
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL21C10),DISP=SHR                   00081010
//**********************************************************************00007300
//* PROGRAMA: CTMCND                                                   *00007400
//* FUNCION:  TRANSMISION DE ARCHIVO DEFINITIVO FHIPO (ZM4CSCC1)       *00007501
//**********************************************************************00007600
// IF (PJH21P10.RC = 1) THEN
//PJH21P09 EXEC PGM=CTMCND,PARM='ADD COND BZDFHIP1_IN_OK WDATE',
//          COND=(4,LT)
//*
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
// ENDIF
//**********************************************************************00007300
//* PROGRAMA: CTMCND                                                   *00007400
//* FUNCION:  TRANSMISION DE ARCHIVO DEFINITIVO FHIPO (ZM4CSCC1)       *00007501
//**********************************************************************00007600
//PJH21P08 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.FHIPO.ZM4CSCC1,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//**********************************************************************00007300
//*                    FIN DE PROCESO                          )       *00007501
//**********************************************************************00007600
