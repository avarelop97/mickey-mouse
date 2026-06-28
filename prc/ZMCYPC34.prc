//ZMCYPC34 PROC
//**********************************************************************
//**                    C A S A   D E   B O L S A                      *
//**                    =========================                      *
//**                    <<< MERCADO DE DINERO >>>                      *
//**                                                                   *
//**  APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//**                                                                   *
//**  PROCEDIM. :  ZMCYPC34-SIVAXMUV                                   *
//**                                                                   *
//**  OBJETIVO  :  REPORTE DE CONCILIACION DE MONTOS BUC VS. MUV       *
//**                                                                   *
//**  CORRE ANTES DE  :  NINGUNO                                       *
//**                                                                   *
//**  CORRE DESPUES DE:  NINGUNO                                       *
//**                                                                   *
//**  PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//**                                                                   *
//**********************************************************************
//**********************************************************************
//*         B I T A C O R A  D E  M O D I F I C A C I O N E S          *
//*         -------------------------------------------------          *
//*                                                                    *
//* N O M B R E                 D E S C R I P C I O N                  *
//* --------------------- -------------------------------------------  *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                     * UNLOAD *
//*          DESCARGA DE LOS FOLIOS DE DEMANDA
//**********************************************************************
//*
//PLC02P05 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC34,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.IFOLDEM.DEMANDAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=15,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y35),DISP=SHR
//*
//**********************************************************************
//*                     * UNLOAD *
//*          DESCARGA DE LOS FOLIOS DE DIRECTOS
//**********************************************************************
//*
//PLC02P04 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC34,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.IFOLDEM.DIRECTOS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=55,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y36),DISP=SHR
//*
//*********************************************************************
//*   PROGRAMA: ZM4CY034
//*   OBJETIVO: DA FORMATO A LOS FOLIOS DE DEMANDA PARA USUARIO       *
//*********************************************************************
//PLC02P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1983E1 DD DSN=MXCP.ZM.FIX.IFOLDEM.DEMANDAS,DISP=SHR
//*
//ZM1983S1 DD DSN=MXCP.ZM.FIX.FOLIOS.DEMANDAS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=30,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE30Y37),DISP=SHR
//*
//*********************************************************************
//*   PROGRAMA: ZM4CY035
//*   OBJETIVO: DA FORMATO A LOS FOLIOS DE DIRECTOS PARA USUARIO      *
//*********************************************************************
//PLC02P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM2083E1 DD DSN=MXCP.ZM.FIX.IFOLDEM.DIRECTOS,DISP=SHR
//*
//ZM2083S1 DD DSN=MXCP.ZM.FIX.FOLIOS.DIRECTOS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=70,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE30Y38),DISP=SHR
//*
