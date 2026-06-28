//FDD2600 PROC
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.).          *
//*                                                                    *
//* PROCESO        :  FDD2600                                          *
//*                   DESPUES DE FIN DE DIA.                           *
//*                                                                    *
//* OBJETIVO       :  REPORTES DIARIOS DE TESORERIA.                   *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PIDCPD02                                         *
//*                                                                    *
//* DESPUES DE     :  PFDFDD22                                         *
//*                                                                    *
//* REALIZACION    :  MANUEL RAMIREZ LOPEZ     17/AGO/93               *
//*                                                                    *
//* OBSERVACION    :  ESTE JOB CORRE DESPUES DE FIN DE DIA             *
//*                                                                    *
//* NOTA           :  SE INCLUYO NUEVO PASO PARA ELIMINACION REPORTE   *
//*                   DE AS-400 (GERARDO VERA)                         *
//*
//* NOTA           :  SE ELIMINA EL PASO FDD2601, EL CUAL LEIA         *
//*                   INFORMACION DE LA PRODU38N                       *
//*
//**********************************************************************
//*
//**********************************************************************
//*                           -- SOBF62D --                            *
//* OBJETIVO    :  CARGA INICIAL Y ACTUALIZACION DIARIA PRECIOS MDD    *
//*                                                                    *
//* ACTUALIZA   :  SEPRULT                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//* DCR: PGM QUE GENERA LA TABLA HISTORICA DE PRECIOS SEPREOP          *
//**********************************************************************
//FDD2609 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//        PARM='/DEBUG',
//        TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2609),DISP=SHR
//**********************************************************************
//*                          === VIBG52D  ===                          *
//*                                                                    *
//* OBJETIVO : REPORTE DE OPERACION DIARIA DE MERCADO DE DINERO        *
//*                                                                    *
//*                  PASO PARA EL BANCO                                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//FDD2607B EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIBG52R1 DD SYSOUT=(O,,3T15)
//VIBG52R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2607B),DISP=SHR
//**********************************************************************
//*   PASO PARA CASA DE BOLSA                                          *
//**********************************************************************
//FDD2607  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIBG52R1 DD SYSOUT=(V,,ZT05)
//VIBG52R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2607),DISP=SHR
//**********************************************************************
//*                          === VIBG46D  ===                          *
//*                                                                    *
//* OBJETIVO : REPORTE DE ANTIGUEDAD DE SALDOS                         *
//*                                                                    *
//*          PASO PARA BANCO                                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//FDD2606B EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIBG46R1 DD SYSOUT=(O,,3T18)
//VIBG46R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2606B),DISP=SHR
//**********************************************************************
//*   PASO PARA CASA DE BOLSA                                          *
//**********************************************************************
//FDD2606  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIBG46R1 DD SYSOUT=(V,,ZT10)
//VIBG46R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2606),DISP=SHR
//**********************************************************************
//*                          === VIBG48D  ===                          *
//*                                                                    *
//* OBJETIVO : REPORTE DE MOVIMIENTOS DE EFECTIVO                      *
//*                                                                    *
//*           PASO PARA EL BANCO                                       *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//FDD2605B EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIBG48DR DD SYSOUT=(O,,3T21)
//VIBG48DR DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2605B),DISP=SHR
//**********************************************************************
//*        PASO PARA CASA DE BOLSA                                     *
//**********************************************************************
//FDD2605  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIBG48DR DD SYSOUT=(V,,ZT11)
//VIBG48DR DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2605),DISP=SHR
//**********************************************************************
//*                          === VIBG51D  ===                          *
//*                                                                    *
//* OBJETIVO : REPORTE DE SALDOS POR SUCURSALES                        *
//*                                                                    *
//*           PASO PARA EL BANCO                                       *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//FDD2603B EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIBG51R1 DD SYSOUT=(O,,3T13)
//VIBG51R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2603B),DISP=SHR
//**********************************************************************
//*        PASO PARA CASA DE BOLSA                                     *
//**********************************************************************
//FDD2603  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIBG51R1 DD SYSOUT=(V,,ZT03)
//VIBG51R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2603),DISP=SHR
//**********************************************************************
//*                          === VIBG50D  ===                          *
//*                                                                    *
//* OBJETIVO : REPORTE DE EFECTIVO DE CONTRATOS OPERATIVOS             *
//*                                                                    *
//*          PASO PARA EL BANCO                                        *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//FDD2602B EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIBG50R1 DD SYSOUT=(O,,3T14)
//VIBG50R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2602B),DISP=SHR
//**********************************************************************
//*          PASO PARA CASA DE BOLSA                                   *
//**********************************************************************
//FDD2602  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIBG50R1 DD SYSOUT=(V,,ZT04)
//VIBG50R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2602),DISP=SHR
