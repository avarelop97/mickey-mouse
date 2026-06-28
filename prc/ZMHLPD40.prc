//ZMHLPD40 PROC
//*-------------------------------------------------------------------**
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBHTND40                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZAR DEPOSITOS Y RETIROS AUTOMATICOS            *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  SIVAXDRA (PRENDE CONDICION)                   *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL (A SOLICITUD DEL USUARIO)            *
//*                                                                    *
//*   ELABORADO POR: GETRONICS.                                        *
//*                                                                    *
//*   FECHA:  MARZO  2003.                                             *
//*                                                                    *
//*-------------------------------------------------------------------**
//*                      LOG DE MODIFICACIONES                         *
//*-------------------------------------------------------------------**
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* STK  | AGOSTO04 |IDCEX56|        | SE CORRIGIERON NOMBRES DE ARCH. *
//* STK  | ABRIL,06 |IDCEX56|        | SE CAMBIA ARCHIVO DEPRETA.      *
//*-------------------------------------------------------------------**
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *
//*  PHL40P05     EN ARCHIVO SECUENCIAL.                               *
//*                                                         ZM3DG001   *
//*-------------------------------------------------------------------**
//PHL40P05 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPD40,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//*  PASO:  2     ORDENA ARCHIVO DE ENT. POR TIPO DE OPERAC. Y NO. DE  *
//*  PHL40P04     CTA (PRIMERO DEPOSITOS Y DESPUES RETIROS).           *
//*                SE CAMBIA SORT POR ICEMAN                SORT       *
//*--------------------------------------------------------------------*
//PHL40P04 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.MOVTOS.DEPURADO,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..DEPRETA.E2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=195,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL40T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//*  PASO:  3     DEPOSITOS Y RETIROS AUTOMATICOS PARA MDD.            *
//*  PHL40P03     ACTUALIZA TAB: CARTERA OPERDIN PRECIO Y PARAM        *
//*                                                         ZM4DH927   *
//*--------------------------------------------------------------------*
//PHL40P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//*                                                                     00090000
//ZMH927A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPD40,DISP=SHR              00130000
//*                                                                     00090000
//ZMH927A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..DEPRETA.E2,DISP=SHR     00130000
//*                                                                     00130000
//ZMH927R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00130000
//*                                                                     00130000
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00250000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSIN    DD DUMMY                                                     00310000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL40T03),DISP=SHR                   00300000
//*                                                                     00310000
//*--------------------------------------------------------------------*
//*                                                                    *
//*  PASO:  4     DEPOSITOS Y RETIROS AUTOMATICOS PARA CAPITALES.      *
//*  PHL40P02     ACTUALIZA TAB: CARTERA OPERAVA PRECIO Y PARAM.       *
//*                                                         ZM4DH929   *
//*--------------------------------------------------------------------*
//PHL40P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//*                                                                     00090000
//ZMH929A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPD40,DISP=SHR              00130000
//*                                                                     00090000
//ZMH929A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..DEPRETA.E2,DISP=SHR     00130000
//*                                                                     00130000
//ZMH929R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00130000
//*                                                                     00130000
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00250000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSIN    DD DUMMY                                                     00310000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL40T02),DISP=SHR                   00300000
//*                                                                     00310000
//*--------------------------------------------------------------------*
//*                                                                    *
//*  PASO:  5     REPORTOS VENCIDOS EN DIAS ANTERIORES MDD.            *
//*  PHL40P01     ACTUALIZA TAB: CARTERA OPERDIN Y PRECIO.             *
//*                                                         ZM4DH930   *
//*--------------------------------------------------------------------*
//PHL40P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//*                                                                     00090000
//ZMH930A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPD40,DISP=SHR              00130000
//*                                                                     00090000
//ZMH930R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00130000
//*                                                                     00130000
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00250000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSIN    DD DUMMY                                                     00310000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL40T01),DISP=SHR                   00300000
//*                                                                     00310000
//*--------------------------------------------------------------------*
//*               F I N    Z M H L P D 4 0                             *
//*--------------------------------------------------------------------*
