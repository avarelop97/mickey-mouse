//ZMHFPD54 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - PROTOCOLO FINANCIERO PLUS.                     *
//* PROCESO      : ZMHFPD54.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : EXTRACCION DE OPERACIONES DIFO PARA PLUS.           *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 17 DE JULIO DE 2013.                                *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- -------------------------------------*
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : PHF54P01.                                             *
//* UTILERIA   : IKJEFT01 / ZM4DHH27.                                  *
//* OBJETIVO   : GENERA EXTRACCION DE OPERACIONES DIFO PARA PLUS.      *
//*--------------------------------------------------------------------*
//*
//PHF54P01 EXEC PGM=IKJEFT01
//*
//ZMHH09A1 DD DSN=MXCP.ZM.FIX.VAL.PARAM.ZMHFPD54,DISP=SHR
//*
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHF54P01),DISP=SHR
//*
//**********************************************************************
//*  PASO:     PHF54P00                                                *
//*  PROGRAMA: ZM4ODEL1                                                *
//*  OBJETIVO  PASO REINICIABLE POR RESTART                            *
//*            ACTUALIZA EL RENGLON DE INTERFACES EN CTLPROC           *
//**********************************************************************
//PHF54P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.FIX.VAL.PARAM.ZMHFPD54,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(PHF54P00),DISP=SHR
//*--------------------------------------------------------------------*
//*                     FIN DEL PROCESO ZMHFPD54                       *
//*--------------------------------------------------------------------*
