//ZMPLCOEA PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : ZM@ - ZIVA MULTIEMPRESA                              *
//* OBJETIVO    : REALIZA LA DESCARGA DE LA TABLA CUENTA Y PORTERIOR   *
//*               VALIDA SI EXISTE REGISTRO EN VSAM P/REALIZA UPDATE.  *
//* PERIODICIDAD: MENSUAL                                              *
//* AUTOR       : FSW-DGCM(CCM)                                        *
//* FECHA       : 27 DE SEPTIEMBRE DE 2018                             *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*  @MEX00-I  ......... ....... ..................................... *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO       : ZMCOEA90.                                             *
//* UTILERIA   : ADUUMAIN.                                             *
//* OBJETIVO   : DESCARGA DE LA TABLA CUENTA.                          *
//*--------------------------------------------------------------------*
//ZMCOEA90 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMCOEA90,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCJLCOEA.DESCARGA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(BLKSIZE=0,RECFM=FB,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//SYSOUT   DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCOEA85),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCOEA80.                                             *
//* UTILERIA   : IKJEFT01/ZM4CCEMA.                                    *
//* OBJETIVO   : BUSCA REG DE CUENTA EN ARCHIVO VSAM PARA ACT. CUENTA. *
//*--------------------------------------------------------------------*
//ZMCOEA80 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.BCJLCOEA.DESCARGA,
//            DISP=SHR
//VSAMIEDC DD DSN=MXBP.IE.VSB.MTGFDR.FDR.CONSULT.CTAS.BG,
//            DISP=SHR
//SALIDA01 DD DSN=MXCP.ZM.FIX.BCJLCOEA.INHIBIC.MUV.IE,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(100,050),RLSE),
//            UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=110)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCOEA80),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCOEA70.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : COPIA ARCHIVO Y OBTIENE UNICAMENTE PRODUCTO 21.       *
//*--------------------------------------------------------------------*
//ZMCOEA70 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXBP.IE.VSB.MTGFDR.FDR.CONSULT.CTAS.BG,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MTGFDR.BCJLCOEA.CTAS.BG,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCOEA70),DISP=SHR
//*
//*********************************************************************
//*   PROGRAMA:    IOACND                                             *
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR AJ Y    *
//*                EJECUTE AUTOMATICAMENTE EL PROCESO NAJPCOE2.       *
//*********************************************************************
//ZMCOEA60 EXEC PGM=IOACND,PARM='ADD COND BCJLCOEA_OK_PR WDATE',
//         COND=(4,LT)
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
//*
//**********************************************************************
//*        TERMINA PROCESO BCJLCOEA SIVA MULTIEMPRESA                  *
//**********************************************************************
