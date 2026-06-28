//ZMJEPA01 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMJEPA01.                                           *
//* OBJETIVO     : GENERA ARCHIVOS DE DATOS FATCA SIVA.                *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 28 DE ABRIL DE 2015.                                *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : PJA01P08.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA30.                                    *
//* OBJETIVO   : GENERA ARCHIVO CON DATOS FATCA DE PF Y COTITULARES.   *
//*--------------------------------------------------------------------*
//PJA01P08 EXEC PGM=IKJEFT01
//*
//ZMFA30A1 DD DSN=MXBP.SA.FIX.ECBP.FATCA.PF,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMFA30A2 DD DSN=MXCP.ZM.FIX.ECBP.LOGERR.PF,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA01P08),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA01P07.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA31.                                    *
//* OBJETIVO   : GENERA ARCHIVO CON DATOS FATCA DE PM.                 *
//*--------------------------------------------------------------------*
//PJA01P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFA31A1 DD DSN=MXBP.SA.FIX.ECBP.FATCA.PM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMFA31A2 DD DSN=MXCP.ZM.FIX.ECBP.LOGERR.PM,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA01P07),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA01P06.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA32.                                    *
//* OBJETIVO   : GENERA ARCHIVO CON DATOS FATCA DE CONTROLADORES.      *
//*--------------------------------------------------------------------*
//PJA01P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFA32A1 DD DSN=MXBP.SA.FIX.ECBP.FATCA.IC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMFA32A2 DD DSN=MXCP.ZM.FIX.ECBP.LOGERR.IC,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA01P06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA01P05.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA33.                                    *
//* OBJETIVO   : GENERA ARCHIVO CON DATOS FATCA DE CONTRATOS           *
//*              REPORTADOS.                                           *
//*--------------------------------------------------------------------*
//PJA01P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFA33A1 DD DSN=MXBP.SA.FIX.ECBP.FATCA.DC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMFA33A2 DD DSN=MXCP.ZM.FIX.ECBP.LOGERR.DC,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA01P05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA01P04.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA34.                                    *
//* OBJETIVO   : GENERA ARCHIVO FATCA BALACE DE CUENTAS S/SALDOS.      *
//*--------------------------------------------------------------------*
//PJA01P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFA34A1 DD DSN=MXBP.SA.FIX.ECBP.FATCA.BC.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMFA34A2 DD DSN=MXCP.ZM.FIX.ECBP.LOGERR.BC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMFA34A3 DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.FATCTOS,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA01P04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA01P03.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : SORT ARCHIVO BALANCE POR CUENTA.                      *
//*--------------------------------------------------------------------*
//PJA02P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXBP.SA.FIX.ECBP.FATCA.BC.A1,DISP=SHR
//SORTOUT  DD DSN=MXBP.SA.FIX.ECBP.FATCA.BC.S1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJA01P03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA01P02.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA37.                                    *
//* OBJETIVO   : GENERA ARCHIVO FATCA BALACE DE CUENTAS C/SALDOS.      *
//*--------------------------------------------------------------------*
//PJA01P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFA37A1 DD DSN=MXBP.SA.FIX.ECBP.FATCA.BC.S1,DISP=SHR
//ZMFA37A2 DD DSN=MXCP.ZM.FIX.SALDOS.FATCA,DISP=SHR
//ZMFA37A3 DD DSN=MXBP.SA.FIX.ECBP.FATCA.BC.DE,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA01P02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA02P01.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : SORT ARCHIVO BALANCE POR CLIENTE/CUENTA.              *
//*--------------------------------------------------------------------*
//PJA02P01 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXBP.SA.FIX.ECBP.FATCA.BC.DE,DISP=SHR
//SORTOUT  DD DSN=MXBP.SA.FIX.ECBP.FATCA.BC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJA01P01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMJEPA01                        *
//*--------------------------------------------------------------------*
//*
