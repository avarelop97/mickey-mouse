//ZMUFPDE4 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBUFCDE4                                         *
//*                   INICIO DE ENLACE CONTABLE                        *
//*                                                                    *
//* OBJETIVO       :  OBTENCION DE OPERACIONES                         *
//*                   PRIMERA PARTE ENLACE CONTABLE                    *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBUFCDE8  -  ZMUFPDE8                            *
//*                                                                    *
//* DESPUES DE     :  DEL FINDIA E IMAGE COPYS                         *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          ==  IDCAMS  ==                            *00661000
//* OBJETIVO    : BORRAR ARCHIVOS DE TRABAJO                           *00662000
//*                                                                    *
//**********************************************************************
//PUFE4P05 EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUFE4T05),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE24 ==                            *00221002
//* OBJETIVO    :  ACTUALIZACION DE PARAM TE3                          *00222002
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PUFE4P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE4T04),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE16 ==                            *00221002
//* OBJETIVO    :  DEPURACION DE ARCHIVOS ECMOVDI Y ECRECHA            *00222002
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PUFE4P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE4T03),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE09 ==                            *00221002
//* OBJETIVO    :  OBTENCION DE OPERACION                              *00222002
//*                                                                    *
//* PASO REINICIABLE DESDE EL PUNTO ANTERIOR PASO PUFE4P03             *
//**********************************************************************
//PUFE4P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE4T02),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE41 ==                            *00221002
//* OBJETIVO    :  OBTENCION DE MOVIMIENTOS CLIENTES BCO               *00222002
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PUFE4P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE4T01),DISP=SHR
