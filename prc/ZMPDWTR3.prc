//ZMPDWTR3  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMPDWTR3                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* DESACARGA CONTRATOS BURSATILES PARA ACTUALIZACION DE TELEFONO      *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*--------------------------------------------------------------------*00240002
//*====================================================================*
//* PASO     : PWT03P02                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA CTECOMP                            *
//*====================================================================*
//PWT03P02 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PWT02P01,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..BURSAT1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZWT03T02),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : PWT03P01                                                 *00240002
//* UTIL/PGM: ZM4BTR02                                                 *00240002
//* OBJETIVO: FORMATEO ARCHIVO BURSATILES                              *00240002
//*--------------------------------------------------------------------*
//PWT03P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMBTRE01 DD DSN=MXCP.ZM.FIX.ZBTRADER.F&FECHA..BURSAT1,
//            DISP=SHR
//*
//ZMBTRS01 DD DSN=MXCP.ZM.FIX.BTRADER.F&FECHA..ACTBURSA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=248,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZWT03T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PWT03P00.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO DE CAMBIO DE    *
//*              NOMBRE PARA MENEJO DE PLD, CONTINUACION DE SU PROCESO *
//*              Y OBTENCION DEL CAMPO SEGMENTO PLD POR PERSONAS.      *
//*--------------------------------------------------------------------*
//PWT03P00 EXEC PGM=IOACND,PARM='ADD COND BCJDWTR3_OUT_OK WDATE',
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
//*                  FIN DE PROCESO ZMPDWTR3                           *
//*--------------------------------------------------------------------*
//*
