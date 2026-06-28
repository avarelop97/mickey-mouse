//ZMUEPM11 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*              >>>>  PREVIO DE ESTADOS DE CUENTA  <<<<               *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM11                                            *
//*                                                                    *
//*   OBJETIVO  :  REIMPRESION PROGRAMADA DE ESTADOS DE CUENTA PREVIOS *
//*                DE LA EMPRESA PROPORCIONADA                         *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMUEPM10                                      *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//**********************************************************************
//*
//*********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO
//*********************************************************************
//PUE11P13 EXEC PGM=ZM3DG001,
//         PARM=('&EMP',' ',' ',' ',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM11,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    -- ZM4MU002  --                                 *
//*        IMPRESION PROGRAMADA DE ESTADOS DE CUENTA PARA VO.BO.       *
//**********************************************************************
//PUE11P12 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM11,DISP=SHR
//*
//ZMU002E1 DD DSN=MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA(0),DISP=SHR
//*
//ZMU002C1 DD DUMMY
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.FIS.UE11,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.MOR.UE11,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE11T01),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        IMPRESION EN SPOOL DE MUESTRA DE ESTADOS DE CUENTA FISICAS  *
//**********************************************************************
//PUE11P11 EXEC PGM=ICEGENER,COND=(0,NE)                                00340000
//SYSIN    DD DUMMY                                                     00350000
//SYSPRINT DD SYSOUT=*                                                  00360000
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES             00370000
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.FIS.UE11,              00390001
//         DISP=(MOD,DELETE,DELETE),DCB=RECFM=FBA                       00400000
//SYSUT2   DD SYSOUT=(V,,FISI),OUTPUT=*.OUTPUT1                         00380000
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        IMPRESION EN SPOOL DE MUESTRA DE ESTADOS DE CUENTA MORALES  *
//**********************************************************************
//PUE11P10 EXEC PGM=ICEGENER,COND=(0,NE)                                00340000
//SYSIN    DD DUMMY                                                     00350000
//SYSPRINT DD SYSOUT=*                                                  00360000
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES             00370000
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.MOR.UE11,              00390001
//         DISP=(MOD,DELETE,DELETE),DCB=RECFM=FBA                       00400000
//SYSUT2   DD SYSOUT=(V,,MORA),OUTPUT=*.OUTPUT1                         00380000
//*
//**********************************************************************
//*                    -- ZM4MU007  --                                 *
//*  SEPARA LOS ESTADOS DE CUENTA EN ARCHIVOS DE IMPRESION DE ACUERDO  *
//*  A LOS CRITERIOS DE SEPARACION PROPORCIONADOS EN LINEA MEDIANTE LA *
//*  TABLA PRODUSVP.PARAM ('ESP')                                      *
//*                                                                    *
//**********************************************************************
//PUE11P09 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU007A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM11,DISP=SHR
//*
//ZMU007E1 DD DSN=MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA(0),DISP=SHR
//*
//ZMU007CC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.GEN,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU007G0 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP00,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP01,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP02,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP03,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G4 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP04,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G5 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP05,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G6 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP06,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G7 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP07,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G8 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP08,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G9 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP09,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007GA DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE11T02),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU006  --                                 *
//*  GENERA LOS ARCHIVOS DE TARJETAS DE SORT PARA LOS 11 GRUPOS DE     *
//*  IMPRESION PARA USO EN EL ORDENAMIENTO PARAMETRICO DE LOS ESTADOS  *
//*  DE CUENTA DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO DE LA TABLA  *
//*  PRODUSVP.PARAM ('ESR')                                            *
//**********************************************************************
//PUE11P08 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU006A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM11,DISP=SHR
//*
//ZMU006G0 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP00,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP01,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP02,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP03,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G4 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP04,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G5 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP05,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G6 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP06,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G7 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP07,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G8 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP08,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU006G9 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP09,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE11T03),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 10   *
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO PROPORCIONADOS*
//**********************************************************************
//PUE11P07 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP10,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP10,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP10,DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU320  --                                 *
//*        GENERA LISTADO DE ESTADOS DE CUENTA CON ERROR :  GRUPO '10' *
//**********************************************************************
//PUE11P06 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM11,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP10,
//            DISP=(OLD,DELETE,DELETE)
//*
//ZMU320C1 DD DUMMY
//ZMU320AC DD DUMMY
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..LSPERR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE11T04),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        LISTADO DE ESTADOS DE CUENTA CON ERROR :  GRUPO '10'        *
//**********************************************************************
//PUE11P05 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..LSPERR,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --  ENVIA A IMPRESION              *
//*        LISTADO DE ESTADOS DE CUENTA CON ERROR :  GRUPO '10'        *
//**********************************************************************
//PUE11P04 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..LSPERR,DISP=SHR
//SYSUT2   DD SYSOUT=(V,,LIST),
//            DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ZM4MU010  --                                 *
//*        LISTADO DE PRECIOS DE E.C. POR EMISORA, SERIE, CUPON        *
//**********************************************************************
//PUE11P03 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU010A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM11,DISP=SHR
//*
//ZMU010LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..LSPPRE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE11T06),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        LISTADO DE PRECIOS DE E.C. POR EMISORA, SERIE, CUPON        *
//**********************************************************************
//PUE11P02 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..LSPPRE,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --  ENVIA A IMPRESION              *
//*        LISTADO DE PRECIOS DE E.C. POR EMISORA, SERIE, CUPON        *
//**********************************************************************
//PUE11P01 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..LSPPRE,DISP=SHR
//SYSUT2   DD SYSOUT=(V,,LIST),
//            DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM11 SIVA MULTIEMPRESA                  *
//**********************************************************************
