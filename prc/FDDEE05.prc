//FDDEE05   PROC
//*
//**********************************************************************
//*                   I.D.S. COMERCIAL, S.A. DE C.V.                   *       *
//*                                                                    *
//*   APLICACION:  DISTRIBUCION DE FONDOS POR LA RED                   *
//*                                                                    *
//*   PROCEDIM. :  FDDEE05                                             *
//*                                                                    *
//*   OBJETIVO  :  OBTENER ARCHIVO DE POSICION ACTUAL DE CLIENTES DEL  *
//*                SIVA                                                *
//*                                                                    *
//*   CORRE ANTES DE  :  INDEPENDIENTE                                 *
//*                                                                    *
//*   CORRE DESPUES DE:  CIERRE DE VALORES.                            *
//*                                                                    *
//*   PERIODICIDAD    :  UNICA VEZ. (CARGA INICIAL).                   *
//*                                                                    *
//*   ELABORADO POR: J. I. ESTRELLA             FECHA:  24-AGO-2000    *
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
//*  FDDE0501     GENERA ARCHIVO DE LA POSICION ACTUAL DE CLIENTES SIVA
//**********************************************************************
//*
//*---------------------------------------------------------------------
//*  PROGRAMA   DESCRIPCION                                            *
//*  VOBV89E    GENERA ARCHIVO DE LA POSICION ACTUAL DE CLIENTES SIVA  *
//*---------------------------------------------------------------------
//*
//FDDE0501 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(0,LT)
//TP4CAS01 DD DSN=SIVA.SIA.FIX.POSICION.PASO.SIVA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=SYSDA,
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=40,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDDE0501),DISP=SHR
//*
//*---------------------------------------------------------------------
//*  VOBV0001     RESPALDA ARCHIVO DE LA POSICION ACTUAL DE CLIENTES
//*---------------------------------------------------------------------
//*
//VOBV0001 EXEC PGM=ICEGENER
//SYSUT1   DD DSN=SIVA.SIA.FIX.POSICION.PASO.SIVA,
//            DISP=SHR
//SYSUT2   DD DSN=SIVA.SIA.FIX.POSICION.PASO.BKP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=SYSDA,
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(*.SYSUT1)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//**********************************************************************
//*                     FIN DE PROC. FDDEE05
//**********************************************************************
