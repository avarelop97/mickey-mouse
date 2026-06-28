//ZMUFPD18 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA        :  ZM - BANCA PATRIMONIAL                           *
//*                                                                    *
//* PROCESO        :  ZMUFPD18                                         *
//*                                                                    *
//* OBJETIVO       :  PROCESAR LAS OPERACIONES DE AQUELLOS CLIENTES QUE*
//*                   SE QUEDARON FUERA DE PERFIL.                     *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :                                                   *
//*                                                                    *
//* REALIZO        :  FSW-TECNOCOM                                     *
//* FECHA          :  10-ENERO-2013                                    *
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*                   HISTORIAL DE MANTENIMIENTO                       *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR     FECHA             DESCRIPCION               *
//* ----------- --------- ------- ----------------------------------- *
//* FS-1.1.0-02 CAPGEMINI 30JUN17 SE CAMBIA LONGITUD DE ARCHIVO.       *
//*------------------------------------------------------------------- *
//*
//*--------------------------------------------------------------------*
//* PASO:        PUF18P14                                              *
//* UTILERIA:    IKJEFT01                                              *
//* DESCRIPCION: DESCARGA DE TODOS LOS MOVIMIENTOS DE LA TABLA ZMDT693 *
//*              DEL DIA.                                              *
//*--------------------------------------------------------------------*
//PUF18P14 EXEC PGM=IKJEFT01
//*
//ZMDUSS01 DD DSN=MXCP.ZM.FIX.SUITABI.EDOCT693,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=244,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZUF18T14),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO:        PUF18P13                                              *
//* UTILERIA:    IKJEFT01                                              *
//* DESCRIPCION: SE OBTIENEN LOS CONTRATOS DE LA TABLA ZMDT693 QUE EN *
//*              EL CAMPO ZM693_CONCEPTO TIENEN INICIO Y COMPRA, SOLO  *
//*              DEL DIA DE PROCESO, PARA DESCARTAR LOS MOVIMIENTOS DEL*
//*              ARCHIVO DE ENTRADA QUE NO TUVIERON COMPRA EN EL DIA.  *
//*              SE AGREGA EL NUMERO DEL CLIENTE DE LA TABLA ZMDT802 EN*
//*              EL ARCHIVO DE SALIDA.                                 *
//*--------------------------------------------------------------------*
//PUF18P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDUSEN1 DD DSN=MXCP.ZM.FIX.SUITABI.EDOCT693,
//            DISP=SHR
//ZMDUSSA1 DD DSN=MXCP.ZM.FIX.SUITABI.SERPA693,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=253,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZUF18T13),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO:        PUF18P12                                              *
//* UTILERIA:    IKJEFT01                                              *
//* DESCRIPCION: A TODOS LOS REGISTROS CON LOS MOVIMIENTOS DEL DIA SE *
//*              LES AGREGA LA FECHA EN QUE SE REGISTRARON EN LA TABLA *
//*              OPERA.                                                *
//*--------------------------------------------------------------------*
//PUF18P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDUSEN1 DD DSN=MXCP.ZM.FIX.SUITABI.SERPA693,
//            DISP=SHR
//ZMDUSSA1 DD DSN=MXCP.ZM.FIX.SUITABI.OPERA693,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=489,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZUF18T12),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO:        PUF18P11                                              *
//* UTILERIA:    IKJEFT01                                              *
//* DESCRIPCION: SE BUSCA INFORMACION DE CONCEPT PARA COMPLETAR LOS    *
//*              MERCADOS SEGUN SUITABILITY.                           *
//*--------------------------------------------------------------------*
//PUF18P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDUSEN1 DD DSN=MXCP.ZM.FIX.SUITABI.OPERA693,
//            DISP=SHR
//ZMDUSSA1 DD DSN=MXCP.ZM.FIX.SUITABI.CONCE693,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=609,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZUF18T11),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO:        PUF18P10                                              *
//* UTILERIA:    IKJEFT01                                              *
//* DESCRIPCION: SE AGREGA A TODOS LOS REGISTROS DEL ARCHIVO DE ENTRADA*
//*              EL TIPO DE MERCADO AL QUE PERTENECE TOMANDO EL        *
//*              ICONCEPT2 Y COMPARANDOLO CON EL ICONCEPT DE LA TABLA  *
//*              CONCEPT, LOS CAMPOS A REVISAR SON ITIPOEMI E ITIPOMER.*
//*--------------------------------------------------------------------*
//PUF18P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDUSEN1 DD DSN=MXCP.ZM.FIX.SUITABI.CONCE693,
//            DISP=SHR
//ZMDUSSA1 DD DSN=MXCP.ZM.FIX.SUITABI.MERCA693,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=628,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZUF18T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO:        PUF18P09                                              *
//* UTILERIA:    IKJEFT01                                              *
//* DESCRIPCION: SE AGREGA A TODOS LOS REGISTROS DEL ARCHIVO DE ENTRADA*
//*              EL TIPO DE MERCADO AL QUE PERTENECE TOMANDO EL        *
//*              ICONCEPT2 Y COMPARANDOLO CON EL ICONCEPT DE LA TABLA  *
//*              CONCEPT, LOS CAMPOS A REVISAR SON ITIPOEMI E ITIPOMER.*
//*--------------------------------------------------------------------*
//PUF18P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDUSEN1 DD DSN=MXCP.ZM.FIX.SUITABI.MERCA693,
//            DISP=SHR
//ZMDUSSA1 DD DSN=MXCP.ZM.FIX.SUITABI.VALID693,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=650,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF18T09),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO:        PUF18P08                                              *
//* UTILERIA:    ICEMAN                                                *
//* DESCRIPCION: SE ORDENA POR CUENTABP Y NUMERO DE CLIENTE            *
//*--------------------------------------------------------------------*
//PUF18P08 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.SUITABI.VALID693,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SUITABI.VALIDADO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(400,200),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=650,BLKSIZE=0)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF18T08),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO:        PUF18P07                                              *
//* UTILERIA:    IKJEFT01                                              *
//* DESCRIPCION: DESCARGA DE TABLAS ZMDT802 Y ZMDT803 PARA OBTENER LOS *
//*              CONTRATOS DE CADA CLIENTE QUE EXISTE EN SUITABILITY   *
//*--------------------------------------------------------------------*
//PUF18P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDUSSA1 DD DSN=MXCP.ZM.FIX.SUITABI.DESCA802,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//*FS-1.1.0-02-INI
//*           DCB=(LRECL=460,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*RRT-INI
//*           DCB=(LRECL=496,RECFM=FB,BLKSIZE=0,DSORG=PS)
//            DCB=(LRECL=662,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*RRT-FIN
//*FS-1.1.0-02-FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF18T07),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO:        PUF18P06                                              *
//* UTILERIA:    ICEMAN                                                *
//* DESCRIPCION: SE ORDENA POR CUENTABP Y NUMERO DE CLIENTE            *
//*--------------------------------------------------------------------*
//PUF18P06 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.SUITABI.DESCA802,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SUITABI.DESCARG2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(400,200),RLSE),
//*FS-1.1.0-02-INI
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=460,BLKSIZE=0)
//*RRT-INI
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=496,BLKSIZE=0)
//            DCB=(DSORG=PS,RECFM=FB,LRECL=662,BLKSIZE=0)
//*RRT-FIN
//*FS-1.1.0-02-FIN
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF18T06),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO:        PUF18P05                                              *
//* UTILERIA:    IKJEFT01                                              *
//* DESCRIPCION: SE REALIZA UN MATCH PARA PROCESAR UNICAMENTE LOS      *
//*              CONTRATOS DE SUITABILITY (ZMDT802) QUE HAYAN TENIDO   *
//*              OPERACIONES DE COMPRA (ZMDT693) EN EL DIA. LOS        *
//*              CONTRATOS QUE NO ESTEN EN LA TABLA ZMDT802 SE         *
//*              DESCARTAN, ASI COMO LOS MOVIMIENTOS DE LOS CONTRATOS  *
//*              QUE HAYAN TENIDO COMPRAS EN EL DIA. EN LA TABLA       *
//*              ZMDT802 SOLO EXISTE UN REGISTRO POR CONTRATO, PERO EN *
//*              LA TABLA ZMDT693 EXISTEN N REGISTROS POR CONTRATO.    *
//*--------------------------------------------------------------------*
//PUF18P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDUSEN1 DD DSN=MXCP.ZM.FIX.SUITABI.VALIDADO,
//            DISP=SHR
//ZMDUSEN2 DD DSN=MXCP.ZM.FIX.SUITABI.DESCARG2,
//            DISP=SHR
//*
//ZMDUSSA1 DD DSN=MXCP.ZM.FIX.SUITABI.PROCESA2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//*FS-1.1.0-02-INI
//*           DCB=(LRECL=1026,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*RRT-INI
//*           DCB=(LRECL=1062,RECFM=FB,BLKSIZE=0,DSORG=PS)
//            DCB=(LRECL=1230,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*RRT-FIN
//*FS-1.1.0-02-FIN
//ZMDUSSA2 DD DSN=MXCP.ZM.FIX.SUITABI.DESCART2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=650,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF18T05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO:        PUF18P04                                              *
//* UTILERIA:    IKJEFT01                                              *
//* DESCRIPCION: SE AGREGAN LAS MISMAS VALIDACIONES PARA OBTENER LOS   *
//*              MERCADOS QUE ESTAN EN EL PROGRAMA ZM4DUB02            *
//*--------------------------------------------------------------------*
//PUF18P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDUSEN1 DD DSN=MXCP.ZM.FIX.SUITABI.PROCESA2,
//            DISP=SHR
//*
//ZMDUSSA1 DD DSN=MXCP.ZM.FIX.SUITABI.PROCESA3,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//*FS-1.1.0-02-INI
//*           DCB=(LRECL=1028,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*RRT-INI
//*           DCB=(LRECL=1064,RECFM=FB,BLKSIZE=0,DSORG=PS)
//            DCB=(LRECL=1230,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*RRT-FIN
//*FS-1.1.0-02-FIN
//ZMDUSSA2 DD DSN=MXCP.ZM.FIX.SUITABI.DESCART3,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//*FS-1.1.0-02-INI
//*           DCB=(LRECL=1026,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*RRT-INI
//*           DCB=(LRECL=1062,RECFM=FB,BLKSIZE=0,DSORG=PS)
//            DCB=(LRECL=1230,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*RRT-FIN
//*FS-1.1.0-02-FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF18T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO:        PUF18P03                                              *
//* UTILERIA:    ICEMAN                                                *
//* DESCRIPCION: SE ORDENA POR CUENTABP Y NUMERO DE CLIENTE            *
//*--------------------------------------------------------------------*
//PUF18P03 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.SUITABI.PROCESA3,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SUITABI.PROCESD3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(400,200),RLSE),
//*FS-1.1.0-02-INI
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=1028,BLKSIZE=0)
//*RRT-INI
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=1064,BLKSIZE=0)
//            DCB=(DSORG=PS,RECFM=FB,LRECL=1230,BLKSIZE=0)
//*RRT-FIN
//*FS-1.1.0-02-FIN
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF18T03),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO:        PUF18P02                                              *
//* UTILERIA:    IKJEFT01                                              *
//* DESCRIPCION: SE OBTIENEN LOS SALDOS DE SUITABILITY DEL DIA ANTERIOR*
//*              PARA DESPUES REALIZAR LAS OPERACIONES DEL DIA DE      *
//*              PROCESO.                                              *
//*--------------------------------------------------------------------*
//PUF18P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDUSEN1 DD DSN=MXCP.ZM.FIX.SUITABI.PROCESD3,
//            DISP=SHR
//ZMDUSEN2 DD DSN=MXCP.ZM.FIX.SUITABI.DANTTM2,
//            DISP=SHR
//*
//ZMDUSSA1 DD DSN=MXCP.ZM.FIX.SUITABI.PROCESA4,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//*FS-1.1.0-02-INI
//*           DCB=(LRECL=1156,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*RRT-INI
//*           DCB=(LRECL=1211,RECFM=FB,BLKSIZE=0,DSORG=PS)
//            DCB=(LRECL=1440,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*RRT-FIN
//*FS-1.1.0-02-FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF18T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO:        PUF18P0B                                              *
//* UTILERIA:    ICEMAN                                                *
//* DESCRIPCION: ORDENAR EL ARCHIVO POR NUMERO DE CLIENTE Y CUENTABP   *
//*--------------------------------------------------------------------*
//PUF18P0B EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.SUITABI.PROCESA4,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SUITABI.PROCESA5,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(400,200),RLSE),
//*FS-1.1.0-02-INI
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=1156,BLKSIZE=0)
//*RRT-INI
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=1211,BLKSIZE=0)
//            DCB=(DSORG=PS,RECFM=FB,LRECL=1440,BLKSIZE=0)
//*RRT-FIN
//*FS-1.1.0-02-FIN
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF18T0B),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO:        PUF18P01                                              *
//* UTILERIA:    IKJEFT01                                              *
//* DESCRIPCION: SE REALIZAN LOS CALCULOS DE CADA REGISTRO SEGUN EL    *
//*              MERCADO DONDE SE OPERO PARA OBTENER EL PORCENTAJE DE  *
//*              LA CARTERA SUITABILITY Y SABER SI ESTA OPERACION DEJA *
//*              FUERA DE PERFIL AL CLIENTE. LAS OPERACIONES QUE DEJAN *
//*              FUERA DE PERFIL AL CLIENTE SE GUARDAN EN LA TABLA     *
//*              NUEVA ZMDT813 Y LAS OPERACIONES QUE NO DEJAN FUERA DE *
//*              PERFIL AL CLIENTE SE MANDAN AL ARCHIVO DE SALIDA.     *
//*--------------------------------------------------------------------*
//PUF18P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDUSEN1 DD DSN=MXCP.ZM.FIX.SUITABI.PROCESA5,
//            DISP=SHR
//ZMDUSSA1 DD DSN=MXCP.ZM.FIX.SUITABI.DESCART5,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//*           DCB=(LRECL=1156,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*RRT-INI
//*           DCB=(LRECL=1211,RECFM=FB,BLKSIZE=0,DSORG=PS)
//            DCB=(LRECL=1440,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*RRT-FIN
//ZMDUSSA2 DD DSN=MXCP.ZM.FIX.SUITABI.RESPALD5,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//*FS-1.1.0-02-INI
//*           DCB=(LRECL=1156,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*RRT-INI
//*           DCB=(LRECL=1211,RECFM=FB,BLKSIZE=0,DSORG=PS)
//            DCB=(LRECL=1440,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*RRT-FIN
//*FS-1.1.0-02-FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF18T01),DISP=SHR
