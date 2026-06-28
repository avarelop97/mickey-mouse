//ZMUFPD66 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SINCRONIZACION DE UG'S         *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD66                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  DESCARGA DE LA TABLA CUENTA                      *00090002
//*                                                                    *00090002
//* CORRE          :  A PETICION D D&D                                 *00110002
//*                                                                    *00130002
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: CARGA LA TABLA CUENTA
//**********************************************************************
//ZMPD6640  EXEC PGM=ADUUMAIN,                                          00022900
//          PARM='MXP1,ZMPD6639,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.UNLOAD.CUENTA.UGS.BACKUP1,                00023800
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,BLKSIZE=0            00024000
//*                                                                     00024200
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSCNTL  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T71),DISP=SHR
//*
//*                                                                    *00780300
//**********************************************************************
