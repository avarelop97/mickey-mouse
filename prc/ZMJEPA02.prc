//ZMJEPA02 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMJEPA02.                                           *
//* OBJETIVO     : GENERA ARCHIVOS DE DATOS FATCA MUV.                 *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 28 DE ABRIL DE 2015.                                *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : PJA02P05.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA35.                                    *
//* OBJETIVO   : GENERA ARCHIVO CON DATOS FATCA DE CONTRATOS           *
//*              REPORTADOS.                                           *
//*--------------------------------------------------------------------*
//PJA02P05 EXEC PGM=IKJEFT01
//*
//ZMFA35A1 DD DSN=MXBP.SA.FIX.SAJRFT10.BP.DC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*ZMFA35A2 DD DSN=MBVP.PE.FIX.UNLOAD.PEDTFAT.DESCARG2,DISP=SHR
//*ZMFA35A3 DD DSN=MBVP.PE.FIX.UNLOAD.PEDTFAM.DESCARG1,DISP=SHR
//ZMFA35A2 DD DSN=MXBP.SA.FIX.FATCA.BO.FATCORTO.ZP,DISP=SHR
//ZMFA35A4 DD DSN=MXCP.ZM.FIX.SAJRFT10.LOGERR.DC,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA02P05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA02P04.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA36.                                    *
//* OBJETIVO   : GENERA ARCHIVO FATCA BALACE DE CUENTAS S/SALDOS.      *
//*--------------------------------------------------------------------*
//PJA02P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFA36A1 DD DSN=MXBP.SA.FIX.SAJRFT10.BP.BC.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*ZMFA36A2 DD DSN=MBVP.PE.FIX.UNLOAD.PEDTFAT.DESCARG2,DISP=SHR
//*ZMFA36A3 DD DSN=MBVP.PE.FIX.UNLOAD.PEDTFAM.DESCARG1,DISP=SHR
//ZMFA36A2 DD DSN=MXBP.SA.FIX.FATCA.BO.FATCORTO.ZP,DISP=SHR
//ZMFA36A4 DD DSN=MXCP.ZM.FIX.SAJRFT10.LOGERR.BC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//ZMFA36A5 DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.FATCTOS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=034,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA02P04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA02P03.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : SORT ARCHIVO BALANCE POR CUENTA.                      *
//*--------------------------------------------------------------------*
//PJA02P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXBP.SA.FIX.SAJRFT10.BP.BC.A1,DISP=SHR
//SORTOUT  DD DSN=MXBP.SA.FIX.SAJRFT10.BP.BC.S1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJA02P03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA02P02.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA37.                                    *
//* OBJETIVO   : GENERA ARCHIVO FATCA BALACE DE CUENTAS C/SALDOS.      *
//*--------------------------------------------------------------------*
//PJA02P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFA37A1 DD DSN=MXBP.SA.FIX.SAJRFT10.BP.BC.S1,DISP=SHR
//ZMFA37A2 DD DSN=MXCP.ZM.FIX.SALDOS.FATCA,DISP=SHR
//ZMFA37A3 DD DSN=MXBP.SA.FIX.SAJRFT10.BP.BC.DE,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA02P02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA02P01.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : SORT ARCHIVO BALANCE POR CLIENTE/CUENTA.              *
//*--------------------------------------------------------------------*
//PJA02P01 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXBP.SA.FIX.SAJRFT10.BP.BC.DE,DISP=SHR
//SORTOUT  DD DSN=MXBP.SA.FIX.SAJRFT10.BP.BC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJA02P01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMJEPA02                        *
//*--------------------------------------------------------------------*
