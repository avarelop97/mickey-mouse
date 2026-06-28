//ZMHLPD01 PROC
//*-------------------------------------------------------------------**
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBHLND01                                            *
//*                                                                    *
//*   OBJETIVO  :  VALIDAR Y DEPURAR ARCHIVO DE MOVIMIENTOS, GENERAR   *
//*                REPORTE DE INCIDENCIAS DE REGISTROS EN ARCHIVO      *
//*                PLAZOS A FECHA DE LIQUIDACION SOLICITADA QUE NO     *
//*                ESTAN EN EL ARCHIVO DE MOVIMIENTOS. FINALIZAR       *
//*                EVENTO DE TRANSFERENCIA DE ARCHIVO MOVTOS           *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMHTPE39                                      *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DEL USUARIO                       *
//*                                                                    *
//*   ELABORADO POR:  SOFTTEK.                                         *
//*                                                                    *
//*   FECHA:  ABRIL, 2006.                                             *
//*                                                                    *
//*-------------------------------------------------------------------**
//*                      LOG DE MODIFICACIONES                         *
//*-------------------------------------------------------------------**
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*--------------------------------------------------------------------*
//*  PASO:  4   CONCATENAR ARCHIVOS DE PLAZO DE CUATRO DIAS ANTERIORES,*
//*  PHL01P04   ORDENANDOLOS POR CUENTA DE RETIRO, CUENTA DE DEPOSITO, *
//*             TIPO DE VALOR, EMISORA, SERIE, TITULOS Y F.LIQUIDACION *
//*                                                         SORT       *
//*--------------------------------------------------------------------*
//PHL01P04 EXEC PGM=ICEMAN                                              00070000
//*                                                                     00130000
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.MOVPLA(0),DISP=SHR                   00090000
//         DD DSN=MXCP.ZM.GDGD.VAL.MOVPLA(-1),DISP=SHR                  00090000
//         DD DSN=MXCP.ZM.GDGD.VAL.MOVPLA(-2),DISP=SHR                  00090000
//         DD DSN=MXCP.ZM.GDGD.VAL.MOVPLA(-3),DISP=SHR                  00090000
//*                                                                     00130000
//SORTOUT  DD DSN=MXCP.ZM.FIX.PLAZOS.ANTSORT,                           00130000
//            DISP=(NEW,CATLG,DELETE),                                  00130000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=195,BLKSIZE=0),              00130000
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00130000
//*                                                                     00130000
//SYSOUT   DD SYSOUT=*                                                  00230000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD01T04),DISP=SHR                   00250000
//*                                                                     00250000
//*--------------------------------------------------------------------*
//*  PASO:  3     ORDENAR ARCHIVO MOVTOS INDEVAL POR CUENTA DE RETIRO, *
//*  PHL01P03     CUENTA DE DEPOSITO, TIPO DE VALOR, EMISORA Y TITULOS.*
//*               ELIMINANDO ENCABEZADOS Y REGISTROS EN BLANCO.        *
//*                                                         SORT       *
//*--------------------------------------------------------------------*
//PHL01P03 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//*                                                                     00130000
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..DEPRETA.E1,DISP=SHR     00090000
//*                                                                     00130000
//SORTOUT  DD DSN=MXCP.ZM.TMP.DEPRETA.SORT,                             00130000
//            DISP=(NEW,CATLG,DELETE),                                  00130000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=195,BLKSIZE=0),              00130000
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00130000
//*                                                                     00130000
//SYSOUT   DD SYSOUT=*                                                  00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD01T03),DISP=SHR                   00230000
//*                                                                     00250000
//*--------------------------------------------------------------------*
//*  PASO:  2     ELIMINAR DEL ARCHIVO MOVTOS LOS REGISTROS QUE ESTEN  *
//*  PHL01P02     EN EL ARCHIVO PLAZOS. GENERAR REPORTE DE INCIDENCIAS *
//*               DE LOS REGISTROS EN PLAZOS CON FECHA DE LIQUIDACION  *
//*               DEL DIA QUE NO SE ENCUENTREN EN  MOVTOS.             *
//*                                                         ZM4DH034   *
//*--------------------------------------------------------------------*
//PHL01P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4DH0A1 DD DSN=MXCP.ZM.TMP.DEPRETA.SORT,DISP=SHR
//*
//ZM4DH0A2 DD DSN=MXCP.ZM.FIX.PLAZOS.ANTSORT,DISP=SHR
//*
//ZM4DH0S1 DD DSN=MXCP.ZM.FIX.MOVTOS.DEPURADO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=195,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*
//ZM4DH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD01T02),DISP=SHR
//*
//*-------------------------------------------------------------------**
//*  PASO:  1     APAGAR EL EVENTO DE TRANSFERENCIA DEL ARCHIVO        *
//*  PHL01P01     MOVTOS.                                              *
//*                                                         ZM4EH033   *
//*-------------------------------------------------------------------**
//PHL01P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD01T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*               F I N    Z M H L P D 0 1                             *
//*--------------------------------------------------------------------*
