//ZMLFPD30 PROC
//*
//**********************************************************************
//**
//** SISTEMA        :  MUV
//**
//** PROCESO        :  ZMLFPD30
//**
//** OBJETIVO       :  RECIBIR ARCHIVO DE VECTOR-BUC Y REFRESCAR EL
//**                   IISIN EN LA TABLA DE CONCEPT
//**
//** CORRE ANTES DE :
//**
//**
//** DESPUES DE     :  RECIBIR CONDICION DE BUC BUJDVBMB_OK_PR
//**
//**
//** OBSERVACIONES  :
//**
//**
//**
//**
//** REALIZO        :  GETRONICS (IEF)
//*                    17-JULIO-2006                                   *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//* BITACORA DE MODIFICACIONES :                                       *
//*--------------------------------------------------------------------*
//*MODIF |  FECHA   |USUARIO|  PASO |DESCRIPCION                       *
//*--------------------------------------------------------------------*
//* XXX  |XX-XXX-XX |IDCEXXX|       |XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  *
//*                                                                    *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PLF30P10 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','  ','  ','  ',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD30,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4EHB86
//* OBJETIVO: RECIBE ARCHIVO DE VECTOR-BUC Y REFRESCA  IISIN DE CONCEPT
//*---------------------------------------------------------------------
//PLF30P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHB86A1 DD DSN=MXBP.BUC.GDGD.BKP.VECINT(0),DISP=SHR
//*
//ZMHB86A2 DD DSN=MXCP.ZM.FIX.E&EMP..INCIDE.MDD,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=085,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF30T05),DISP=SHR
//*
