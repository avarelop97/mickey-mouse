//SIC0600  PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PAPSIC06                                         *
//*                   SUBE A CINTA PRECIOS DEL DIA SOCINV              *
//*                                                                    *
//* OBJETIVO       :  SUBIR LOS PRECIOS DEL DIA DE SOCINV EN CASO DE   *
//*                   FALLA DEL NDM                                    *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :                                                   *
//*                                                                    *
//* REALIZO        :  RAFAEL ZULETA VARGAS                             *
//* FECHA          :  OCTUBRE DE 1992                                  *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN CASO DE         *
//*                   CONTINGENCIA.                                    *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------
//*        EJECUCION DEL PROGRAMA IEBGENER
//*        SUBE A CINTA EL ARCHIVO SIVA.SINPREF
//*        PASO REINICIABLE POR RESTART
//*--------------------------------------------------------------------
//*
//SIC0602  EXEC  PGM=ICEGENER,REGION=0M,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=SIVA.SIN.WKF.SINPREF,DISP=SHR
//SYSUT2   DD DSN=SINPREF,DISP=(NEW,KEEP,KEEP),UNIT=VTSS02,
//            VOL=(,RETAIN),LABEL=(1,SL,EXPDT=99000)
//*           DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=6320)
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------
//*        EJECUCION DEL PROGRAMA IEBGENER
//*        SUBE A CINTA EL ARCHIVO SIVA.SINPREF
//*        PASO REINICIABLE POR RESTART
//*--------------------------------------------------------------------
//*
//SIC0601  EXEC  PGM=ICEGENER,REGION=0M,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=SIVA.SIN.WKF.VPARAM,DISP=SHR
//SYSUT2   DD DSN=VPARAMF,DISP=(NEW,KEEP,KEEP),UNIT=VTSS02,
//            VOL=(,RETAIN,REF=*.SIC0602.SYSUT2),
//            LABEL=(2,SL,EXPDT=99000)
//*           DCB=(DSORG=PS,LRECL=25,RECFM=FB,BLKSIZE=2500)
//SYSIN    DD DUMMY
//*
