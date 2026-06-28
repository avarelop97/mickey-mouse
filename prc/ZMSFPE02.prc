//BCSFNE02 JOB (0000),'PROC. ESTADISTICO',
//*       >>>>>>>>>>>   DISPARADOR DEL ZMSFPE02 <<<<<<<<
//         MSGLEVEL=(1,1),
//         SCHENV=SEBATPROD,
//         MSGCLASS=X,
//         REGION=0M,
//         CLASS=B
//*
//JOBLIB   DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=ZIVA.ZME.LOADLIB.BATCH,DISP=SHR
//*
//PROCLIB  JCLLIB  ORDER=ZIVA.ZME.PROCLIB
//*
//ZMSFPE02 EXEC ZMSFPE02                                                00001000
//*
//**********************************************************************
//* SISTEMA        :  SISTEMA INTEGRAL DE INFORMACION ESTADISTICA      *
//*                               (S. I. I. E.)                        *
//* PROCESO        :  BCSFNE01                                         *
//* OBJETIVO       :  GENERAR ARCHIVOS GDT DE INFORMACION ESTADISTICA  *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//* DESPUES DE     :                                                   *
//* REALIZO        :  AZERTIS  . (MARTIN SANTOS GLEZ.)                 *
//* FECHA          :  ABRIL DE 2007                                    *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DE UNA SOLA VEZ               *
//**********************************************************************
