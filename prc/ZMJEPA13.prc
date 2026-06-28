//ZMJEPA13 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMJEPA13.                                           *
//* OBJETIVO     : GENERA ARCHIVO FATCA CBP PAGOS REPORTADOS.          *
//* FECHA        : OCT. 2017                                           *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : PJA12P02.                                             *
//* PROGRAMA   : ZM4DFA71                                              *
//* OBJETIVO   : GENERA ARCHIVO FATCA SAFATCPR. PAGOS REPORTADOS.      *
//*--------------------------------------------------------------------*
//PJA13P03 EXEC PGM=IKJEFT01
//*
//ZMFA81A1 DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.FATCTOS,DISP=SHR
//ZMFA81A2 DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.SFATCPR,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA13P03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA13P02.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : SORT ARCHIVO  POR CLIENTE/CUENTA.                     *
//*--------------------------------------------------------------------*
//PJA13P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.SFATCPR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.SFATCPR.FS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJA13P02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA13P01.                                             *
//* UTILERIA   : IEBGENER.                                             *
//* OBJETIVO   : REALIZA COPIA DE ARCHIVO DE PAGOS                     *
//*--------------------------------------------------------------------*
//PJA13P01    EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.SFATCPR.FS,DISP=SHR
//SYSUT2   DD DSN=MXBP.SA.FIX.ECBP.FATCA.PR,
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
//*                    FIN DEL PROCESO ZMJEPA13                        *
//*--------------------------------------------------------------------*
//*
