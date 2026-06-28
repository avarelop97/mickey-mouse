//ZMUEPR10 PROC EMP=,SUC=,INT1=,FECHA=
//*
//*--------------------------------------------------------------------*
//* PROYECTO    :  ZM - ESTADOS DE CTA CON VALIDEZ FISCAL BANCA        *
//*                PATRIMONIAL,ULTRA HIGTH NETWORK.                    *
//* PROCESO     :  ZMUEPR10.                                           *
//* PERIODICIDAD:  MENSUAL.                                            *
//* OBJETIVO    :  SEPARACION DE LOS ARCHIVOS DE HISTORICO E IMPRESION *
//**               PARA INDRA Y MEDC.                                  *
//* REALIZO     :  FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA       :  13 DE SEPTIEMBRE 2013.                              *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- -------------------------------------*
//* FS-1.0.0-01  XMZ9436  28NOV16 SE AGREGA EN EL PROCESO EL ARCHIVO   *
//*                               FP06                                 *
//* FS-1.0.0-02  XMY2883  01AGO18 SE AGREGA EN PROGRAMA ZM4MU517 NUEVO *
//*                               ARCHIVO DE SALIDA Y SE RENOMBRAN LAS *
//*                               SALIDAS 1 Y 2. SE AGREGA PASO PARA   *
//*                               REALIZAR SORT DE ARCHIVOS            *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T99.                                             *
//* UTILERIA   : ZM3DG001.                                             *
//* OBJETIVO   : RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN       *
//*              ARCHIVO.                                              *
//*--------------------------------------------------------------------*
//ZUR10T99 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&FECHA',)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.REC.EBCM.ZMUEPR10,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
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
//ZMU012A1 DD DSN=MXCP.ZM.FIX.REC.EBCM.ZMUEPR10,DISP=SHR
//ZMU012E1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF01.ACT,DISP=SHR
//*
//ZMU012HS DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF01.HIST,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU012IM DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF01.IMPR,
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
//ZMU010A1 DD DSN=MXCP.ZM.FIX.REC.EBCM.ZMUEPR10,DISP=SHR
//ZMU010A2 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF01.HIST,DISP=SHR
//ZMU010A3 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF01.IMPR,DISP=SHR
//ZMU010A4 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF02.ACT,DISP=SHR
//ZMU010A5 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF03.ACT,DISP=SHR
//ZMU010AI DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF05.ACT,DISP=SHR
//*FS-1.0.0-01-INI
//ZMU010B1 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF06.ACT,DISP=SHR
//*FS-1.0.0-01-FIN
//*
//ZMU010A6 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF01HST,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010A7 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF01IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010A8 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF02IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010A9 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF03IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=234,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AJ DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF05IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=180,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*FS-1.0.0-01-INI
//ZMU010B2 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF06IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*FS-1.0.0-01-FIN
//ZMU010AA DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.PF01HST,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AB DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.PF01IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AC DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.PF02IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AD DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.PF03IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=234,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AK DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.PF05IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=180,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*FS-1.0.0-01-INI
//ZMU010B3 DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.PF06IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*FS-1.0.0-01-FIN
//ZMU010AE DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.PF01HST,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AF DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.PF01IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AG DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.PF02IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AH DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.PF03IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=234,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AL DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.PF05IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=180,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*FS-1.0.0-01-INI
//ZMU010B4 DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.PF06IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*FS-1.0.0-01-FIN
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
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF01IMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.BPIGO.PF01IMP.SRT,
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
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF02IMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.BPIGO.PF02IMP.SRT,
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
//E1BPBV3  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF03IMP,DISP=SHR
//S1BPBV3  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.ZM3MU270,
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
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.ZM3MU270,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.BPIGO.PF03IMP.SRT,
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
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF05IMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.BPIGO.PF05IMP.SRT,
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
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF06IMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.BPIGO.PF06IMP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR10T68),DISP=SHR
//*FS-1.0.0-01-FIN
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T65.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU517.                                  *
//* OBJETIVO   : MATCH DE LOS 4 ARCHIVOS DE BANCA PATRIMONIAL PARA     *
//*              GENERAR LA INFO DE LOS ESTADOS DE CUENTA DE IMPRESION *
//*              Y LOS DE LOS DE NO IMPRESION.                         *
//*--------------------------------------------------------------------*
//ZUR10T65 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1BANCA  DD DSN=MXCP.ZM.FIX.REC.BPIGO.PF01IMP.SRT,DISP=SHR
//E2BANCA  DD DSN=MXCP.ZM.FIX.REC.BPIGO.PF02IMP.SRT,DISP=SHR
//E3BANCA  DD DSN=MXCP.ZM.FIX.REC.BPIGO.PF03IMP.SRT,DISP=SHR
//E5BANCA  DD DSN=MXCP.ZM.FIX.REC.BPIGO.PF05IMP.SRT,DISP=SHR
//*FS-1.0.0-01-INI
//E6BANCA  DD DSN=MXCP.ZM.FIX.REC.BPIGO.PF06IMP.SRT,DISP=SHR
//*FS-1.0.0-01-FIN
//S1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,400),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//*
//S2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,400),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//*
//*FS-1.0.0-02-I
//S3EGRSO  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.EGRESOS.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=95,BLKSIZE=0)
//*FS-1.0.0-02-F
//QRLSDB2  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR10T35),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T60.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA POR CUENTA AL ARCHIVO BPUHN.PF01IMP.           *
//*--------------------------------------------------------------------*
//ZUR10T60 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.PF01IMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.BPUHN.PF01IMP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR10T75),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T55.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA POR CUENTA AL ARCHIVO BPUHN.PF02IMP.           *
//*--------------------------------------------------------------------*
//ZUR10T55 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.PF02IMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.BPUHN.PF02IMP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR10T65),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T50.                                             *
//* UTILERIA   : ZM3MU517.                                             *
//* OBJETIVO   : GENERA ARCHIVO CON NUMERO DE SECUENCIA PARA CADA      *
//*              MOVIMIENTO SEGUN CORRESPONDA A CADA CONTRATO UHN.     *
//*--------------------------------------------------------------------*
//ZUR10T50 EXEC PGM=ZM3MU517,COND=(4,LT)
//*
//E1BPBV3  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.PF03IMP,DISP=SHR
//S1BPBV3  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPUHN.ZM3MU270,
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
//* PASO       : ZUR10T45.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA POR CUENTA Y SECUENCIA, OUTREC ARCHIVO ZM3MU270*
//*              DE BANCA UHN.                                         *
//*--------------------------------------------------------------------*
//ZUR10T45 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPUHN.ZM3MU270,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.BPUHN.PF03IMP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=234,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR10T40),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUR10T40                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  ORDENA POR CUENTA, CVEAGRUP, EMISORA, SERIE, ITIPOEMI  *
//*             ARCHIVO DE ISR DE BANCA UHN                            *
//*--------------------------------------------------------------------*
//ZUR10T40 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.PF05IMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.BPUHN.PF05IMP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=180,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR10T38),DISP=SHR
//*FS-1.0.0-01-INI
//*--------------------------------------------------------------------*
//* PASO     :  ZUR10T33                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  ORDENA POR CUENTA ELA ARCHIVO  BUHN.PF06IMP.           *
//*--------------------------------------------------------------------*
//ZUR10T33 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.PF06IMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.BPUHN.PF06IMP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR10T33),DISP=SHR
//*FS-1.0.0-01-FIN
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T35.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU517.                                  *
//* OBJETIVO   : MATCH DE LOS 4 ARCHIVOS DE BANCA UHN PARA GENERAR LA  *
//*              INFO DE LOS ESTADOS DE CUENTA DE IMPRESION  Y LOS NO  *
//*              IMPRESION.                                            *
//*--------------------------------------------------------------------*
//ZUR10T35 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1BANCA  DD DSN=MXCP.ZM.FIX.REC.BPUHN.PF01IMP.SRT,DISP=SHR
//E2BANCA  DD DSN=MXCP.ZM.FIX.REC.BPUHN.PF02IMP.SRT,DISP=SHR
//E3BANCA  DD DSN=MXCP.ZM.FIX.REC.BPUHN.PF03IMP.SRT,DISP=SHR
//E5BANCA  DD DSN=MXCP.ZM.FIX.REC.BPUHN.PF05IMP.SRT,DISP=SHR
//*FS-1.0.0-01-INI
//E6BANCA  DD DSN=MXCP.ZM.FIX.REC.BPUHN.PF06IMP.SRT,DISP=SHR
//*FS-1.0.0-01-FIN
//*
//S1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//*
//S2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//*
//*FS-1.0.0-02-I
//S3EGRSO  DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.EGRESOS.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=95,BLKSIZE=0)
//*FS-1.0.0-02-F
//QRLSDB2  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR10T30),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T30                                              *
//* UTILERIA   : ICEMAN SE ORDENA EN FORMA ASCENDENTE                  *
//* OBJETIVO   : ORDENA POR CUENTA AL ARCHIVO BPRIV.PF01IMP.           *
//*--------------------------------------------------------------------*
//ZUR10T30 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.PF01IMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.BPRIV.PF01IMP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2885,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR10T25),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T25.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA POR CUENTA AL ARCHIVO BPRIV.PF02IMP.           *
//*--------------------------------------------------------------------*
//ZUR10T25 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.PF02IMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.BPRIV.PF02IMP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR10T20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T20.                                             *
//* UTILERIA   : ZM3MU517.                                             *
//* OBJETIVO   : GENERA ARCHIVO CON NUMERO DE SECUENCIA PARA CADA      *
//*              MOVIMIENTO SEGUN CORRESPONDA A CADA CONTRATO PRIVADA. *
//*--------------------------------------------------------------------*
//ZUR10T20 EXEC PGM=ZM3MU517,COND=(4,LT)
//*
//E1BPBV3  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.PF03IMP,DISP=SHR
//S1BPBV3  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.ZM3MU270,
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
//* PASO       : ZUR10T15.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA POR CUENTA Y SECUENCIA, OUTREC ARCHIVO         *
//*--------------------------------------------------------------------*
//ZUR10T15 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.ZM3MU270,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.BPRIV.PF03IMP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=234,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR10T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZUR10T10                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  ORDENA POR CUENTA, CVEAGRUP, EMISORA, SERIE, ITIPOEMI  *
//*             ARCHIVO DE ISR DE BANCA PRIVADA                        *
//*--------------------------------------------------------------------*
//ZUR10T10 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.PF05IMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.BPRIV.PF05IMP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=180,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR10T38),DISP=SHR
//*FS-1.0.0-01-INI
//*--------------------------------------------------------------------*
//* PASO     :  ZUR10T08                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  ORDENA POR CUENTA ELA ARCHIVO  BPRIV.PF06IMP.          *
//*--------------------------------------------------------------------*
//ZUR10T08 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.PF06IMP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.BPRIV.PF06IMP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR10T08),DISP=SHR
//*FS-1.0.0-01-FIN
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR10T05.                                             *
//* UTILERIA   : IKJEFT01 / ZM4MU517.                                  *
//* OBJETIVO   : MATCH DE LOS 4 ARCHIVOS DE BANCA PRIVADA PARA GENERAR *
//*              LA INFO DE LOS ESTADOS DE CUENTA DE IMPRESION Y LOS   *
//*              DE LOS DE NO IMPRESION DE LA BANCA PRIVADA.           *
//*--------------------------------------------------------------------*
//ZUR10T05 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//E1BANCA  DD DSN=MXCP.ZM.FIX.REC.BPRIV.PF01IMP.SRT,DISP=SHR
//E2BANCA  DD DSN=MXCP.ZM.FIX.REC.BPRIV.PF02IMP.SRT,DISP=SHR
//E3BANCA  DD DSN=MXCP.ZM.FIX.REC.BPRIV.PF03IMP.SRT,DISP=SHR
//E5BANCA  DD DSN=MXCP.ZM.FIX.REC.BPRIV.PF05IMP.SRT,DISP=SHR
//*FS-1.0.0-01-INI
//E6BANCA  DD DSN=MXCP.ZM.FIX.REC.BPRIV.PF06IMP.SRT,DISP=SHR
//*FS-1.0.0-01-FIN
//S1SIIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//*
//S2NOIMP  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//*
//*FS-1.0.0-02-I
//S3EGRSO  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.EGRESOS.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=95,BLKSIZE=0)
//*FS-1.0.0-02-F
//QRLSDB2  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR10T05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMUEPR10                          *
//*--------------------------------------------------------------------*
