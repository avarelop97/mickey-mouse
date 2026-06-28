//ZMHLPZ40 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMHLPZ40                                         *
//*                                                                    *
//* OBJETIVO       :  INTEGRACION DE REPORTOS EN ZMDT800 DE CB         *
//*                                                                    *
//* REALIZO        :  HILDEBRANDO MEGZ                                 *
//*                                                                    *
//* FECHA          :  ABRIL 9 , 2012                                   *
//*                                                                    *
//**********************************************************************00001000
//* PROGRAMA: ZM4EHB92                                                 *
//* OBJETIVO    :  PROGRAMA QUE RECIBE REPORTOS PARA INSERTARLOS       *
//*                EN LA TABLA ZMDT800                                 *
//*--------------------------------------------------------------------*
//PHL40P05 EXEC PGM=IKJEFT01
//ZMHB92A1 DD DSN=MXC&AMB..ZM.FIX.RPORTO.D&FECHA,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL40P05),DISP=SHR
//*
