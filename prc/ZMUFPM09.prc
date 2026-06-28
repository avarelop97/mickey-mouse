//ZMUFPM09 PROC
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*====================================================================*
//*====================================================================*
//* PASO     : ZUPM0901                                                *
//* PROGRAMA : IKJEFT01 - ZM4OU010                                     *
//* OBJETIVO : INSERTA DATOS FISCALES DE CUENTAS DE CASA DE BOLSA      *
//*            TABLA DE DATOS FISCALES ZMDT895                         *
//*====================================================================*
//ZUPM0901 EXEC PGM=IKJEFT01                                            01130000
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.CUENTA.DFISCAL,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUPM0901),DISP=SHR
//*
//**********************************************************************02322306
//* OBJETIVO : BORRA ARCHIVO DE CONTRATOS                              *02322406
//**********************************************************************02324006
//ZUPM0902 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//ARCHSA   DD DSN=MXCP.ZM.FIX.ECBP.CUENTA.DFISCAL,
//            DISP=(OLD,DELETE,DELETE)
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************02322306
//* OBJETIVO : BORRA ARCHIVO DE CONTRATOS                              *02322406
//**********************************************************************02324006
//ZUPM0903 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//ARCHSA   DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLCF01,
//            DISP=(OLD,DELETE,DELETE)
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
