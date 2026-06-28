//ZMLLPM01 PROC                                                         00010800
//*                                                                     00020000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *
//*                                                                    *
//*   PROCEDIM. :  BCLLNM01                                            *
//*                                                                    *
//*   OBJETIVO  :  CARGA DE PROMOTORES BANCA PATRIMONIAL Y PRIVADA.    *
//*                                                                    *
//*   PERIODICIDAD    :  PETICION DE USUARIO                           *
//*                                                                    *
//*   ELABORADO POR: JARQ                                              *
//*                                                                    *
//*   FECHA:  ABRIL 2012.                                              *
//*                                                                    *
//**********************************************************************
//**                      LOG DE MODIFICACIONES                       **
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//** LOG           :                                                  **
//** RESPONSABLE   :                                                  **
//** FECHA         :                                                  **
//** DESCRIPCION   :                                                  **
//**                                                                  **
//**                                                                  **
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00030000
//*  PLL01P30     GRABA EN ARCHIVO SECUENCIAL.                         *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PLL01P30 EXEC PGM=ZM3DG001,PARM=('&EMP',' ',' ',' ',)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDD.EBCM.ZMLLPM01,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART   >>>            *00020000
//*  PASO:  2     CARGA ARCHIVO DE PROMOTORES DE BANCA PAT Y PRV       *00030000
//*  PLL01P20                                                          *00040000
//**********************************************************************00060000
//PLL01P20  EXEC PGM=IKJEFT01,COND=(4,LT)                               00030024
//*
//ZMPROMOT DD DSN=MXCP.ZM.FIX.MDD.PATPRV.PROMOTOR,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  00070024
//SYSPRINT DD SYSOUT=*                                                  00090024
//SYSOUT   DD SYSOUT=*                                                  00100024
//SYSDBOUT DD SYSOUT=*                                                  00110024
//SYSABOUT DD SYSOUT=*                                                  00120024
//SYSUDUMP DD DUMMY                                                     00130024
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL01T10),DISP=SHR                   00140024
//*
//**********************************************************************
//*  PROGRAMA: ZM4DLE11
//*  FUNCION:  ACTUALIZA EL FINAL DEL PROCESO DE CARGA DE PROMOTORES
//*            (ACT EN "F" EL EVENTO M01).
//**********************************************************************
//PLL01P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXC&AMB..ZM.TMP.MDD.EBCM.ZMLLPM01,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL01T20),DISP=SHR
//*
//**********************************************************************00010000
//*            F I N      Z M L L P M 0 1                              *
//**********************************************************************00060000
