//CCD0100  PROC SALS=X,SALU=O,CICS=,UZPR=ZPR
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PCICCD01                                         *
//*                   CIERRE DE DIA DEL MODULO DE COBERTURAS CAMBIARIAS*
//*                                                                    *
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE COBERTURAS        *
//*                   CAMBIARIAS.                                      *
//*                   SE SUBMITE AUTOMATICAMENTE A LAS 15:30 HRS.      *
//*                   NO LO ENVIA EL USUARIO, POR QUE SE LE OLVIDA.    *
//* CORRE                                                              *
//* ANTES DE       :  PFDFDD01 (FIN DE DIA)                            *
//*                                                                    *
//* DESPUES DE     :  OPERACION DIARIA EN EL SIVA                      *
//*                                                                    *
//* REALIZO        :  RICARDO ARGUETA TEPEPA                           *
//* FECHA          :  AGOSTO DE 1992                                   *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *
//*                   SIEMPRE ANTES DEL FIN DE DIA.                    *
//*                   ORIGINAL CREADO EL 12 DE ABRIL DE 1990.          *
//**********************************************************************
//*
//**********************************************************************
//*                              CIB063D
//*
//*                  REPORTE DE VENCIMIENTOS
//********************************************************************
//CCD0113  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,
//         COND=(4,LT)
//CIB063R1 DD SYSOUT=(V,,TK65)
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=&SALS
//SYSOUT   DD SYSOUT=&SALS
//FANTASMA DD SYSOUT=(&SALU,&CICS,&UZPR)
//SYSDBOUT DD SYSOUT=&SALS
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CCD0113),DISP=SHR
//*
//**********************************************************************
//*                              CIB064D
//*
//*        REPORTE DE CARGOS Y ABONOS OPERACIONES NUEVAS(2,3)
//********************************************************************
//CCD0112  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,
//         COND=(4,LT)
//CIB064R1 DD SYSOUT=(V,,TK65)
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=&SALS
//SYSOUT   DD SYSOUT=&SALS
//FANTASMA DD SYSOUT=(&SALU,&CICS,&UZPR)
//SYSDBOUT DD SYSOUT=&SALS
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CCD0112),DISP=SHR
//*
//**********************************************************************
//*                              COB065D
//*
//*                  PROCESO CONTROL TIPO DE CAMBIO 48 HRS
//********************************************************************
//CCD0111  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=&SALS
//SYSOUT   DD SYSOUT=&SALS
//FANTASMA DD SYSOUT=(&SALU,&CICS,&UZPR)
//SYSDBOUT DD SYSOUT=&SALS
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CCD0111),DISP=SHR
//*
//**********************************************************************
//*                              COB056D
//*
//*                  PROCESO GRABA REGISTRO EN CTLPROC
//********************************************************************
//CCD0110  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=&SALS
//SYSOUT   DD SYSOUT=&SALS
//FANTASMA DD SYSOUT=(&SALU,&CICS,&UZPR)
//SYSDBOUT DD SYSOUT=&SALS
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CCD0110),DISP=SHR
//*
//********************************************************************
//*                               CIB026B
//*
//*                          REPORTE DE POSICION
//********************************************************************
//*CCD0109 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=2048K,
//*        COND=(4,LT)
//*CIB026R1 DD SYSOUT=(V,,ZK05)
//*SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=2420
//*SYSPRINT DD SYSOUT=&SALS
//*SYSOUT  DD SYSOUT=&SALS
//*SYSDBOUT DD SYSOUT=&SALS
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN DD DSN=SIVA.CARDS(CCD0109),DISP=SHR
//*
//********************************************************************
//*                           CXB046D
//*
//*        RUTINA DE ACTUALIZACION DE TIPO DE CAMBIO FINAL
//********************************************************************
//CCD0108  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,
//         COND=(4,LT)
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=&SALS
//SYSOUT   DD SYSOUT=&SALS
//SYSDBOUT DD SYSOUT=&SALS
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CCD0108),DISP=SHR
//*
//********************************************************************
//*                          COB033D
//*
//*        PROCESO DE CALCULO DE POSICION Y EFECTIVO
//********************************************************************
//CCD0107  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,
//         COND=(4,LT)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=&SALS
//SYSOUT   DD SYSOUT=&SALS
//SYSDBOUT DD SYSOUT=&SALS
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CCD0107),DISP=SHR
//*
//********************************************************************
//*                            CIB045D
//*
//*                      REPORTE DE LIQUIDACIONES
//********************************************************************
//*CCD0106 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=2048K,
//*        COND=(4,LT)
//*CIB045R1 DD SYSOUT=(V,,ZK06)
//*CIB045R2 DD SYSOUT=(V,,TK65)
//*SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=2420
//*SYSPRINT DD SYSOUT=&SALS
//*SYSOUT  DD SYSOUT=&SALS
//*SYSDBOUT DD SYSOUT=&SALS
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN DD DSN=SIVA.CARDS(CCD0106),DISP=SHR
//**
//********************************************************************
//*                            CIB017D
//*
//*                  REPORTE DE OPERACIONES VIGENTES
//********************************************************************
//*CCD0105 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=2048K,
//*        COND=(4,LT)
//*CIB017R1 DD SYSOUT=(V,,ZK07)
//*CIB017R2 DD DUMMY,SYSOUT=(V,ZK07)
//*SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=2420
//*SYSPRINT DD SYSOUT=&SALS
//*SYSOUT  DD SYSOUT=&SALS
//*SYSDBOUT DD SYSOUT=&SALS
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN DD DSN=SIVA.CARDS(CCD0105),DISP=SHR
//*
//********************************************************************
//*                           COB033D
//*
//*           PROCESO CALCULO DE COSTO DE RECUPERACION
//********************************************************************
//CCD0104  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,
//         COND=(4,LT)
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=&SALS
//SYSOUT   DD SYSOUT=&SALS
//SYSDBOUT DD SYSOUT=&SALS
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CCD0107),DISP=SHR
//*
//********************************************************************
//*                           CIB062D
//*
//*           REPORTE DE OPERACIONES NUEVAS
//********************************************************************
//CCD0103  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,
//         COND=(4,LT)
//CIB062R1 DD SYSOUT=(V,,TK65)
//CIB062R2 DD SYSOUT=(V,,ZK06)
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=&SALS
//SYSOUT   DD SYSOUT=&SALS
//SYSDBOUT DD SYSOUT=&SALS
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CCD0103),DISP=SHR
//*
//********************************************************************
//*                            COB038D
//*
//*          PROCESO ACTUALIZACION DE ESTATUS DE OPERACIONES
//********************************************************************
//CCD0102  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,
//         COND=(4,LT)
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=&SALS
//SYSOUT   DD SYSOUT=&SALS
//SYSDBOUT DD SYSOUT=&SALS
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CCD0102),DISP=SHR
//*
