//ZMPPGD14 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - BCCMAI01.                                      *
//* PROCESO      : ZMPPGD14.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REPORTE DE ADMISIBILIDAD                            *
//* REALIZO      : FSW INDRA                                           *
//* FECHA        : 25 DE ENERO 2017.                                   *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*@INDRA-0117-I  INDRA   23FEB17 SE MODIFICA LA LONGITUD DEL ARCHIVO  *
//*@INDRA-0117-F                  DE SALIDA.                           *
//*@BBVA-01       BBVA    08OCT19 SE REALIZA REINGENIERIA DE REPORTE   *
//*                               PARA AGREGAR CAMPO DE RECOLOCADO     *
//*                               ADICIONAL SE REPORTAN SIMULACIONES DE*
//*                               RECOLOCADOS                          *
//*--------------------------------------------------------------------*
//* PASO       : ZPP14T95.                                             *
//* UTILERIA   : DESCARGA DE TABLA 834                                 *
//* OBJETIVO   : OBTIENE INFORMACION DE TABLA ZMDT834                  *
//*--------------------------------------------------------------------*
//ZPP14T95 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMPPGD14,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.UNLOAD.ZMPPG834.ADMIS,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(400,200),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=295,DSORG=PS)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//*
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP14T95),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP14T94.                                             *
//* UTILERIA   : DESCARGA DE TABLA 852                                 *
//* OBJETIVO   : OBTIENE INFORMACION DE TABLA ZMDT852                  *
//*--------------------------------------------------------------------*
//ZPP14T94 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMPPGD14,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.UNLOAD.ZMPPG852.ADMIS,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(400,200),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=295,DSORG=PS)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//*
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP14T94),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZPP14T93                                                 *
//* OBJETIVO: UNE ARCHIVO DE ZMDT834 - ZMDT852                         *
//*--------------------------------------------------------------------*
//ZPP14T93 EXEC PGM=ICEMAN,COND=(0,NE)
//SORTIN   DD DSN=MXCP.ZM.TMP.UNLOAD.ZMPPG834.ADMIS,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.UNLOAD.ZMPPG852.ADMIS,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.UNLOAD.ZMPPGUNI.ADMIS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=295,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP83030),DISP=SHR
//*@BBVA-01-F
//*--------------------------------------------------------------------*
//* PASO       : ZPP14T90.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG38                                     *
//* OBJETIVO   : REPORTE DE ADMISIBILIDAD TABLA ZMDT834-ZMDT852        *
//*--------------------------------------------------------------------*
//*
//ZPP14T90 EXEC PGM=IKJEFT01,COND=(4,LT)
//*@BBVA-01-I
//ENTRADA1 DD DSN=MXCP.ZM.TMP.UNLOAD.ZMPPGUNI.ADMIS,DISP=SHR
//*@BBVA-01-F
//*
//S1DQ0001 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG38.ADMISIB,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*@INDRA-0117-I
//*           DCB=(RECFM=FB,LRECL=251,BLKSIZE=0,DSORG=PS)
//*@BBVA-01-I
//*           DCB=(RECFM=FB,LRECL=260,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=271,BLKSIZE=0,DSORG=PS)
//*@BBVA-01-F
//*@INDRA-0117-F
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP14T01),DISP=SHR
//*
//**********************************************************************
//*                   FIN   ZMPPGD14                                   *
//**********************************************************************
