//ZMJIPM13 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - SAT - APX.                                     *
//* PROCESO      : ZMJIPM13.                                           *
//* PERIODICIDAD : MENSUAL.                                            *
//* OBJETIVO     : ARCHIVOS DE MOVIMIENTOS PARA SAT - APX              *
//* REALIZO      : INDRA                                               *
//* FECHA        : JUNIO 2019.                                         *
//*-- -----------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSATA, ZM4MSAT1        *
//**********************************************************************
//ZJI13T06 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZJI13T06,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSATA.CSRFEC,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNM13DA),DISP=SHR         R
//*
//**********************************************************************
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *
//**********************************************************************
//ZJI13T05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSATAE1 DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSATA.CSRFEC,DISP=SHR
//*
//ZMSATAS1 DD DSN=MXCP.ZM.FIX.EMP.SAT.DG05.PARMS.CTL,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13PA),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA   : ZM3DG005                                              *
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *
//**********************************************************************
//ZJI13T04 EXEC PGM=ZM3DG005,COND=(4,LT)
//*
//E1DQ0001 DD DUMMY
//*
//E2DQ0002 DD DSN=MXCP.ZM.FIX.EMP.SAT.DG05.PARMS.CTL,
//            DISP=SHR
//*
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZMNM13D0),DISP=SHR
//         DD DSN=ZIVA.ZME.CONTROL(ZMNM13D1),DISP=SHR
//         DD DSN=ZIVA.ZME.CONTROL(ZMNM13D2),DISP=SHR
//         DD DSN=ZIVA.ZME.CONTROL(ZMNM13D3),DISP=SHR
//         DD DSN=ZIVA.ZME.CONTROL(ZMNM13D4),DISP=SHR
//         DD DSN=ZIVA.ZME.CONTROL(ZMNM13D5),DISP=SHR
//         DD DSN=ZIVA.ZME.CONTROL(ZMNM13D6),DISP=SHR
//         DD DSN=ZIVA.ZME.CONTROL(ZMNM13D7),DISP=SHR
//         DD DSN=ZIVA.ZME.CONTROL(ZMNM13D8),DISP=SHR
//         DD DSN=ZIVA.ZME.CONTROL(ZMNM13D9),DISP=SHR
//*
//S1DQ0001 DD DSN=MXCP.ZM.FIX.EMP.SAT.DG05.CONTROLS,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//**********************************************************************
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE HACE LA SEPARACION DE DESCARGAS.                   *
//**********************************************************************
//ZJI13T03 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EMP.SAT.DG05.CONTROLS,
//            DISP=SHR
//*
//OUT00    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT0.CONTROL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//OUT10    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT0.REPVIG,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//OUT20    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT0.REPINI,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//OUT01    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT1.CONTROL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//OUT11    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT1.INIPAG,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//OUT21    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT1.CARVAR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//OUT31    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT1.OPEIND,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//OUT02    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT2.CONTROL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//OUT03    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT3.CONTROL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//OUT04    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT4.CONTROL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//OUT05    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT5.CONTROL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//OUT06    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT6.CONTROL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//OUT07    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT7.CONTROL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//OUT08    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT8.CONTROL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//OUT09    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT9.CONTROL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNM13IA),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSAT0                  *
//**********************************************************************
//ZJI13TD0 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZJI13TD0,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT0.CSR,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT0.CONTROL,DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSAT0 (REPORTO VIG.)   *
//**********************************************************************
//ZJI13TE0 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZJI13TE0,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT0.CSRVIG,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT0.REPVIG,DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSAT0 (INI. REPORTO)   *
//**********************************************************************
//ZJI13TF0 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZJI13TF0,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT0.CSRINI,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT0.REPINI,DISP=SHR
//*
//**********************************************************************
//* PROGRAMA   : IKJEFT01/ZM4MSAT0                                     *
//* OBJETIVO   : OBTIENE ARCHIVO DE REPORTOS PARA SAT                  *
//**********************************************************************
//ZJI13TP0 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSAT0E1 DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT0.CSR,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT0.CSRVIG,DISP=SHR
//ZMSAT0F1 DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT0.CSRINI,DISP=SHR
//*
//ZMSAT0A1 DD DSN=MXCP.ZM.TMP.EBCM.SAT.REPORTO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=423,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMSAT0A2 DD DSN=MXCP.ZM.TMP.ECBP.SAT.REPORTO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=423,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13P0),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSAT1                  *
//**********************************************************************
//ZJI13TD1 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZJI13TD1,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT1.CSR,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT1.CONTROL,DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSAT1 (PAGARE VIG.)    *
//**********************************************************************
//ZJI13TE1 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZJI13TE1,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT1.CSRVIG,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT1.INIPAG,DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSAT1 (CARGOS VARIOS)  *
//**********************************************************************
//ZJI13TF1 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZJI13TF1,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT1.CSRMOV,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT1.CARVAR,DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSAT1 (MOVTOS INDIC)   *
//**********************************************************************
//ZJI13TG1 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZJI13TG1,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT1.CSRIND,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT1.OPEIND,DISP=SHR
//*
//**********************************************************************
//* PROGRAMA   : IKJEFT01/ZM4MSAT1                                     *
//* OBJETIVO   : OBTIENE ARCHIVO DE MOVIMIENTOS PAGARES, CEDES         *
//*              Y SALDOS LARGOS (ACREED) PARA SAT                     *
//**********************************************************************
//ZJI13TP1 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSAT1E1 DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT1.CSR,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT1.CSRVIG,DISP=SHR
//ZMSAT1F1 DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT1.CSRMOV,DISP=SHR
//ZMSAT1G1 DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT1.CSRIND,DISP=SHR
//ZMSAT1H1 DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSATA.CSRFEC,DISP=SHR
//*
//ZMSAT1A1 DD DSN=MXCP.ZM.TMP.EBCM.SAT.PAGARES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=423,BLKSIZE=0,DSORG=PS)
//ZMSAT1A2 DD DSN=MXCP.ZM.TMP.ECBP.SAT.SALLARGO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=423,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13P1),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSAT2                  *
//**********************************************************************
//ZJI13TD2 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZJI13TD2,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT2.CSR,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT2.CONTROL,DISP=SHR
//*
//**********************************************************************
//* PROGRAMA   : IKJEFT01/ZM4MSAT2                                     *
//* OBJETIVO   : OBTIENE ARCHIVO DE AMORTIZACIONES PARA SAT            *
//**********************************************************************
//ZJI13TP2 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSAT2E1 DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT2.CSR,DISP=SHR
//*
//ZMSAT2A1 DD DSN=MXCP.ZM.TMP.EBCM.SAT.AMORTIZA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=423,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMSAT2A2 DD DSN=MXCP.ZM.TMP.ECBP.SAT.AMORTIZA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=423,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13P2),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSAT3                  *
//**********************************************************************
//ZJI13TD3 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZJI13TD3,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT3.CSR,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT3.CONTROL,DISP=SHR
//*
//**********************************************************************
//* PROGRAMA   : IKJEFT01/ZM4MSAT3                                     *
//* OBJETIVO   : OBTIENE ARCHIVO DE CIERRE DEFINITIVO DIVID. EFECTIVO  *
//**********************************************************************
//ZJI13TP3 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSAT3E1 DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT3.CSR,DISP=SHR
//*
//ZMSAT3A1 DD DSN=MXCP.ZM.TMP.EFEDV.SAT.DEFINIT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=491,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13P3),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE PAGARES, CEDES PARA SAT  *
//**********************************************************************
//ZJI13TI3 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.EFEDV.SAT.DEFINIT,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.EFEDV.SAT.DEF.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=491,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNM1326),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSAT4                  *
//**********************************************************************
//ZJI13TD4 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZJI13TD4,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT4.CSR,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT4.CONTROL,DISP=SHR
//*
//**********************************************************************
//* PROGRAMA   : IKJEFT01/ZM4MSAT4                                     *
//* OBJETIVO   : OBTIENE ARCHIVO DE COMPRAS, VENTAS, RET., RECEP. MDD  *
//**********************************************************************
//ZJI13TP4 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSAT4E1 DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT4.CSR,DISP=SHR
//*
//ZMSAT4A1 DD DSN=MXCP.ZM.TMP.EBCM.SAT.CPAVTA.DIN,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=423,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMSAT4A2 DD DSN=MXCP.ZM.TMP.ECBP.SAT.CPAVTA.DIN,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=423,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13P4),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSAT5                  *
//**********************************************************************
//ZJI13TD5 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZJI13TD5,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT5.CSR,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT5.CONTROL,DISP=SHR
//*
//**********************************************************************
//* PROGRAMA   : IKJEFT01/ZM4MSAT5                                     *
//* OBJETIVO   : OBTIENE ARCHIVO DE CORTE DE CUPON Y PAGO DIV. DE MDC  *
//**********************************************************************
//ZJI13TP5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSAT5E1 DD DSN=MXCP.ZM.TMP.EFEDV.SAT.DEF.SRT,DISP=SHR
//ZMSAT5E2 DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT5.CSR,DISP=SHR
//*
//ZMSAT5A1 DD DSN=MXCP.ZM.TMP.EBCM.SAT.PAGODIV.CAP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=429,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMSAT5A2 DD DSN=MXCP.ZM.TMP.ECBP.SAT.PAGODIV.CAP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=429,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13P5),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSAT6                  *
//**********************************************************************
//ZJI13TD6 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZJI13TD6,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT6.CSR,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT6.CONTROL,DISP=SHR
//*
//**********************************************************************
//* PROGRAMA   : IKJEFT01/ZM4MSAT6                                     *
//* OBJETIVO   : OBTIENE ARCHIVO DE CORTE DE CUPON Y PAGO INT. DE MDC  *
//**********************************************************************
//ZJI13TP6 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSAT6E1 DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT6.CSR,DISP=SHR
//*
//ZMSAT6A1 DD DSN=MXCP.ZM.TMP.EBCM.SAT.CRTECUP.CAP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=423,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMSAT6A2 DD DSN=MXCP.ZM.TMP.ECBP.SAT.CRTECUP.CAP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=423,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13P6),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSAT7                  *
//**********************************************************************
//ZJI13TD7 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZJI13TD7,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT7.CSR,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT7.CONTROL,DISP=SHR
//*
//**********************************************************************
//* PROGRAMA   : IKJEFT01/ZM4MSAT7                                     *
//* OBJETIVO   : OBTIENE ARCHIVO DE COMPRAS, VENTAS (OBLIGACIONES) MDC *
//**********************************************************************
//ZJI13TP7 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSAT7E1 DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT7.CSR,DISP=SHR
//*
//ZMSAT7A1 DD DSN=MXCP.ZM.TMP.EBCM.SAT.CPAVTA.CAP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=423,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMSAT7A2 DD DSN=MXCP.ZM.TMP.ECBP.SAT.CPAVTA.CAP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=423,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13P7),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSAT8                  *
//**********************************************************************
//ZJI13TD8 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZJI13TD8,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT8.CSR,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT8.CONTROL,DISP=SHR
//*
//**********************************************************************
//* PROGRAMA   : IKJEFT01/ZM4MSAT8                                     *
//* OBJETIVO   : OBTIENE ARCHIVO DE ABONOS, CARGOS, RET, DEP, EFECTIVO *
//**********************************************************************
//ZJI13TP8 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSAT8E1 DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT8.CSR,DISP=SHR
//*
//ZMSAT8A1 DD DSN=MXCP.ZM.TMP.EBCM.SAT.CGOABO.EFE,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=423,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMSAT8A2 DD DSN=MXCP.ZM.TMP.ECBP.SAT.CGOABO.EFE,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=423,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13P8),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSAT9                  *
//**********************************************************************
//ZJI13TD9 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZJI13TD9,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT9.CSR,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT9.CONTROL,DISP=SHR
//*
//**********************************************************************
//* PROGRAMA   : IKJEFT01/ZM4MSAT9                                     *
//* OBJETIVO   : OBTIENE ARCHIVO DE ABONOS Y ABONOS DIVERSOS EFECTIVO  *
//**********************************************************************
//ZJI13TP9 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSAT9E1 DD DSN=MXCP.ZM.TMP.EMP.SAT.ZM4MSAT9.CSR,DISP=SHR
//*
//ZMSAT9A1 DD DSN=MXCP.ZM.TMP.EBCM.SAT.CGOABO.DVR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=423,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMSAT9A2 DD DSN=MXCP.ZM.TMP.ECBP.SAT.CGOABO.DVR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=423,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13P9),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//* DESCRIPCION: CONCATENA ARCHIVOS DE SIVA Y MUV DE MOVIMIENTOS (APX) *
//**********************************************************************
//ZJI13T02 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.EBCM.SAT.PAGARES,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECBP.SAT.SALLARGO,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EBCM.SAT.REPORTO,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECBP.SAT.REPORTO,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EBCM.SAT.AMORTIZA,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECBP.SAT.AMORTIZA,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EBCM.SAT.CPAVTA.DIN,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECBP.SAT.CPAVTA.DIN,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EBCM.SAT.CRTECUP.CAP,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECBP.SAT.CRTECUP.CAP,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EBCM.SAT.CPAVTA.CAP,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECBP.SAT.CPAVTA.CAP,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EBCM.SAT.CGOABO.EFE,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECBP.SAT.CGOABO.EFE,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.EBCM.SAT.CGOABO.DVR,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECBP.SAT.CGOABO.DVR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.APX.SAT.MOVTOS.FINAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=423,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNM1324),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//* DESCRIPCION: CONCATENA ARCHIVOS DE SIVA Y MUV DE DIVIDENDOS  (APX) *
//**********************************************************************
//ZJI13T01 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.EBCM.SAT.PAGODIV.CAP,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECBP.SAT.PAGODIV.CAP,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.APX.SAT.DIV.FINAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=429,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNM1325),DISP=SHR
//*
//**********************************************************************
//*                    TERMINA ZMJIPM13
//**********************************************************************
