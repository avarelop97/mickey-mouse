//FDD5000 PROC
//**********************************************************************
//*    BBVA BANCOMER                                                  *
//*                                                                    *
//* SISTEMA        :  TESORERIA / DIFERENCIAS DE EFECTIVOS             *
//*                                                                    *
//* PROCESO        :  PFDFDD50                                         *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LOS CARGOS POR  BAJAS AUTOMATICAS       *
//*                   REALIZA LAS AFECTACIONES PARA DIFERENCIAS        *
//*                   DE EFECTIVO DEL DIA 19-03-01                     *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  NINGUNO                                          *
//*                                                                    *
//* REALIZO        :  ADRIANA VAZQUEZ                                  *
//* FECHA          :  MARZO    / 2001                                  *
//* FECHA MODIF.   :  19 MARZO / 2001   LXP.                           *
//* OBSERVACION    :  ESTE PROCESO SOLO SE EJECUTARA UNA SOLA VEZ      *
//**********************************************************************
//**********************************************************************
//*                         -- VOB352E --                              *
//* OBJETIVO: REALIZA LAS AFECTACIONES PARA DIFERENCIAS DE EFECTIVO    *
//*   PASO REINICIABLE POR RESTART             ***DIFERENCIAS EFECTIVO *
//**********************************************************************
//FDD5003 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//       TIME=100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//VOB352A1 DD DSN=SIVA.MDD.FIX.DIFER,DISP=SHR
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//VOB352R1 DD SYSOUT=X
//VOB352R2 DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD5003),DISP=SHR
//**********************************************************************
//*                         -- VOBE90E --                              *
//* OBJETIVO: REALIZA LAS AFECTACIONES DE CARGOS EN OPERATE Y OPERTET  *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//*FDD5002 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//*       TIME=100
//*SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=X
//*SYSOUT  DD SYSOUT=X
//*SYSDBOUT DD SYSOUT=X
//*FOLCTRL DD DSN=SIVA.FOLCTRL.NUEVOS.KC,DISP=SHR
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN DD DSN=SIVA.CARDS(FDD5002),DISP=SHR
//**********************************************************************
//*                          --  VOBE49M --                            *
//* OBJETIVO : PASAR INF. DE TABLAS OPERATE A OPERA Y DE OPERTET A     *
//*            OPERTES (UNICAMENTE LOS MOVIMIENTOS DE BAJAS)           *
//*            (ACTUALIZA OPERTES, OPERA)                              *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//*FDD5001 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//*        TIME=100
//*SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=X
//*SYSOUT   DD SYSOUT=X
//*SYSDBOUT DD SYSOUT=X
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN DD DSN=SIVA.CARDS(FDD5001),DISP=SHR
