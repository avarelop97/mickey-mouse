//ZMUEPM26 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM26                                            *
//*                                                                    *
//*   OBJETIVO  :  IMPRESION DE CONSTANCIAS DE E.C. DE LA              *
//*                EMPRESA PROPORCIONADA                               *
//*                                                                    *
//*   CORRE ANTES DE  :  ZMUEPM27                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMUEPM25                                      *
//*                                                                    *
//*   PERIODICIDAD    :  ANUAL                                         *
//*                                                                    *
//**********************************************************************
//*
//*********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO
//*********************************************************************
//PUE26P35 EXEC PGM=ZM3DG001,PARM=('&EMP',' ',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM26,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    -- ZM4VU002  --                                 *
//*        RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA GRUPO '00' *
//**********************************************************************
//PUE26P34 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM26,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP00,DISP=SHR
//*
//ZMU002C1 DD DUMMY
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE26T00),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU002  --                                 *
//*        RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA GRUPO '01' *
//**********************************************************************
//PUE26P33 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM26,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP01,DISP=SHR
//*
//ZMU002C1 DD DUMMY
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE26T01),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU002  --                                 *
//*        RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA GRUPO '02' *
//**********************************************************************
//PUE26P32 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM26,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP02,DISP=SHR
//*
//ZMU002C1 DD DUMMY
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE26T02),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU002  --                                 *
//*        RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA GRUPO '03' *
//**********************************************************************
//PUE26P31 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM26,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP03,DISP=SHR
//*
//ZMU002C1 DD DUMMY
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE26T03),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU002  --                                 *
//*        RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA GRUPO '04' *
//**********************************************************************
//PUE26P30 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM26,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP04,DISP=SHR
//*
//ZMU002C1 DD DUMMY
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE26T04),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU002  --                                 *
//*        RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA GRUPO '05' *
//**********************************************************************
//PUE26P29 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM26,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP05,DISP=SHR
//*
//ZMU002C1 DD DUMMY
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE26T05),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU002  --                                 *
//*        RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA GRUPO '06' *
//**********************************************************************
//PUE26P28 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM26,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP06,DISP=SHR
//*
//ZMU002C1 DD DUMMY
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE26T06),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU002  --                                 *
//*        RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA GRUPO '07' *
//**********************************************************************
//PUE26P27 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM26,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP07,DISP=SHR
//*
//ZMU002C1 DD DUMMY
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE26T07),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU002  --                                 *
//*        RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA GRUPO '08' *
//**********************************************************************
//PUE26P26 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM26,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP08,DISP=SHR
//*
//ZMU002C1 DD DUMMY
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE26T08),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU002  --                                 *
//*        RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA GRUPO '09' *
//**********************************************************************
//PUE26P25 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM26,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP09,DISP=SHR
//*
//ZMU002C1 DD DUMMY
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE26T09),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU002  --                                 *
//*        RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA GRUPO '10' *
//**********************************************************************
//PUE26P24 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM26,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP10,DISP=SHR
//*
//ZMU002C1 DD DUMMY
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE26T10),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        GENERA ARCHIVO DE IMPRESION DE ESTADOS DE CUENTA            *
//**********************************************************************
//PUE26P23 EXEC PGM=ICEGENER,COND=(0,NE)                                00340000
//PI601765 DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00020000
//SYSOUT   DD SYSOUT=*                                                  00020000
//******************************************************************    00370000
//******   ESTADOS DE CUENTA PERSONAS FISICAS Y MORALES X GPI ******    00370000
//******************************************************************    00370000
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP00,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP00,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP01,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP01,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP02,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP02,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP03,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP03,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP04,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP04,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP05,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP05,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP06,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP06,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP07,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP07,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP08,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP08,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP09,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP09,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP10,DISP=SHR      00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP10,DISP=SHR      00390001
//*
//******************************************************************    00370000
//******   ESTADOS DE CUENTA PERSONAS FISICAS Y MORALES IMPR. ******    00370000
//******************************************************************    00370000
//*
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA.IMPRE(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(450,225),RLSE),
//            LRECL=201,RECFM=FBA,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//SYSIN    DD DUMMY                                                     00390001
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS FISICAS GRUPO '00'    *
//**********************************************************************
//PUE26P22 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP00,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,FI00),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS MORALES GRUPO '00'    *
//**********************************************************************
//PUE26P21 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP00,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,MO00),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS FISICAS GRUPO '01'    *
//**********************************************************************
//PUE26P20 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP01,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,FI01),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS MORALES GRUPO '01'    *
//**********************************************************************
//PUE26P19 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP01,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,MO01),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS FISICAS GRUPO '02'    *
//**********************************************************************
//PUE26P18 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP02,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,FI02),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS MORALES GRUPO '02'    *
//**********************************************************************
//PUE26P17 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP02,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,MO02),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS FISICAS GRUPO '03'    *
//**********************************************************************
//PUE26P16 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP03,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,FI03),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS MORALES GRUPO '03'    *
//**********************************************************************
//PUE26P15 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP03,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,MO03),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS FISICAS GRUPO '04'    *
//**********************************************************************
//PUE26P14 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP04,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,FI04),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS MORALES GRUPO '04'    *
//**********************************************************************
//PUE26P13 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP04,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,MO04),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS FISICAS GRUPO '05'    *
//**********************************************************************
//PUE26P12 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP05,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,FI05),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS MORALES GRUPO '05     *
//**********************************************************************
//PUE26P11 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP05,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,MO05),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS FISICAS GRUPO '06'    *
//**********************************************************************
//PUE26P10 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP06,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,FI06),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS MORALES GRUPO '06'    *
//**********************************************************************
//PUE26P09 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP06,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,MO06),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS FISICAS GRUPO '07'    *
//**********************************************************************
//PUE26P08 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP07,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,FI07),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS MORALES GRUPO '07'    *
//**********************************************************************
//PUE26P07 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP07,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,MO07),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS FISICAS GRUPO '08'    *
//**********************************************************************
//PUE26P06 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP08,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,FI08),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS MORALES GRUPO '08'    *
//**********************************************************************
//PUE26P05 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP08,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,MO08),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS FISICAS GRUPO '09'    *
//**********************************************************************
//PUE26P04 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP09,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,FI09),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS MORALES GRUPO '09'    *
//**********************************************************************
//PUE26P03 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP09,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,MO09),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS FISICAS GRUPO '10'    *
//**********************************************************************
//PUE26P02 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.IMP.GP10,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,FI10),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS MORALES GRUPO '10'    *
//**********************************************************************
//PUE26P01 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.IMP.GP10,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES
//SYSUT2   DD SYSOUT=(C,,MO10),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM26 SIVA MULTIEMPRESA                  *
//**********************************************************************
