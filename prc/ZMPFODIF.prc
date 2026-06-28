//ZMPFODIF PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : VENTAS EN CORTO.                                    *
//* PROCESO      : ZMPFODIF.                                           *
//* PERIODICIDAD : A PETICION DEL USUARIO.                             *
//* OBJETIVO     : GENERA REPORTE FONDOS DIFO.   OPC. 17   TRX ZA1.    *
//* REALIZO      : MUV                                                 *
//* FECHA        : 10 DE NOVIEMBRE DE 2017.                            *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*                                                                    *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*---------------------------------------------------------------------
//*               BORRA ARCHIVO DE TRABAJO
//*---------------------------------------------------------------------
//ZMFODI10 EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   DSN=ZIVA.ZME.CONTROL(ZMFODI04),DISP=SHR
//*
//*---------------------------------------------------------------------
//*       REALIZA DESCARGA DE CUENTAS CONCENTRADORAS DIFO
//*---------------------------------------------------------------------
//ZMFODI08 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,UNDR1,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.FONDOS.DIFO.UNLO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BLKSIZE=0,RECFM=FB,
//            SPACE=(CYL,(50,25),RLSE)
//*
//SYSCNTL  DD DUMMY
//SYSTSIN  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMFODI03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMFODI07                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : CLASIFICA DESCARGA POR EMISORA Y SERIE                *
//*--------------------------------------------------------------------*
//ZMFODI07 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FONDOS.DIFO.UNLO,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FONDOS.DIFO.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=77,BLKSIZE=0,RECFM=FB)
//*
//QSRLSDB2 DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMFODI02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMFODI05                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : GENERA ARCHIVO CON TITULOS                            *
//*--------------------------------------------------------------------*
//ZMFODI05 EXEC PGM=ICETOOL,COND=(4,LT)
//*
//IN1      DD DSN=MXCP.ZM.FIX.FONDOS.DIFO.SRT,
//            DISP=SHR
//*
//OUT1     DD DSN=MXCP.ZM.FIX.FONDOS.DIFO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=77,BLKSIZE=0,RECFM=FB)
//*
//TOOLIN   DD DSN=ZIVA.ZME.CONTROL(ZMFODI01),DISP=SHR
//*
//LISTDD   DD SYSOUT=*
//TOOLMSG  DD SYSOUT=*
//DFSMSG   DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SORTDAIG DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//*                          ZMPFODIF
//*--------------------------------------------------------------------*
