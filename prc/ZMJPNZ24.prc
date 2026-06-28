//ZMJPNZ24 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  SOCIEDADES DE INVERSION  <<<<              *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  CBJPCZ24                                            *
//*                                                                    *
//*   PROCEDIM. :  ZMJPNZ24                                            *
//*                                                                    *
//*   OBJETIVO  :  ACTUALIZA TABLAS ZMDT300/ZMDT304 (CARTAS ROBOT) Y   *
//*                TABLAS ZMDT834/ZMDT304 (CREDITOS PPG) DE ACUERDO AL *
//*                RESULTADO DE LA RECLASIFICACION DE FONDOS BANCO.    *
//*                                                                    *
//*   CORRE ANTES DE  : BCPPGD12                                       *
//*                                                                    *
//*   CORRE DESPUES DE: BCJICD02                                       *
//*                                                                    *
//*   PERIODICIDAD    :  ULTIMO DIA HABIL MENSUAL                      *
//*                                                                    *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA         DESCRIPCION                   *
//* ----------- --------- -------  ------------------------------------*
//*   @MARP01   MARCO R.  27DIC18  SE AGREGA ACTUALIZACION EN TABLAS PPG
//*   @DGCM01   XMZ8533   18FEB18  SE DEPURA TABLA ZMDTPRC.            *
//*   @DGCM02   XMZ8533   04MAY19  SE AGREGA RECLASIFICACION PPG MANUAL*
//**********************************************************************
//*   @OUF-I    XM02312   07JUL20  SE ELIMINA LA EJECUCION DE PROGRAMAS*
//*   ZM4MJ185, ZM4MJ187, ZM4MJ188 POR TEMAS DE RECLASIFICACION.       *
//**********************************************************************
//*@OUF-I
//*--------------------------------------------------------------------*
//* PASO       : PJPNZ240                                              *
//* UTILERIA   : DELETE                                                *
//* OBJETIVO   : ELIMINA REGISTROS DE LA TABLA ZMDTPRC                 *
//*--------------------------------------------------------------------*
//PJPNZ240 EXEC PGM=IKJEFT01
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE42T01),DISP=SHR
//SYSIN    DD DUMMY
//*@DGCM01-F
//*@OUF-F
//**********************************************************************
//*        TERMINA PROCESO ZMJPNZ24 SIVA MULTIEMPRESA                  *
//**********************************************************************
