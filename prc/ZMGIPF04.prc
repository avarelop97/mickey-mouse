//ZMGIPF04 PROC
//*
//*--------------------------------------------------------------------*
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                 <<  SOCIEDADES DE INVERSION   >>                   *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  BCGIPF04 (SUBMITIDOR)                            *
//*                   ZMGIPF04 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  PROCESA CANJES, FUSION Y REASIGNACION, PREAVISOS *
//*                   Y DONACIONES.                                    *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  BCJICD07 ZMJIPD07                                *
//*                   BCJINM09 ZMJIPM09                                *
//*                   BCJFCD05 ZMJFPD05                                *
//*                   CBLIND23 ZMLIPD23                                *
//*                                                                    *
//* DESPUES DE     :  BCJICD02 ZMJICD02                                *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO                                           *
//*                                                                    *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                               XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PJI02P25                                              *
//* UTILERIA   : ZM3DG001                                              *
//* OBJETIVO   : RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN  *
//*              (SE EJECUTA TODOS LOS DIAS).                          *
//*--------------------------------------------------------------------*
//PJI02P25 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&FECHA','&CAL',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.E&EMP..ZMGIPF04,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//*                     FIN PROCESO ZMGIPC01                           *
//*--------------------------------------------------------------------*
