//ZMHLPD02 PROC
//*-------------------------------------------------------------------**
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBHLND02                                            *
//*                                                                    *
//*   OBJETIVO  :  VALIDAR Y DEPURAR ARCHIVO PLAZOS.                   *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMHTPE65 (CBHTNE65)                           *
//*                                                                    *
//*                                                                    *
//*   PERIODICIDAD    :  (A SOLICITUD DEL USUARIO)                     *
//*                                                                    *
//*   ELABORADO POR: SOFTTEK.                                          *
//*                                                                    *
//*   FECHA:  ABRIL DE 2006.                                           *
//*                                                                    *
//*-------------------------------------------------------------------**
//*                      LOG DE MODIFICACIONES                         *
//*-------------------------------------------------------------------**
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3DG001                                                *
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR        *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL02P05 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//ZMG001A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..ZMHLPD02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*--------------------------------------------------------------------*
//*  PASO:     EXTRAE DEL ARCHIVO PLAZOS LA INFORMACION DE CUENTAS     *
//*  PHL02P04  POR LIQUIDAR A 24, 48, 72 Y 96 HORAS ELIMINADO          *
//*            REGISTROS CON CUENTA TRASPASANTE O RECEPTORA            *
//*            010242907               SORT.                           *
//*--------------------------------------------------------------------*
//PHL02P04 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//*                                                                     00130000
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.PZO.PLAZOS,DISP=SHR                   00090000
//*                                                                     00130000
//SORTOUT  DD DSN=MXCP.ZM.WKF.PLAZOS.SIN2907,                           00130000
//            DISP=(NEW,CATLG,DELETE),                                  00130000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=117,BLKSIZE=0),              00130000
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00130000
//*                                                                     00130000
//*                                                                     00130000
//SYSOUT   DD SYSOUT=*                                                  00230000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD02T04),DISP=SHR                   00250000
//*                                                                     00250000
//*--------------------------------------------------------------------*
//*  PASO:     COPIA ARCHIVO WKF A FIX PARA SER TOMADO EN EL FIN DE    *
//*  PHL02P03  DIA.                                                    *
//*--------------------------------------------------------------------*
//PHL02P03 EXEC PGM=IEBGENER,COND=(4,LT)                                00090000
//SYSUT1   DD  DSN=MXCP.ZM.WKF.PLAZOS.SIN2907,DISP=SHR                  00130000
//SYSUT2   DD  DSN=MXCP.ZM.FIX.PLAZOS.SIN2907,                          00130000
//             DISP=(NEW,CATLG,DELETE),                                 00130000
//             DCB=(DSORG=PS,RECFM=FB,LRECL=117,BLKSIZE=0),             00130000
//             UNIT=3390,SPACE=(CYL,(40,20),RLSE)                       00130000
//SYSIN    DD  DUMMY                                                    00130000
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*                                                  00130000
//SYSABOUT DD SYSOUT=*                                                  00230000
//SYSUDUMP DD DUMMY                                                     00250000
//*                                                                     00250000
//*--------------------------------------------------------------------*
//*  PASO:  2     ELIMINAR DEL ARCHIVO PLAZOS LOS REGISTROS CON FECHA  *
//*  PHL02P02     DE LIQUIDACION DIFERENTE A LA DEL DIA. GENERAR       *
//*               REPORTE  DE INCIDENCIAS CON DICHOS REGISTROS         *
//*                                                         ZM4DH035   *
//*--------------------------------------------------------------------*
//PHL02P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMD035A0 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..ZMHLPD02,
//            DISP=SHR
//ZMD035A1 DD DSN=MXCP.ZM.FIX.PLAZOS.SIN2907,
//            DISP=SHR
//ZMD035S1 DD DSN=MXCP.ZM.FIX.VAL.PZO.PLADEP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=195,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//ZMD035R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD02T02),DISP=SHR
//*
//*-------------------------------------------------------------------**
//*  PASO:  1     APAGA EL EVENTO DE TRANSFERENCIA DEL ARCHIVO         *
//*  PHL02P01     PLAZOS.                                              *
//*                                                         ZM4EH033   *
//*-------------------------------------------------------------------**
//PHL02P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD02T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*               F I N    Z M H L P D 0 2                             *
//*--------------------------------------------------------------------*
