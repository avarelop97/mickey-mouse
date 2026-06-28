//ZMGBEM02 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                    << MERCADO DE CAPITALES >>                      *
//*                                                                    *
//*   APLICACION       :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)        *
//*                                                                    *
//*   PROCEDIM.        :  ZMGBEM02                                     *
//*                                                                    *
//*   OBJETIVO         :  PROCESO QUE REALIZA CARGA DE INFORMACION A   *
//*                       LA TABLA ZMDT680 DE DIFERENTES TABLAS DEL    *
//*                       MUV                                          *
//*                                                                    *
//*   PERIODICIDAD     :  DIARIO                                       *
//*                                                                    *
//*   FECHA            :  ABRIL DE 2012                                *
//*                                                                    *
//**********************************************************************
//*  PASO: PGB02E50                                                    *
//*  DESCRIP: CORRE PROGRAMA ZM4CDB02 QUE REALIZA LA CARGA A LA TABLA  *
//*           ZMDT680                                                  *
//**********************************************************************
//PGB02E50 EXEC PGM=IKJEFT01
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
//*                  FIN DE PROCESO ZMGBEM02                           *
//**********************************************************************
