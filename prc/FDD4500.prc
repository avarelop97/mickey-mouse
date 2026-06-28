//FDD4500 PROC
//*
//**********************************************************************
//*    CASA DE BOLSA PROBURSA  -  BILBAO VIZCAYA                       *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        : PFDFDD45.                                         *
//*                  REPORTES DE LA INTERFAZ DE MERCADO DE DINERO      *
//*                                                                    *
//* OBJETIVO: GENERA EL REPORTE DE CONFIRMACIONES DE MESA DE DINERO    *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  IMAGE COPYS POSTERIORES A FINDIA                 *
//*                                                                    *
//* CORRE          :  EN PARALELO CON EL PFDFDD23.                     *
//*                                                                    *
//* DESPUES DE     :  PFDFDD22                                         *
//*                                                                    *
//* REALIZO        :  OSCAR URBANO FERNANDEZ(ASATECK).                 *
//*                                                                    *
//* FECHA          :  AGOSTO 1999.                                     *
//**********************************************************************
//*
//**********************************************************************
//*                          === VIBR16D ===                           *
//*    OBJETIVO :   GENERA ARCHIVO DE COMISIONES
//*
//* PASO REINICIABLE POR RESTART                        *** M.DINERO   *
//**********************************************************************
//FDD4504 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//VIBR16A1 DD  DSN=SIVA.MDD.FIX.FDD45.COMIS,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(TRK,(10,1),RLSE),
//             DCB=(LRECL=78,RECFM=FBA,BLKSIZE=0)
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD4504),DISP=SHR
//**********************************************************************
//*
//**********************************************************************
//*                          === VIBN95D ===                           *
//*    OBJETIVO :   REPORTE DE OPERACIONES FUERA DE CORRO
//*
//* PASO REINICIABLE POR RESTART                        *** M.DINERO   *
//**********************************************************************
//FDD4503 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//VIBN95R1 DD  SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBN95A1 DD DSN=SIVA.MDD.FIX.UTIL.CORRO,DISP=MOD
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD4503),DISP=SHR
//**********************************************************************
//**********************************************************************
//*                          === VIBN94D ===                           *
//* OBJETIVO : GENERA REPORTE DE EFICIENCIA Y CONTROL DE LA CARTERA    *
//*            REPORTE DE OPERACIONES QUE VENCEN ANTICIPADAMENTE.      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                        *** M.DINERO   *
//**********************************************************************
//**********************************************************************
//FDD4502 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//VIBN94R1 DD  SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD4502),DISP=SHR
//**********************************************************************
//**********************************************************************
//*                          === VIBN83D ===                           *
//* OBJETIVO : REPORTE DE LAS CONFIRMACIONES DE MESA DE DINERO         *
//*            ENVIADAS A IMPRESION.                                   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                        *** M.DINERO   *
//**********************************************************************
//*                   PASO PARA CASA DE BOLSA                          *
//**********************************************************************
//FDD4501 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//VIBN83R1 DD  DSN=SIVA.MDD.FIX.VIBN83D.SALIDA.BANCO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(CYL,(10,1),RLSE),
//             DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0)
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD4501),DISP=SHR
//**********************************************************************
//********************************************************************
//*
//*  SE AGREGO PASO PARA QUE HAGA UN IEBGENER DEL ARCHIVO QUE GENERA
//*  EL PASO ANTERIOR
//*
//********************************************************************
//FDD4501A EXEC PGM=ICEGENER,REGION=4M,COND=(4,LT)
//SYSPRINT DD  SYSOUT=X
//SYSUT1   DD  DSN=SIVA.MDD.FIX.VIBN83D.SALIDA.BANCO,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
