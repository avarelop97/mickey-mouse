//ZMJMUV02 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  BANCA PATROMONIAL  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA MOVIMIENTOS   BANCA PATRIMONIAL             *
//*                                                                    *
//*   PROCESO   :  ZMJMUV02                                            *
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
//*   FECHA  :  DICIEMBRE , 2014.                                      *
//*                                                                    *
//*   AUTOR  :  ERNESTO MANUEL CUAUTLE MARTINEZ.                       *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*                                                                    *
//**********************************************************************
//PJL40P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.SDI.ZMJMUV02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//*                                                                    *
//* PROGRAMA: ZM4MUV02                                                 *
//* FUNCION:  MOVIMIENTOS CASA DE BOLSA Y BANCA PATRIMONIAL.           *
//*                                                                    *
//**********************************************************************
//PJL40P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMDV02A1 DD DSN=MXCP.ZM.FIX.SDI.ZMJMUV02,DISP=SHR
//*
//ZMDV02A2 DD DSN=MXCP.ZM.FIX.SDI.REP.DET.OP.COMIS.IVA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZMDV02A3 DD DSN=MXCP.ZM.FIX.SDI.REP.GBL.CT.COMIS.IVA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=136,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPUNCH DD DUMMY
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJMUVT02),DISP=SHR
//*
