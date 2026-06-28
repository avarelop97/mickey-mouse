//ZMUEPR03 PROC EMP=,SUC=,INT1=,FECHA=
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - (SIVA) REDISENO DE ESTADOS DE CUENTA.          *
//* PROCESO      : ZMUEPR03.                                           *
//* PERIODICIDAD : MENSUAL.                                            *
//* OBJETIVO     : GENERACION DE ARCHIVOS MUV PARA HISTORICO E         *
//**               IMPRESION DE ESTADOS DE CUENTA DE BANCA PATRIMONIAL *
//*                Y CUSTODIA INTERNACIONAL.                           *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 03 DE SEPTIEMBRE DE 2013.                           *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PUE03P60.                                             *
//* UTILERIA   : ZM3DG001.                                             *
//* OBJETIVO   : RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN       *
//*              ARCHIVO.                                              *
//*--------------------------------------------------------------------*
//PUE03P60 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&FECHA',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.REC.EBCM.ZMUEPR03,
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
//* PASO       : PUE03P55.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES        *
//*              ANTERIOR POR NUMERO DE CUENTA (VERSION  0)            *
//*--------------------------------------------------------------------*
//PUE03P55 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF01(0),
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR03T85),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE03P50.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU500.                                  *
//* OBJETIVO   : GENERA ARCHIVOS MUV NECESARIOS PARA LA GENERACION DE  *
//*              LOS ESTADOS DE CUENTA DE BANCA PATRIMONIAL.           *
//*--------------------------------------------------------------------*
//PUE03P50 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU500T0 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT,
//            DISP=SHR
//ZMU500T1 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT,
//            DISP=SHR
//ZMU500T2 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT,
//            DISP=SHR
//ZMU500T3 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT,
//            DISP=SHR
//ZMU500T4 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT,
//            DISP=SHR
//ZMU500T5 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ANT,
//            DISP=SHR
//*
//ZMU500A0 DD DSN=MXCP.ZM.TMP.REC.EBCM.ZMUEPR03,
//            DISP=SHR
//*
//ZMU500A1 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU500A2 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF02.ACT.A,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=446,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU500A3 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF03.ACT.A,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=298,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU500A5 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF05.ACT.A,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=244,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//*FS-1.0.0-01-INI
//ZMU500A6 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF06.ACT.A,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=254,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*FS-1.0.0-01-FIN
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR03T80),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE03P45.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU501.                                  *
//* OBJETIVO   : GENERA ARCHIVOS PARA TARJETAS DE SORT REQUERIDOS EN LA*
//*              GENERACION DE ESTADOS DE CUENTA DE BANCA PATRIMONIAL. *
//*--------------------------------------------------------------------*
//PUE03P45 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU501A1 DD DSN=MXCP.ZM.TMP.REC.EBCM.ZMUEPR03,
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
//*
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR03T75),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE03P40.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU502.                                  *
//* OBJETIVO   : SEPARA LOS ESTADOS DE CUENTA EN ARCHIVOS PARA EL      *
//*              HISTORICO DE E.C. DE ACUERDO A LOS CRITERIOS DE       *
//*              SEPARACION PROPORCIONADOS EN LINEA MEDIANTE LA TABLA  *
//*              PRODUSVP.PARAM ('ESP') DE BANCA PATRIMONIAL.          *
//*--------------------------------------------------------------------*
//PUE03P40 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU502A1 DD DSN=MXCP.ZM.TMP.REC.EBCM.ZMUEPR03,
//            DISP=SHR
//ZMU502E1 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF01.ACT,
//            DISP=SHR
//*
//ZMU502HS DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.HISTO.A,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU502IM DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.IMPRE.A,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR03T70),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE03P35.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO HISTORICO DE DATOS ADMTIVOS. MES    *
//*              ACTUAL DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO    *
//*              ('ESR').                                              *
//*--------------------------------------------------------------------*
//PUE03P35 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.HISTO.A,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.HISTO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF01,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE03P30.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE IMPRESION DE DATOS ADM. MES      *
//*              ACTUAL DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO    *
//*              ('ESR').                                              *
//*--------------------------------------------------------------------*
//PUE03P30 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.IMPRE.A,
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
//* PASO       : PUE03P25.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DETALLADO DE POSICION MES ACTUAL    *
//*              POR: OFICINA, CUENTA, PLAZA.                          *
//*--------------------------------------------------------------------*
//PUE03P25 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF02.ACT.A,
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
//* PASO       : PUE03P20.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA EL ARCHIVO DE MOVIMIENTOS DEL MES ACTUAL POR:  *
//*              OFICINA, CUENTA, PLAZA.                               *
//*--------------------------------------------------------------------*
//PUE03P20 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF03.ACT.A,
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
//* PASO       : PUE03P15.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO: ORDENA EL ARCHIVO DE ISR DEL MES ACTUAL                  *
//*           POR: OFICINA, CUENTA, PLAZA                              *
//**********************************************************************
//PUE03P15 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF05.ACT.A,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF05.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=244,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.SRTPF05,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE03P10.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU503.                                  *
//* OBJETIVO   : RECORTA LOS ARCHIVOS DE MUV PARA DEJARLOS DE ACUERDO  *
//*              AL LAY-OUT DE BANCA PATRIMONIAL.                      *
//*--------------------------------------------------------------------*
//PUE03P10 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU503A1 DD DSN=MXCP.ZM.TMP.REC.EBCM.ZMUEPR03,
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
//ZMU503B1 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF06.ACT.A,
//            DISP=SHR
//*FS-1.0.0-01-FIN
//*
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
//*
//ZMU503AF DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF05IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=180,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//*FS-1.0.0-01-INI
//ZMU503B2 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF06IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*FS-1.0.0-01-FIN
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
//*
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR03T45),DISP=SHR
//*
//*FS-1.0.0-01-INI
//*--------------------------------------------------------------------*
//* PASO       : ZUE12P96                                              *
//* UTILERIA   : IKJEFT01/ZM4MU310                                     *
//* OBJETIVO   : REASIGNA EL NUMERO DE CONTRATO DE LA TABLA ZMDT609    *
//*              Y ZMDT608.                                            *
//*--------------------------------------------------------------------*
//PUE03P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXCP.ZM.FIX.CBUENM48.DETALLE.EDIMPUE.SORT,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXCP.ZM.WKF.ZMUEPR03.DETALLE.EDIMPUE,
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
//PUE03P08 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.WKF.ZMUEPR03.DETALLE.EDIMPUE,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.ZMUEPR03.DETALLE.EDIMPUE.SORT,
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
//* PASO       : PUE03P05.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU504.                                  *
//* OBJETIVO   : ACTUALIZA LA BASE DE DATOS HISTORICA DE ESTADOS DE    *
//*              CUENTA DE ACUERDO AL LAYOUT DE LOS ARCHIVOS DE BANCA  *
//*              PATRIMONIAL.                                          *
//*--------------------------------------------------------------------*
//PUE03P05 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU504P1 DD DSN=MXCP.ZM.TMP.REC.EBCM.ZMUEPR03,
//            DISP=SHR
//ZMU504M1 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.IMPRE,
//            DISP=SHR
//ZMU504M2 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF02.ACT,
//            DISP=SHR
//ZMU504M3 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF03.ACT,
//            DISP=SHR
//ZMU504M5 DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.PF05.ACT,
//            DISP=SHR
//*
//ZMU504B1 DD DUMMY
//ZMU504B2 DD DUMMY
//ZMU504B3 DD DUMMY
//ZMU504B4 DD DUMMY
//ZMU504B5 DD DUMMY
//ZMU504B6 DD DUMMY
//ZMU504B7 DD DUMMY
//ZMU504B8 DD DUMMY
//*
//ZMU504HS DD DSN=MXCP.ZM.TMP.REC.EBCM.BPIGO.F01.ADMN,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//*FS-1.0.0-01-INI
//ZMU504FD DD DSN=MXCP.ZM.TMP.ZMUEPR03.ZMDT935,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=220,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//*FS-1.0.0-01-FIN
//*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR03T40),DISP=SHR
//*
//*FS-1.0.0-01-INI
//*
//**********************************************************************
//*  ORDENA ARCHIVO CON INFORMACION DE HISTORICOS                      *
//**********************************************************************
//*
//PUE03P04 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.ZMUEPR03.ZMDT935,
//             DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.ZMUEPR03.ZMDT935.SORT,
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
//PUE03P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.TMP.ZMUEPR03.ZMDT935.SORT,
//             DISP=SHR
//*
//ENTRADA2 DD DSN=MXCP.ZM.WKF.ZMUEPR03.DETALLE.EDIMPUE.SORT,
//             DISP=SHR
//*
//SALIDA   DD  DSN=MXCP.ZM.TMP.ZMUEPR03.ZMDT935.INSERT,
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
//*--------------------------------------------------------------------*
//*                      FIN DEL PROCESO ZMUEPR03                      *
//*--------------------------------------------------------------------*
