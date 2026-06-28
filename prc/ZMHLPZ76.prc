//ZMHLPZ76 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPZ76.                                           *
//*                                                                    *
//*   OBJETIVO  :  REPORTES DE CONCILIACION B A N C O    -    INDEVAL  *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  SIVAXVA1 ZMHLPP76                             *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *
//*                                                                    *
//*   ELABORADO POR   :  OSCAR URBANO FERNANDEZ.      GETRONICS        *
//*                                                                    *
//*   FECHA:  AGOSTO 2005.                                             *
//*                                                                    *
//*   MODIFICA       :  AZERTIA (OUF).                                 *
//*   FECHA          :  NOVIEMBRE  2008.                               *
//**********************************************************************
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH027                                                *
//* FUNCION:  GENERA INFORMACION DE CARTERA.                          *
//*-------------------------------------------------------------------*
//PHL76P11 EXEC PGM=IKJEFT01
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CAP.INFOCART,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=089,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL76T16),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH028                                                *
//* FUNCION:  GENERA INFORMACION DE OPERACIONES.                      *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL76P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.BCM.CAP.INFOPERA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=137,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL76T15),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT ARCHIVO CARTERA                                    *
//* FUNCION:  ORDENAR POR CUENTA E ICONCEPT, ASI COMO SUMAR TENENCIA  *
//*           SOLO REGISTROS DEL DIA.                                 *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL76P09 EXEC PGM=ICEMAN,COND=(5,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.BCM.CAP.INFOCART,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.BCM.CAP.INFOCART.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=89,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL76T14),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT ARCHIVO OPERACIONES                                *
//* FUNCION:  ORDENAR POR CUENTA E ICONCEPT, ASI COMO SUMAR TENENCIA  *
//*           SOLO REGISTROS DEL DIA.                                 *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL76P08 EXEC PGM=ICEMAN,COND=(5,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.BCM.CAP.INFOPERA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.BCM.CAP.INFOPERA.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=137,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL76T13),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH029                                                *
//* FUNCION:  GENERA ARCHIVO DE OPERACIONES LIQUIDADAS.               *
//*-------------------------------------------------------------------*
//PHL76P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CAP.INFOCART.SORT,DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.BCM.CAP.INFOPERA.SORT,DISP=SHR
//ZM4EH0S1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CAP.POSICION.HOY,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=088,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL76T12),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH024                                                *
//* FUNCION:  UTILIZAR ARCHIVO PROVENIENTE DE INDEVAL.                *
//*-------------------------------------------------------------------*
//PHL76P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH024A1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.ARCH.INDEVAL,
//            DISP=SHR
//ZMH024S1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CAP.INDEVAL.CUSTODIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=172,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL76T11),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DE ARCHIVO INDEVAL-CUSTODIA           *
//*           ORDENAR POR CAJON, EMISORA, SERIE, CUPON.               *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL76P05 EXEC PGM=ICEMAN,COND=(5,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.BCM.CAP.INDEVAL.CUSTODIA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.BCM.CAP.INDCUST.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=172,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL76T10),DISP=SHR                   00183716
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DE ARCHIVO POSICION-HOY               *
//*           ORDENAR POR CAJON, EMISORA, SERIE, CUPON.               *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL76P04 EXEC PGM=ICEMAN,COND=(5,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.BCM.CAP.POSICION.HOY,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.BCM.CAP.POSIHOY.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=88,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL76T09),DISP=SHR                   00183716
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH030                                                *
//* FUNCION:  GENERA REPORTE PARA CONCILIACION DE CUSTODIA            *
//*           CON CORTE POR CAJON, EMISORA, SERIE, CUPON.             *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL76P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH030A1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CAP.INDCUST.SORT,
//            DISP=SHR
//ZMH030A2 DD DSN=MXCP.ZM.TMP.VAL.BCM.CAP.POSIHOY.SORT,
//            DISP=SHR
//ZMH030R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL76T08),DISP=SHR
//*
//*-------------------------------------------------------------------- 00630000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00640000
//*-------------------------------------------------------------------- 00650000
// IF (PHL76P03.RC GE 4 & PHL76P04.RC GE 5 & PHL76P05.RC GE 5 &         00660000
//     PHL76P06.RC GE 4 & PHL76P07.RC GE 4 & PHL76P08.RC GE 5 &         00660000
//     PHL76P09.RC GE 5 & PHL76P10.RC GE 4 & PHL76P11.RC GE 4) THEN     00660000
//PHL76P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL76P03),                      00660000
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',          00670000
//             ' PROCESO CBHLPZ76 TERMINO MAL.CONTESTAR SI',            00680000
//             'PARA TERMINAR')                                         00690000
// ENDIF                                                                00690000
//*                                                                     00700000
