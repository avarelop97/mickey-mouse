//ZMJCLO03 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO.     *
//* PROCESO      : ZMJCLO03.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERA LOS REPORTES DE GARANTIAS PPG Y PREPAID.     *
//* REALIZO      : CARLOS GLZ. - XMBB157.                              *
//* FECHA        : 10 DE SEPTIEMBRE DEL 2020.                          *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                               XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                                                                    *
//*--------------------------------------------------------------------*
//ZMRGP040 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=305)
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.CBJCLO02.REP.ENCAB,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(DSORG=PS,LRECL=305,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMRGP035                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE ORDENA POR NUMERO DE CREDITO, CUENTA, EMISORA Y    *
//*              SERIE DE (FONDOS NORMALES, FODOS DE FONDOS            *
//*              VALOR NORMAL) Y (FONDOS NORMALES, FODOS DE FONDOS     *
//*              VALOR HOY) PARA EL REPORTE DE GARANTIAS PREPAID.      *
//*--------------------------------------------------------------------*
//ZMRGP035 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=305)
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.CBJCLO03.REP.PREPAID.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,LRECL=305,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//SYSINT   DD DSN=ZIVA.ZME.CONTROL(ZMRGP030),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMRGP030                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE ORDENA POR CUENTA, EMISORA Y SERIE Y SE UNIFICAN   *
//*              LOS REGISTROS DE FONDOS NORMALES, FODOS DE FONDOS     *
//*              VALOR NORMAL Y FONDOS NORMALES, FODOS DE FONDOS VALOR *
//*              HOY PARA EL REPORTE DE GARANTIAS PPG.                 *
//*--------------------------------------------------------------------*
//ZMRGP030 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=305)
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.CBJCLO03.REP.PPG.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,LRECL=305,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//SYSINT   DD DSN=ZIVA.ZME.CONTROL(ZMRGP030),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMRGP025                                              *
//* UTILERIA   : IKJEFT01/ZM4MJ191                                     *
//* OBJETIVO   : COMPLEMENTA EL ARCHIVO DE GARANTIAS PREPAID CON LA    *
//*              INFORMACION DEL BLOQUEO.                              *
//*--------------------------------------------------------------------*
//ZMRGP025 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=305)
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.CBJCLO03.REP.PREPAID.MATCH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,LRECL=305,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRGPE20),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMRGP020                                              *
//* UTILERIA   : IKJEFT01/ZM4MJ191                                     *
//* OBJETIVO   : COMPLEMENTA EL ARCHIVO DE GARANTIAS PREPAID CON LA    *
//*              INFORMACION DEL BLOQUEO.                              *
//*--------------------------------------------------------------------*
//ZMRGP020 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=305)
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.CBJCLO03.REP.PPG.MATCH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,LRECL=305,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRGPE20),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMRGP015                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE FINALIZA EL REPORTE DE PREPAID.                    *
//*--------------------------------------------------------------------*
//ZMRGP015 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBJCLO02.REP.ENCAB,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.CBJCLO03.REP.PREPAID.MATCH,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBJCLO03.REPORTE.GTIAS.PREPAID,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,30),RLSE),
//            DCB=(RECFM=FB,LRECL=305,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRGP010),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMRGP010                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE FINALIZA EL REPORTE DE PPG.                        *
//*--------------------------------------------------------------------*
//ZMRGP010 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBJCLO02.REP.ENCAB,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.CBJCLO03.REP.PPG.MATCH,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBJCLO03.REPORTE.GTIAS.PPG,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,30),RLSE),
//            DCB=(RECFM=FB,LRECL=305,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRGP010),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     FIN PROCESO ZMJCLO03                           *
//*--------------------------------------------------------------------*
