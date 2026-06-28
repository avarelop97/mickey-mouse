//ZMUEPR09 PROC EMP=,SUC=,INT1=,INT2=
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM YA9BXW - REDISENO DE ESTADOS DE CUENTA.          *
//* PROCESO      : ZMUEPR09.                                           *
//* PERIODICIDAD : MENSUAL.                                            *
//* OBJETIVO     : GENERA ARCHIVOS NECESARIOS PARA REPROCESO DE        *
//*                ESTADOS DE CUENTA MESES ANTERIORES                  *
//* REALIZO      : BBVA                                                *
//* FECHA        : AGOSTO 2023.                                        *
//*--------------------------------------------------------------------*
//**        L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PUE09P90                                              *
//* UTILERIA   : ZM3DG001                                              *
//* OBJETIVO   : RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN       *
//*              ARCHIVO.                                              *
//*--------------------------------------------------------------------*
//PUE09P90 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.RPE.EBCM.ZMUEPR09,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE09P85                                              *
//* UTILERIA   : IKJEFT01/ZM4MU509                                     *
//* OBJETIVO   : GENERA LOS ARCHIVOS NECESARIOS PARA REPROCESO         *
//*--------------------------------------------------------------------*
//PUE09P85 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMU509A1 DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF01.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU509A2 DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF02.ACT.M,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=446,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU509A3 DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF03.ACT.M,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=298,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU509A5 DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF05.ACT.A,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=244,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU509A6 DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF06.ACT.A,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=254,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU509A7 DD DSN=MXCP.ZM.FIX.CBUENM44.DETALLE.EDIMPUE.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=087,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE09P10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE09P60.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU501.                                  *
//* OBJETIVO   : GENERA ARCHIVOS PARA TARJETAS DE SORT REQUERIDOS EN LA*
//*              GENERACION DE ESTADOS DE CUENTA DE BANCA PATRIMONIAL. *
//*--------------------------------------------------------------------*
//PUE09P60 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU501A1 DD DSN=MXCP.ZM.TMP.RPE.EBCM.ZMUEPR09,
//            DISP=SHR
//*
//ZMU501F1 DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.SRTPF01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//*
//ZMU501F2 DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.SRTPF02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//*
//ZMU501F3 DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.SRTPF03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//*
//ZMU501F5 DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.SRTPF05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//*
//ZMU501F6 DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.SRTPF06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR01T75),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE09P55.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU502.                                  *
//* OBJETIVO   : SEPARA LOS ESTADOS DE CUENTA EN ARCHIVOS PARA EL      *
//*              HISTORICO DE E.C. DE ACUERDO A LOS CRITERIOS DE       *
//*              SEPARACION PROPORCIONADOS EN LINEA MEDIANTE LA TABLA  *
//*              PRODUSVP.PARAM ('ESP') DE BANCA PATRIMONIAL.          *
//*--------------------------------------------------------------------*
//PUE09P55 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU502A1 DD DSN=MXCP.ZM.TMP.RPE.EBCM.ZMUEPR09,
//            DISP=SHR
//ZMU502E1 DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF01.ACT,
//            DISP=SHR
//*
//ZMU502HS DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.F01.HISTO.M,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU502IM DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.F01.IMPRE.M,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR01T70),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE09P50.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO HISTORICO DE DATOS ADMTIVOS. MES    *
//*              ACTUAL DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO    *
//*              ('RE1').                                              *
//*--------------------------------------------------------------------*
//PUE09P50 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.F01.HISTO.M,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.F01.HISTO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.SRTPF01,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO       : PUE09P45.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE IMPRESION DE DATOS ADM. MES      *
//*              ACTUAL DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO    *
//*              ('RE1').                                              *
//*--------------------------------------------------------------------*
//PUE09P45 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.F01.IMPRE.M,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.F01.IMPRE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.SRTPF01,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE09P40.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DETALLADO DE POSICION MES ACTUAL    *
//*              POR: OFICINA, CUENTA, PLAZA.                          *
//*--------------------------------------------------------------------*
//PUE09P40 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF02.ACT.M,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF02.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=446,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.SRTPF02,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE09P35.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE MOVIMIENTOS DEL MES ACTUAL POR:  *
//*              OFICINA, CUENTA, PLAZA.                               *
//*--------------------------------------------------------------------*
//PUE09P35 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF03.ACT.M,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF03.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=298,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.SRTPF03,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PASO       : PUE09P30.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO: ORDENA EL ARCHIVO DE ISR DEL MES ACTUAL                  *
//*           POR: OFICINA, CUENTA, PLAZA                              *
//**********************************************************************
//PUE09P30 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF05.ACT.A,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF05.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=244,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.SRTPF05,DISP=SHR
//*
//*
//**********************************************************************
//* PASO       : PUE09P28.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO F06 POR: OFICINA, CUENTA, PLAZA.    *
//**********************************************************************
//PUE09P28 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF06.ACT.A,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF06.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=254,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.SRTPF06,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE09P25.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU503.                                  *
//* OBJETIVO   : RECORTA LOS ARCHIVOS DE MUV PARA DEJARLOS DE ACUERDO  *
//*              AL LAY-OUT DE BANCA PATRIMONIAL.                      *
//*--------------------------------------------------------------------*
//*PUE09P25 EXEC PGM=IKJEFT01,COND=(0,NE)
//**
//*ZMU503A1 DD DSN=MXCP.ZM.TMP.RPE.EBCM.ZMUEPR09,
//*            DISP=SHR
//*ZMU503A2 DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.F01.HISTO,
//*            DISP=SHR
//*ZMU503A3 DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.F01.IMPRE,
//*            DISP=SHR
//*ZMU503A4 DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF02.ACT,
//*            DISP=SHR
//*ZMU503A5 DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF03.ACT,
//*            DISP=SHR
//*ZMU503AE DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF05.ACT,
//*            DISP=SHR
//*ZMU503B1 DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF06.ACT,
//*            DISP=SHR
//**
//*ZMU503A6 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF01HST,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(200,100),RLSE)
//**
//*ZMU503A7 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF01IMP,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(200,100),RLSE)
//**
//*ZMU503A8 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF02IMP,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(200,100),RLSE)
//**
//*ZMU503A9 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF03IMP,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=225,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(200,100),RLSE)
//**
//*ZMU503AF DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF05IMP,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=180,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(200,100),RLSE)
//**
//*ZMU503B2 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF06IMP,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(200,100),RLSE)
//*
//*ZMU503AA DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF01HST,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(200,100),RLSE)
//**
//*ZMU503AB DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF01IMP,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(200,100),RLSE)
//**
//*ZMU503AC DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF02IMP,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(200,100),RLSE)
//**
//*ZMU503AD DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF03IMP,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=225,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(200,100),RLSE)
//**
//*ZMU503AG DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF05IMP,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=180,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(200,100),RLSE)
//**
//*ZMU503B3 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF06IMP,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(200,100),RLSE)
//**
//*SYSABOUT DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSTSPRT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR01T45),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE09P20.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE IMPRESION DE DATOS ADM. MES      *
//*              ACTUAL DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO    *
//*              ('RE1').                                              *
//*--------------------------------------------------------------------*
//PUE09P20 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF01.ACT,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF01.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.SRTPF01,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE09P15.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DETALLADO DE POSICION MES ACTUAL    *
//*              POR: OFICINA, CUENTA, PLAZA.                          *
//*--------------------------------------------------------------------*
//PUE09P15 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF02.ACT.M,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF02.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=446,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.SRTPF02,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE09P10.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE MOVIMIENTOS DEL MES ACTUAL POR:  *
//*              OFICINA, CUENTA, PLAZA.                               *
//*--------------------------------------------------------------------*
//PUE09P10 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF03.ACT.M,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF03.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=298,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.SRTPF03,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PASO       : PUE09P05.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO: ORDENA EL ARCHIVO DE ISR RETENIDO DEL MES ACTUAL         *
//*           POR: OFICINA, CUENTA, PLAZA                              *
//**********************************************************************
//PUE09P05 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF05.ACT,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF05.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=244,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.SRTPF05,DISP=SHR
//*
//**********************************************************************
//* PASO       : PUE09P00.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//**********************************************************************
//PUE09P00 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.PF06.ACT,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF06.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=254,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.RPE.EBCM.BPIGO.SRTPF06,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T97.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU512                                   *
//* OBJETIVO   : SEPARA LOS ESTADOS DE CUENTA EN ARCHIVOS PARA EL      *
//*              HISTORICO DE E.C. DE ACUERDO A LOS CRITERIOS DE       *
//*              SEPARACION PROPORCIONADOS EN LINEA MEDIANTE LA TABLA  *
//*              PRODUSVP.PARAM ('ESP') DE BANCA PATRIMONIAL.          *
//*--------------------------------------------------------------------*
//ZUR10T97 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMU012A1 DD DSN=MXCP.ZM.TMP.RPE.EBCM.ZMUEPR09,DISP=SHR
//ZMU012E1 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF01.ACT,DISP=SHR
//*
//ZMU012HS DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF01.HIST,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU012IM DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF01.IMPR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR10T85),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T95.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU510.                                  *
//* OBJETIVO   : RECORTA LOS ARCHIVOS DE MUV   PARA DEJARLOS DE ACUERDO*
//*              AL LAY-OUT DE BANCA PATRIMONIAL,BANCA PRIVADA Y UHN.  *
//*--------------------------------------------------------------------*
//ZUR10T95 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMU010A1 DD DSN=MXCP.ZM.TMP.RPE.EBCM.ZMUEPR09,DISP=SHR
//ZMU010A2 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF01.HIST,DISP=SHR
//ZMU010A3 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF01.IMPR,DISP=SHR
//ZMU010A4 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF02.ACT,DISP=SHR
//ZMU010A5 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF03.ACT,DISP=SHR
//ZMU010AI DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF05.ACT,DISP=SHR
//ZMU010B1 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF06.ACT,DISP=SHR
//*
//ZMU010A6 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF01HST,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010A7 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF01IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010A8 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF02IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010A9 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF03IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=234,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AJ DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF05IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=180,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010B2 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF06IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU010AA DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF01HST,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AB DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF01IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AC DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF02IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AD DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF03IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=234,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AK DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF05IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=180,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010B3 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF06IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU010AE DD DSN=MXCP.ZM.FIX.RPE.EBCM.BUHN.PF01HST,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AF DD DSN=MXCP.ZM.FIX.RPE.EBCM.BUHN.PF01IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AG DD DSN=MXCP.ZM.FIX.RPE.EBCM.BUHN.PF02IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AH DD DSN=MXCP.ZM.FIX.RPE.EBCM.BUHN.PF03IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=234,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AL DD DSN=MXCP.ZM.FIX.RPE.EBCM.BUHN.PF05IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=180,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010B4 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BUHN.PF06IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR10T80),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T90.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA POR CUENTA AL ARCHIVO BPIGO.PF01IMP.           *
//*--------------------------------------------------------------------*
//ZUR10T90 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF01IMP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF01IMP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.RPE.EBCM.BUHN.PF01IMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RPE.BPIGO.PF01IMP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR10T70),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T85.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA POR CUENTA AL ARCHIVO BPIGO.PF02IMP.           *
//*--------------------------------------------------------------------*
//ZUR10T85 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF02IMP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF02IMP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.RPE.EBCM.BUHN.PF02IMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RPE.BPIGO.PF02IMP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR10T60),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T80.                                             *
//* UTILERIA   : ZM3MU517.                                             *
//* OBJETIVO   : GENERA ARCHIVO CON NUMERO DE SECUENCIA PARA CADA      *
//*              MOVIMIENTO SEGUN CORRESPONDA A CADA CONTRATO          *
//*              PATRIMONIAL.                                          *
//*--------------------------------------------------------------------*
//ZUR10T80 EXEC PGM=ZM3MU517,COND=(4,LT)
//*
//E1BPBV3  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF03IMP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF03IMP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.RPE.EBCM.BUHN.PF03IMP,DISP=SHR
//S1BPBV3  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.ZM3MU270,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0)
//*
//SYSIN    DD DUMMY
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T75.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA POR CUENTA Y SECUENCIA, OUTREC ARCHIVO ZM3MU270*
//*              DE BANCA PATRIMONIAL.                                 *
//*--------------------------------------------------------------------*
//ZUR10T75 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.ZM3MU270,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RPE.BPIGO.PF03IMP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=234,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR10T45),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUR10T70                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  ORDENA POR CUENTA, CVEAGRUP, EMISORA, SERIE, ITIPOEMI  *
//*             ARCHIVO DE ISR DE BANCA PATRIMONIAL                    *
//*--------------------------------------------------------------------*
//ZUR10T70 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF05IMP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF05IMP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.RPE.EBCM.BUHN.PF05IMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RPE.BPIGO.PF05IMP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=180,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR10T38),DISP=SHR
//*
//*FS-1.0.0-01-INI
//*--------------------------------------------------------------------*
//* PASO     :  ZUR10T68                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  ORDENA POR CUENTA ELA ARCHIVO  BPIGO.PF06IMP.          *
//*--------------------------------------------------------------------*
//ZUR10T68 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPIGO.PF06IMP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPRIV.PF06IMP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.RPE.EBCM.BUHN.PF06IMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RPE.BPIGO.PF06IMP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR10T68),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T65.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU517.                                  *
//* OBJETIVO   : MATCH DE LOS 4 ARCHIVOS DE BANCA PATRIMONIAL PARA     *
//*              GENERAR LA INFO DE LOS ESTADOS DE CUENTA DE IMPRESION *
//*              Y LOS DE LOS DE NO IMPRESION.                         *
//*--------------------------------------------------------------------*
//ZUR10T65 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1BANCA  DD DSN=MXCP.ZM.FIX.RPE.BPIGO.PF01IMP.SRT,DISP=SHR
//E2BANCA  DD DSN=MXCP.ZM.FIX.RPE.BPIGO.PF02IMP.SRT,DISP=SHR
//E3BANCA  DD DSN=MXCP.ZM.FIX.RPE.BPIGO.PF03IMP.SRT,DISP=SHR
//E5BANCA  DD DSN=MXCP.ZM.FIX.RPE.BPIGO.PF05IMP.SRT,DISP=SHR
//E6BANCA  DD DSN=MXCP.ZM.FIX.RPE.BPIGO.PF06IMP.SRT,DISP=SHR
//*
//S1SIIMP  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.SIIMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,400),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//*
//S2NOIMP  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.NOIMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,400),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//*
//S3EGRSO  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.EGRESOS.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=95,BLKSIZE=0)
//*
//QRLSDB2  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR10T35),DISP=SHR
//*
//**********************************************************************
//* PASO       : ZUR11T96                                              *
//* UTILERIA   : IKJEFT01/ZM4MU310                                     *
//* OBJETIVO   : REASIGNA EL NUMERO DE CONTRATO DE LA TABLA ZMDT609    *
//*              Y ZMDT608.                                            *
//**********************************************************************
//ZUR11T96 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXCP.ZM.FIX.CBUENM44.DETALLE.EDIMPUE.SORT,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXCP.ZM.WKF.BCUENR11.DETALLE.EDIMPUE,
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
//**********************************************************************
//* PASO       : ZUR11T95                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE ORDENA EL ARCHIVO DEL DETALLE DE RETENCIONES POR   *
//*              EL NUEVO CONTRATO, EMISORA, SERIE Y TIPO DE MERCADO.  *
//**********************************************************************
//ZUR11T95 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.WKF.BCUENR11.DETALLE.EDIMPUE,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.BCUENR11.DETALLE.EDIMPUE.SORT,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=88,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P95),
//            DISP=SHR
//*
//**********************************************************************
//* PASO       : ZUR11T90.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU518.                                  *
//* OBJETIVO   : GENERA ARCHIVOS DE BANCA PATRIMONIAL CON FORMATO PARA *
//*              MEDC.                                                 *
//**********************************************************************
//ZUR11T90 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1SIIMP  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.SIIMP,DISP=SHR
//E2NOIMP  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.NOIMP,DISP=SHR
//E3DETRET DD DSN=MXCP.ZM.WKF.BCUENR11.DETALLE.EDIMPUE.SORT,DISP=SHR
//*
//S1SIIMP  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.SIIMP.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//S2NOIMP  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.NOIMP.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//           DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//S1ESIMP  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.SIIMPES.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//S2ESIMP  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.NOIMPES.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0)
//S4TOTAL  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.TOTALES.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=66,BLKSIZE=0)
//S5RFCGE  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.RFCGEN.CVEGEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=202,BLKSIZE=0)
//*
//QRLSDB2  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR11T90),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T85                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA          *
//*             PATRIMONIAL DE SI IMPRESION POR CUENTA, SEGMENTO Y     *
//*             SECUENCIA                                              *
//**********************************************************************
//ZUR11T85 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.SIIMP.PIPES,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.SIIMP.PISOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T85),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T80                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PATRIMONIAL DE SI IMPRESION EN EL FORMATO FINAL        *
//**********************************************************************
//ZUR11T80 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.SIIMP.PISOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.SIIMP.PISOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T80),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T75                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT PARA ORDENAR EL ARCHIVO DE BANCA          *
//*             PATRIMONIAL DE NO IMPRESIÓN POR CUENTA, SEGMENTO       *
//*             Y SECUENCIA                                            *
//**********************************************************************
//ZUR11T75 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.NOIMP.PIPES,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.NOIMP.PISOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T85),DISP=SHR                   00710000
//*
//**********************************************************************
//* PASO     :  ZUR11T70                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA SORT-OUTREC PARA DEJAR EL ARCHIVO DE BANCA     *
//*             PATRIMONIAL DE NO IMPRESIÓN EN EL FORMATO FINAL        *
//**********************************************************************
//ZUR11T70 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.NOIMP.PISOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.NOIMP.PISOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR11T80),DISP=SHR                   00710000
//*
//**********************************************************************
//*   PASO    : ZUR11T13                                               *
//*   OBJETIVO: REALIZA CONVERSION DE CARACTER ENIE POR #VARIABLE      *
//*                     -- ZM3CFD02 --                                 *
//**********************************************************************
//ZUR11T13 EXEC PGM=ZM3CFD02
//*
//ZM3CFDE1 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.SIIMP.PISOR2,
//            DISP=SHR
//*
//ZM3CFDS1 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.SIIMP.PISOR2G,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//*   PASO    : ZUR11T12                                               *
//*   OBJETIVO: REALIZA CONVERSION DE CARACTER ENIE POR #VARIABLE      *
//*                     -- ZM3CFD02 --                                 *
//**********************************************************************
//ZUR11T12 EXEC PGM=ZM3CFD02
//*
//ZM3CFDE1 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.NOIMP.PISOR2,
//            DISP=SHR
//*
//ZM3CFDS1 DD DSN=MXCP.ZM.FIX.RPE.EBCM.BPATR.NOIMP.PISOR2G,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//*--------------------------------------------------------------------*
//*                      FIN DEL PROCESO ZMUEPR09                      *
//*--------------------------------------------------------------------*
