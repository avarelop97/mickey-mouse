//ZMHFPD52 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - PROTOCOLO FINANCIERO PLUS.                     *
//* PROCESO      : ZMHFPD52.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : EXTRACCION DE OPERACIONES DE POSICION PARA ENVIO    *
//*                A PLUS.                                             *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 17 DE JULIO DE 2013.                                *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- -------------------------------------*
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO       : PHF52P01.                                             *
//* UTILERIA   : IKJEFT01 / ZM4DHH28.                                  *
//* OBJETIVO   : EXTRACCION DE OPERACIONES DE POSICION PROPIA PARA     *
//*              ENVIO A PLUS.                                         *
//*--------------------------------------------------------------------*
//*
//PHF52P01 EXEC PGM=IKJEFT01
//*
//ZMHH09A1 DD DSN=MXCP.ZM.FIX.VAL.PARAM.POSPRO,DISP=SHR
//*
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHF52P01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     FIN DEL PROCESO ZMHFPD52                       *
//*--------------------------------------------------------------------*
