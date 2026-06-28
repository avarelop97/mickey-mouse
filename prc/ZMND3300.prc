//ZMND3300 PROC
//**********************************************************************
//*                                                                    *00030002
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.).          *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMND3300                                         *00060002
//*                                                                    *00070002
//* OBJETIVO       :  RESPALDO OPERASI.                                *00090002
//*                                                                    *
//* REALIZACION    :  SOFTTEK                         19/MAY/2010.     *00160002
//*                                                                    *00170002
//**********************************************************************
//ZLF33P05 EXEC PGM=ACPMAIN,
//         PARM='MXP1,ZLF33P0501,NEW/RESET,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZLF33T05),DISP=SHR
//*
