//SID2500   PROC
//*
//**********************************************************************
//*                   I.D.S. COMERCIAL, S.A. DE C.V.                   *       *
//*                                                                    *
//*   APLICACION:  DISTRIBUCION DE FONDOS POR LA RED                   *
//*                                                                    *
//*   PROCEDIM. :  SID2500                                             *
//*                                                                    *
//*   OBJETIVO  :  GENERAR ARCHIVO DE PRECIOS Y CALIFICACIONES DE      *
//*                FONDOS DE DEUDA Y DE SOCIEDADES DE INVERSION        *
//*                COMUNES.                                            *
//*                                                                    *
//*   CORRE ANTES DE  :  INDEPENDIENTE                                 *
//*                                                                    *
//*   CORRE DESPUES DE:  PVOSID03.                                     *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO.    (INTERFACES).                      *
//*                                                                    *
//*   ELABORADO POR:                            FECHA:  25-SEP-2000    *
//*                  IDS COMERCIAL, S.A. DE C.V.                       *
//**********************************************************************
//*                BITACORA DE LAS MODIFICACIONES                      *
//*                                                                    *
//*  MODIFICADO POR:                         FECHA:                    *
//*                                                                    *
//*  DESCRIPCION   :                                                   *
//*                                                                    *
//**********************************************************************
//*  PASO         DESCRIPCION
//*
//*  SID2501      GENERA ARCHIVO DE PRECIOS Y CALIFICACIONES DE
//*               FONDOS DE DEUDA Y DE SOCIEDADES DE INVERSION
//*               COMUNES.
//* PROGRAMA :    VOBV92E
//**********************************************************************
//*
//*---------------------------------------------------------------------
//*  GENERA ARCHIVO DE PRECIOS Y DE CALIFICACIONES DE FONDOS DE AHORRO
//*  Y DE SOCIEDADES DE INVERSION COMUNES.
//*---------------------------------------------------------------------
//*
//SID2501 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=0M,COND=(0,LT)
//TP4CAS01 DD DSN=SIVA.SIA.FIX.PRECIO.CALIF.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=SYSDA,
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=97,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID2501),DISP=SHR
//*
//*---------------------------------------------------------------------
//*              TERMINA  PROCESO  SID2500
//*---------------------------------------------------------------------
