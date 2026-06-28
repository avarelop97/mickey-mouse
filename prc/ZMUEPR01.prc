//ZMUEPR01 PROC EMP=,SUC=,INT1=,FECHA=
//*
//*--------------------------------------------------------------------*
//* PROYECTO       ZM - (SIVA) REDISENO DE ESTADOS DE CUENTA.          *
//* PROCESO      : ZMUEPR01.                                           *
//* PERIODICIDAD : MENSUAL.                                            *
//* OBJETIVO     : GENERACION DE ARCHIVOS MUV PARA HISTORICO E         *
//**               IMPRESION DE ESTADOS DE CUENTA DE BANCA PATRIMONIAL *
//*                Y CUSTODIA INTERNACIONAL.                           *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 02 DE SEPTIEMBRE DE 2013.                           *
//*--------------------------------------------------------------------*
//*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.0.0-01  XMZ9436  25NOV16 SE AGREGA EL TRATAMIENTO DEL ARCHIVO *
//*                               F06.                                 *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PUE01P99.                                             *
//* UTILERIA   : ZM3DG001.                                             *
//* OBJETIVO   : RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN       *
//*              ARCHIVO.                                              *
//*--------------------------------------------------------------------*
//PUE01P99 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&FECHA',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.REC.EBCM.ZMUEPR01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            SPACE=(CYL,(2,1),RLSE)
//*
//SYSABOUT DD DUMMY
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE01P95.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES        *
//*              ANTERIOR POR NUMERO DE CUENTA (VERSION  0)            *
//*--------------------------------------------------------------------*
//PUE01P95 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF01(0),
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT0,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR01T85),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE01P90.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES        *
//*              ANTERIOR POR NUMERO DE CUENTA (VERSION -1)            *
//*--------------------------------------------------------------------*
//PUE01P90 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF01(-1),
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR03T85),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE01P85.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES        *
//*              ANTERIOR POR NUMERO DE CUENTA (VERSION -2)            *
//*--------------------------------------------------------------------*
//PUE01P85 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF01(-2),
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR03T85),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE01P80.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES        *
//*              ANTERIOR POR NUMERO DE CUENTA (VERSION -3)            *
//*--------------------------------------------------------------------*
//PUE01P80 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF01(-3),
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR03T85),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE01P75.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES        *
//*              ANTERIOR POR NUMERO DE CUENTA (VERSION -4)            *
//*--------------------------------------------------------------------*
//PUE01P75 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF01(-4),
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT4,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR03T85),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE01P70.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES        *
//*              ANTERIOR POR NUMERO DE CUENTA (VERSION -5)            *
//*--------------------------------------------------------------------*
//PUE01P70 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF01(-5),
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT5,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR03T85),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE01P65.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU500.                                  *
//* OBJETIVO   : GENERA ARCHIVOS MUV NECESARIOS PARA LA GENERACION DE  *
//*              LOS ESTADOS DE CUENTA DE BANCA PATRIMONIAL.           *
//*--------------------------------------------------------------------*
//PUE01P65 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU500T0 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT0,
//            DISP=SHR
//ZMU500T1 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT1,
//            DISP=SHR
//ZMU500T2 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT2,
//            DISP=SHR
//ZMU500T3 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT3,
//            DISP=SHR
//ZMU500T4 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT4,
//            DISP=SHR
//ZMU500T5 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT5,
//            DISP=SHR
//*
//ZMU500A0 DD DSN=MXCP.ZM.TMP.REC.EBCM.ZMUEPR01,
//            DISP=SHR
//*
//ZMU500A1 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU500A2 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF02.ACT.M,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=446,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU500A3 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF03.ACT.M,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=298,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU500A5 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF05.ACT.A,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=244,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*FS-1.0.0-01-INI
//ZMU500A6 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF06.ACT.A,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=254,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*FS-1.0.0-01-FIN
//*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR01T80),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE01P60.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU501.                                  *
//* OBJETIVO   : GENERA ARCHIVOS PARA TARJETAS DE SORT REQUERIDOS EN LA*
//*              GENERACION DE ESTADOS DE CUENTA DE BANCA PATRIMONIAL. *
//*--------------------------------------------------------------------*
//PUE01P60 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU501A1 DD DSN=MXCP.ZM.TMP.REC.EBCM.ZMUEPR01,
//            DISP=SHR
//*
//ZMU501F1 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//*
//ZMU501F2 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//*
//ZMU501F3 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//*
//ZMU501F5 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//*FS-1.0.0-01-INI
//ZMU501F6 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//*FS-1.0.0-01-FIN
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
//* PASO       : PUE01P55.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU502.                                  *
//* OBJETIVO   : SEPARA LOS ESTADOS DE CUENTA EN ARCHIVOS PARA EL      *
//*              HISTORICO DE E.C. DE ACUERDO A LOS CRITERIOS DE       *
//*              SEPARACION PROPORCIONADOS EN LINEA MEDIANTE LA TABLA  *
//*              PRODUSVP.PARAM ('ESP') DE BANCA PATRIMONIAL.          *
//*--------------------------------------------------------------------*
//PUE01P55 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU502A1 DD DSN=MXCP.ZM.TMP.REC.EBCM.ZMUEPR01,
//            DISP=SHR
//ZMU502E1 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ACT,
//            DISP=SHR
//*
//ZMU502HS DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.HISTO.M,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU502IM DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.IMPRE.M,
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
//* PASO       : PUE01P50.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO HISTORICO DE DATOS ADMTIVOS. MES    *
//*              ACTUAL DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO    *
//*              ('RE1').                                              *
//*--------------------------------------------------------------------*
//PUE01P50 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.HISTO.M,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.HISTO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF01,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO       : PUE01P45.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE IMPRESION DE DATOS ADM. MES      *
//*              ACTUAL DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO    *
//*              ('RE1').                                              *
//*--------------------------------------------------------------------*
//PUE01P45 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.IMPRE.M,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.IMPRE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF01,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE01P40.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DETALLADO DE POSICION MES ACTUAL    *
//*              POR: OFICINA, CUENTA, PLAZA.                          *
//*--------------------------------------------------------------------*
//PUE01P40 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF02.ACT.M,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF02.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=446,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF02,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE01P35.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE MOVIMIENTOS DEL MES ACTUAL POR:  *
//*              OFICINA, CUENTA, PLAZA.                               *
//*--------------------------------------------------------------------*
//PUE01P35 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF03.ACT.M,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF03.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=298,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF03,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PASO       : PUE01P30.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO: ORDENA EL ARCHIVO DE ISR DEL MES ACTUAL                  *
//*           POR: OFICINA, CUENTA, PLAZA                              *
//**********************************************************************
//PUE01P30 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF05.ACT.A,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF05.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=244,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF05,DISP=SHR
//*
//*FS-1.0.0-01-INI
//**********************************************************************
//* PASO       : PUE01P28.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO F06 POR: OFICINA, CUENTA, PLAZA.    *
//**********************************************************************
//PUE01P28 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF06.ACT.A,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF06.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=254,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF06,DISP=SHR
//*
//*FS-1.0.0-01-FIN
//*--------------------------------------------------------------------*
//* PASO       : PUE01P25.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU503.                                  *
//* OBJETIVO   : RECORTA LOS ARCHIVOS DE MUV PARA DEJARLOS DE ACUERDO  *
//*              AL LAY-OUT DE BANCA PATRIMONIAL.                      *
//*--------------------------------------------------------------------*
//PUE01P25 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU503A1 DD DSN=MXCP.ZM.TMP.REC.EBCM.ZMUEPR01,
//            DISP=SHR
//ZMU503A2 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.HISTO,
//            DISP=SHR
//ZMU503A3 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.IMPRE,
//            DISP=SHR
//ZMU503A4 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF02.ACT,
//            DISP=SHR
//ZMU503A5 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF03.ACT,
//            DISP=SHR
//ZMU503AE DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF05.ACT,
//            DISP=SHR
//*FS-1.0.0-01-INI
//ZMU503B1 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF06.ACT,
//            DISP=SHR
//*FS-1.0.0-01-FIN
//*
//ZMU503A6 DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF01HST(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU503A7 DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF01IMP(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU503A8 DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF02IMP(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU503A9 DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF03IMP(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=225,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU503AF DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF05IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=180,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*FS-1.0.0-01-INI
//ZMU503B2 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF06IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*FS-1.0.0-01-FIN
//*
//ZMU503AA DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPRIV.PF01HST(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU503AB DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPRIV.PF01IMP(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU503AC DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPRIV.PF02IMP(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU503AD DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPRIV.PF03IMP(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=225,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU503AG DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.PF05IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=180,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*FS-1.0.0-01-INI
//ZMU503B3 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.PF06IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*FS-1.0.0-01-FIN
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR01T45),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE01P20.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE IMPRESION DE DATOS ADM. MES      *
//*              ACTUAL DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO    *
//*              ('RE1').                                              *
//*--------------------------------------------------------------------*
//PUE01P20 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ACT,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF01.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF01,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE01P15.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DETALLADO DE POSICION MES ACTUAL    *
//*              POR: OFICINA, CUENTA, PLAZA.                          *
//*--------------------------------------------------------------------*
//PUE01P15 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF02.ACT.M,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF02.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=446,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF02,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE01P10.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE MOVIMIENTOS DEL MES ACTUAL POR:  *
//*              OFICINA, CUENTA, PLAZA.                               *
//*--------------------------------------------------------------------*
//PUE01P10 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF03.ACT.M,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF03.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=298,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF03,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PASO       : PUE01P05.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO: ORDENA EL ARCHIVO DE ISR RETENIDO DEL MES ACTUAL         *
//*           POR: OFICINA, CUENTA, PLAZA                              *
//**********************************************************************
//PUE01P05 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF05.ACT,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF05.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=244,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF05,DISP=SHR
//*
//*FS-1.0.0-01-INI
//**********************************************************************
//* PASO       : PUE01P00.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//**********************************************************************
//PUE01P00 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF06.ACT,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF06.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=254,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF06,DISP=SHR
//*
//*FS-1.0.0-01-FIN
//*--------------------------------------------------------------------*
//*                      FIN DEL PROCESO ZMUEPR01                      *
//*--------------------------------------------------------------------*
