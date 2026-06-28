//SID0400  PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PAPSID04                                         *
//*                   SUBE A CINTA PRECIOS DEL DIA SOCINV              *
//*                                                                    *
//* OBJETIVO       :  SUBIR LOS PRECIOS DEL DIA DE SOCINV              *
//*                   SE SUBMITE POR CONTROLM                          *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PFDFDD01 (FIN DE DIA)                            *
//*                                                                    *
//* DESPUES DE     :  VALUACION DIARIA DE SOCIEDADES DE INVERSION      *
//*                   (PVOSID03)                                       *
//*                                                                    *
//* REALIZO        :  RICARDO ARGUETA TEPEPA                           *
//* FECHA          :  SEPTIEMBRE 1992                                  *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *
//*                   SIEMPRE ANTES DE EL FIN DE DIA                   *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                        -- IDCAMS --                                *
//* OBJETIVO : BORRA ARCHIVOS SECUENCIALES DE DISCO                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//SID0403  EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   DSN=SIVA.CARDS(SID0403),DISP=SHR
//*
//**********************************************************************
//*        EJECUCION DEL PROGRAMA VOB120D
//*        PASO REINICIABLE POR RESTART
//**********************************************************************
//SID0402 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(8,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//        DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SINPREF  DD DSN=SIVA.SIN.WKF.SINPREF,DISP=(NEW,CATLG,DELETE),
//            UNIT=SYSDA,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0)
//VOB120R1 DD SYSOUT=*
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=SIVA.CARDS(SID0402),DISP=SHR
//*
//**********************************************************************
//*        COPIA A DISCO LA VISTA DE VPARAM
//*        PASO REINICIABLE POR RESTART
//**********************************************************************
//*
//*SID0401  EXEC  PGM=IKJEFT01,DYNAMNBR=20
//*SYSTSPRT   DD  SYSOUT=*
//*SYSTSIN    DD DSN=SIVA.CARDS(SID0401),DISP=SHR
//*SYSPUNCH   DD  DSN=SIVA.PUNCH(VPARAM),DISP=SHR
//*SYSPRINT   DD  SYSOUT=*
//*SYSREC00   DD  DSN=SIVA.SIN.WKF.VPARAM,DISP=(NEW,CATLG,DELETE),
//*           UNIT=SYSDA,SPACE=(CYL,(5,2),RLSE)
//*SYSIN      DD DSN=SIVA.CARDS(SID0400),DISP=SHR
//**
