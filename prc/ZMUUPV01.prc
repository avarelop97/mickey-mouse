//ZMUUPV01 PROC
//*
//**********************************************************************
//*    G R U P O   F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBUUNV01                                         *
//*                   CORRE POR UNICA VEZ.                             *
//*                                                                    *
//* OBJETIVO       :  REALIZAR EL PROCESO DE BAJAS AUTOMATICAS         *
//*                   DE LA SUCURSAL MMP                               *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                         -- ZM4EU002 --                             *
//*  OBJETIVO: CONTROLADOR DE BAJAS FISICAS SUCURSAL ---MMP---         *
//*           (ACTUALIZA: ACLICTA, BAJACLI, BAJAFIS, BAJCLIE,          *
//*                       BAJCTAB, BAJCTAM, CLIENTE, CTABCO, CTAMAES,  *
//*                       CTLPROC)                                     *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//PJF01P01 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZME002R1 DD SYSOUT=*
//ZME002R2 DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUU01T01),DISP=SHR
//*
//**********************************************************************
//*          FIN DEL PROCEDIMIENTO ZMUUPV01                            *
//**********************************************************************
