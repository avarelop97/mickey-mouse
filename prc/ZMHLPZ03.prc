//ZMHLPZ03 PROC
//*-------------------------------------------------------------------**
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  SIVAXDRP                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZAR LOS DEPOSITOS Y RETIROS A PLAZOS           *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL (A SOLICITUD DEL USUARIO)            *
//*                                                                    *
//*   ELABORADO POR:  SOFTTEK.                                         *
//*                                                                    *
//*   FECHA:  ABRIL  2006.                                             *
//*                                                                    *
//*-------------------------------------------------------------------**
//*                      LOG DE MODIFICACIONES                         *
//*-------------------------------------------------------------------**
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*--------------------------------------------------------------------*
//*  PASO:  2     ORDENAR ARCHIVO PLAZOS POR CUENTA RECEPTORA (2A)     *
//*  PHL03P05     Y CUENTA TRASPASANTE (1A)                            *
//*                                                         SORT       *
//*--------------------------------------------------------------------*
//PHL03P05 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//*                                                                     00130000
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.PZO.PLADEP,DISP=SHR                   00090000
//*                                                                     00130000
//SORTOUT  DD DSN=MXCP.ZM.TMP.PLAZO.DEPSORT,                            00130000
//            DISP=(NEW,CATLG,DELETE),                                  00130000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=195,BLKSIZE=0),              00130000
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)                        00130000
//*                                                                     00130000
//SYSOUT   DD SYSOUT=*                                                  00230000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD03T05),DISP=SHR                   00250000
//*                                                                     00250000
//*--------------------------------------------------------------------*
//*  PASO:  3     REALIZAR DEPOSITOS A PLAZO DE MERCADO DE DINERO      *
//*  PHL03P04                                                          *
//*                                                         ZM4DH036   *
//*--------------------------------------------------------------------*
//PHL03P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH036A1 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPD03,DISP=SHR
//*
//ZMH036A2 DD DSN=MXCP.ZM.TMP.PLAZO.DEPSORT,DISP=SHR
//*
//ZMH036R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD03T04),DISP=SHR
//*-------------------------------------------------------------------**
//*  PASO:  4     REALIZAR RETIROS A PLAZO DE MERCADO DE DINERO        *
//*  PHL03P03                                                          *
//*                                                         ZM4DH037   *
//*-------------------------------------------------------------------**
//PHL03P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH037A1 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPD03,DISP=SHR
//*
//ZMH037A2 DD DSN=MXCP.ZM.TMP.PLAZO.DEPSORT,DISP=SHR
//*
//ZMH037R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD03T03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*               F I N    Z M H L P P 0 3                             *
//*--------------------------------------------------------------------*
