//ZMPLOPER PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM CONCENTRADO DE OPERACIONES. REPORTES.            *
//* PROCESO      : ZMPLOPER.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : GENERACION DE REPORTE DE CONCENTRADO DE OPERACIONES.*
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 05 DE JUNIO DE 2017.                                *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO     : MZMPE001.                                               *
//* UTILERIA : ADUUMAIN.                                               *
//* OBJETIVO : GENERAR LA DESCARGA DE LA TABLA OPERASI POR DIA DE OPER *
//*--------------------------------------------------------------------*
//MZMPE001 EXEC  PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,CBJLOPER_UN_MOD,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.F&FECHA..OPERASI.UNLD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(400,200),RLSE),BUFNO=30,
//            DCB=(RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : MZMPE002.                                               *
//* UTILERIA : IKJEFT01 / ZM4DOPER.                                    *
//* OBJETIVO : LLAMADO AL PROGRAMA ZM4DOPER. GENERACION DE REPORTES    *
//*            COVAF Y SIVA.                                           *
//*--------------------------------------------------------------------*
//MZMPE002 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQOP01 DD DSN=MXCP.ZM.FIX.F&FECHA..OPERASI.UNLD,DISP=SHR
//*
//S1DQOP01 DD DSN=MXCP.ZM.FIX.F&FECHA..RPRTS.CVFSV1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//*           DCB=(LRECL=275,RECFM=FB,BLKSIZE=0,DSORG=PS)
//            DCB=(LRECL=290,RECFM=FB,BLKSIZE=0,DSORG=PS)
//S2DQOP02 DD DSN=MXCP.ZM.FIX.F&FECHA..RPRTS.CVFSV2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(LRECL=120,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(MZMPE002),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMPLOPER                        *
//*--------------------------------------------------------------------*
