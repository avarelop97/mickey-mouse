//ZMLLPZ46 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   <<  C O N T R A L O R I A  >>                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  PROCESO DE INTERFAZ DE CONCILIACION BANCARIA        *
//*                (CARGA UNICAMENTE MOVIMIENTOS CONTABLES).           *
//*   EJECUCION DESPUES : DE PROBLEMAS EN LOS PROCESOS DE CONTABILIDAD *
//*                       ALTAMIRA (COMO EVENTUAL).                    *
//*                                                                    *
//*   FECHA:  AGOSTO 2014                                              *
//*   AUTOR:  JORGE SALAS ORDAZ                                        *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PLL46P10 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXC&AMB..ZM.FIX.PAC.E&EMP..S&SUC..ZMLLPP46,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*********************************************************************
//* OBJETIVO : EXTRAE MOVIMIENTOS DE BAJAS                            *
//* PROGRAMA : ICEMAN(TARJETA DE SORT)                                *
//*********************************************************************
//PLL46P09 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=SIVA.IFA.FIX.GDGMIL.ENCON(0),DISP=SHR
//SORTOUT  DD DSN=SIVA.TES.FIX.SORT.ENCON,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=218,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//SYSIN    DD DSN=CBOD.SIVA.CONTROL(ZLL46T06),DISP=SHR
//*********************************************************************
//* OBJETIVO : PROCESAR ARCHIVO DE RECURSOS HUMANOS E INCIDENCIAS     *
//* PROGRAMA : ZM3CRX09                                               *
//*********************************************************************
//PLL46P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//ARCHEC   DD DSN=SIVA.TES.FIX.SORT.ENCON,
//             DISP=SHR
//ARCHSAL  DD DSN=SIVA.TES.FIX.REPRO.CONTACB,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=127,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL46T02),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ128
//* OBJETIVO: CARGA LA TABLA ZMDT601 CON LA INFORMACION DE LOS
//*           ASIENTOS CONTABLES DE CB TRANSF. DE PU  ** CONTRALORIA **
//*---------------------------------------------------------------------
//PLL46P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMJ128AP DD DSN=MXC&AMB..ZM.FIX.PAC.E&EMP..S&SUC..ZMLLPP46,DISP=SHR
//*CONTACB    ARCHIVO QUE VIENE DESDE P.U.
//CONTACB  DD DSN=SIVA.TES.FIX.REPRO.CONTACB,DISP=SHR
//ZMJ128R1 DD DSN=MXCP.ZM.FIX.REP.CONTACB.DEF,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=132,RECFM=FBA,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL46T01),DISP=SHR
//*
//**********************************************************************
//* INICIALIZACION DEL ARCHIVO DE ENTRADA DEL PROCESO DE               *
//* MIGRACION.                                                         *
//**********************************************************************
//PLL46P06 EXEC  PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD  DUMMY
//SYSPRINT DD  SYSOUT=*
//SYSUT1   DD  DSN=NULLFILE,
//             DCB=(RECFM=FB,LRECL=127)
//SYSUT2   DD  DSN=SIVA.TES.FIX.REPRO.CONTACB,DISP=SHR
//**********************************************************************
//*  PASO:     PLL46P04                                                *
//*  PROGRAMA: ZM4DLE11                                                *
//*  OBJETIVO  PASO REINICIABLE POR RESTART                            *
//*            ACTUALIZA EL RENGLON DE INTERFACES EN CTLPROC 'DFB991'  *
//**********************************************************************
//PLL46P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXC&AMB..ZM.FIX.PAC.E&EMP..S&SUC..ZMLLPP46,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL46T05),DISP=SHR
//*
