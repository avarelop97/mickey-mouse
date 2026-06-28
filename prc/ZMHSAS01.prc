//ZMHSAS01  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMHSAS01                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* GENERACION DE ARCHIVOS DE CUENTAS, SALDOS Y TRANSACCIONALES PARA   *
//* SER ENVIADO AL MODULO PLD.                                         *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*====================================================================*
//* PASO     : PSA01P01                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA CUENTA                             *
//*====================================================================*
//PSA01P01 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PSA01P01,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZCUENSAS.F&FECHA..ENTRADA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSA01T01),DISP=SHR
//**********************************************************************
//* PASO     : PSA01P02                                                *
//* UTILERIA   : IKJEFT01/ZM4SAS01                                     *
//* OBJETIVO   : GENERA ARCHIVO DE INTERFAZ DE CUENTAS PARA PLD-SAS    *
//**********************************************************************
//PSA01P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSASE01 DD DSN=MXCP.ZM.FIX.ZCUENSAS.F&FECHA..ENTRADA,
//            DISP=SHR
//ZMSASS01 DD DSN=MXCP.ZM.FIX.INTERFAZ.SAS.CUENTAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=325,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSA01T02),DISP=SHR                   01230041
//*--------------------------------------------------------------------*00240002
//* PASO    : PSA01P03                                                 *00240002
//* UTIL/PGM: ZM3SAS02                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL PARA OBTENER LA FECHA.        *00240002
//*--------------------------------------------------------------------*
//PSA01P03 EXEC PGM=ZM3SAS02,PARM=&FECHA2,COND=(4,LT)                   00780700
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM3SAS02.FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=10,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* PASO     : PSA01P04                                                *
//* UTILERIA   : IKJEFT01/ZM4SAS02                                     *
//* OBJETIVO   : GENERA ARCHIVO DE INTERFAZ DE SALDOS PARA PLD-SAS     *
//**********************************************************************
//PSA01P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSASE02 DD DSN=MXCP.ZM.FIX.ZCUENSAS.F&FECHA..ENTRADA,
//            DISP=SHR
//ZMSASE12 DD DSN=MXCP.ZM.TMP.ZM3SAS02.FECHA,
//            DISP=SHR
//ZMSASS02 DD DSN=MXCP.ZM.FIX.INTERFAZ.SAS.SALDOS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=163,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSA01T03),DISP=SHR                   01230041
//*--------------------------------------------------------------------*
//* PASO       : PSA01P05.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO DE CAMBIO DE    *
//*              NOMBRE PARA MENEJO DE PLD, CONTINUACION DE SU PROCESO *
//*              Y OBTENCION DEL CAMPO SEGMENTO PLD POR PERSONAS.      *
//*--------------------------------------------------------------------*
//PSA01P05 EXEC PGM=IOACND,PARM='ADD COND AJJCSAS1_IN_OK &FECH1',
//          COND=(4,LT)
//*
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
//*                  FIN DE PROCESO ZMHSAS01                           *
//*--------------------------------------------------------------------*
//*
