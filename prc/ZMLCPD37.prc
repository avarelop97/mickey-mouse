//ZMLCPD37 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA PERSONAS MOREALES.                         *
//* PROCESO      : ZMLCPD37.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : ACTUALIZA W8 DE ACCIONISTA CON VIGENCIA MENOR       *
//*                O IFUAL A FECHA DEL DIA.                            *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 23 DE MAYO DE 2014.                                 *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PHF06P01.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA11.                                    *
//* OBJETIVO   : ACTUALIZA W8 DE ACCIONISTA CON VIGENCIA MENOR O IGUAL *
//*              A LA FECHA DEL DIA.                                   *
//*--------------------------------------------------------------------*
//PHF06P01 EXEC PGM=IKJEFT01
//*
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC05P07),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLCPD37                        *
//*--------------------------------------------------------------------*
//*
