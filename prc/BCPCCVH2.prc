//BCPCCVH2 PROC                                                         00010002
//********************************************************************
//* EJECUCION DE PROCESO A PETICION DE USUARIO                       *
//********************************************************************
//PHVH2P02 EXEC PGM=ZM3DG001,                                           00489727
//         PARM=('CBP','ZPR','CBPZPR','     ',)                         00489847
//*                                                                     00490000
//ZMG001A1 DD DSN=MXCP.ZM.FIX.MDC.CBP.ZPR.BCPCCVH2,                     00491038
//            DISP=(NEW,CATLG,DELETE),                                  00492000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00493000
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00494042
//*                                                                     00496000
//SYSTSPRT DD SYSOUT=*                                                  00497035
//SYSPRINT DD SYSOUT=*                                                  00498035
//SYSOUT   DD SYSOUT=*                                                  00499035
//SYSDBOUT DD SYSOUT=*                                                  00499135
//SYSABOUT DD DUMMY                                                     00499200
//SYSUDUMP DD DUMMY                                                     00499300
//*                                                                     00499400
//*--------------------------------------------------------------------*
//*         ZM4DH518 GENERA ARCHIVOS DE BLOQUES GPOS. 100 AL 107       *
//*                  CON LA OPERACION DE MDC                           *
//*--------------------------------------------------------------------*
//PHVH2P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH518A1 DD DSN=MXCP.ZM.FIX.MDC.CBP.ZPR.BCPCCVH2,DISP=SHR             02319638
//*
//ZMH518S1 DD DSN=MXCP.ZM.FIX.CBP.BLOQUE1,                              00571035
//         DISP=(NEW,CATLG,DELETE),                                     00555001
//         DCB=(LRECL=98,RECFM=FB,BLKSIZE=0,DSORG=PS),                  00555001
//         UNIT=3390,SPACE=(CYL,(50,100),RLSE)                          00555001
//*                                                                     00555001
//ZMH518S2 DD DSN=MXCP.ZM.FIX.CBP.BLOQUE2,                              00571035
//         DISP=(NEW,CATLG,DELETE),                                     00555001
//         DCB=(LRECL=98,RECFM=FB,BLKSIZE=0,DSORG=PS),                  00555001
//         UNIT=3390,SPACE=(CYL,(500,100),RLSE)                         00555001
//*                                                                     00555001
//ZMH518S3 DD DSN=MXCP.ZM.FIX.CBP.BLOQUE3,                              00571035
//         DISP=(NEW,CATLG,DELETE),                                     00555001
//         DCB=(LRECL=98,RECFM=FB,BLKSIZE=0,DSORG=PS),                  00555001
//         UNIT=3390,SPACE=(CYL,(50,100),RLSE)                          00555001
//*                                                                     00555001
//ZMH518S4 DD DSN=MXCP.ZM.FIX.CBP.BLOQUE4,                              00571035
//         DISP=(NEW,CATLG,DELETE),                                     00555001
//         DCB=(LRECL=98,RECFM=FB,BLKSIZE=0,DSORG=PS),                  00555001
//         UNIT=3390,SPACE=(CYL,(50,100),RLSE)                          00555001
//*                                                                     00555001
//ZMH518S5 DD DSN=MXCP.ZM.FIX.CBP.BLOQUE5,                              00571035
//         DISP=(NEW,CATLG,DELETE),                                     00555001
//         DCB=(LRECL=98,RECFM=FB,BLKSIZE=0,DSORG=PS),                  00555001
//         UNIT=3390,SPACE=(CYL,(50,100),RLSE)                          00555001
//*                                                                     00555001
//ZMH518S6 DD DSN=MXCP.ZM.FIX.CBP.BLOQUE6,                              00571035
//         DISP=(NEW,CATLG,DELETE),                                     00555001
//         DCB=(LRECL=98,RECFM=FB,BLKSIZE=0,DSORG=PS),                  00555001
//         UNIT=3390,SPACE=(CYL,(50,100),RLSE)                          00555001
//*                                                                     00555001
//ZMH518S7 DD DSN=MXCP.ZM.FIX.CBP.BLOQUE7,                              00571035
//         DISP=(NEW,CATLG,DELETE),                                     00555001
//         DCB=(LRECL=98,RECFM=FB,BLKSIZE=0,DSORG=PS),                  00555001
//         UNIT=3390,SPACE=(CYL,(50,100),RLSE)                          00555001
//*                                                                     00555001
//ZMH518S8 DD DSN=MXCP.ZM.FIX.CBP.BLOQUE8,                              00571035
//         DISP=(NEW,CATLG,DELETE),                                     00555001
//         DCB=(LRECL=98,RECFM=FB,BLKSIZE=0,DSORG=PS),                  00555001
//         UNIT=3390,SPACE=(CYL,(50,100),RLSE)                          00555001
//*                                                                     00555001
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(BCCTCVH2),DISP=SHR
//**********************************************************************
//*BCPCCVH2 EXEC PGM=IKJEFT01                                           01125500
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSPUNCH DD DUMMY
//*QRLSDB2  DD SYSOUT=*
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(BCCTCVH2),DISP=SHR                  01127700
//*                                                                     01127800
