//ZMURPD05 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMURPD05                                         *
//*                                                                    *
//* OBJETIVO       :  DESCARGA DE LAS TABLAS ZMDT802 Y ZMDT803 PARA    *
//*                   OBTENER LOS CONTRATOS DE CADA CLIENTE QUE EXISTA *
//*                   EN SUITABILITY DE UN DE PROCESO ANTERIOR A HOY   *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :                                                   *
//*                                                                    *
//* REALIZO        :  FSW-TECNOCOM                                     *
//* FECHA          :  ENERO 2013                                       *
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*                   HISTORIAL DE MANTENIMIENTO                       *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR     FECHA             DESCRIPCION               *
//* ----------- --------- -------  ----------------------------------- *
//* FS-1.1.0-02 CAPGEMINI 30JUN17  SE CAMBIA LONGITUD DE ARCHIVO.      *
//*                                                                    *
//* @JSM-01-I   XMY4584   13JUN18  SE CAMBIA LONGITUD DE ARCHIVO POR   *
//*                                3 NUEVOS MERCADOS: PCA, GEF Y CRE   *
//*                                                                    *
//*------------------------------------------------------------------- *
//*
//*--------------------------------------------------------------------*
//* PASO:        PUR01P02                                              *
//* UTILERIA:    IKJEFT01                                              *
//* DESCRIPCION: DESCARGA DE LAS TABLAS ZMDT802 Y ZMDT803 PARA         *
//*              OBTENER LOS CONTRATOS DE CADA CLIENTE QUE EXIST       *
//*              EN SUITABILITY DE UN DE PROCESO ANTERIOR A HOY        *
//*--------------------------------------------------------------------*
//PUR01P02 EXEC PGM=IKJEFT01
//*
//ZMDUSS01 DD DSN=MXCP.ZM.FIX.SUITABI.DANTDES,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//*FS-1.1.0-02-INI
//*           DCB=(LRECL=460,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*           DCB=(LRECL=496,RECFM=FB,BLKSIZE=0,DSORG=PS)
//            DCB=(LRECL=662,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.1.0-02-FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR05T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO:        PUR01P01                                              *
//* UTILERIA:    ICEMAN                                                *
//* DESCRIPCION: ORDERNAR EL ARCHIVO POR NUMERO DE CLIENTE Y CUENTABP  *
//*--------------------------------------------------------------------*
//PUR01P01 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.SUITABI.DANTDES,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.SUITABI.DANTTM2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//*FS-1.1.0-02-INI
//*           DCB=(LRECL=460,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*           DCB=(LRECL=496,RECFM=FB,BLKSIZE=0,DSORG=PS)
//            DCB=(LRECL=662,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.1.0-02-FIN
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR05T01),DISP=SHR
//*
