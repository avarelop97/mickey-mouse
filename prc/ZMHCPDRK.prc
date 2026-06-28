//ZMHCPDRK  PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  C A P I T A L E S >>                       *
//*                                                                    *
//*                                                                    *
//* SISTEMA        :  PRIVATE BANKING SIVA/MUV                         *
//*                                                                    *
//* PROCESO        :  BCHCNDRK                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  GENERAR INTERFASE CON LA CARTERA DE LOS CLIENTES *
//*                   DE RECORD KEEPING                                *
//* CORRE                                                              *
//* ANTES DE       :  XXXXXXXX                                         *
//*                                                                    *
//* DESPUES DE     :  XXXXXXXX                                         *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO                                           *
//*                                                                    *
//* ELABORADO POR  :  EMILIO ALBERTO GODINEZ CARMONA.                  *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*                                                                    *
//**********************************************************************
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE CARTERA DE CLIENTES DE ASSET MANAGEMENT   *
//*              ARCHIVO POSICION                                      *
//**********************************************************************
//PRK01P01 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PRK01P01,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK1.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF01RK1),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE CARTERA DE CLIENTES DE ASSET MANAGEMENT   *
//*              ARCHIVO REPORTOS                                      *
//**********************************************************************
//PRK01P02 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PRK01P02,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK2.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF01RK2),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE CARTERA DE CLIENTES DE ASSET MANAGEMENT   *
//*              ARCHIVO DEPRET                                        *
//**********************************************************************
//PRK01P03 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PRK01P03,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK3.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF01RK3),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE CARTERA DE CLIENTES DE ASSET MANAGEMENT   *
//*              ARCHIVO CCUPON                                        *
//**********************************************************************
//PRK01P04 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PRK01P04,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK4.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF01RK4),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE CARTERA DE CLIENTES DE ASSET MANAGEMENT   *
//*              ARCHIVO AMORTIZA                                      *
//**********************************************************************
//PRK01P05 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PRK01P05,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK5.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF01RK5),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE CARTERA DE CLIENTES DE ASSET MANAGEMENT   *
//*              ARCHIVO COMISION                                      *
//**********************************************************************
//PRK01P06 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PRK01P06,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK6.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF01RK6),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : UNION DE LOS ARCHIVOS DE POSICION ZHF01RK1 AL ZHF01RK6*
//*              DE LOS CLIENTES DE ASSET MANAGEMENT                   *
//**********************************************************************
//PRK01P07 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK2.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK3.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK4.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK5.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK6.F&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RKC.CONCAT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=42,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF01RKC),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE CARTERA DE CLIENTES DE ASSET MANAGEMENT   *
//*              TABLA PARAM                                           *
//**********************************************************************
//PRK01P08 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PRK01P08,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK7.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF01RK7),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE CARTERA DE CLIENTES DE ASSET MANAGEMENT   *
//*              FRESCO                                                *
//**********************************************************************
//PRK01P09 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PRK01P09,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK8.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF01RK8),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE CARTERA DE CLIENTES DE ASSET MANAGEMENT   *
//*              FRESCOBP                                              *
//**********************************************************************
//PRK01P10 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PRK01P10,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK9.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF01RK9),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE CARTERA DE CLIENTES DE ASSET MANAGEMENT   *
//*              FRESCOFD                                              *
//**********************************************************************
//PRK01P11 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PRK01P11,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RKA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF01RKA),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE CARTERA DE CLIENTES DE ASSET MANAGEMENT   *
//*              FRESCOMC                                              *
//**********************************************************************
//PRK01P12 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PRK01P12,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RKB.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF01RKB),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : UNION DE LOS ARCHIVOS DE POSICION ZHF01RK8 AL ZHF01RKA*
//*              DE LOS CLIENTES DE ASSET MANAGEMENT                   *
//**********************************************************************
//PRK01P13 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK8.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK9.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RKA.F&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RKE.CONCAT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=53,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF01RKE),DISP=SHR
//*
//**********************************************************************
//* PASO       : PRK01P14                                              *
//* UTILERIA   : IKJEFT1A(ZM4PRERK)                                    *
//* OBJETIVO   : GENERA ARCHIVOS DE CARTERA DE CLIENTES RECORD KEEPING *
//**********************************************************************
//PRK01P14 EXEC PGM=IKJEFT01,PARM=(LIST,MAP),COND=(4,LT)
//ZMH012A1  DD DUMMY
//*
//POSIRKE1 DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RKC.CONCAT.F&FECHA,DISP=SHR
//*
//POSIRKE2 DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK1.F&FECHA,DISP=SHR
//*
//POSIRKE3 DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RKE.CONCAT.F&FECHA,DISP=SHR
//*
//POSIRKE4 DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RK7.F&FECHA,DISP=SHR
//*
//POSIRKE5 DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RKB.F&FECHA,DISP=SHR
//*
//POSIRKS1 DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RKD.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=70,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF01RKD),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : UNION DE LOS ARCHIVOS DE POSICION ZHF01RK8 AL ZHF01RKA*
//*              DE LOS CLIENTES DE ASSET MANAGEMENT                   *
//**********************************************************************
//PRK01P15 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RKD.F&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RKD.SORTED.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=70,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF01RKF),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PRK01P04                                              *
//* UTILERIA   : IKJEFT1A(ZM3RERK1)                                    *
//* OBJETIVO   : GENERA ARCHIVOS DE CARTERA DE CLIENTES RECORD KEEPING *
//*--------------------------------------------------------------------*
//PRK01P16 EXEC PGM=ZM3RERK1,PARM=(LIST,MAP),COND=(4,LT)
//ZMH012A1  DD DUMMY
//*
//RECORDKP DD DSN=MXCP.ZM.FIX.POSIRK.ZHF01RKD.SORTED.F&FECHA,DISP=SHR
//*
//POSIRK01 DD DSN=MXCP.ZM.FIX.POSIRK.RECKEEPA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//POSIRK02 DD DSN=MXCP.ZM.FIX.POSIRK.RECSUM.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=52,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF01RK4),DISP=SHR
//*
//**********************************************************************
