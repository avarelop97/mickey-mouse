//ZMDEFI01 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  FIDEICOMISOS       <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMDEFI01                                            *
//*                                                                    *
//*   OBJETIVO  :  DESMARCA LOS CONTRATOS MIGRADOS IASETMANAG DE LA    *
//*                LA TABLA ZMDT725.                                   *
//*                                                                    *
//**********************************************************************
//*                    -- ZM4DE006  --                                 *
//* DESMARCA CTOS MIGRADOS DE LA TABLA ZMDT725 (IASETMANAG)            *
//*                                                                    *
//**********************************************************************
//ZMDEF100 EXEC PGM=IKJEFT01
//A02ENTRA DD DSN=MXCP.ZM.FIX.DATCOM.BP,DISP=SHR
//*
//S02SALID DD DSN=MXCP.ZM.FIX.DESMAR.FIDMIG,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=25,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*
//S03SALID DD DSN=MXCP.ZM.FIX.CTOSIN.DESMAR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=25,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*
//S04SALID DD DSN=MXCP.ZM.FIX.CTONO.ENCONT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=25,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDEF100),DISP=SHR
//SYSIN    DD DUMMY
//*
