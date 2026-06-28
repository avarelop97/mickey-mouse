//ZMJLPZ09 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBJLPZ09 (PTECGT00)                                 *
//*                PRODUCCION TESORERIA CONFIRMACION DE CREDITOS T+1   *
//*                T+1                                                 *
//*                                                                    *
//*   OBJETIVO  :  CONFIRMACION DE CREDITOS      T+1                   *
//*                (ANTES CONGLBCT) (OPC. T20)                         *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  SIVAXCT1                                      *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//*   ELABORADO POR : PCF, CMM, ARM, VRD                               *
//*                                                                    *
//*   MULTIEMPRESA  : ASATECK.                                         *
//*                                                                    *
//*   FECHA:  JUNIO  2002                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*--------------------------------------------------------------------*
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).                       *
//* FECHA          :  NOVIEMBRE 2008. CONVERSION DE SUBMITIDORES       *
//*-------------------------------------------------------------------**
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     CONFIRMACION DE CREDITOS T + 1.                      *00030000
//*  PJL09P05                                              ZM4DGG79    *00040000
//**********************************************************************00060000
//PJL09P02 EXEC PGM=IKJEFT01
//*
//ZMGG79R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMGG79A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE09,DISP=SHR
//*
//ZMGG79A2 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.JLPE09.ARCHTEMP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=120,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            BUFNO=30
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL09T01),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  3     GRABAR LOS PARAMETROS RECIBIDOS EN LINEA EN LA PARAM *00030000
//*  PJL09P03     'T54' PARA PERMITIR CONTROLAR CONTENCION (-911) EN EL*00040000
//*                PROC Y RESUBMITIR LA CONFIRMACION DE CREDITOS.      *00020000
//*                                                       ZM4DG001     *00020000
//**********************************************************************00060000
//PJL09P01 EXEC PGM=IKJEFT01,COND=(20,NE,PJL09P02)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE09,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL09T02),DISP=SHR
//*
//**********************************************************************00010000
//*                   F I N     Z M J L P Z 0 9                        *00020000
//**********************************************************************00060000
