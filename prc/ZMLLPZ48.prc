//ZMLLPZ48 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   <<  C O N T R A L O R I A  >>                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  PROCESO DE RESPALDO DE ARCHIVO GDG                  *
//*                                                                    *
//*   FECHA:  AGOSTO 2014                                              *
//*   AUTOR:  JORGE SALAS ORDAZ                                        *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*********************************************************************
//*
//PLL48P03 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','     ','     ',)
//ZMG001A1 DD DSN=MXC&AMB..ZM.FIX.PAC.E&EMP..S&SUC..ZMLLPE48,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*********************************************************************
//*  OBJETIVO:   PROCESO DE RESPALDO DE ARCHIVO DE CONTABILIDAD       *
//*********************************************************************
//PLL48P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD  DSN=SIVA.IFA.FIX.GDGMIL.ENCON(0),
//             DISP=SHR
//*
//SYSUT2   DD  DSN=SIVA.IFA.FIX.GLMV303.ENCON.DETAIL,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(50,25),RLSE),
//             DCB=(LRECL=218,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390
//SYSIN    DD  DUMMY
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//**********************************************************************
//*  PASO:     PLL44P00                                                *
//*  PROGRAMA: ZM4DLE11                                                *
//*  OBJETIVO  PASO REINICIABLE POR RESTART                            *
//*            ACTUALIZA EL RENGLON DE INTERFACES EN CTLPROC 'DFA991'  *
//**********************************************************************
//PLL48P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXC&AMB..ZM.FIX.PAC.E&EMP..S&SUC..ZMLLPE48,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL48T03),DISP=SHR
//*
