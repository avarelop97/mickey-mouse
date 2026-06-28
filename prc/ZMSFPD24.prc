//ZMSFPD24 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBSFCD24                                         *
//*                   EXTRACTORES DE ADMINISTRACION DE PROMOCION       *
//*                                                                    *
//* OBJETIVO       :  CONCATENA LOS ARCHIVOS CON NUEVO FORMATO DE      *
//*                   EL ARCHIVO SIVA.SIE.FIX.IDAPMES2.NUEVO           *
//*                           AL SIVA.SIE.FIX.IDAPMES.NUEVO.           *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBSFCD07  -  ZMSFPD07                            *
//*                                                                    *
//* DESPUES DE     :  CBSFCD23  -  ZMSFPD23                            *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          ==  IDCAMS  ==                            *
//* OBJETIVO    : FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP             *
//*                                                                    *
//**********************************************************************
//PSF24P01 EXEC PGM=IDCAMS
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//INFILE   DD DISP=SHR,DSN=SIVA.SIE.FIX.IDAPMES2.NUEVO
//OUTFILE  DD DISP=MOD,DSN=SIVA.SIE.FIX.IDAPMES.NUEVO
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF24T01),DISP=SHR
