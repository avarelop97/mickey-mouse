//**********************************************************************00010001
//ZCLCCE09  PROC                                                        00020001
//**********************************************************************00030001
//*                                                                    *00040001
//*                   C A S A   D E  B O L S A                         *00050001
//*                   ========================                         *00060001
//*        <<  M E R C A D O   D E   C A P I T A L E S  >>             *00070001
//*                                                                    *00080001
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00090001
//*                                                                    *00100001
//* PROCESO        :  BCLCCE09.                                        *00110001
//*                                                                    *00120001
//* OBJETIVO       :  GENERA REPORTE MANTTO CUST EMI SER CTO.          *00130001
//*                                                                    *00140001
//* CORRE          :  INICIO DE DIA CASA DE BOLSA.                     *00150001
//*                                                                    *00160001
//* ELABORADO POR  :  EDGAR CALVA CEDILLO (INDRA)                      *00170001
//*                                                                    *00180001
//**********************************************************************00190001
//*                      LOG DE MODIFICACIONES                         *00200001
//**********************************************************************00210001
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00220001
//*--------------------------------------------------------------------*00230001
//*      |          |       |        |                                 *00240001
//*--------------------------------------------------------------------*
//* PASO     :  ZCLCCP04                                               *
//* PROGRAMA :  ADUUMAIN                                               *
//* OBJETIVO :  DESCARGA DE LA TABLA ZMDT925                           *
//*--------------------------------------------------------------------*
//ZCLCCP04 EXEC PGM=ADUUMAIN,
//            PARM='MXP1,ZCLCCP04,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCLCCE09.ADUUMAIN.TB925,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=63,BLKSIZE=0)
//SYSPUNCH DD DUMMY
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCM0193),DISP=SHR
//*
//**********************************************************************
//*                       -- ZM4OJ210 --                               *
//* OBJETIVO : PROGRAMA QUE GENERA REPORTE OPCION G42                  *
//*            CASA DE BOLSA.                                          *
//**********************************************************************
//ZCLCCP01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PF601765  DD DUMMY
//*
//REPO002  DD DSN=MXCP.ZM.FIX.BCLCCE09.ADUUMAIN.TB925,DISP=SHR
//REPO001  DD DSN=MXCP.ZM.FIX.BCLCCE09.ZM4OJ210.REPG42,
//        DISP=(NEW,CATLG,DELETE),
//        DCB=(LRECL=141,BLKSIZE=0,RECFM=FB),
//        UNIT=3390,
//        SPACE=(CYL,(25,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCM0192),DISP=SHR
//*
//**********************************************************************00530001
//*            F I N  D E  P R O C E S O  Z C L C C E 0 3              *00540001
//**********************************************************************00550001
