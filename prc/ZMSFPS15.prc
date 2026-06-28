//ZMSFPS15 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBSFCS15                                         *
//*                   EXTRACTORES DE ADMINISTRACION DE PROMOCION       *
//*                                                                    *
//* OBJETIVO       :  RESPALDAR ARCHIVOS SECUENCIALES DEL PROCESO      *
//*                   ESTADISTICO.                                     *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :  CBSFCD11  -  ZMSFPD11                            *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE SEMANALMENTE                  *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ADRDSSU ==                             *00221002
//* OBJETIVO    :  RESPALDO ARCHIVOS SECUENCIALES ESTADISTICO          *00222002
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF15P01 EXEC PGM=ADRDSSU
//SYSPRINT DD  SYSOUT=*
//OUTDD1   DD  DSN=MXCP.ZM.VM01.SIE.SEM.D&DATE..ESTADIS,
//             DISP=(NEW,KEEP),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZSF15T01),DISP=SHR
