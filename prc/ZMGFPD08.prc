//ZMGFPD08 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SIVA-2017                                        *
//*                                                                    *
//* PROCESO        :  INVERSOR EMISORAS CERTIFICADOS BURSATILES        *
//*                                                                    *
//* OBJETIVO       :  INVERTIR CAPAS UTILIZADAS PRODUCTO DE UNA CANCELA*
//*                   CION, RECALCULAR EL COSTO PROMEDIO COMERCIAL Y   *
//*                   EN UNA TERCERA ETAPA RECONSTRUIR LAS CAPAS       *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  BCGFCD07                                         *
//*                                                                    *
//* REALIZO        :  OOM OCTUBRE 2017                                 *
//*                                                                    *
//* OBSERVACION    :                                                   *
//**********************************************************************
//**********************************************************************
//* OBJETIVO : ARCHIVO DE PRUEBAS                                      *
//*            -- ZM4CPC01 --                                          *
//*--------------------------------------------------------------------*
//PGF08P03 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF08T02),DISP=SHR
//*
//*====================================================================*
//* PASO     : PHC62P06                                                *
//* PROGRAMA : ICEMAN                                                  *
//* OBJETIVO : SORT DE REPORTES PARA BANCA.                            *
//*====================================================================*
// IF  PGF08P03.RC EQ 03 THEN
//PGF08P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF08T02),DISP=SHR
//*
// ENDIF
//**********************************************************************
//* OBJETIVO : ARCHIVO DE PRUEBAS                                      *
//*            -- ZM4DHV13 --                                          *
//*--------------------------------------------------------------------*
//PGF08P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF08T01),DISP=SHR
//*
