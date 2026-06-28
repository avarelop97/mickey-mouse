//ZMJLPZ51 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  BANCA PATROMONIAL  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA MOVIMIENTOS   BANCA PATRIMONIAL             *
//*                                                                    *
//*   PROCESO   :  ZMJLPZ51                                            *
//*                                                                    *
//*   OBJETIVO  :  PROCESA MOVIMIENTOS  DE CASA DE BOLSA Y BANCA       *
//*                PATRIMONIAL (OPCION Z18).                           *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA  :  AGOSTO , 2012.                                         *
//*                                                                    *
//*   AUTOR  :  JOSE OSCAR SEGURA PEREZ.                               *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*                                                                    *
//**********************************************************************
//PJL51P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.ZMJLPZ51,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//*                                                                    *
//* PROGRAMA: ZM4EJ794                                                 *
//* FUNCION:  MOVIMIENTOS CASA DE BOLSA Y BANCA PATRIMONIAL.           *
//*                                                                    *
//**********************************************************************
//PJL51P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ARCIVA    DD DSN=MXCP.ZM.FIX.CARVAR.IVA,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(5,1),RLSE),
//             DCB=(DSORG=PS,BLKSIZE=0,LRECL=62,RECFM=FB)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL51T01),DISP=SHR
//*
