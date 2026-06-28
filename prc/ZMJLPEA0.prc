//ZMJLPEA0 PROC                                                         00000100
//**** **************************************************************** 00000200
//*                     C A S A   D E   B O L S A                     * 00000300
//*                     =========================                     * 00000400
//*                    << MERCADO DE CAPITALES >>                     * 00000500
//*                                                                   * 00000600
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  * 00000700
//*                                                                   * 00000800
//*   JCL              :  SIVAXAP0                                    * 00000900
//*                                                                   * 00001000
//*   CADENA           :  OPCION ZA0 -> JCL SIVAXAP0 -> PRC ZMJLPEA0  * 00001100
//*                                                                   * 00001200
//*   OBJETIVO         :  ENCENDER CONDICION SIVAXAP0_OK              * 00001300
//*                                                                   * 00001400
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION 1 (ZAA7) P/USUARIO* 00001500
//*                                                                   * 00001600
//*   CORRE ANTES   DE :  NINGUNO                                     * 00001700
//*                                                                   * 00001800
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      * 00001900
//*                                                                   * 00002000
//*   ELABORADO POR    :  EVERIS                                      * 00002100
//*                                                                   * 00002200
//*   FECHA            :  NOVIEMBRE/ 2007                             * 00002300
//*                                                                   * 00002400
//********************************************************************* 00002500
//********************************************************************* 00002600
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO   * 00002700
//********************************************************************* 00002800
//PJL01P10 EXEC PGM=ZM3DG001,                                           00002900
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00002910
//SYSTSPRT DD SYSOUT=*                                                  00003000
//SYSPRINT DD SYSOUT=*                                                  00003100
//SYSOUT   DD SYSOUT=*                                                  00003200
//SYSDBOUT DD SYSOUT=*                                                  00003300
//SYSABOUT DD DUMMY                                                     00003400
//SYSUDUMP DD DUMMY                                                     00003500
//*                                                                     00003600
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLPEA0,                   00003700
//            DISP=(NEW,CATLG,DELETE),                                  00003800
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00003900
//            UNIT=3390,                                                00004000
//            SPACE=(CYL,(2,1),RLSE)                                    00004100
//*                                                                     00004200
//**********************************************************************00004300
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROLM PARA QUE SEA LANZADO EL *00004400
//*            JCL CBJLNEA8: CARGA AUTOMATICA DE PRECIOS               *00004500
//**********************************************************************00004600
//*PJLA7P01 EXEC  PGM=CTMCND,PARM='ADD COND     SIVAXAP0_OK     WDATE', 00004700
//*         COND=(4,LT)                                                 00004800
//**                                                                    00004900
//*STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00005000
//*DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00005100
//*         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00005200
//*DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00005300
//*DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00005400
//**                                                                    00005500
//*PRTDBG   DD   SYSOUT=*                                               00005600
//*SYSPRINT DD   DUMMY                                                  00005700
//*SYSUDUMP DD   DUMMY                                                  00005800
//*DAPRINT  DD   SYSOUT=*                                               00005900
//**                                                                    00004900
//*--------------------------------------------------------------------*
//*   PASO    :    PJLA7P00                                            *
//*   PROGRAMA:    IOACND                                              *
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR DATAX    *
//*--------------------------------------------------------------------*
//PJLA7P00 EXEC PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND CBXCRX_ZMJLPEA000 WDATE'
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
//*
