//ZMUEPM47 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBUENM47                                         *
//*                   PREPARACION DE ESTADOS DE CUENTA - PREVIO        *
//*                                                                    *
//* OBJETIVO       :  CARGA INFORMACION PARA ESTADOS DE CUENTA         *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBUENM48 (ZMUEPM48)                              *
//*                                                                    *
//* DESPUES DE     :  FINAL DEL FINDIA                                 *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JULIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  CORRE MENSUALMENTE (PREVIO AL DEFINITIVO)        *
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
//PUE47P05 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE47T04),DISP=SHR
//**********************************************************************
//*                          == ZM4MU215 ==                            *
//* OBJETIVO : VERIFICA PRECIOS, TITULOS Y VALUACIONES EN CEROS.       *
//* ACTUALIZA: EDREPER Y EDECONT                                       *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUE47P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE47T03),DISP=SHR
//**********************************************************************
//*                          == ZM4MU220 ==                            *
//* OBJETIVO : ACUMULA EDVALCA X TIPO MERCADO (ICLACON,A1,E1,B1 Y C1)  *
//* ACTUALIZA: EDVALCA                                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUE47P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE47T02),DISP=SHR
//**********************************************************************
//*                          == ZM4MU230 ==                            *
//* OBJETIVO : PREPARA INFORMACION PARA SECCINO INFORMATIVA            *
//* ACTUALIZA: EDSECIN                                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUE47P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE47T01),DISP=SHR
//**********************************************************************
//*                          == ZM4MU018 ==                            *
//* OBJETIVO : PREPARA INFORMACION DE LA GAT DE MDD NOTAS ESTRUCTURADAS*
//* ACTUALIZA: ZMDT812                                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUE47P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE47T05),DISP=SHR
//*
