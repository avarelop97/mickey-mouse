//ZMLLPD24 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM YA9BXW - REDISENO DE ESTADOS DE CUENTA.          *
//* PROCESO      : ZMLLPD24.                                           *
//* OBJETIVO     : CARGA INICIAL DE DATOS ORDENADOS.                   *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 31 DE OCTUBRE 2013                                  *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZLL24T85                                              *
//* UTILERIA   : IKJEFT01  /ZM4ILL20                                   *
//* OBJETIVO   : CREACION DEL ARCHIVO PARA CARGA INICIAL, CON MAYOR    *
//*              LONGITUD.                                             *
//*--------------------------------------------------------------------*
//ZLL24T85 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL24T85),DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
// IF ZLL24T85.RC EQ 00 THEN
//*
//*--------------------------------------------------------------------*
//* PASO       : ZLL24T81, PROG.  ZM4ILL27                             *
//* UTILERIA   :                                                       *
//* OBJETIVO   : ACTUALIZA EL CODIGO POSTAL QUE TIENE CEROS EN LA      *
//*              ZMDT115 TOMANDOLO DEL IPOS DE CUENTA,                 *
//*--------------------------------------------------------------------*
//ZLL24T81 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSCOUNT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL24T11),DISP=SHR
//*
// ENDIF
