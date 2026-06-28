//SIC1300  PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PAPSIC10                                         *
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
//*
//*--------------------------------------------------------------------
//*        EJECUCION DEL PROGRAMA IEBGENER
//*        SUBE A CINTA EL ARCHIVO SIVA.SIN.FIX.SINPREF
//*        PASO REINICIABLE POR RESTART
//*--------------------------------------------------------------------
//*
//SIC1005  EXEC  PGM=ICEGENER,REGION=0M,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=SIVA.SIN.FIX.OPESOCIN,DISP=SHR
//SYSUT2   DD DSN=OPESOCIN,DISP=(NEW,KEEP,KEEP),UNIT=VTSS02,
//            VOL=(,RETAIN),LABEL=(1,SL,EXPDT=99000)
//*           DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=8000)
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------
//*        EJECUCION DEL PROGRAMA IEBGENER
//*        SUBE A CINTA EL ARCHIVO SIVA.SIN.FIX.SINPREF
//*        PASO REINICIABLE POR RESTART
//*--------------------------------------------------------------------
//*
//SIC1004  EXEC  PGM=ICEGENER,REGION=0M,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=SIVA.SIN.FIX.PRESOCIN,DISP=SHR
//SYSUT2   DD DSN=PRESOCIN,DISP=(NEW,KEEP,KEEP),UNIT=VTSS02,
//            VOL=(,RETAIN,REF=*.SIC1005.SYSUT2),
//            LABEL=(2,SL,EXPDT=99000)
//*           DCB=(DSORG=PS,LRECL=40,RECFM=FB,BLKSIZE=8000)
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------
//*        EJECUCION DEL PROGRAMA IEBGENER
//*        SUBE A CINTA EL ARCHIVO SIVA.SIN.FIX.SINPREF
//*        PASO REINICIABLE POR RESTART
//*--------------------------------------------------------------------
//*
//SIC1003  EXEC  PGM=ICEGENER,REGION=0M,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=SIVA.SIN.FIX.EMISOCIN,DISP=SHR
//SYSUT2   DD DSN=EMISOCIN,DISP=(NEW,KEEP,KEEP),UNIT=VTSS02,
//            VOL=(,RETAIN,REF=*.SIC1004.SYSUT2),
//            LABEL=(3,SL,EXPDT=99000)
//*           DCB=(DSORG=PS,LRECL=153,RECFM=FB,BLKSIZE=15300)
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------
//*        EJECUCION DEL PROGRAMA IEBGENER
//*        SUBE A CINTA EL ARCHIVO SIVA.SIN.FIX.SINPREF
//*        PASO REINICIABLE POR RESTART
//*--------------------------------------------------------------------
//*
//SIC1002  EXEC  PGM=ICEGENER,REGION=0M,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=SIVA.SIN.FIX.PARSOCIN,DISP=SHR
//SYSUT2   DD DSN=PARSOCIN,DISP=(NEW,KEEP,KEEP),UNIT=VTSS02,
//            VOL=(,RETAIN,REF=*.SIC1003.SYSUT2),
//            LABEL=(4,SL,EXPDT=99000)
//*           DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=8000)
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------
//*        EJECUCION DEL PROGRAMA IEBGENER
//*        SUBE A CINTA EL ARCHIVO SIVA.SIN.FIX.SINPREF
//*        PASO REINICIABLE POR RESTART
//*--------------------------------------------------------------------
//*
//SIC1001  EXEC  PGM=ICEGENER,REGION=0M,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=SIVA.SIN.FIX.VENSOCIN,DISP=SHR
//SYSUT2   DD DSN=VENSOCIN,DISP=(NEW,KEEP,KEEP),UNIT=VTSS02,
//            VOL=(,RETAIN,REF=*.SIC1002.SYSUT2),
//            LABEL=(5,SL,EXPDT=99000)
//*           DCB=(DSORG=PS,LRECL=32,RECFM=FB,BLKSIZE=6400)
//SYSIN    DD DUMMY
//*
