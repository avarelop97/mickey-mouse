//ZMPFINIO PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM                                                  *
//* PROCESO      : ZMPFINIO.                                           *
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
//* PAOO       : ZMAM0130.                                             *
//* PROGRAMA   : IEFBR14                                               *
//* OBJETIVO     : GENERACION DE TRANSMISION DE CUENTAS POR BANQUEROS  *
//*              : Y NUMERO DE CUENTAS DE CLIENTES                     *
//*--------------------------------------------------------------------*
//ZMAM0130 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//BANQUERO DD DSN=MXCP.ZM.FIX.REP.F&FECHA..BANQUERO,
//            DISP=(MOD,DELETE,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=096,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE)
//CLIENTE  DD DSN=MXCP.ZM.FIX.REP.F&FECHA..CLIENTE,
//            DISP=(MOD,DELETE,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=034,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE)
//*====================================================================*
//* PROGRAMA: ADUUMAIN                                                 *00022600
//* OBJETIVO: DESCARGA DATOS NECESARIOS PARA GENERAR EL ARCHIVO        *00022700
//*--------------------------------------------------------------------*00022800
//ZMAM0120 EXEC PGM=ADUUMAIN,                                           00022900
//          PARM='MXP1,ZMAM0120,NEW,,MSGLEVEL(1)'                       00023000
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCFINIQ),DISP=SHR
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSREC   DD DSN=&&UNLOAD01,
//            DISP=(,PASS,DELETE),                                      00023900
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,                      00024000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=181,BLKSIZE=0)
//SYSUDUMP DD SYSOUT=*                                                  00024700
//UTPRINT  DD SYSOUT=*                                                  00024500
//*--------------------------------------------------------------------*
//* PASO       : ZMAM0110.                                             *
//* PROGRAMA   : ZM4FINIQ                                              *
//* OBJETIVO     : GENERACION DE TRANSMISION DE CUENTAS POR BANQUEROS  *
//*              : Y NUMERO DE CUENTAS DE CLIENTES                     *
//*--------------------------------------------------------------------*
//ZMAM0110 EXEC PGM=ZM4FINIQ,COND=(4,LT)
//*
//BANQUERO DD DSN=MXCP.ZM.FIX.REP.F&FECHA..BANQUERO,
//            DISP=(,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=096,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE)
//CLIENTE  DD DSN=MXCP.ZM.FIX.REP.F&FECHA..CLIENTE,
//            DISP=(,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=034,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE)
//UNLOAD01 DD DSN=&&UNLOAD01,
//            DISP=(OLD,DELETE,DELETE)
//SYSOUT   DD SYSOUT=*
//*--------------------------------------------------------------------*
//*  JOBSTEP  : ZMAM0100                                               *
//*  PROGRAM  : CTMCND                                                 *
//*  OBJECTIVE: LIBERA CONDICION DE ACTIVACION DE SEND POR DATAX.      *
//*--------------------------------------------------------------------*
//ZMAM0100 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND CBXCRX-ZMFINIQO-TR &FE1'
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
//*                       FIN  PROCESO  ZMPFINIO                       *
//*--------------------------------------------------------------------*
