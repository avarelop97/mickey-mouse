//ZMHEPD12 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                    << MERCADO DE CAPITALES >>                      *
//*                                                                    *
//*   APLICACION       :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)        *
//*                                                                    *
//*   PROCEDIM.        :  ZMHEPD12                                     *
//*                                                                    *
//*   OBJETIVO         :  GENERA ARCHIVOS DE OPERACION MUREX           *
//*                                                                    *
//*   CORRE            :  FIJO 15:30                                   *
//*                                                                    *
//*   PERIODICIDAD     :  DIARIO                                       *
//*                                                                    *
//*   FECHA            :  OCTUBRE  2011                                *
//*                                                                    *
//**********************************************************************
//*  PASO:  1     ARCHIVO  DE  OPERACION  MUREX  TOTALES               *
//*  PHE10P01                  ZM4DHV50                                *
//**********************************************************************
//PHE10P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV50A1 DD DSN=MXCP.ZM.FIX.ECBP.SZPR.TAMUREX,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=88,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//ZMHV50A2 DD DSN=MXCP.ZM.FIX.ECBP.SZPR.TDMUREX,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=88,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(05,01),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE12T01),DISP=SHR
//*
