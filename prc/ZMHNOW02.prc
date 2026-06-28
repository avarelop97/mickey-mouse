//ZMHNOW02  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMHNOW02                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* GENERACION DE ARCHIVO PLANO CON NOTAS Y WARRANTS ENVIADOS A GLOMO -*
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : PNW02P01                                                 *00240002
//* UTIL/PGM: ZM3WAR05                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//PNW02P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//*
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZNWO2P01),DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM3WAR03.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSCNTL  DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZNWO2P02),DISP=SHR
//*====================================================================*
//* PASO     : PGI21P02                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE INFORMACION PARA DEMANDAS                   *
//*====================================================================*
//PNW02P02 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PNW02P01,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESZM606,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSCNTL  DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZM3WAR03.CTC,DISP=SHR
//*
//**********************************************************************
//* PASO     : PNW02P03                                                *
//* UTIL/PGM : ZM4NOW02                                                *00240002
//* OBJETIVO   : GENERA ARCHIVO CON INFORMACION DE WARRANTS Y NOTAS ES-*
//*              TRUCTURADAS ENVIADOS A GLOMO(ZMDT606)                 *
//**********************************************************************
//PNW02P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1ZMFINW DD DSN=MXCP.ZM.FIX.DESZM606,DISP=SHR
//*
//S1SALIDA DD DSN=MXCP.ZM.FIX.DESZM606.GLOMO.REP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=205,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZNWO2P03),DISP=SHR                   00512608
//*
//**********************************************************************
//*PASO     : PNW02P04                                                 *
//*UTIL/PGM : ICEMAN                                                   *
//*          ORDENAMIENTO POR SUCURSAL,PROMOTOR Y CUENTA               *
//**********************************************************************
//PNW02P04 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.DESZM606,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.DESZM606.ORD,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=247,RECFM=FB,BLKSIZE=0,DSORG=PS),
//         UNIT=3390,SPACE=(CYL,(80,40),RLSE)
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZNWO2P04),DISP=SHR
//**********************************************************************
//* PASO     : PNW02P05                                                *
//* UTIL/PGM : ZM4NOW04                                                *00240002
//* OBJETIVO   : GENERA REPORTE CONTROL-D                              *
//**********************************************************************
//PNW02P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E2ZMFINW DD DSN=MXCP.ZM.FIX.DESZM606.ORD,DISP=SHR
//*
//S2SALIDA DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*S2SALIDA DD DSN=MXCP.ZM.FIX.DESZM606.GLOMO.CTD,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(200,100),RLSE),
//*            DCB=(RECFM=FB,LRECL=123,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZNWO2P05),DISP=SHR                   00512608
//*
//**********************************************************************
//*                     F I N    Z M H N O W 0 2                       *
//**********************************************************************
