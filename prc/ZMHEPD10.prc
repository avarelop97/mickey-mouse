//ZMHEPD10 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                    << MERCADO DE CAPITALES >>                      *
//*                                                                    *
//*   APLICACION       :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)        *
//*                                                                    *
//*   PROCEDIM.        :  ZMHEPD10                                     *
//*                                                                    *
//*   OBJETIVO         :  GENERA ARCHIVOS DE OPERACION MUREX           *
//*                                                                    *
//*   CORRE            :  CICLICO C/30 MINUTOS DE LAS 8:00 A LAS 15:30 *
//*                                                                    *
//*   PERIODICIDAD     :  DIARIO                                       *
//*                                                                    *
//*   FECHA            :  JULIO DE 2010                                *
//*                                                                    *
//**********************************************************************
//*  PASO:  1     ARCHIVO  DE  OPERACION  MUREX                        *
//*  PHE10P01                  ZM4DHV51                                *
//**********************************************************************
//PHE10P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV51A1 DD DSN=MXCP.ZM.FIX.ECBP.SZPR.AMUREX,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=88,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//ZMHV51A2 DD DSN=MXCP.ZM.FIX.ECBP.SZPR.DMUREX,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=88,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(05,01),RLSE)
//*
//ZMHV51A3 DD DSN=MXCP.ZM.FIX.ECBP.SZPR.XMUREX,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=1055,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(05,01),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE10T01),DISP=SHR
//*
