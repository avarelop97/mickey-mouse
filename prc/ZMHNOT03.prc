//ZMHNOT03  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMHNOT03                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* GENERACION DE INSUMOS CON INFORMACION PARA NOTIFICION AL PROMOTOR -*
//* DE NOTAS PARE EMISORAS DUMMY                                       *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*====================================================================*
//* PASO     : PGI21P01                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE INFORMACION PARA DEMANDAS POR GLOMO         *
//*====================================================================*
//PNO03P04 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PNW03P04,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESZM606.GLOMO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*                                                                     00024400
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZNT03T04),DISP=SHR
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : PNO03P03                                                 *00240002
//* UTIL/PGM: ZM4EST03                                                 *00240002
//* OBJETIVO: PROGRAMA QUE ELIMINA LOS REGISTRO ZMDT606 DE CANCELACION *00240002
//*--------------------------------------------------------------------*
//PNO03P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//*
//E1ZMFINW DD DSN=MXCP.ZM.FIX.DESZM606.GLOMO,DISP=SHR
//*
//*
//S1SALIDA DD DSN=MXCP.ZM.FIX.CANCEL.GLOMO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=180,BLKSIZE=0,DSORG=PS)
//*
//*
//S2SALIDA DD DSN=MXCP.ZM.FIX.ZM4EST04.DESNOTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=180,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZNT03T03),DISP=SHR                   00512608
//*
//*
//**********************************************************************
//*                     F I N    Z M H N O T 0 3                       *
//**********************************************************************
