//ZMUEPV01 PROC EMP=,SUC=,INT1=,INT2=
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPV01                                            *
//*                                                                    *
//*   OBJETIVO  :  RESPALDA GDG'S DE ESTADOS DE CUENTA DE CASA DE BOLSA*
//*                (PROCESO DE UNICA VEZ)                              *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    :  E(V)ENTUAL (UNICA VEZ)                        *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PUE01P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPV01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        RESPALDA GDGR    &INT2                                      *
//*        EN DISCO         'MXCP.ZM.TMP.ECT.E&EMP..EDOTEMP'           *
//**********************************************************************
//PUE01P02 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DISP=SHR,DSN=MXCP.ZM.GDGR.ECT.ECBP.EDOSCTA.G&INT2
//SYSUT2   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOTEMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        RESPALDA         'MXCP.ZM.TMP.ECT.E&EMP..EDOTEMP'           *
//*        EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDOSCTA(+1)'        *
//**********************************************************************
//PUE01P01 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOTEMP,DISP=SHR
//SYSUT2   DD  DSN=MXCP.ZM.GDGR.ECT.ECBP.EDOSCTA(+1),
//             DISP=(NEW,CATLG,DELETE),
//             LABEL=(1,SL,,,EXPDT=99000),
//             UNIT=FJVTPH,
//             DCB=(BKUD.MODEL,BLKSIZE=0,DSORG=PS,LRECL=258,RECFM=FBA)
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPV01 SIVA MULTIEMPRESA                  *
//**********************************************************************
