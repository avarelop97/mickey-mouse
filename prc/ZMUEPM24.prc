//ZMUEPM24 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM24                                            *
//*                                                                    *
//*   OBJETIVO  :  SEPARA Y ORDENA LAS CONSTANCIAS E.C.  DE LA EMPRESA *
//*                PROPORCIONADA                                       *
//*                                                                    *
//*   CORRE ANTES DE  :  ZMUEPM25                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMUEPM23                                      *
//*                                                                    *
//*   PERIODICIDAD    :  ANUAL                                         *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PUE24P14 EXEC PGM=ZM3DG001,
//         PARM=('&EMP',' ',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM24,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    -- ZM4VU007  --                                 *
//*  SEPARA LOS ESTADOS DE CUENTA EN ARCHIVOS DE IMPRESION DE ACUERDO  *
//*  A LOS CRITERIOS DE SEPARACION PROPORCIONADOS EN LINEA MEDIANTE LA *
//*  TABLA PRODUSVP.PARAM ('ESP')                                      *
//*                                                                    *
//**********************************************************************
//PUE04P13 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU007A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM24,DISP=SHR
//ZMU007E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA,DISP=SHR
//*
//ZMU007CC DD DUMMY
//ZMU007G0 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=274,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=274,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=274,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=274,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G4 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=274,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G5 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=274,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G6 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=274,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G7 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=274,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G8 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=274,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G9 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=274,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007GA DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=274,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE24T01),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU006  --                                 *
//*  GENERA LOS ARCHIVOS DE TARJETAS DE SORT PARA LOS 11 GRUPOS DE     *
//*  IMPRESION PARA USO EN EL ORDENAMIENTO PARAMETRICO DE LOS ESTADOS  *
//*  DE CUENTA DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO DE LA TABLA  *
//*  PRODUSVP.PARAM ('ESR')                                            *
//**********************************************************************
//PUE24P12 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU006A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM24,DISP=SHR
//*
//ZMU006G0 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G4 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G5 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G6 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G7 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G8 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G9 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006GA DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE24T02),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 00   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//**********************************************************************
//PUE04P11 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP00,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP00,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP00,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 01   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//**********************************************************************
//PUE04P10 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP01,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP01,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP01,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 02   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//**********************************************************************
//PUE04P09 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP02,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP02,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP02,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 03   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//**********************************************************************
//PUE04P08 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP03,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP03,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP03,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 04   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//**********************************************************************
//PUE04P07 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP04,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP04,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP04,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 05   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//**********************************************************************
//PUE04P06 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP05,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP05,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP05,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 06   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//**********************************************************************
//PUE04P05 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP06,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP06,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP06,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 07   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//**********************************************************************
//PUE04P04 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP07,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP07,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP07,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 08   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//**********************************************************************
//PUE04P03 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP08,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP08,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP08,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 09   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//**********************************************************************
//PUE04P02 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP09,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP09,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP09,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 10   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//**********************************************************************
//PUE04P01 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP10,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP10,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP10,DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM24 SIVA MULTIEMPRESA                  *
//**********************************************************************
