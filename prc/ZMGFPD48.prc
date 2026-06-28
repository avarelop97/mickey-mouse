//ZMGFPD48 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        : SISTEMA INTEGRAL DE VALORES (S.I.V.A.)            *
//*                                                                    *
//* PROCESO        : CBGFND48                                          *
//*                  OPERACIONES INUSUALES                             *
//*                                                                    *
//* OBJETIVO       : CARGA INFORMACION A LA TABLA OPERINU              *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* CORRE                                                              *
//* DESPUES DE     : CBGFND47                                          *
//*                                                                    *
//* REALIZO        : FERNANDO CABALLERO ROMAN (ASATECK)                *
//*                                                                    *
//* FECHA          : OCTUBRE  2002                                     *
//*                                                                    *
//**********************************************************************
//* SUBPROCESO : (D) AL CIERRE DE OPERACIONES                          *
//*              - OPERACIONES INUSUALES                               *
//**********************************************************************
//*ACV*SIVA*PENDIENTE*HPC***********************************************
//**********************************************************************
//*                        RECIBE PARAMETROS
//**********************************************************************
//PGF48P02 EXEC PGM=ZM3DG001,PARM=('&EMP',' ',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGFPD48,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                          -- ZM4DGV38 --                            *
//*                                                                    *
//* OBJETIVO    :  GENERAR  EL ARCHIVO  REQUERIDO POR LA SHCP          *
//*                QUE DETALLE EN LAYOUT PRECISADO  TODAS LAS          *
//*                OPERACIONES  INUSUALES  DE  CASA DE  BOLSA          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 ***PROC. OPE.INUSUALES*
//**********************************************************************
//PGF47P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//ZMGV38A2 DD  DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGFPD48,
//         DISP=SHR
//*
//*ZMGV38A1 DD  DSN=MBVP.CB.FIX.VIBV40A.AROPIN
//ZMGV38A1 DD  DSN=SIVA.OTR.WKF.E.&EMP..ZMGV38A1,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(50,25),RLSE),
//             DCB=(DSORG=PS,LRECL=1313,BLKSIZE=0,RECFM=FB),
//             UNIT=3390
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZGF48T01),DISP=SHR
//**********************************************************************
