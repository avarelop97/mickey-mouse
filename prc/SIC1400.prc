//SIC1400  PROC
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
//SYSUT1   DD DSN=SIVA.SIN.FIX.OPESOCIN.FINDIA,DISP=SHR
//SYSUT2   DD DSN=OPESOCF,DISP=(NEW,KEEP,KEEP),UNIT=VTSS02,
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
//SYSUT1   DD DSN=SIVA.SIN.FIX.REPSOCIN.FINDIA,DISP=SHR
//SYSUT2   DD DSN=REPSOCF,DISP=(NEW,KEEP,KEEP),UNIT=VTSS02,
//            VOL=(,RETAIN,REF=*.SIC1005.SYSUT2),
//            LABEL=(2,SL,EXPDT=99000)
//*           DCB=(DSORG=PS,LRECL=119,RECFM=FB,BLKSIZE=11900)
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
//SYSUT1   DD DSN=SIVA.SIN.FIX.EMISOCIN.FINDIA,DISP=SHR
//SYSUT2   DD DSN=EMISOCF,DISP=(NEW,KEEP,KEEP),UNIT=VTSS02,
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
//SYSUT1   DD DSN=SIVA.SIN.FIX.PARSOCIN.FINDIA,DISP=SHR
//SYSUT2   DD DSN=PARSOCF,DISP=(NEW,KEEP,KEEP),UNIT=VTSS02,
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
//SYSUT1   DD DSN=SIVA.SIN.FIX.SOCEXT,DISP=SHR
//SYSUT2   DD DSN=SOCEXTF,DISP=(NEW,KEEP,KEEP),UNIT=VTSS02,
//            VOL=(,RETAIN,REF=*.SIC1002.SYSUT2),
//            LABEL=(5,SL,EXPDT=99000)
//*           DCB=(DSORG=PS,LRECL=119,RECFM=FB,BLKSIZE=11900)
//SYSIN    DD DUMMY
//*
