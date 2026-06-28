//ZMPDPPB1 PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : ZM@ - ZIVA MULTIEMPRESA                              *
//* OBJETIVO    : REALIZA LA DESCARGA DE LA TABLA SECART (P04)         *
//* PERIODICIDAD: DIARIO                                               *
//* AUTOR       : AXITY MEXICO                                         *
//* FECHA       : DICIEMBRE                                            *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*  @MEX00-I  ......... ....... ..................................... *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO       : ZMPPB102.                                             *
//* UTILERIA   : ADUUMAIN.                                             *
//* OBJETIVO   : DESCARGA DE LA TABLA SECART.                          *
//*--------------------------------------------------------------------*
//ZMPPB102 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMPDPPB1,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCJDPPB1.DESCARGA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,100),RLSE),
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPPB102),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPPB101.                                             *
//* UTILERIA   : IKJEFT01/ZM4DPA01.                                    *
//* OBJETIVO   : BUSCA REG DE CUENTA EN ARCHIVO VSAM PARA ACT. CUENTA. *
//*--------------------------------------------------------------------*
//ZMPPB101 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.BCJDPPB1.DESCARGA,
//            DISP=SHR
//SALIDA01 DD DSN=MXCP.ZM.FIX.BCJDPPB1.PPCB,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(100,050),RLSE),
//            UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=230)
//*
//SALIDA02 DD DSN=MXCP.ZM.FIX.BCJDPPB1.PPB,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(100,050),RLSE),
//            UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=230)
//*
//SALIDA03 DD DSN=MXCP.ZM.FIX.BCJDPPB1.CONCIL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,050),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPPB101),DISP=SHR
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO ZMPPB101
//* REPORTE  : REPORTE OPER. CAPITALES VS LIQUIDACION
//**********************************************************************
//ZMPPB1D1 EXEC PGM=ICEGENER,COND=(0,NE,ZMPPB101)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.BCJDPPB1.CONCIL,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*        TERMINA PROCESO BCJDPPB1 SIVA MULTIEMPRESA                  *
//**********************************************************************
