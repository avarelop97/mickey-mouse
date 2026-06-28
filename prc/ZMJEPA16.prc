//ZMJEPA16 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM CRS                                              *
//* PROCESO      : ZMJEPA16.                                           *
//* OBJETIVO     : GENERA ARCHIVO CRS BCM PAGOS REPORTADOS.            *
//* FECHA        : OCTUBRE 2017                                        *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : PJA16P03. ZM4DFA74                                    *
//* OBJETIVO   : GENERA ARCHIVO CRS SACRSCPR. PAGOS REPORTADOS.        *
//*--------------------------------------------------------------------*
//PJA16P03 EXEC PGM=IKJEFT01
//*
//ZMFA84A1 DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.CRSCTOS,DISP=SHR
//ZMFA84A2 DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.SCRSCPR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA16P03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA16P02.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : SORT ARCHIVO POR CLIENTE/CUENTA.              *
//*--------------------------------------------------------------------*
//PJA16P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.SCRSCPR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.SCRSCPR.FS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJA16P02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA16P01.                                             *
//* UTILERIA   : IEBGENER.                                             *
//* OBJETIVO   : REALIZA COPIA DE ARCHIVO DE PAGOS                     *
//*--------------------------------------------------------------------*
//PJA16P01    EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.SCRSCPR.FS,DISP=SHR
//SYSUT2   DD DSN=MXBP.SA.FIX.CRS.MUV.PR,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMJEPA16                        *
//*--------------------------------------------------------------------*
//*
