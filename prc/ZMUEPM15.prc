//ZMUEPM15 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM15                                            *
//*                                                                    *
//*   OBJETIVO  :  SEPARA Y ORDENA LOS ESTADOS DE CUENTA DE LA EMPRESA *
//*                PROPORCIONADA                                       *
//*                GENERA CIFRAS CONTROL (IMPRESOS Y DIGITALIZADOS)    *
//*                                                                    *
//*   CORRE ANTES DE  :  ZMUEPM05                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMUEPM03                                      *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   JULIO 2003                                                       *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//* FS-1.0.0-03  XMBB093 13JUL12  SE RENUMERAN TODOS LOS PASOS EXIS-   *
//*                               TENTES, ASI MISMO SE ELIMINAN LAS    *
//*                               SENTENCIAS PI601765 EXIXTENETES,     *
//*                               SE AGREGAN LOS PASO PUE04P24 AL      *
//*                               PUE04P01, TAMBIEN SE AGREGAN Y / O   *
//*                               MODIFIACR PARAMETROS DE LOS PASOS    *
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//*FS-1.0.0-03 SE CAMBIA EL NOMBRE DEL PASO DE PUE04P14 A PUE04P38,    *
//*            ASI MISMO SE ELIMINA LA SENTENCIA PI601765              *
//**********************************************************************
//PUE04P38 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    -- ZM4MU007  --                                 *
//*  SEPARA LOS ESTADOS DE CUENTA EN ARCHIVOS DE IMPRESION DE ACUERDO  *
//*  A LOS CRITERIOS DE SEPARACION PROPORCIONADOS EN LINEA MEDIANTE LA *
//*  TABLA PRODUSVP.PARAM ('ESP')                                      *
//*                                                                    *
//*FS-1.0.0-03 SE CAMBIA EL NOMBRE DEL PASO DE PUE04P13 A PUE04P37,    *
//*            ASI MISMO SE ELIMINA LA SENTENCIA PI601765, TAMBIEN SE  *
//*            CAMBIAN LOS NOMBRES DE LOS ARCHIVOS DESDE LA ETIQUETA   *
//*            ZMU007G0 HASTA  LA ETIQUETA ZMU007GA                    *
//**********************************************************************
//PUE04P37 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU007A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU007E1 DD DSN=MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA(0),DISP=SHR
//*
//ZMU007CC DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.GEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU007G0 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G2 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G3 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G4 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G5 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G6 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G7 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G8 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G9 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007GA DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE04T01),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU006  --                                 *
//*  GENERA LOS ARCHIVOS DE TARJETAS DE SORT PARA LOS 11 GRUPOS DE     *
//*  IMPRESION PARA USO EN EL ORDENAMIENTO PARAMETRICO DE LOS ESTADOS  *
//*  DE CUENTA DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO DE LA TABLA  *
//*  PRODUSVP.PARAM ('ESR')                                            *
//*FS-1.0.0-03 SE CAMBIA EL NOMBRE DEL PASO DE PUE04P12 A PUE04P36,    *
//*            ASI MISMO SE ELIMINA LA SENTENCIA PI601765              *
//**********************************************************************
//PUE04P36 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU006A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//*
//ZMU006G0 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G2 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G3 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G4 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G5 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G6 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G7 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G8 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G9 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006GA DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE04T02),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 00   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//*FS-1.0.0-03 SE CAMBIA EL NOMBRE DEL PASO DE PUE04P11 A PUE04P35,    *
//*            ASI MISMO SE ELIMINA LA SENTENCIA PI601765, TAMBIEN SE  *
//*            CAMBIAN LOS NOMBRES DE LOS ARCHIVOS DE ENTRADA SORTIN   *
//*            Y DE SALIDA SORTOUT                                     *
//**********************************************************************
//PUE04P35 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM00,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP00,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 01   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//*FS-1.0.0-03 SE CAMBIA EL NOMBRE DEL PASO DE PUE04P10 A PUE04P34,    *
//*            ASI MISMO SE ELIMINA LA SENTENCIA PI601765, TAMBIEN SE  *
//*            CAMBIAN LOS NOMBRES DE LOS ARCHIVOS DE ENTRADA SORTIN   *
//*            Y SALIDA SORTOUT                                        *
//**********************************************************************
//PUE04P34 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM01,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP01,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 02   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//*FS-1.0.0-03 SE CAMBIA EL NOMBRE DEL PASO DE PUE04P09 A PUE04P33,    *
//*            ASI MISMO SE ELIMINA LA SENTENCIA PI601765, TAMBIEN SE  *
//*            CAMBIAN LOS NOMBRES DE LOS ARCHIVOS DE ENTRADA SORTIN   *
//*            Y SALIDA SORTOUT                                        *
//**********************************************************************
//PUE04P33 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM02,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP02,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 03   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//*FS-1.0.0-03 SE CAMBIA EL NOMBRE DEL PASO DE PUE04P08 A PUE04P32,    *
//*            ASI MISMO SE ELIMINA LA SENTENCIA PI601765, TAMBIEN SE  *
//*            CAMBIAN LOS NOMBRES DE LOS ARCHIVOS DE ENTRADA SORTIN   *
//*            Y SALIDA SORTOUT                                        *
//**********************************************************************
//PUE04P32 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM03,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP03,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 04   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//*FS-1.0.0-03 SE CAMBIA EL NOMBRE DEL PASO DE PUE04P07 A PUE04P31,    *
//*            ASI MISMO SE ELIMINA LA SENTENCIA PI601765, TAMBIEN SE  *
//*            CAMBIAN LOS NOMBRES DE LOS ARCHIVOS DE ENTRADA SORTIN   *
//*            Y SALIDA SORTOUT                                        *
//**********************************************************************
//PUE04P31 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM04,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP04,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 05   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//*FS-1.0.0-03 SE CAMBIA EL NOMBRE DEL PASO DE PUE04P06 A PUE04P30,    *
//*            ASI MISMO SE ELIMINA LA SENTENCIA PI601765, TAMBIEN SE  *
//*            CAMBIAN LOS NOMBRES DE LOS ARCHIVOS DE ENTRADA SORTIN   *
//*            Y SALIDA SORTOUT                                        *
//**********************************************************************
//PUE04P30 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM05,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP05,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 06   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//*FS-1.0.0-03 SE CAMBIA EL NOMBRE DEL PASO DE PUE04P05 A PUE04P29,    *
//*            ASI MISMO SE ELIMINA LA SENTENCIA PI601765, TAMBIEN SE  *
//*            CAMBIAN LOS NOMBRES DE LOS ARCHIVOS DE ENTRADA SORTIN   *
//*            Y SALIDA SORTOUT                                        *
//**********************************************************************
//PUE04P29 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM06,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP06,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 07   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//*FS-1.0.0-03 SE CAMBIA EL NOMBRE DEL PASO DE PUE04P04 A PUE04P28,    *
//*            ASI MISMO SE ELIMINA LA SENTENCIA PI601765, TAMBIEN SE  *
//*            CAMBIAN LOS NOMBRES DE LOS ARCHIVOS DE ENTRADA SORTIN   *
//*            Y SALIDA SORTOUT                                        *
//**********************************************************************
//PUE04P28 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM07,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP07,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 08   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//*FS-1.0.0-03 SE CAMBIA EL NOMBRE DEL PASO DE PUE04P03 A PUE04P27,    *
//*            ASI MISMO SE ELIMINA LA SENTENCIA PI601765, TAMBIEN SE  *
//*            CAMBIAN LOS NOMBRES DE LOS ARCHIVOS DE ENTRADA SORTIN   *
//*            Y SALIDA SORTOUT                                        *
//**********************************************************************
//PUE04P27 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM08,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP08,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 09   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//*FS-1.0.0-03 SE CAMBIA EL NOMBRE DEL PASO DE PUE04P02 A PUE04P26,    *
//*            ASI MISMO SE ELIMINA LA SENTENCIA PI601765, TAMBIEN SE  *
//*            CAMBIAN LOS NOMBRES DE LOS ARCHIVOS DE ENTRADA SORTIN   *
//*            Y SALIDA SORTOUT                                        *
//**********************************************************************
//PUE04P26 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM09,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP09,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 10   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//*FS-1.0.0-03 SE CAMBIA EL NOMBRE DEL PASO DE PUE04P01 A PUE04P25,    *
//*            ASI MISMO SE ELIMINA LA SENTENCIA PI601765, TAMBIEN SE  *
//*            CAMBIAN LOS NOMBRES DE LOS ARCHIVOS DE ENTRADA SORTIN   *
//*            Y SALIDA SORTOUT                                        *
//**********************************************************************
//PUE04P25 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.TM10,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECT.E&EMP..SRTGP10,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P24                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA      *
//*              GRUPO '00'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P24 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP00,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.IMP.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.IMP.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.IMP.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE06T00),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P23                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA      *
//*              GRUPO '01'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P23 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP01,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.IMP.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.IMP.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.IMP.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE06T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P22                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA      *
//*              GRUPO '02'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P22 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP02,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.IMP.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.IMP.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.IMP.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE06T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P21                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA      *
//*              GRUPO '03'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P21 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP03,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.IMP.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.IMP.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.IMP.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE06T03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P20                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA      *
//*              GRUPO '04'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P20 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP04,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.IMP.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.IMP.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.IMP.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE06T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P19                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA      *
//*              GRUPO '05'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P19 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP05,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.IMP.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.IMP.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.IMP.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE06T05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P18                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA      *
//*              GRUPO '06'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P18 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP06,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.IMP.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.IMP.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.IMP.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE06T06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P17                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA      *
//*              GRUPO '07'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P17 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP07,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.IMP.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.IMP.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.IMP.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE06T07),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P16                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA      *
//*              GRUPO '08'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P16 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP08,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.IMP.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.IMP.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.IMP.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE06T08),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P15                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA      *
//*              GRUPO '09'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P15 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP09,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.IMP.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.IMP.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.IMP.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE06T09),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P14                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA      *
//*              GRUPO '10'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P14 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP10,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.IMP.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.IMP.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.IMP.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE06T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P13                                              *
//* UTILERIA   : ICEGENER                                              *
//* OBJETIVO   : GENERA ARCHIVO DE IMPRESION DE ESTADOS DE CUENTA      *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//*PUE04P13 EXEC PGM=ICEGENER,COND=(0,NE)
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P12                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA      *
//*              GRUPO '00'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P12 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP00,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.MIC.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.MIC.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.MIC.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE07T00),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P11                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA      *
//*              GRUPO '01'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P11 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP01,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.MIC.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.MIC.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.MIC.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE07T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P10                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA      *
//*              GRUPO '02'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P10 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP02,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.MIC.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.MIC.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.MIC.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE07T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P09                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA      *
//*              GRUPO '03'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P09 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP03,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.MIC.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.MIC.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.MIC.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE07T03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P08                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA      *
//*              GRUPO '04'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P08 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP04,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.MIC.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.MIC.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.MIC.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE07T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P07                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA      *
//*              GRUPO '05'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P07 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP05,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.MIC.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.MIC.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.MIC.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE07T05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P06                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA      *
//*              GRUPO '06'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P06 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP06,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.MIC.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.MIC.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.MIC.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE07T06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P05                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA      *
//*              GRUPO '07'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P05 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP07,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.MIC.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.MIC.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.MIC.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE07T07),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P04                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA      *
//*              GRUPO '08'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P04 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP08,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.MIC.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.MIC.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.MIC.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE07T08),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P03                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA      *
//*              GRUPO '09'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P03 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP09,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.MIC.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.MIC.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.MIC.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE07T09),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE04P02                                              *
//* UTILERIA   : IKJEFT01 / ZM4MU002                                   *
//* OBJETIVO   : RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA      *
//*              GRUPO '10'                                            *
//*FS-1.0.0-03 ESTE PASO ES NUEVO EN EL PROCESO                        *
//*--------------------------------------------------------------------*
//PUE04P02 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU002A1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..ZMUEPM15,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.GP10,DISP=SHR
//*
//ZMU002C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL.MIC.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU002F1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..FISICAS.MIC.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..MORALES.MIC.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE07T10),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM15 SIVA MULTIEMPRESA                  *
//**********************************************************************
