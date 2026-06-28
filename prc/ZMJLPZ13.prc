//ZMJLPZ13 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  SIVAXGT1                                            *
//*   PROCEDIM. :  ZMJLPZ13            (OPC. T61)                      *
//*                                                                    *
//*   OBJETIVO  :  GENERA REPORTE GLOBAL  DE EMISION T + 1.            *
//*                                                                    *
//*   CORRE ANTES DE  :  SIVAXGT1                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).
//* FECHA          :  NOVIEMBRE 2008. CONVERSION DE SUBMITIDORES
//*-------------------------------------------------------------------*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     GENERACION DEL REPORTE GLOBAL T + 1.                 *00030000
//*  PJL13P02                                               ZM4TGG86   *00020000
//**********************************************************************00060000
//PJL13P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGG86A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE13,DISP=SHR
//*
//ZMGG86R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL13T01),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  4     GRABAR LOS PARAMETROS RECIBIDOS EN LINEA EN LA PARAM *00030000
//*  PJL13P01     'T54' PARA PERMITIR CONTROLAR CONTENCION (-911) EN EL*00040000
//*                PROC Y RESUBMITIR LA EMISION GLOBAL T + 1.          *00020000
//*                                                       ZM4DG001     *00020000
//**********************************************************************00060000
//PJL13P01 EXEC PGM=IKJEFT01,COND=(20,NE,PJL13P02)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE13,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL13T02),DISP=SHR
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR TRANSFER              *
//****************************************************************
//PJL13P00 EXEC  PGM=CTMCND,PARM='ADD COND CBJLPZ13_IN_SEP_OK WDATE',
//         COND=(4,LT)
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
//**********************************************************************00010000
//*                  F I N   Z M J L P Z 1 3                           *00040000
//**********************************************************************00060000
