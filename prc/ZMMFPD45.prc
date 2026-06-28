//ZMMFPD45 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MUV MODULO UNICO DE VALORES ANTES SIVA.          *
//*                                                                    *
//* PROCESO        :  ZMMFPD45                                         *
//*                                                                    *
//* OBJETIVO       :  GENERACION DE INTERFASES PARA FIDEICOMISOS       *
//*                   DE MDC Y MDD                                     *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PFDFDD01, PFDFDD02                               *
//*                                                                    *
//* DESPUES DE     :  CBHCND09, BCHFND09                               *
//*                                                                    *
//* REALIZACION    :  MARCIAL JAIME ROSALES RUIZ     06/SEP/2006       *
//*                                                                    *
//* MODIFICACION   :                                 13/FEB/2007       *
//*                                                                    *
//* OBSERVACION    :  SE AGREGAN PASOS PARA NSF PARALELO Y SORT        *
//*                                                                    *
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-00  XM07729 31AGO18 SE GENERA PROCESO DE BLINDAJE E2E     *
//*                              PARA DEJAR PASAR TODOS LOS IOPERAS    *
//*                              DE FIDUCIARIO AL NUEVO ARCHIVO        *
//*                              MUVOPER                               *
//*--------------------------------------------------------------------*
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          === ZM3DG001 ===                          *
//*                                                                    *
//* OBJETIVO : RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO FIJO A 96 CHAR *
//*                                                                    *
//**********************************************************************
//PHF09PF3 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.MUV.E&EMP..ZMMFPD45,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*--------------------------------------------------------------------*
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSORES OPERA Y OPERITAS                      *
//*--------------------------------------------------------------------*
//PHF09P26 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PHF09P26,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.MUV.E&EMP..CRS994.OPE994,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHM45T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA PLAZO DE LA TABLA ZMDT610                      *
//*--------------------------------------------------------------------*
//PHF09P25 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PHF09P25,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.MUV.E&EMP..CRS994.PLZ994,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHM45T03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   EJECUCION DEL PROGRAMA:  ZM4DU994                                *
//*   GENERACION DE INTERFAZ PARA FIDEICOMISOS (MOVTOS).               *
//*--------------------------------------------------------------------*
//PHF09PF2 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU994A2 DD DSN=MXCP.ZM.FIX.MUV.E&EMP..CRS994.OPE994,DISP=SHR
//ZMU994A3 DD DSN=MXCP.ZM.FIX.MUV.E&EMP..CRS994.PLZ994,DISP=SHR
//ZMU994A1 DD DSN=MXCP.ZM.FIX.MUV.E&EMP..ZMMFPD45,DISP=SHR
//ZMU994A4 DD DSN=MXCP.ZM.FIX.MUV.E&EMP..ZM4DU994.FIDPAS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHM45T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ICEMAN        INTEGRAR ARCHIVOS DE 994 CAF2 Y CAF3       *
//*--------------------------------------------------------------------*
//PHF09PE8 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.E&EMP..ZM4DU994.FIDPAS,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.E&EMP..ZM4DU994.A.FIDEIN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF0CT07),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM3CCAF1      GENERA CONSECUTIVO DEL ARCHIVO             *
//*                         MXCP.ZM.FIX.MUV.E&EMP..ZM4DU905.A.FIDEIN *
//*--------------------------------------------------------------------*
//PHF09PE2 EXEC PGM=ZM3CCAF1,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//ZMUCAFA1 DD DSN=MXCP.ZM.FIX.MUV.E&EMP..ZM4DU994.A.FIDEIN,
//            DISP=SHR
//ZMUCAFA2 DD DSN=MXCP.ZM.FIX.MUV.E&EMP..ZM4DU994.FIDEIN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*--------------------------------------------------------------------*
//* PROGRAMA: ICEMAN                SORT                               *
//* OBJETIVO: SELECCIONA REGISTROS DE MOVTOS MERCADO DE CAPITALES      *
//*--------------------------------------------------------------------*
//PHF09PD9 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.E&EMP..ZM4DU994.FIDEIN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.MUV.E&EMP..ZM4DU994.FIDMDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T02),DISP=SHR
//*
//**********************************************************************
//* COPIA DEL ARCHIVO DE OPERACIONES DE CAPITALES PARA USO DE BPIGO    *
//*                                                                    *
//**********************************************************************
//PHF09PD8 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.WKF.MUV.E&EMP..ZM4DU994.FIDMDC,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.MUVOPERA.MDEC.MDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(50,25),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ICEMAN                SORT                               *
//* OBJETIVO: SELECCIONA REGISTROS DE MOVTOS MERCADO DE DINERO         *
//*--------------------------------------------------------------------*
//PHF09PD7 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.E&EMP..ZM4DU994.FIDEIN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.MUV.E&EMP..ZM4DU994.FIDMDD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T03),DISP=SHR
//*
//**********************************************************************
//* COPIA DEL ARCHIVO DE OPERACIONES DE DINERO PARA USO DE BPIGO       *
//*                                                                    *
//**********************************************************************
//PHF09PD6 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.WKF.MUV.E&EMP..ZM4DU994.FIDMDD,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.MUVOPERA.MDED.MDD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(50,25),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//*
//**********************************************************************
//*        F I N    D E    P R O C E S O    Z M M F P D 4 5            *
//**********************************************************************
