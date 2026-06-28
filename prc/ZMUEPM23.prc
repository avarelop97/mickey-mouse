//ZMUEPM23 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM23                                            *
//*                                                                    *
//*   OBJETIVO  :  IMPRESION DE CONSTANCIAS E.C. MUESTRAS PARA VO.BO.  *
//*                DE LA EMPRESA PROPORCIONADA                         *
//*                                                                    *
//*   CORRE ANTES DE  :  ZMUEPM24                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMUEPM22                                      *
//*                                                                    *
//*   PERIODICIDAD    :  ANUAL                                         *
//*                                                                    *
//**********************************************************************
//*
//*********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO
//*********************************************************************
//PUE23P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP',' ',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM23,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    -- ZM4VU002  --                                 *
//*        IMPRESION DE MUESTRA DE ESTADOS DE CUENTA PARA VO.BO.       *
//**********************************************************************
//PUE23P03 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM03,DISP=SHR
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA,DISP=SHR
//ZMU002C1 DD DUMMY
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.FIS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.MOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE23T01),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        IMPRESION EN SPOOL DE MUESTRA DE ESTADOS DE CUENTA FISICAS  *
//**********************************************************************
//PUE23P02 EXEC PGM=ICEGENER,COND=(0,NE)                                00340000
//SYSIN    DD DUMMY                                                     00350000
//SYSPRINT DD SYSOUT=*                                                  00360000
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES             00370000
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.FIS,DISP=SHR,          00390001
//         DCB=RECFM=FBA                                                00400000
//*        DISP=SHR,DCB=RECFM=FBA                                       00400000
//SYSUT2   DD SYSOUT=(V,,FISI),OUTPUT=*.OUTPUT1                         00380000
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        IMPRESION EN SPOOL DE MUESTRA DE ESTADOS DE CUENTA MORALES  *
//**********************************************************************
//PUE23P01 EXEC PGM=ICEGENER,COND=(0,NE)                                00340000
//SYSIN    DD DUMMY                                                     00350000
//SYSPRINT DD SYSOUT=*                                                  00360000
//OUTPUT1  OUTPUT FORMDEF=&FORMDEF,PAGEDEF=&PAGEDEF,TRC=YES             00370000
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.MOR,DISP=SHR,          00390001
//         DCB=RECFM=FBA                                                00400000
//*        DISP=SHR,DCB=RECFM=FBA                                       00400000
//SYSUT2   DD SYSOUT=(V,,MORA),OUTPUT=*.OUTPUT1                         00380000
//*                                                                     00330000
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM23 SIVA MULTIEMPRESA                  *
//**********************************************************************
