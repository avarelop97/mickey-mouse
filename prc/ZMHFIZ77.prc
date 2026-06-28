//ZMHFIZ77 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHFIZ77.                                           *
//*                                                                    *
//*   OBJETIVO  :  REPORTES DE CONCILIACION B A N C O    -    INDEVAL  *
//*                PARA FIDEICOMISOS (TS)                              *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  SIVAXVA1 ZMHFIP77                             *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *
//*                                                                    *
//*   ELABORADO POR   :                                                *
//*                                                                    *
//*   FECHA:  NOV  2009.                                               *
//*                                                                    *
//*   MODIFICA       :                                                 *
//*   FECHA          :                                                 *
//**********************************************************************
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4CFI29                                                *
//* FUNCION:  GENERA INFORMACION DE CARTERA PARA TS                   *
//*-------------------------------------------------------------------*
//PFI76P50 EXEC PGM=IKJEFT01
//ZM4EH0A1 DD DSN=MXC&AMB..ZM.FIX.VAL.BCM.CAP.INFOCART.T,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//*SDATOOL-41254-KAR-INI
//*           DCB=(RECFM=FB,DSORG=PS,LRECL=089,BLKSIZE=0)
//            DCB=(RECFM=FB,DSORG=PS,LRECL=094,BLKSIZE=0)
//*SDATOOL-41254-KAR-FIN
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFI77T50),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4CFI32                                                *
//* FUNCION:  GENERA INFORMACION DE OPERACIONES.                      *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PFI76P45 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4EH0A2 DD DSN=MXC&AMB..ZM.FIX.VAL.BCM.CAP.INFOPERA.T,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//*SDATOOL-41254-KAR-INI
//*           DCB=(RECFM=FB,DSORG=PS,LRECL=137,BLKSIZE=0)
//            DCB=(RECFM=FB,DSORG=PS,LRECL=142,BLKSIZE=0)
//*SDATOOL-41254-KAR-FIN
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFI77T45),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT ARCHIVO CARTERA                                    *
//* FUNCION:  ORDENAR POR CUENTA E ICONCEPT, ASI COMO SUMAR TENENCIA  *
//*           SOLO REGISTROS DEL DIA.                                 *
//* NO ACTUALIZA TABLAS                                               *
//*-------------------------------------------------------------------*
//PFI76P40 EXEC PGM=ICEMAN,COND=(5,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.VAL.BCM.CAP.INFOCART.T,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.VAL.BCM.CAP.INFOCART.T.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//*SDATOOL-41254-KAR-INI
//*           DCB=(RECFM=FB,DSORG=PS,LRECL=89,BLKSIZE=0)
//            DCB=(RECFM=FB,DSORG=PS,LRECL=94,BLKSIZE=0)
//*SDATOOL-41254-KAR-FIN
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFI77T40),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT ARCHIVO OPERACIONES                                *
//* FUNCION:  ORDENAR POR CUENTA E ICONCEPT, ASI COMO SUMAR TENENCIA  *
//*           SOLO REGISTROS DEL DIA.                                 *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PFI76P35 EXEC PGM=ICEMAN,COND=(5,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.VAL.BCM.CAP.INFOPERA.T,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.VAL.BCM.CAP.INFOPERA.T.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//*SDATOOL-41254-KAR-INI
//*           DCB=(RECFM=FB,DSORG=PS,LRECL=137,BLKSIZE=0)
//            DCB=(RECFM=FB,DSORG=PS,LRECL=142,BLKSIZE=0)
//*SDATOOL-41254-KAR-FIN
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFI77T35),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH029                                                *
//* FUNCION:  GENERA ARCHIVO DE OPERACIONES LIQUIDADAS.               *
//*-------------------------------------------------------------------*
//PFI76P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4EH0A1 DD DSN=MXC&AMB..ZM.FIX.VAL.BCM.CAP.INFOCART.T.SORT,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXC&AMB..ZM.FIX.VAL.BCM.CAP.INFOPERA.T.SORT,
//            DISP=SHR
//ZM4EH0S1 DD DSN=MXC&AMB..ZM.FIX.VAL.BCM.CAP.POSICION.HOY.T,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//*SDATOOL-41254-KAR-INI
//*           DCB=(RECFM=FB,DSORG=PS,LRECL=088,BLKSIZE=0)
//            DCB=(RECFM=FB,DSORG=PS,LRECL=093,BLKSIZE=0)
//*SDATOOL-41254-KAR-FIN
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFI77T30),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4CFI31                                                *
//* FUNCION:  UTILIZAR ARCHIVO PROVENIENTE DE INDEVAL.                *
//*-------------------------------------------------------------------*
//PFI76P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH024A1 DD DSN=MXC&AMB..ZM.FIX.O957.EBCM.SCTD.INDEVAL,
//            DISP=SHR
//ZMH024S1 DD DSN=MXC&AMB..ZM.FIX.VAL.BCM.CAP.INDEVAL.CUSTODIA.T,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=172,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFI77T25),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DE ARCHIVO INDEVAL-CUSTODIA           *
//*           ORDENAR POR CAJON, EMISORA, SERIE, CUPON.               *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PFI76P20 EXEC PGM=ICEMAN,COND=(5,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.VAL.BCM.CAP.INDEVAL.CUSTODIA.T,       R
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.VAL.BCM.CAP.INDCUST.SORT.T,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=172,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFI77T20),DISP=SHR                   00183716
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DE ARCHIVO POSICION-HOY               *
//*           ORDENAR POR CAJON, EMISORA, SERIE, CUPON.               *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PFI76P15 EXEC PGM=ICEMAN,COND=(5,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.VAL.BCM.CAP.POSICION.HOY.T,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.VAL.BCM.CAP.POSIHOY.SORT.T,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//*SDATOOL-41254-KAR-INI
//*           DCB=(RECFM=FB,DSORG=PS,LRECL=88,BLKSIZE=0)
//            DCB=(RECFM=FB,DSORG=PS,LRECL=93,BLKSIZE=0)
//*SDATOOL-41254-KAR-FIN
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFI77T15),DISP=SHR                   00183716
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4CFI30                                                *
//* FUNCION:  GENERA REPORTE PARA CONCILIACION DE CUSTODIA            *
//*           CON CORTE POR CAJON, EMISORA, SERIE, CUPON.             *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PFI76P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH030A1 DD DSN=MXC&AMB..ZM.FIX.VAL.BCM.CAP.INDCUST.SORT.T,
//            DISP=SHR
//ZMH030A2 DD DSN=MXC&AMB..ZM.FIX.VAL.BCM.CAP.POSIHOY.SORT.T,
//            DISP=SHR
//ZMH030R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFI77T10),DISP=SHR
//*
//*-------------------------------------------------------------------- 00630000
