//ZMJCPZ07 PROC
//*
//*--------------------------------------------------------------------*
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                 <<  SOCIEDADES DE INVERSION   >>                   *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBJCPZ07 (SUBMITIDOR)                            *
//*                   ZMJCPZ07 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  GENERA EL ARCHIVO DE GARANTIAS PPG Y PREPAID     *
//*                   PARA SU RECLASIFICACION.                         *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBJLPC33 ZMLLPC33.                               *
//*                                                                    *
//* DESPUES DE     :  CBJCPZ08 ZMJCPZ08.                               *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO                                           *
//*                                                                    *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                               XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZM00P025                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE GARANTIAS PPG, TABLA ZMDT834.             *
//*--------------------------------------------------------------------*
//ZM00P025 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZM00P025,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBJCPZ07.ZMDT834,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZM00P025),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM00P020                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE GARANTIAS PPG, TABLA ZMDT852.             *
//*--------------------------------------------------------------------*
//ZM00P020 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZM00P020,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBJCPZ07.ZMDT852,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(30,20),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZM00P020),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM00P015                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE GARANTIAS PPG Y PREPAID, TABLA ZMDT701.   *
//*--------------------------------------------------------------------*
//ZM00P015 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZM00P015,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBJCPZ07.ZMDT701,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZM00P015),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM00P010                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE UNIFICAN LAS GARANTIAS PPG Y PREPAID, ORDENANDOLOS *
//*              POR ICUENTA, ICONCEPT, Y FECHA DE REGISTRO.           *
//*--------------------------------------------------------------------*
//ZM00P010 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBJCPZ07.ZMDT834,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.CBJCPZ07.ZMDT852,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.CBJCPZ07.ZMDT701,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBJCPZ07.GTIAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(85,40),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZM00P010),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     FIN PROCESO ZMJCPZ07                           *
//*--------------------------------------------------------------------*
