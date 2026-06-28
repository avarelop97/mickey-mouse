//ZMUEPM25 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM25                                            *
//*                                                                    *
//*   OBJETIVO  :  ACUSES DE RECIBO DE CONSTANCIAS DE E.C. PERSONAS    *
//*                FISICAS Y MORALES DE LA EMPRESA PROPORCIONADA       *
//*                                                                    *
//*   CORRE ANTES DE  :  ZMUEPM26                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMUEPM24                                      *
//*                                                                    *
//*   PERIODICIDAD    :  ANUAL                                         *
//*                                                                    *
//**********************************************************************
//*
//*********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO
//*********************************************************************
//PUE25P26 EXEC PGM=ZM3DG001,
//         PARM=('&EMP',' ',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM25,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    -- ZM4VU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '00' *
//**********************************************************************
//PUE25P25 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM25,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP00,DISP=SHR
//*
//ZMU320C1 DD DUMMY
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE25T00),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '01' *
//**********************************************************************
//PUE25P24 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM25,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP01,DISP=SHR
//*
//ZMU320C1 DD DUMMY
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE25T01),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '02' *
//**********************************************************************
//PUE25P23 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM25,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP02,DISP=SHR
//*
//ZMU320C1 DD DUMMY
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE25T02),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '03' *
//**********************************************************************
//PUE25P22 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM25,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP03,DISP=SHR
//*
//ZMU320C1 DD DUMMY
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE25T03),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '04' *
//**********************************************************************
//PUE25P21 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM25,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP04,DISP=SHR
//*
//ZMU320C1 DD DUMMY
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE25T04),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '05' *
//**********************************************************************
//PUE25P20 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM25,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP05,DISP=SHR
//*
//ZMU320C1 DD DUMMY
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE25T05),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '06' *
//**********************************************************************
//PUE25P19 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM25,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP06,DISP=SHR
//*
//ZMU320C1 DD DUMMY
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE25T06),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '07' *
//**********************************************************************
//PUE25P18 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM25,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP07,DISP=SHR
//*
//ZMU320C1 DD DUMMY
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE25T07),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '08' *
//**********************************************************************
//PUE25P17 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM25,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP08,DISP=SHR
//*
//ZMU320C1 DD DUMMY
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE25T08),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '09' *
//**********************************************************************
//PUE25P16 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM25,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP09,DISP=SHR
//*
//ZMU320C1 DD DUMMY
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE25T09),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4VU320  --                                 *
//*        GENERA ACUSES DE RECIBO DE ESTADOS DE CUENTA DEL GRUPO '10' *
//**********************************************************************
//PUE25P15 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU320A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM25,DISP=SHR
//ZMU320E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP10,DISP=SHR
//*
//ZMU320C1 DD DUMMY
//ZMU320AC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU320LS DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE25T10),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        GENERA ARCHIVO DE ACUSES DE RECIBO DE ESTADOS DE CUENTA     *
//**********************************************************************
//PUE25P14 EXEC PGM=ICEGENER,COND=(0,NE)                                00340000
//PI601765 DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00020000
//SYSOUT   DD SYSOUT=*                                                  00020000
//******************************************************************    00370000
//******   ACUSES DE RECIBO DE EDOS. CTA. PER. FIS Y MOR X GPI *****    00370000
//******************************************************************    00370000
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP00,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP01,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP02,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP03,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP04,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP05,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP06,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP07,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP08,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP09,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP10,DISP=SHR       00390001
//*
//******************************************************************    00370000
//******   ACUSES DE RECIBO  PERSONAS FISICAS Y MORALES X GPI ******    00370000
//******************************************************************    00370000
//*
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA.ACUSE(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(400,200),RLSE),
//            LRECL=081,RECFM=FBA,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//SYSIN    DD DUMMY                                                     00390001
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '00'     *
//**********************************************************************
//PUE25P13 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP00,DISP=SHR
//SYSUT2   DD SYSOUT=(V,,AC00),
//            DCB=(LRECL=081,RECFM=FBA,BLKSIZE=0)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '01'     *
//**********************************************************************
//PUE25P12 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP01,DISP=SHR
//SYSUT2   DD SYSOUT=(V,,AC01),
//            DCB=(LRECL=081,RECFM=FBA,BLKSIZE=0)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '02'     *
//**********************************************************************
//PUE25P11 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP02,DISP=SHR
//SYSUT2   DD SYSOUT=(V,,AC02),
//            DCB=(LRECL=081,RECFM=FBA,BLKSIZE=0)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '03'     *
//**********************************************************************
//PUE25P10 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP03,DISP=SHR
//SYSUT2   DD SYSOUT=(V,,AC03),
//            DCB=(LRECL=081,RECFM=FBA,BLKSIZE=0)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '04'     *
//**********************************************************************
//PUE25P09 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP04,DISP=SHR
//SYSUT2   DD SYSOUT=(V,,AC04),
//            DCB=(LRECL=081,RECFM=FBA,BLKSIZE=0)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '05'     *
//**********************************************************************
//PUE25P08 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP05,DISP=SHR
//SYSUT2   DD SYSOUT=(V,,AC05),
//            DCB=(LRECL=081,RECFM=FBA,BLKSIZE=0)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '06'     *
//**********************************************************************
//PUE25P07 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP06,DISP=SHR
//SYSUT2   DD SYSOUT=(V,,AC06),
//            DCB=(LRECL=081,RECFM=FBA,BLKSIZE=0)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '07'     *
//**********************************************************************
//PUE25P06 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP07,DISP=SHR
//SYSUT2   DD SYSOUT=(V,,AC07),
//            DCB=(LRECL=081,RECFM=FBA,BLKSIZE=0)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '08'     *
//**********************************************************************
//PUE25P05 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP08,DISP=SHR
//SYSUT2   DD SYSOUT=(V,,AC08),
//            DCB=(LRECL=081,RECFM=FBA,BLKSIZE=0)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '09'     *
//**********************************************************************
//PUE25P04 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP09,DISP=SHR
//SYSUT2   DD SYSOUT=(V,,AC09),
//            DCB=(LRECL=081,RECFM=FBA,BLKSIZE=0)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ACUSES DE RECIBO PERSONAS FIS/MOR GRUPO '10'     *
//**********************************************************************
//PUE25P03 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.ACU.GP10,DISP=SHR
//SYSUT2   DD SYSOUT=(V,,AC10),
//            DCB=(LRECL=081,RECFM=FBA,BLKSIZE=0)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        GENERA ARCHIVO DE LISTADOS DE ESTADOS DE CUENTA             *
//**********************************************************************
//PUE25P02 EXEC PGM=ICEGENER,COND=(0,NE)                                00340000
//PI601765 DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00020000
//SYSOUT   DD SYSOUT=*                                                  00020000
//******************************************************************    00370000
//******   LISTADO DE EDOS. CTA. PERS FISICAS Y MORALES X GPI ******    00370000
//******************************************************************    00370000
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP00,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP01,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP02,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP03,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP04,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP05,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP06,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP07,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP08,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP09,DISP=SHR       00390001
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISMOR.LST.GP10,DISP=SHR       00390001
//*
//******************************************************************    00370000
//******   LISTADO DE EDOS. CTA. PERS FISICAS Y MORALES       ******    00370000
//******************************************************************    00370000
//*
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA.LISTA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(400,200),RLSE),
//            LRECL=133,RECFM=FBA,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//SYSIN    DD DUMMY                                                     00390001
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        LISTADO DE ACUSES DE RECIBO PERS. FIS/MOR TODOS LOS GRUPOS  *
//**********************************************************************
//PUE25P01 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA.LISTA(+1),DISP=SHR
//SYSUT2   DD SYSOUT=(V,,LIST),
//            DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM25 SIVA MULTIEMPRESA                  *
//**********************************************************************
