//ZMJEPA15 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMJEPA15.                                           *
//* OBJETIVO     : GENERA ARCHIVO FATCA BCM PAGOS REPORTADOS.          *
//* FECHA        : OCTUBRE 2017                                        *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : PJA15P03.                                             *
//* UTILERIA   : ZM4DFA72                                              *
//* OBJETIVO   : GENERA ARCHIVO FATCA SAFATCPR. PAGOS REPORTADOS.      *
//*--------------------------------------------------------------------*
//PJA15P03 EXEC PGM=IKJEFT01
//*
//ZMFA82A1 DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.FATCTOS,DISP=SHR
//ZMFA82A2 DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.SFATCPR,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJA15P03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA15P02.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : SORT ARCHIVO POR CLIENTE/CUENTA.              *
//*--------------------------------------------------------------------*
//PJA15P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.SFATCPR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.SFATCPR.FS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=820,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJA15P02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJA15P01.                                             *
//* UTILERIA   : IEBGENER.                                             *
//* OBJETIVO   : REALIZA COPIA DE ARCHIVO DE PAGOS                     *
//*--------------------------------------------------------------------*
//PJA15P01    EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.EBCM.SALDOS.SFATCPR.FS,DISP=SHR
//SYSUT2   DD DSN=MXBP.SA.FIX.SAJRFT10.BP.PR,
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
//*                    FIN DEL PROCESO ZMJEPA15                        *
//*--------------------------------------------------------------------*
//*
