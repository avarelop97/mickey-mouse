//ZMCYPC33 PROC
//**********************************************************************
//**                    C A S A   D E   B O L S A                      *
//**                    =========================                      *
//**                    <<< MERCADO DE DINERO >>>                      *
//**                                                                   *
//**  APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//**                                                                   *
//**  PROCEDIM. :  ZMCYPC33-SIVAXMUV                                   *
//**                                                                   *
//**  OBJETIVO  :  REPORTE CON LOS MOVIMIENTOS DE SIANEXO              *
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
//*               DESCARGA DE LA TABLA SIANEXO
//**********************************************************************
//*
//PLC02P95 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC33,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.UNLOAD.SIANEXO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=270,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y33),DISP=SHR
//*
//*********************************************************************
//*   PROGRAMA: ZM4CY033                                              *
//*   OBJETIVO: GENERA REPORTE CON MOVIMIENTOS DE LA TABLA SIANEXO    *
//*********************************************************************
//PLC02P90 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZML286R1 DD DSN=MXCP.ZM.FIX.UNLOAD.SIANEXO,DISP=SHR
//*
//ZML286R2 DD DSN=MXCP.ZM.FIX.MDD.EBCM.CONDIFER,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE30Y34),DISP=SHR
//*
