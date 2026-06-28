//ZMHWAR02  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMHWAR02                                             *
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
//*--------------------------------------------------------------------*00240002
//* PASO    : PWO02P03                                                 *00240002
//* UTIL/PGM: ZM4WAR05                                                 *00240002
//* OBJETIVO: PROGRAMA QUE IDENTIFICA LOS WARRANT QUE TERMINA LA       *00240002
//*           COMERCIALIZACION Y QUE SE FUERON POR GLOMO               *00240002
//*           ZMDT606  Y ZMDT648                                       *00240002
//*--------------------------------------------------------------------*
//PWO02P03 EXEC PGM=IKJEFT01                                            00780700
//S1DESWAR DD DSN=MXCP.ZM.FIX.ZM4WAR05.CIERRE,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=145,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZWR02T03),DISP=SHR                   00512608
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : PWO02P02                                                 *00240002
//* UTIL/PGM: ZM4WAR06                                                 *00240002
//* OBJETIVO: PROGRAMA QUE IDENFICA:                                   *00240002
//*           A) REGISTROS QUE FUERON CANCELADOS  SUS DEMANDAS         *00240002
//*              ZMDT606  Y ZMDT649                                    *00240002
//*           B) REGISTROS ACTIVOS Y QUE NO HAN SIDO ACEPTADOS EN      *00240002
//*              GLOMO                                                 *00240002
//*--------------------------------------------------------------------*
//PWO02P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//*
//E1ZMWARR DD DSN=MXCP.ZM.FIX.ZM4WAR05.CIERRE,DISP=SHR
//*
//S1CANWAR DD DSN=MXCP.ZM.FIX.ZM4WAR06.CANWARR,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=180,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//*
//S2ACTWAR DD DSN=MXCP.ZM.FIX.ZM4WAR06.ACTWARR,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=180,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZWR02T02),DISP=SHR                   00512608
//*
//*
//**********************************************************************
//*                     F I N    Z M H W A R 0 2                       *
//**********************************************************************
