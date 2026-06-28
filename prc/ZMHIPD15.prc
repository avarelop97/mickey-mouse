//ZMHIPD15 PROC
//*
//**********************************************************************
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//* PROCESO        :  CBHIND15   (DISPARADOR)                          *
//* OBJETIVO       :  CARGA TABLAS ZMDT778 Y 779                       *
//* CORRE          :                                                   *
//* REALIZO        :  STK                                              *
//* FECHA          :  MAYO, 2023.                                      *
//**********************************************************************
//* OBJETIVO :    CARGA TABLAS ZMDT778 Y 779       ZMDDHV30            *
//**********************************************************************
//PHI15P01 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//ZMV30A01 DD DSN=MXCP.ZM.FIX.BTR.RAZONSOC.BTRADER,DISP=SHR
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI15T01),DISP=SHR
//*
