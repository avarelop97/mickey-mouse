//ZMUEPV16 PROC EMP=CBP
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPV16                                            *
//*                                                                    *
//*   OBJETIVO  :  IMPRESION DE ESTADOS DE CUENTA DE LA                *
//*                EMPRESA PROPORCIONADA                               *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL UNICA VEZ                            *
//*                                                                    *
//**********************************************************************
//*
//*********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO
//*********************************************************************
//PUE16P03 EXEC PGM=ZM3DG001,PARM=('&EMP',' ',' ',' ',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPV16,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    -- ZM3MU997  --                                 *
//*           RECORTA ARCHIVO PARA IMPRESION ESTADOS DE CUENTA         *
//**********************************************************************
//PUE16P02 EXEC PGM=ZM3MU997,COND=(0,NE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMU997E1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDOSCTA.DIGIT.G0053V00,
//            DISP=SHR
//ZMU997E2 DD DSN=MXCP.ZM.TMP.ECT.EDOSCTA.SEGBBVA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(50,10),RLSE)
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        ARCHIVO DE ESTADOS DE CUENTA PERSONAS FISICAS               *
//**********************************************************************
//PUE16P01 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.EDOSCTA.SEGBBVA,DISP=SHR
//OUTPUT1  OUTPUT FORMDEF=EDOBOL,PAGEDEF=EDOBOL,TRC=YES
//SYSUT2   DD SYSOUT=(C,,MOR),OUTPUT=*.OUTPUT1,LRECL=201,RECFM=FBA
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPV16 SIVA MULTIEMPRESA                  *
//**********************************************************************
