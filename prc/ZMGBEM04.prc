//ZMGBEM04 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                    << MERCADO DE CAPITALES >>                      *
//*                                                                    *
//*   APLICACION       :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)        *
//*                                                                    *
//*   PROCEDIM.        :  ZMGBEM04                                     *
//*                                                                    *
//*   OBJETIVO         :  PROCESO QUE DEPURA TABLA ZMDT680             *
//*                                                                    *
//*   PERIODICIDAD     :  DIARIO                                       *
//*                                                                    *
//*   FECHA            :  ABRIL DE 2012                                *
//*                                                                    *
//**********************************************************************
//*  PASO: PGB04E50                                                    *
//*  DESCRIP: CORRE PROGRAMA ZM4CDB04 QUE REALIZA LA DEPURACION DE LA  *
//*           TABLA ZMDT680                                            *
//**********************************************************************
//PGB04E50 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*                                                                    *
//**********************************************************************
//*                  FIN DE PROCESO ZMGBEM04                           *
//**********************************************************************
