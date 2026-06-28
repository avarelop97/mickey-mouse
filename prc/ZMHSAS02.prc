//ZMHSAS02  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMHSAS02                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* GENERACION DE ARCHIVOS DE TRANSACCIONALES PARA SER ENVIADO AL      *
//* MODULO PLD.                                                        *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*--------------------------------------------------------------------*00240002
//* PASO    : PSA02P01                                                 *00240002
//* UTIL/PGM: ZM3SAS01                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//PSA02P01 EXEC PGM=ZM3SAS01,PARM=&FECHA2                               00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZSA02T01),DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM4SAS03.TRA.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*====================================================================*
//* PASO     : PSA02P02                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA OPERA.                             *
//*====================================================================*
//PSA02P02 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PSA02P02,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZTRASSAS.F&FECHA..ENTRADA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZM4SAS03.TRA.CTC,DISP=SHR
//**********************************************************************
//* PASO     : PSA02P03                                                *
//* UTILERIA   : IKJEFT01/ZM4SAS03                                     *
//* OBJETIVO   : GENERA ARCHIVO DE INTERFAZ DE TRANSFERENCIAS PARA     *
//*              PLD-SAS                                               *
//**********************************************************************
//PSA02P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSASE01 DD DSN=MXCP.ZM.FIX.ZTRASSAS.F&FECHA..ENTRADA,
//            DISP=SHR
//ZMSASS01 DD DSN=MXCP.ZM.FIX.INTERFAZ.SAS.TRASPAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=2936,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSA02T02),DISP=SHR                   01230041
//*--------------------------------------------------------------------*00240002
//* PASO    : PSA02P05                                                 *00240002
//* UTIL/PGM: ZM3SAS01                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//PSA02P05 EXEC PGM=ZM3SAS01,PARM=&FECHA2,COND=(4,LT)                   00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZSA02T03),DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM4SAS03.TRN.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*====================================================================*
//* PASO     : PSA02P06                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA OPERA.                             *
//*====================================================================*
//PSA02P06 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PSA02P02,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZTRANSAS.F&FECHA..ENTRADA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZM4SAS03.TRN.CTC,DISP=SHR
//**********************************************************************
//* PASO     : PSA02P07                                                *
//* UTILERIA   : IKJEFT01/ZM4SAS03                                     *
//* OBJETIVO   : GENERA ARCHIVO DE INTERFAZ DE TRANSACCIONES PARA      *
//*              PLD-SAS                                               *
//**********************************************************************
//PSA02P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSASE01 DD DSN=MXCP.ZM.FIX.ZTRANSAS.F&FECHA..ENTRADA,
//            DISP=SHR
//ZMSASS01 DD DSN=MXCP.ZM.FIX.INTERFAZ.SAS.TRANSAC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=2936,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSA02T02),DISP=SHR                   01230041
//*--------------------------------------------------------------------*
//* PASO       : PSA02P08.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO DE CAMBIO DE    *
//*              NOMBRE PARA MENEJO DE PLD, CONTINUACION DE SU PROCESO *
//*              Y OBTENCION DEL CAMPO SEGMENTO PLD POR PERSONAS.      *
//*--------------------------------------------------------------------*
//PSA02P08 EXEC PGM=IOACND,PARM='ADD COND AJJCSAS2_IN_OK &FECH1',
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
//*                  FIN DE PROCESO ZMHSAS02                           *
//*--------------------------------------------------------------------*
//*
