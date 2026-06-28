//ZMJFPD69 PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : ZM@ - ZIVA MULTIEMPRESA                              *
//* OBJETIVO    : DESCARGA OPERDIN Y GENERA EL ARC. FIORDERS Y FITRADES*
//*               PARA POSTERIORMENTE SER TRANSFERIDO A NICE           *
//* PERIODICIDAD: DIARIO                                               *
//* AUTOR       : AXITY MEXICO                                         *
//* FECHA       : SEPTIEMBRE DE 2019                                   *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZM069P90.                                             *
//* UTILERIA   : ADUUMAIN.                                             *
//* OBJETIVO   : DESCARGA INFORMACION PARA FITRADES Y FIORDERS         *
//*--------------------------------------------------------------------*
//ZM069P90 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMNICE69,NEW,,MSGLEVEL(1)'
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSREC1  DD DSN=MXCP.ZM.FIX.MDD.ZMP90SA1.BCJFCD69,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(BLKSIZE=0,RECFM=FB,DSORG=PS)
//*
//SYSREC2  DD DSN=MXCP.ZM.FIX.MDD.ZMP90SA2.BCJFCD69,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(BLKSIZE=0,RECFM=FB,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//SYSOUT   DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMC06990),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZM069P80                                                 *
//* OBJETIVO: PONE ENCABEZADO AL ARCHIVO FIORDERS                      *
//*--------------------------------------------------------------------*
//ZM069P80 EXEC PGM=ICEMAN,COND=(0,NE)
//SORTIN   DD DSN=MXCP.ZM.FIX.MDD.ZMP90SA1.BCJFCD69,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDD.FIORDERS.BCJFCD69,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(BLKSIZE=0,RECFM=VB,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMC06980),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZM069P70                                                 *
//* OBJETIVO: PONE ENCABEZADO AL ARCHIVO FITRADES                      *
//*--------------------------------------------------------------------*
//ZM069P70 EXEC PGM=ICEMAN,COND=(0,NE)
//SORTIN   DD DSN=MXCP.ZM.FIX.MDD.ZMP90SA2.BCJFCD69,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDD.FITRADES.BCJFCD69,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(BLKSIZE=0,RECFM=VB,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMC06970),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJFPD69 SIVA MULTIEMPRESA                  *
//**********************************************************************
