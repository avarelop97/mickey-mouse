//ZMVDPV02 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES (M.U.V.)                 *
//*                                                                    *
//* PROCESO        :  BCVDCV02                                         *
//*                   MIGRACION BPIGO A MUV PU                         *
//*                                                                    *
//* OBJETIVO       :  ACTUALIZA PARAM P05, CARGA OPERA, CARTERA Y      *
//*                   SECART DIA A DIA                                 *
//* CORRE                                                              *
//* ANTES DE       :  BCVDCV03                                         *
//*                                                                    *
//* DESPUES DE     :  BCVDCV01                                         *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//*                                                                    *
//* FECHA          :  MARZO 2005                                       *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                           -- ZM4VVW05 --                           *
//* OBJETIVO    :  OBTIENE SIGUIENTE FECHA DIA HABIL                   *
//*                                                                    *
//* AFECTA DB2  :  ACTUALIZA PARAM - P05                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*
//PVD02P04 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD02T04),DISP=SHR
//**********************************************************************
//*                           --ZM4VVW02  --                           *
//* OBJETIVO    :  REALIZAR AFECTACIONES A CARTERAS Y EFECTIVOS        *
//*                                                                    *
//* AFECTA DB2  :  INSERTA  CARTERA                                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*
//PVD02P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD02T03),DISP=SHR
//**********************************************************************
//*                           -- ZM4VVW03 --                           *
//* OBJETIVO    :  CARGA POSICION DIARIA EN SECART                     *
//*                                                                    *
//* AFECTA DB2  :  INSERTA SECART, SEATRCA                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*
//PVD02P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD02T02),DISP=SHR
//**********************************************************************
//*                           -- ZM4VVW04 --                           *
//* OBJETIVO    :  RECORRE EFECTIVO DE IDIACAR EN CARTERA              *
//*                                                                    *
//* AFECTA DB2  :  ACTUALIZA, INSERTA, BORRA CARTERA                   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*
//PVD02P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD02T01),DISP=SHR
