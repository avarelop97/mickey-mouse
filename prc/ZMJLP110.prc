//ZMJLP110 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  BANCA PATROMONIAL  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA MOVIMIENTOS   BANCA PATRIMONIAL             *
//*                                                                    *
//*   PROCESO   :  ZMJLP110                                            *
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
//*   FECHA  :  MARZO , 2012.                                          *
//*                                                                    *
//*   AUTOR  :  JOSE OSCAR SEGURA PEREZ.                               *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*                                                                    *
//**********************************************************************
//PJL40P06 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.ZMJLP110,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//*                                                                    *
//* PROGRAMA: ZM4DJREP                                                 *
//* FUNCION:  MOVIMIENTOS CASA DE BOLSA Y BANCA PATRIMONIAL.           *
//*                                                                    *
//**********************************************************************
//*PJL40P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSPUNCH DD DUMMY
//*QRLSDB2  DD SYSOUT=*
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL10T10),DISP=SHR
//**
//**********************************************************************
//**                   -- ZM3MU030  --                                 *
//*        GENERA ACUSES DE RECIBO DE REPROCESO DE OCTUBRE             *
//**********************************************************************
//PJL40P05 EXEC PGM=ZM3MU030,COND=(4,LT)
//ZMU322E1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDOSCTA.ACUSE.G0127V00,DISP=SHR
//*
//ZMU322O1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEN.OCT1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMU322O2 DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEN.OCT2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=81,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//**********************************************************************
//* PROGRAMA: CONTROL-D                                                *
//* OBJETIVO: ENVIO A CONTROL-D                                        *
//**********************************************************************
//PJL40P04    EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEN.SEP1,DISP=SHR
//SYSUT2   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PROGRAMA: CONTROL-D                                                *
//* OBJETIVO: ENVIO A CONTROL-D                                        *
//**********************************************************************
//PJL40P03    EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEN.SEP2,DISP=SHR
//SYSUT2   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PROGRAMA: CONTROL-D                                                *
//* OBJETIVO: ENVIO A CONTROL-D                                        *
//**********************************************************************
//PJL40P02    EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEN.OCT1,DISP=SHR
//SYSUT2   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PROGRAMA: CONTROL-D                                                *
//* OBJETIVO: ENVIO A CONTROL-D                                        *
//**********************************************************************
//PJL40P01    EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEN.OCT2,DISP=SHR
//SYSUT2   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
