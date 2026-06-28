//ZMHLPD84 PROC
//*-------------------------------------------------------------------**
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBHLPD84  /  ZMHLPD84                               *
//*                                                                    *
//*   OBJETIVO  : REPORTE QUE MUESTRA NIVEL CONTRATO INDICANDO EL      *
//*               PORCENTAJE DE CUOTA                                  *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR: CDA                                               *
//*                                                                    *
//*   FECHA:  SETIEMBRE 2014.                                          *
//*                                                                    *
//*-------------------------------------------------------------------**
//*                      LOG DE MODIFICACIONES                         *
//*-------------------------------------------------------------------**
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------**
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*  PASO:  1     GENERA ARCHIVO A NIVEL CONTRATO INDICANDO EL         *
//*  PHL84P01     PORCENTAJE DE CUOTA                                  *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//PHL84P01 EXEC PGM=IKJEFT01                                            00070000
//*                                                                     00090000
//ENTRADA1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHLPP84,DISP=SHR
//*                                                                     00090000
//SALIDA01 DD DSN=MXCP.ZM.FIX.CBP.CUOTAS.SIVA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=90,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*                                                                     00090000
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00250000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSIN    DD DUMMY                                                     00310000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL84T01),DISP=SHR                   00300000
//*                                                                     00310000
//*--------------------------------------------------------------------*
//*                 FIN    ZMHLPD84                                    *
//*--------------------------------------------------------------------*
