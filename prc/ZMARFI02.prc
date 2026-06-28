//ZMARFI02 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  FIDEICOMISOS       <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMARFI02                                            *
//*                                                                    *
//*   OBJETIVO  :  MARCAR LOS CONTRATOS MIGRADOS IASETMANAG DE LA      *
//*                LA TABLA ZMDT725.                                   *
//*                                                                    *
//**********************************************************************
//*                    -- ZM4DE007  --                                 *
//*   MARCAR CTOS MIGRADOS DE LA TABLA ZMDT725 (IASETMANAG)            *
//*                                                                    *
//**********************************************************************
//ZMARF100 EXEC PGM=IKJEFT01
//A02ENTRA DD DSN=MXCP.ZM.FIX.DESMAR.FIDMIG,DISP=SHR
//*
//S02SALID DD DSN=MXCP.ZM.FIX.ZM725.NOENCON,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=25,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMARF100),DISP=SHR
//SYSIN    DD DUMMY
//*
