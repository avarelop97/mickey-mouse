//ZMJLPE38 PROC EMP=,SUC=,INT1=,INT2=
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  BANCA PATROMONIAL  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA CARGOS VARIOS BANCA PATRIMONIAL             *
//*                                                                    *
//*   PROCEDIMI.:  ZMJLPE38                                            *
//*                                                                    *
//*   OBJETIVO  :  PROCESO DE UNICA VEZ   CARGOS VARIOS                *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA  :  MAYO  , 2006.                                          *
//*                                                                    *
//*   AUTOR  :  GETRONICS                                              *
//*                                                                    *
//*   MODIFICACIOES                                                    *
//*                                                                    *
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PJL38P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EBCM.S061.ZMJLPE38,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//* PROGRAMA: ZM4FJ001                                                 *
//* FUNCION:  APLICACION DE COMISIONES PARA CARGOS VARIOS              *
//**********************************************************************
//PJL38P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//****************** ARCHIVO DE MOVIMIENTOS FORMATEADO
//FACTORES DD DSN=C385141.FIX.CTESBCM,DISP=SHR
//****************** ARCHIVO DE MOVIMIENTOS REFORMATEADO
//ZMJF001R DD SYSOUT=*
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL38T01),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJLPE38 SIVA MULTIEMPRESA                  *
//**********************************************************************
