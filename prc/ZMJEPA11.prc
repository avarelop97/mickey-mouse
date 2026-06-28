//ZMJEPA11 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM CRS.                                             *
//* PROCESO      : ZMJEPA11.                                           *
//* OBJETIVO     : GENERA ARCHIVOS DE DATOS CRS SIVA.                  *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : MAYO DE 2017.                                       *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : PJA11P08.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA60.                                    *
//* OBJETIVO   : GENERA ARCHIVO CON DATOS CRS DE PF Y COTITULARES.     *
//*--------------------------------------------------------------------*
//PJA11P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFA60A1 DD DSN=MXBP.SA.FIX.CRS.SIVA.PF,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMFA60A2 DD DSN=MXCP.ZM.FIX.ECBP.LOGCRS.PF,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA11P08),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA11P07.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA61.                                    *
//* OBJETIVO   : GENERA ARCHIVO CON DATOS CRS DE PM.                   *
//*--------------------------------------------------------------------*
//PJA11P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFA61A1 DD DSN=MXBP.SA.FIX.CRS.SIVA.PM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMFA61A2 DD DSN=MXCP.ZM.FIX.ECBP.LOGCRS.PM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA11P07),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA11P06.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA62.                                    *
//* OBJETIVO   : GENERA ARCHIVO CON DATOS CRS DE CONTROLADORES.        *
//*--------------------------------------------------------------------*
//PJA11P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFA62A1 DD DSN=MXBP.SA.FIX.CRS.SIVA.IC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMFA62A2 DD DSN=MXCP.ZM.FIX.ECBP.LOGCRS.IC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA11P06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA11P05.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA63.                                    *
//* OBJETIVO   : GENERA ARCHIVO CON DATOS CRS DE CONTRATOS REPORTADOS  *
//*--------------------------------------------------------------------*
//PJA11P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFA63A1 DD DSN=MXBP.SA.FIX.CRS.SIVA.DC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMFA63A2 DD DSN=MXCP.ZM.FIX.ECBP.LOGCRS.DC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA11P05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA11P04.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA64.                                    *
//* OBJETIVO   : GENERA ARCHIVO CRS BALANCE DE CUENTAS S/SALDOS.       *
//*--------------------------------------------------------------------*
//PJA11P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFA64A1 DD DSN=MXBP.SA.FIX.CRS.SIVA.BC.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMFA64A2 DD DSN=MXCP.ZM.FIX.ECBP.LOGCRS.BC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMFA64A3 DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.CRSCTOS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=028,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA11P04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA11P03.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : SORT ARCHIVO BALANCE POR CUENTA.                      *
//*--------------------------------------------------------------------*
//PJA11P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXBP.SA.FIX.CRS.SIVA.BC.A1,DISP=SHR
//SORTOUT  DD DSN=MXBP.SA.FIX.CRS.SIVA.BC.S1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJA11P03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA11P02.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA37.                                    *
//* OBJETIVO   : GENERA ARCHIVO CRS BALANCE DE CUENTAS C/SALDOS.       *
//*--------------------------------------------------------------------*
//PJA11P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFA37A1 DD DSN=MXBP.SA.FIX.CRS.SIVA.BC.S1,DISP=SHR
//ZMFA37A2 DD DSN=MXCP.ZM.FIX.SALDOS.FATCA,DISP=SHR
//ZMFA37A3 DD DSN=MXBP.SA.FIX.CRS.SIVA.BC.DE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA11P02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA11P01.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : SORT ARCHIVO BALANCE POR CLIENTE/CUENTA.              *
//*--------------------------------------------------------------------*
//PJA11P01 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXBP.SA.FIX.CRS.SIVA.BC.DE,DISP=SHR
//SORTOUT  DD DSN=MXBP.SA.FIX.CRS.SIVA.BC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJA11P01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMJEPA11                        *
//*--------------------------------------------------------------------*
