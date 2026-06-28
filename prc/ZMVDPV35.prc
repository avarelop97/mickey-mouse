//ZMVDPV35 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES  ( M U V )               *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  RECORRE LA FECHA DE PROCESO DE LA MIGRACION      *
//*                   AL DIA SIGUIENTE (PARAM-Z05).                    *
//*                   RECORRE EFECTIVO EN CARTERA.                     *
//*                                                                    *
//* PERIODICIDAD   :  EVENTUAL                                         *
//*                                                                    *
//*                                                                    *
//* REALIZO        :  SALVADOR PLASCENCIA H.                           *
//* FECHA          :  AGOSTO 2005                                      *
//*                                                                    *
//* MODIFICO       :                                                   *
//* FECHA          :                                                   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//* PASO                      -- ZM4VVW05 --                           *
//* OBJETIVO    :  RECORRE FECHA DEL DIA DE MIGRACION EN PARAM-Z05     *
//*                                                                    *
//**********************************************************************
//PVD35P02 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD35T02),DISP=SHR
//*
//**********************************************************************
//* PASO                      -- ZM4VVW74 --                           *
//* OBJETIVO    :  RECORRE EFECTIVOS EN CARTERA                        *
//*                                                                    *
//**********************************************************************
//PVD35P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD35T01),DISP=SHR
//*
