//ZMGFPP26 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  REPORTES DIARIOS DE TESORERIA.                      *
//*                                                                    *
//*   CORRE ANTES DE  :  PIDCPD02                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  BCLFND23                                      *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   FECHA:  OCTUBRE 2002                                             *
//*
//*********************************************************************
//*                      LOG DE MODIFICACIONES
//*********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION
//*--------------------------------------------------------------------
//*      |31-03-2005|IDCEX15|01-06   |SE LIBERA POR QUE LA VERSION DE
//*      |          |       |        |PRODUCCION NO ES LA MISMA QUE
//*      |          |       |        |EN CHANGEMAN POR CAUSA DE
//*      |          |       |        |MIGRACION A PU
//*********************************************************************
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*********************************************************************
//PGF26P07 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC',' ',' ',)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGFPP26,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                           -- ZM4DSF62 --                           *
//* OBJETIVO    :  CARGA INICIAL Y ACTUALIZACION DIARIA PRECIOS MDD    *
//*                                                                    *
//* ACTUALIZA   :  SEPRULT                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//* DCR: PGM QUE GENERA LA TABLA HISTORICA DE PRECIOS SEPREOP          *
//**********************************************************************
//PGF26P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSF62A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGFPP26,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF26T06),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DGG52 ===                          *
//*                                                                    *
//* OBJETIVO : REPORTE DE OPERACION DIARIA DE MERCADO DE DINERO        *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PGF26P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGG52R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//ZMGG52P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGFPP26,
//         DISP=SHR
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF26T05),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DGG46 ===                          *
//*                                                                    *
//* OBJETIVO : REPORTE DE ANTIGUEDAD DE SALDOS                         *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PGF26P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGG46R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//ZMGG46P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGFPP26,
//         DISP=SHR
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF26T04),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DJ013 === (COPIA DE ZM4DGG48       *
//*                                                                    *
//* OBJETIVO : REPORTE DE MOVIMIENTOS DE EFECTIVO                      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PGF26P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGG48DR DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*                                                                    *
//ZMGG48P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGFPP26,
//         DISP=SHR
//*                                                                    *
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF26T03),DISP=SHR
//*                                                                    *
//**********************************************************************
//*                          === ZM4DGG51 ===                          *
//*                                                                    *
//* OBJETIVO : REPORTE DE SALDOS POR SUCURSALES                        *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PGF26P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGG51R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*                                                                    *
//ZMGG51P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGFPP26,
//         DISP=SHR
//*                                                                    *
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF26T02),DISP=SHR
//*                                                                    *
//**********************************************************************
//*                          === ZM4DGG50 ===                          *
//*                                                                    *
//* OBJETIVO : REPORTE DE EFECTIVO DE CONTRATOS OPERATIVOS             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PGF26P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGG50R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*                                                                    *
//ZMGG50P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGFPP26,
//         DISP=SHR
//*                                                                    *
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF26T01),DISP=SHR
//*                                                                    *
