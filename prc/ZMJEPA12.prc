//ZMJEPA12 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM CRS.                                             *
//* PROCESO      : ZMJEPA12.                                           *
//* OBJETIVO     : GENERA ARCHIVOS DE DATOS CRS MUV.                   *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : MAYO DE 2017                                        *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : PJA12P05.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA65.                                    *
//* OBJETIVO   : GENERA ARCHIVO CON DATOS CRS DE CONTRATOS             *
//*              REPORTADOS.                                           *
//*--------------------------------------------------------------------*
//PJA12P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFA65A1 DD DSN=MXBP.SA.FIX.CRS.MUV.DC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//ZMFA65A2 DD DSN=MXBP.SA.FIX.CRS.BO.CRSCORTO.ZP,DISP=SHR
//ZMFA65A4 DD DSN=MXCP.ZM.FIX.SAJRFT10.LOGCRS.DC,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA12P05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA12P04.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA66.                                    *
//* OBJETIVO   : GENERA ARCHIVO CRS BALACE DE CUENTAS S/SALDOS.        *
//*--------------------------------------------------------------------*
//PJA12P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFA66A1 DD DSN=MXBP.SA.FIX.CRS.MUV.BC.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//ZMFA66A2 DD DSN=MXBP.SA.FIX.CRS.BO.CRSCORTO.ZP,DISP=SHR
//ZMFA66A4 DD DSN=MXCP.ZM.FIX.SAJRFT10.LOGCRS.BC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//ZMFA66A5 DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.CRSCTOS,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA12P04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA12P03.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : SORT ARCHIVO BALANCE POR CUENTA.                      *
//*--------------------------------------------------------------------*
//PJA12P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXBP.SA.FIX.CRS.MUV.BC.A1,DISP=SHR
//SORTOUT  DD DSN=MXBP.SA.FIX.CRS.MUV.BC.S1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJA12P03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA12P02.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA37.                                    *
//* OBJETIVO   : GENERA ARCHIVO CRS BALACE DE CUENTAS C/SALDOS.        *
//*--------------------------------------------------------------------*
//PJA12P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFA37A1 DD DSN=MXBP.SA.FIX.CRS.MUV.BC.S1,DISP=SHR
//ZMFA37A2 DD DSN=MXCP.ZM.FIX.SALDOS.FATCA,DISP=SHR
//ZMFA37A3 DD DSN=MXBP.SA.FIX.CRS.MUV.BC.DE,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA12P02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA12P01.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : SORT ARCHIVO BALANCE POR CLIENTE/CUENTA.              *
//*--------------------------------------------------------------------*
//PJA12P01 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXBP.SA.FIX.CRS.MUV.BC.DE,DISP=SHR
//SORTOUT  DD DSN=MXBP.SA.FIX.CRS.MUV.BC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJA12P01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMJEPA12                        *
//*--------------------------------------------------------------------*
