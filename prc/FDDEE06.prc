//FDDEE06   PROC
//*
//**********************************************************************
//*                   I.D.S. COMERCIAL, S.A. DE C.V.                   *       *
//*                                                                    *
//*   APLICACION:  DISTRIBUCION DE FONDOS POR LA RED                   *
//*                                                                    *
//*   PROCEDIM. :  FDDEE06                                             *
//*                                                                    *
//*   OBJETIVO  :  GENERAR ARCHIVO DE PRECIOS DE SOCIEDADES DE         *
//*                INVERSION                                           *
//*                                                                    *
//*   CORRE ANTES DE  :  INDEPENDIENTE                                 *
//*                                                                    *
//*   CORRE DESPUES DE:  CIERRE DE SOCIEDADES DE INVERSION.            *
//*                                                                    *
//*   PERIODICIDAD    :  UNA UNICA VEZ (CARGA INICIAL)                 *
//*                                                                    *
//*   ELABORADO POR: J. I. ESTRELLA             FECHA:  31-AGO-2000    *
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
//*  FDDE0601     GENERA ARCHIVO DE PRECIOS DE SOC. DE INVERSION
//**********************************************************************
//*
//*---------------------------------------------------------------------
//*  PROGRAMA   DESCRIPCION                                            *
//*  VOBV90E    GENERA ARCHIVO DE PRECIOS DE SOC. DE INVERSION         *
//*---------------------------------------------------------------------
//*
//FDDE0601 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(0,LT)
//TP4CAS01 DD DSN=SIVA.SIA.FIX.PRECIO.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=SYSDA,
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=32,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDDE0601),DISP=SHR
//*
//*---------------------------------------------------------------------
//*  VOBV0001     RESPALDA ARCHIVO DE LA POSICION ACTUAL DE CLIENTES
//*---------------------------------------------------------------------
//*
//VOBV0001 EXEC PGM=ICEGENER
//SYSUT1   DD DSN=SIVA.SIA.FIX.PRECIO.F&FECHA,
//            DISP=SHR
//SYSUT2   DD DSN=SIVA.SIA.FIX.PRECIO.F&FECHA..BKP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=SYSDA,
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(*.SYSUT1)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//**********************************************************************
//*                     FIN DE FDDEE06
//**********************************************************************
