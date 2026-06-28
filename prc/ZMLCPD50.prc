//ZMLCPD50 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO.     *
//* PROCESO      : ZMLCPD50.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : GENERAR 4 ARCHIVOS DE INFORMACION PARA EL GESTOR DE *
//*                BONOS.                                              *
//*                                                                    *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 20 DE OCTUBRE DE 2014.                              *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-01 CAPGEMINI 10AGO15 SE AGREGA PASO PLC50P02.             *
//*--------------------------------------------------------------------*
//*
//*FS-1.1.0-01-INI
//*--------------------------------------------------------------------*
//* PASO       : PLC50P02.                                             *
//* UTILERIA   : IKJEFT01/ZM4DL023.                                    *
//* OBJETIVO   : EJECUTA PROGRAMA ZM4DL023.                            *
//*--------------------------------------------------------------------*
//PLC50P02 EXEC PGM=IKJEFT01
//*
//ZML023A1 DD DSN=MXCP.ZM.FIX.MDD.GDB.GPO785,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=080,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC50T02),DISP=SHR
//*
//*FS-1.1.0-01-FIN
//*--------------------------------------------------------------------*
//* PASO     : PLC50P01                                                *
//* PROGRAMA : IKJEFT01/ZM4DL021                                       *
//* OBJETIVO : PASO REINICIABLE.                                       *
//*--------------------------------------------------------------------*
//*FS-1.1.0-01-INI
//*PLC50P01 EXEC PGM=IKJEFT01
//PLC50P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*FS-1.1.0-01-FIN
//*
//ZML021A1 DD DSN=MXCP.ZM.FIX.MDD.GDB.AUT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=053,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//ZML021A2 DD DSN=MXCP.ZM.FIX.MDD.GDB.EMIS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=034,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//ZML021A3 DD DSN=MXCP.ZM.FIX.MDD.GDB.CTAS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=042,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//ZML021A4 DD DSN=MXCP.ZM.FIX.MDD.GDB.MANC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=075,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC50T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLC50P0A                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA DE USUARIO                         *
//*--------------------------------------------------------------------*
//PLC50P0A EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMLCPD50,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.LOAD.CBLCND50.USUARIO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,10),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC50T03),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     : PLC50P00                                                *
//* PROGRAMA : IKJEFT01/ZM4DL024                                       *
//* OBJETIVO : PASO REINICIABLE.                                       *
//*--------------------------------------------------------------------*
//PLC50P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZML024E1 DD DSN=MXCP.ZM.FIX.LOAD.CBLCND50.USUARIO,
//            DISP=SHR
//ZML024S1 DD DSN=MXCP.ZM.FIX.MDD.GDB.AUTO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=191,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC50T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLCPD50                        *
//*--------------------------------------------------------------------*
