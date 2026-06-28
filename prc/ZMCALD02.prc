//ZMCALD02 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMCALD02.                                           *
//*                                                                    *
//*   OBJETIVO  :  CONSOLIDA A NIVEL CLIENTE INFORMACION DE PDV        *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    :                                                *
//*                                                                    *
//*   ELABORADO POR   :  INDRA                                         *
//*                                                                    *
//*   FECHA:  AGOSTO 2020.                                             *
//*                                                                    *
//*   MODIFICA       :                                                 *
//*   FECHA          :                                                 *
//**********************************************************************
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DE ARCHIVO PDV Y CONSOLIDA A NIVEL    *
//*           CLIENTE                                                 *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PFI76P20 EXEC PGM=ICEMAN,COND=(5,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.F&FECHA..MYHPPSUI.MATCHSUI,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.CONSOLID.MATCHSUI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,20),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=477,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFCALT02),DISP=SHR                   00183716
//*
//**********************************************************************
//* PROGRAMA    : IKJEFT01/ZM4CAL02                                    *
//* DESCRIPCION : ACTUALIZA LA CALIFICACION DE UN CLIENTE CON BASE A   *
//*               LA INTERFAZ DE PDV MATCHSUI                          *
//**********************************************************************
//PFI76P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMCAL02E DD DSN=MXCP.ZM.TMP.CONSOLID.MATCHSUI,DISP=SHR                00007906
//*                                                                     00007905
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFCALT03),DISP=SHR
//*
