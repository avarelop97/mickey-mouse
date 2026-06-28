//**********************************************************************00780600
//ZMHGLO01 PROC
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  JUAN CARLOS                                      *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMHGLO01                                         *00060002
//*                                                                    *00070002
//*                                                                    *00080002
//* OBJETIVO       :  INSERTAR DATOS EN LA TABLA ZMDT800               *00090002
//*                                                                    *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :                                                   *00140002
//*                                                                    *00150002
//* REALIZACION    :  CAP 06-05-2022                                 *  00160002
//*                                                                    *00170002
//* OBSERVACION    :                                                   *00180002
//*                                                                    *00180002
//**********************************************************************00240002
//**********************************************************************
//*        L O G    D E   M O D I F I C A C I O N E S                *
//*--------------------------------------------------------------------*
//*  MARCA    AUTOR     FECHA    DESCRIPCION                         *
//*-------- ----------- -------- --------------------------------------*
//*                                                                    *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*                                                                    *00240002
//**********************************************************************00779900
//*            ZM4GLO01                                                *00780000
//* OBJETIVO : CARGA HORIZONTE DE INVERSION Y RENDIMIENTOS PARA GLOMO  *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PHGLO011 EXEC PGM=IKJEFT01
//*
//ZMLL06A1 DD  DSN=MBVP.TP.FIX.TPJCAHID.HORINVD.D&FECHA.,
//             DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHGLOM01),DISP=SHR
//*
//**********************************************************************00779900
//*                                                                    *00780000
//* OBJETIVO : DESCARGA EMISORA/SERIE DE TABLA 800 PARA CALCULO DE REN-*00780200
//*            DIMIENTOS                                               *00780300
//**********************************************************************00780600
//PHGLO012  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PHGLO012,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00023400
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.TMP.ZMDT800.HRZIN,                            00023800
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            UNIT=3390,BUFNO=30,                                       00024000
//            SPACE=(CYL,(1,1),RLSE),                                   00024100
//            DCB=(RECFM=FB,BLKSIZE=0)
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSCNTL  DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHGLOM02),DISP=SHR
//*
//**********************************************************************00779900
//*            ZM4GLO02                                                *00780000
//* OBJETIVO : REALIZA CALCULOS DE RENDIMIENTOS MENSUAL Y ANUAL        *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PHGLO013 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGLO3A1 DD  DSN=MXCP.ZM.TMP.ZMDT800.HRZIN,
//             DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHGLOM03),DISP=SHR
//*
