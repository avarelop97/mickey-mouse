//ZMUFPM07 PROC
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*====================================================================*
//*====================================================================*
//* PASO     : ZUPM0701                                                *
//* PROGRAMA : IKJEFT01 - ZM4OU009                                     *
//* OBJETIVO : INSERTA REGISTRA DE ARCHIVO CONSOLIDADO DE PERSONAS EN  *
//*            TABLA DE DATOS FISCALES ZMDT895                         *
//*====================================================================*
//ZUPM0701 EXEC PGM=IKJEFT01                                            01130000
//*
//ENTRADA  DD DSN=MBVP.AJ.FIX.EBCM.CUENTA.COTTIT,DISP=SHR
//*
//SALIDA    DD DSN=MXCP.ZM.FIX.EBCM.CUENTA.COTTIT,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=0462,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(000144,10),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUPM0701),DISP=SHR
//*
