//ZMUEPM43 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBUENM43                                         *
//*                   DEFINITIVO ESTADOS DE CUENTA - MENSUAL           *
//*                                                                    *
//* OBJETIVO       :  CARGA INFORMACION PARA ESTADOS DE CUENTA         *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBUENM44 (ZMUEPM44)                              *
//*                                                                    *
//* DESPUES DE     :  FINAL DEL FINDIA                                 *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JULIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  CORRE MENSUALMENTE                               *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4MU210 ==                            *
//* OBJETIVO : GENERA TABLA EDVALCA DESDE TABLA SECART                 *
//* ACTUALIZA: EDVALCA                                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUE43P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE43T04),DISP=SHR
//**********************************************************************
//*                          == ZM4MU215 ==                            *
//* OBJETIVO : VERIFICA PRECIOS, TITULOS Y VALUACIONES EN CEROS.       *
//* ACTUALIZA: EDREPER Y EDECONT                                       *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUE43P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE43T03),DISP=SHR
//**********************************************************************
//*                          == ZM4MU220 ==                            *
//* OBJETIVO : ACUMULA EDVALCA X TIPO MERCADO (ICLACON,A1,E1,B1 Y C1)  *
//* ACTUALIZA: EDVALCA                                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUE43P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE43T02),DISP=SHR
//**********************************************************************
//*                          == ZM4MU230 ==                            *
//* OBJETIVO : PREPARA INFORMACION PARA SECCINO INFORMATIVA            *
//* ACTUALIZA: EDSECIN                                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUE43P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE43T01),DISP=SHR
//**********************************************************************
//*                          == ZM4MU018 ==                            *
//* OBJETIVO : PREPARA INFORMACION DE LA GAT DE MDD NOTAS ESTRUCTURADAS*
//* ACTUALIZA: ZMDT812                                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUE43P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE43T05),DISP=SHR
//*
//**********************************************************************
//*        TERMINA ZMUEPM43
//**********************************************************************
