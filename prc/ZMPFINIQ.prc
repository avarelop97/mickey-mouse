//ZMPFINIQ PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM                                                  *
//* PROCESO      : ZMPFINIQ.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERACION DE TRANSMISION DE CUENTAS POR BANQUEROS  *
//*              : Y NUMERO DE CUENTAS DE CLIENTES                     *
//* REALIZO      :                                                     *
//* FECHA        :                                                     *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0130.                                             *
//* PROGRAMA   : IEFBR14                                               *
//* OBJETIVO     : GENERACION DE TRANSMISION DE CUENTAS POR BANQUEROS  *
//*              : Y NUMERO DE CUENTAS DE CLIENTES                     *
//*--------------------------------------------------------------------*
//ZMAM0130 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//PRFLINST DD DSN=MXCP.ZM.FIX.MAJP9NOC.PRFLINST.F&FECHA.,
//            DISP=(MOD,DELETE,DELETE),                                 00023900
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,                      00024000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=0368,BLKSIZE=0)
//*====================================================================*
//* PROGRAMA: ICEGENER                                                 *00022600
//* OBJETIVO: COPIAR EL ARCHIVO DESCARGADO POR MEDIO DEL PROCESO       *00022700
//*           AJJDBON1 A ARCHIVO GENERADO POR ZM@                      *00022700
//*--------------------------------------------------------------------*00022800
//ZMAM0120 EXEC PGM=ICEGENER                                            00022900
//SYSIN    DD DUMMY                                                     00024600
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUT1   DD DISP=SHR,DSN=MXBP.YH.FIX.F&FECHA..MYHPPVAA.EVALMER        00024600
//*YSUT1   DD DISP=SHR,DSN=MBVP.AJ.FIX.AJJDBON1.PRFLINST.F&FECHA        00024600
//SYSUT2   DD DISP=(,CATLG,DELETE),                                     00024600
//            DCB=(DSORG=PS,RECFM=FB,LRECL=368,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DSN=MXCP.ZM.FIX.MAJP9NOC.PRFLINST.F&FECHA
//*====================================================================*
//* PROGRAMA: ICEMAN                                                   *00022600
//* OBJETIVO: OUTREC AL ARCHIVO PERFIL INSTRUMENTOS                    *00022700
//*           PARA DEJARLO EN FORMATO CSV                              *00022700
//*--------------------------------------------------------------------*00022800
//ZMAM0110 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD  SYSOUT=*
//SORTIN   DD  DSN=MXCP.ZM.FIX.MAJP9NOC.PRFLINST.F&FECHA.,
//             DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.FIX.BCFINIQ1.PRFLINST.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(100,50),RLSE),
//             DCB=(DSORG=PS,RECFM=FB,LRECL=398,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCFINIO),DISP=SHR
//*--------------------------------------------------------------------*
//*  JOBSTEP  : ZMAM0100                                               *
//*  PROGRAM  : CTMCND                                                 *
//*  OBJECTIVE: LIBERA CONDICION DE ACTIVACION DE SEND POR DATAX.      *
//*--------------------------------------------------------------------*
//ZMAM0100 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND CBXCRX-ZMFINIQ1-TR &FE1'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//STEPLIB  DD   DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD,DISP=SHR
//DALOG    DD   DSN=SYS3.IOAD.SYSMBBV.DATA.LOG,DISP=SHR
//DARESF   DD   DSN=SYS3.CTMD.SYSMBBV.DATA.RES,DISP=SHR
//PRTDBG   DD   SYSOUT=Z
//SYSIN    DD   DUMMY
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
//*--------------------------------------------------------------------*
//*                       FIN  PROCESO  ZMPFINIQ                       *
//*--------------------------------------------------------------------*
