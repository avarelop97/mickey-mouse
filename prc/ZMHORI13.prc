//ZMHORI13 PROC
//*===+================================================================*
//*    NOMBRE            : ZMHORI13.                                   *
//*    APLICATIVO        : ZM@.                                        *
//*    PROYECTO          : PFM ADVICE FACTORY                          *
//*    OBJETIVO          : DESCARGA INSUMOS PARA APROVISIONAMIENTO     *
//*                                                                    *
//*    AUTOR             : GONET - XMX8336 - EDUARDO PEREZ SANCHEZ     *
//*    FECHA DE CREACION : 02 DE DICIEMBRE DE 2022.                    *
//*====================================================================*
//*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*   XXXXXXXXX   XXXXXXX  DDMMMAA    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*00022800
//* PROGRAMA: ADUUMAIN                                                 *00022600
//* OBJETIVO: DESCARGA DE LA TABLA HECHOS   DEL MUV                    *00022700
//*--------------------------------------------------------------------*00022800
//ZMHO1315 EXEC PGM=ADUUMAIN,                                           00022900
//          PARM='MXP1,ZMHO1315,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCHORI13.USUCURSA,
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,                      00024000
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0)
//*                                                                     00024200
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : ZMHO1310.                                                *
//* PROGRAMA: ADUUMAIN.                                                *
//* OBJETIVO: SE DESCARGA LA TABLA PERJUR.                             *
//**********************************************************************
//ZMHO1310 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMHO1310,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCHORI13.ULPERJUR,
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,                      00024000
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*--------------------------------------------------------------------*
//* PASO       : ZMHO1301.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO DE INGESTAS     *
//*--------------------------------------------------------------------*
//ZMHO1301 EXEC PGM=IOACND,PARM='ADD COND BCHORI13_OK &FEC',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
//*--------------------------------------------------------------------*
//*                  F I N   D E   P R O C E S O                       *
//*--------------------------------------------------------------------*
