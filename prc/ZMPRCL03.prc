//ZMPRCL03 PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : ZM@ CASA DE BOLSA                                    *
//* DECRIPCION  : GENERA REPORTE DE RECLASIFICACION                    *
//* AUTOR       : FSW DGCM (XMZ8533).                                  *
//* FECHA       : 20 DE DICIEMBRE DE 2018.                             *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*   @MEX000   XXXXXXX  DDMMMAA ..................................... *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO       : ZMRCL397                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : REALIZA LA DESCARGA DE LAS TABLAS ZMDTPRC             *
//*--------------------------------------------------------------------*
//ZMRCL397 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMRCL397,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.F&FECHA..BCJRCL03.UNLOAD.ZMDTPRC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMRCL396                                              *
//* UTILERIA   : IKJEFT1A/ZM4RCL06                                     *
//* OBJETIVO   : REALIZA REPORTE DE RECLASIFICACION                    *
//*--------------------------------------------------------------------*
//ZMRCL396 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.F&FECHA..BCJRCL03.UNLOAD.ZMDTPRC,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.F&FECHA..BCJRCL03.REPORTE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=143,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRCL396),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//*             FIN DE PROCESO  ZMPRCL03                               *
//*--------------------------------------------------------------------*
