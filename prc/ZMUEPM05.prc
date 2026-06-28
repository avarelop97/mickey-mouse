//ZMUEPM05 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM05                                            *
//*                                                                    *
//*   OBJETIVO  :  ACUSES DE RECIBO DE ESTADOS DE CUENTA PERSONAS      *
//*                FISICAS Y MORALES DE LA EMPRESA PROPORCIONADA       *
//*                                                                    *
//*   CORRE ANTES DE  :  ZMUEPM30                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMUEPM04                                      *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   JULIO 2003                                                       *
//**********************************************************************
//*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-03  XMBB126 13JUL12 SE MODIFICA LOGICA NECESARIA DEL      *
//*                              PROCESO CAMBIANDO EL NOMBRE DE ALGUNOS*
//*                              PASOS Y AGREGANDO OTROS ASDEMAS DE    *
//*                              ELIMINAR EL PASO PUE05P02             *
//* -----------  ------- ------- ------------------------------------- *
//*--------------------------------------------------------------------*
//*********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO
//*********************************************************************
//* FS-1.0.0-03 SE MODIFICA EL NOMBRE DEL PASO DE PUE05P27 A PUE05P29  *
//*--------------------------------------------------------------------*
//*
//PUE05P29 EXEC PGM=ZM3DG001,
//         PARM=('&EMP',' ',' ',' ',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM05,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    -- ZM4MU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '00' *
//**********************************************************************
//* FS-1.0.0-03 SE MODIFICA EL NOMBRE DEL PASO DE PUE05P26 A PUE05P28  *
//*--------------------------------------------------------------------*
//*
//PUE05P28 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM05,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP00,DISP=SHR
//*
//ZMU320C1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE05T00),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '01' *
//**********************************************************************
//* FS-1.0.0-03 SE MODIFICA EL NOMBRE DEL PASO DE PUE05P25 A PUE05P27  *
//*--------------------------------------------------------------------*
//*
//PUE05P27 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM05,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP01,DISP=SHR
//*
//ZMU320C1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE05T01),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '02' *
//**********************************************************************
//* FS-1.0.0-03 SE MODIFICA EL NOMBRE DEL PASO DE PUE05P24 A PUE05P26  *
//*--------------------------------------------------------------------*
//*
//PUE05P26 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM05,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP02,DISP=SHR
//*
//ZMU320C1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE05T02),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '03' *
//**********************************************************************
//* FS-1.0.0-03 SE MODIFICA EL NOMBRE DEL PASO DE PUE05P23 A PUE05P25  *
//*--------------------------------------------------------------------*
//*
//PUE05P25 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM05,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP03,DISP=SHR
//*
//ZMU320C1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE05T03),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '04' *
//**********************************************************************
//* FS-1.0.0-03 SE MODIFICA EL NOMBRE DEL PASO DE PUE05P22 A PUE05P24  *
//*--------------------------------------------------------------------*
//*
//PUE05P24 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM05,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP04,DISP=SHR
//*
//ZMU320C1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE05T04),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '05' *
//**********************************************************************
//* FS-1.0.0-03 SE MODIFICA EL NOMBRE DEL PASO DE PUE05P21 A PUE05P23  *
//*--------------------------------------------------------------------*
//*
//PUE05P23 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM05,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP05,DISP=SHR
//*
//ZMU320C1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE05T05),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '06' *
//**********************************************************************
//* FS-1.0.0-03 SE MODIFICA EL NOMBRE DEL PASO DE PUE05P20 A PUE05P22  *
//*--------------------------------------------------------------------*
//*
//PUE05P22 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM05,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP06,DISP=SHR
//*
//ZMU320C1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE05T06),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '07' *
//**********************************************************************
//* FS-1.0.0-03 SE MODIFICA EL NOMBRE DEL PASO DE PUE05P19 A PUE05P21  *
//*--------------------------------------------------------------------*
//*
//PUE05P21 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM05,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP07,DISP=SHR
//*
//ZMU320C1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE05T07),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '08' *
//**********************************************************************
//* FS-1.0.0-03 SE MODIFICA EL NOMBRE DEL PASO DE PUE05P18 A PUE05P20  *
//*--------------------------------------------------------------------*
//*
//PUE05P20 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM05,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP08,DISP=SHR
//*
//ZMU320C1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE05T08),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '09' *
//**********************************************************************
//* FS-1.0.0-03 SE MODIFICA EL NOMBRE DEL PASO DE PUE05P17 A PUE05P19  *
//*--------------------------------------------------------------------*
//*
//PUE05P19 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM05,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP09,DISP=SHR
//*
//ZMU320C1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE05T09),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '10' *
//**********************************************************************
//* FS-1.0.0-03 SE MODIFICA EL NOMBRE DEL PASO DE PUE05P16 A PUE05P18  *
//*--------------------------------------------------------------------*
//*
//PUE05P18 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM05,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP10,DISP=SHR
//*
//ZMU320C1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE05T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*     PASO : PUE05P17                                                *
//* PROGRAMA : IKJEFT01                                                *
//* OBJETIVO : ACTUALIZA EN PARAM CIFRAS CONTROL DE ESTADOS DE CUENTA  *
//*--------------------------------------------------------------------*
//* FS-1.0.0-03 SE AGREGA EL PASO PUE05P17                             *
//*--------------------------------------------------------------------*
//*
//PUE05P17 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU008A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM05,DISP=SHR
//*
//ZMU008C1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.GEN,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP00,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP01,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP02,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP03,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP04,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP05,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP06,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP07,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP08,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP09,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.ACU.GP10,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.IMP.GP00,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.IMP.GP01,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.IMP.GP02,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.IMP.GP03,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.IMP.GP04,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.IMP.GP05,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.IMP.GP06,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.IMP.GP07,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.IMP.GP08,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.IMP.GP09,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.IMP.GP10,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.MIC.GP00,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.MIC.GP01,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.MIC.GP02,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.MIC.GP03,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.MIC.GP04,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.MIC.GP05,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.MIC.GP06,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.MIC.GP07,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.MIC.GP08,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.MIC.GP09,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.MIC.GP10,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE07T11),
//            DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU321  --                                 *
//*        GENERA REGISTRO DE TOTALES GRALES DE CLTES Y HOJAS          *
//**********************************************************************
//* FS-1.0.0-03 SE MODIFICA EL NOMBRE DEL PASO DE PUE05P15 A PUE05P16  *
//*--------------------------------------------------------------------*
//*
//PUE05P16 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU321A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM05,DISP=SHR
//ZMU321LE DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP00,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP01,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP02,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP03,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP04,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP05,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP06,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP07,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP08,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP09,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP10,DISP=SHR
//*
//ZMU321LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GRAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE05T11),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        GENERA ARCHIVO DE ACUSES DE RECIBO DE ESTADOS DE CUENTA     *
//**********************************************************************
//* FS-1.0.0-03 SE MODIFICA EL NOMBRE DEL PASO DE PUE05P14 A PUE05P15  *
//*--------------------------------------------------------------------*
//*
//PUE05P15 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//******************************************************************
//******   ACUSES DE RECIBO DE EDOS. CTA. PER. FIS Y MOR X GPI *****
//******************************************************************
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP00,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP01,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP02,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP03,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP04,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP05,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP06,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP07,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP08,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP09,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP10,DISP=SHR
//*
//******************************************************************
//******   ACUSES DE RECIBO  PERSONAS FISICAS Y MORALES X GPI ******
//******************************************************************
//*
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA.ACUSE(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(400,200),RLSE),
//            LRECL=081,RECFM=FBA,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*     PASO : PUE05P14                                                *
//* PROGRAMA : ICEGENER                                                *
//* OBJETIVO : GENERA ARCHIVO DE LISTADOS DE ESTADOS DE CUENTA         *
//*--------------------------------------------------------------------*
//* FS-1.0.0-03 SE AGREGA EL PASO PUE05P14                             *
//*--------------------------------------------------------------------*
//*
//PUE05P14 EXEC PGM=ICEGENER,COND=(0,NE)
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP00,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP01,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP02,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP03,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP04,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP05,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP06,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP07,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP08,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP09,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP10,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GRAL,DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA.LISTA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(400,200),RLSE),
//            LRECL=133,RECFM=FBA,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '00'     *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PUE05P13 EXEC PGM=ICEGENER,COND=(0,NE)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP00,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '01'     *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PUE05P12 EXEC PGM=ICEGENER,COND=(0,NE)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP01,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '02'     *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PUE05P11 EXEC PGM=ICEGENER,COND=(0,NE)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP02,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '03'     *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PUE05P10 EXEC PGM=ICEGENER,COND=(0,NE)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP03,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '04'     *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PUE05P09 EXEC PGM=ICEGENER,COND=(0,NE)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP04,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '05'     *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PUE05P08 EXEC PGM=ICEGENER,COND=(0,NE)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP05,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '06'     *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PUE05P07 EXEC PGM=ICEGENER,COND=(0,NE)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP06,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '07'     *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PUE05P06 EXEC PGM=ICEGENER,COND=(0,NE)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP07,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '08'     *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PUE05P05 EXEC PGM=ICEGENER,COND=(0,NE)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP08,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '09'     *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PUE05P04 EXEC PGM=ICEGENER,COND=(0,NE)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP09,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '10'     *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PUE05P03 EXEC PGM=ICEGENER,COND=(0,NE)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP10,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        LISTADO DE ACUSES DE RECIBO PERS. FIS/MOR TODOS LOS GRUPOS  *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PUE05P01 EXEC PGM=ICEGENER,COND=(0,NE)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA.LISTA(+1),DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM05 SIVA MULTIEMPRESA                  *
//**********************************************************************
