//ZMHFPD59  PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  C A P I T A L E S >>                       *
//*                                                                    *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBHFPD50                                         *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVO T20 MUREX-SICOR                   *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :                                                   *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO                                           *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*  PASO:  3     RECIBE PARAMETROS                                    *
//*  PHF50P03                                                          *
//**********************************************************************
//PHF50P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.ZMHFPD59,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//*  PASO:  2     GENERA ARCHIVO T20 MUREX-SICOR                       *
//*  PHF50P02                ZM4DHV12                                  *
//**********************************************************************
//PHF50P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMOH76A1 DD DSN=MXCP.ZM.FIX.ARCMURX.MANCIERR.EV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,LRECL=225,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC64T05),DISP=SHR
//**********************************************************************
//*  PASO:  1     GENERA ARCHIVO T20 MUREX-SICOR                       *
//*  PHF50P01                ZM4DHV11                                  *
//**********************************************************************
//PHF50P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV78A2 DD DSN=MXCP.ZM.FIX.MUREXT20.EV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=164,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF50T02),DISP=SHR
//*
