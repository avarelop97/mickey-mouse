//ZMUEPR02 PROC EMP=,SUC=,INT1=,FECHA=
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM YA9BXW - REDISENO DE ESTADOS DE CUENTA.          *
//* PROCESO      : ZMUEPR02.                                           *
//* PERIODICIDAD : MENSUAL.                                            *
//* OBJETIVO     : ACTUALIZA LA TABLA HISTORICA DE ESTADOS DE CUENTA   *
//*                CON LOS DATOS ADMINISTRATIVOS (ZMDT930,ZMDT931).    *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 02 DE SEPTIEMBRE DE 2013.                           *
//*--------------------------------------------------------------------*
//**        L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PUE03P90                                              *
//* UTILERIA   : ZM3DG001                                              *
//* OBJETIVO   : RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN       *
//*              ARCHIVO.                                              *
//*--------------------------------------------------------------------*
//PUE03P90 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&FECHA',)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.REC.EBCM.ZMUEPR02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*FS-1.0.0-01-INI
//*--------------------------------------------------------------------*
//* PASO       : ZUE12P96                                              *
//* UTILERIA   : IKJEFT01/ZM4MU310                                     *
//* OBJETIVO   : REASIGNA EL NUMERO DE CONTRATO DE LA TABLA ZMDT609    *
//*              Y ZMDT608.                                            *
//*--------------------------------------------------------------------*
//PUE03P85 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXCP.ZM.FIX.CBUENM44.DETALLE.EDIMPUE.SORT,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXCP.ZM.WKF.ZMUEPR02.DETALLE.EDIMPUE,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=88,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE12P96),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUE12P95                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE ORDENA EL ARCHIVO DEL DETALLE DE RETENCIONES POR   *
//*              EL NUEVO CONTRATO, EMISORA, SERIE Y TIPO DE MERCADO.  *
//*--------------------------------------------------------------------*
//PUE03P80 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.WKF.ZMUEPR02.DETALLE.EDIMPUE,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.ZMUEPR02.DETALLE.EDIMPUE.SORT,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=88,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P95),
//            DISP=SHR
//*
//*FS-1.0.0-01-FIN
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE03P85                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU504                                   *
//* OBJETIVO   : ACTUALIZA LA BASE DE DATOS HISTORICA DE ESTADOS DE    *
//*              CUENTA DE ACUERDO AL LAYOUT DE LOS ARCHIVOS DE BANCA  *
//*              PATRIMONIAL.                                          *
//*--------------------------------------------------------------------*
//PUE03P75 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU504P1 DD DSN=MXCP.ZM.TMP.REC.EBCM.ZMUEPR02,DISP=SHR
//*
//ZMU504M1 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.IMPRE,DISP=SHR
//ZMU504M2 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF02.ACT,DISP=SHR
//ZMU504M3 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF03.ACT,DISP=SHR
//ZMU504M5 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF05.ACT,DISP=SHR
//ZMU504B1 DD DUMMY
//ZMU504B2 DD DUMMY
//ZMU504B3 DD DUMMY
//ZMU504B4 DD DUMMY
//*
//ZMU504B5 DD DUMMY
//ZMU504B6 DD DUMMY
//ZMU504B7 DD DUMMY
//ZMU504B8 DD DUMMY
//*
//ZMU504HS DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.ADM,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//*FS-1.0.0-01-INI
//ZMU504FD DD DSN=MXCP.ZM.TMP.ZMUEPR02.ZMDT935,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=220,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//*FS-1.0.0-01-FIN
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR02T85),DISP=SHR
//*
//*FS-1.0.0-01-INI
//*
//**********************************************************************
//*  ORDENA ARCHIVO CON INFORMACION DE HISTORICOS                      *
//**********************************************************************
//*
//PUE03P70 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.ZMUEPR02.ZMDT935,
//             DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.ZMUEPR02.ZMDT935.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=220,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(200,100),RLSE),UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUR02T70),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU508  --                                 *
//*  GENERA ACUMULADOS DE DERIVADOS Y FIBRAS DE HISTORICOS EN TABLA    *
//*  ZMDT935                                                           *
//**********************************************************************
//PUE03P65 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.TMP.ZMUEPR02.ZMDT935.SORT,
//             DISP=SHR
//*
//ENTRADA2 DD DSN=MXCP.ZM.WKF.ZMUEPR02.DETALLE.EDIMPUE.SORT,
//             DISP=SHR
//*
//SALIDA   DD  DSN=MXCP.ZM.TMP.ZMUEPR02.ZMDT935.INSERT,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=220,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(200,100),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR02T65),DISP=SHR
//*
//*FS-1.0.0-01-FIN
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUEPR02                        *
//*--------------------------------------------------------------------*
//*
