//ZMSITI01  PROC
//*====================================================================*
//* COMPANIA    : BBVA                                                 *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : ZMSITI01                                             *
//*____________________________________________________________________*
//*                                                                    *
//* AUTOR       : INDRA                                                *
//* FECHA       : 21 DE OCTUBRE DEL 2021                               *
//*____________________________________________________________________*
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* GENERAR REPORTES DE ASIGNACION Y DE ORDENES SITI-SIVA              *
//*                                                                    *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*  JGF01       XME1788 190422   SE CAMBIA LA CONDICION EN EL OMIT    *
//*                               PARA INTEGRAR LOS SOBRANTES  PSITI006*
//*====================================================================*
//* PASO     : PSITI009                                                *
//* PROGRAMA : IKJEFT01/ZM4CBSIA                                       *
//* OBJETIVO : REPORTE ASIGNACIONES(SITI)                              *
//*====================================================================*
//PSITI009 EXEC PGM=IKJEFT01
//*
//ASIGNAC  DD DSN=MXCP.ZM.FIX.REPSITI.ASIGNACA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=1594,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1000,1000),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHSITI08),DISP=SHR
//*
//*====================================================================*
//* PASO     : PSITI008                                                *
//* PROGRAMA : ICEMAN                                                  *
//* OBJETIVO : JOIN CODIGO POSTAL                                      *
//*====================================================================*
//PSITI008 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//FILE1    DD DISP=SHR,DSN=MXCP.ZM.GDGD.LOCALD.CATAL(0)
//FILE2    DD DISP=SHR,DSN=MXCP.ZM.FIX.REPSITI.ASIGNACA.F&FECHA
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPSITI.ASIGNACB.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1000,1000),RLSE),
//            DCB=(RECFM=FB,LRECL=1578,DSORG=PS,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHSITI07),DISP=SHR
//*
//*====================================================================*
//* PASO     : PSITI007                                                *
//* PROGRAMA : ICEMAN                                                  *
//* OBJETIVO : ALINEAR EL ARCHIVO A LA IZQUIERDA                       *
//*====================================================================*
//PSITI007 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DISP=SHR,DSN=MXCP.ZM.FIX.REPSITI.ASIGNACB.F&FECHA
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPSITI.ASIGNACC.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1000,1000),RLSE),
//            DCB=(RECFM=FB,LRECL=1578,DSORG=PS,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHSITI06),DISP=SHR
//*
//*====================================================================*
//* PASO     : PSITI006                                                *
//* PROGRAMA : ICEMAN                                                  *
//* OBJETIVO : -- SE QUITA -- OMIT DE SOBRANTES EN EL CAMPO DE FOLIOGL-*
//*          : SE CAMBIA CONDICION DEL OMIT PARA INTEGRAR LOS SOBRANTES*
//*====================================================================*
//PSITI006 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DISP=SHR,DSN=MXCP.ZM.FIX.REPSITI.ASIGNACC.F&FECHA
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPSITI.ASIGNACD.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1000,1000),RLSE),
//            DCB=(RECFM=FB,LRECL=1578,DSORG=PS,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//*
//*JGF01-INI
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHSITI00),DISP=SHR
//*JGF01-FIN
//*
//*====================================================================*
//* PASO     : PSITI005                                                *
//* PROGRAMA : ICEMAN                                                  *
//* OBJETIVO : FORMATEA EL ARCHIVO PARA EL PORTAL CNBV                 *
//*====================================================================*
//PSITI005 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DISP=SHR,DSN=MXCP.ZM.FIX.REPSITI.ASIGNACD.F&FECHA
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPSITI.ASIGNACE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1000,1000),RLSE),
//            DCB=(RECFM=FB,LRECL=1578,DSORG=PS,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHSITI05),DISP=SHR
//*
//*====================================================================*
//* PASO     : PSITI004                                                *
//* PROGRAMA : IKJEFT01/ZM4CBSIO                                       *
//* OBJETIVO : REPORTE ORDENES(SITI)                                   *
//*====================================================================*
//PSITI004 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ORDENES  DD DSN=MXCP.ZM.FIX.REPSITI.ORDENESA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=0805,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(500,500),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHSITI04),DISP=SHR
//*
//*====================================================================*
//* PASO     : PSITI003                                                *
//* PROGRAMA : ICEMAN                                                  *
//* OBJETIVO : JOIN CODIGO POSTAL                                      *
//*====================================================================*
//PSITI003 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//FILE1    DD DISP=SHR,DSN=MXCP.ZM.GDGD.LOCALD.CATAL(0)
//FILE2    DD DISP=SHR,DSN=MXCP.ZM.FIX.REPSITI.ORDENESA.F&FECHA
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPSITI.ORDENESB.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,500),RLSE),
//            DCB=(RECFM=FB,LRECL=0790,DSORG=PS,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHSITI03),DISP=SHR
//*
//*====================================================================*
//* PASO     : PSITI002                                                *
//* PROGRAMA : ICEMAN                                                  *
//* OBJETIVO : ALINEAR EL ARCHIVO A LA IZQUIERDA                       *
//*====================================================================*
//PSITI002 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DISP=SHR,DSN=MXCP.ZM.FIX.REPSITI.ORDENESB.F&FECHA
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPSITI.ORDENESC.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,500),RLSE),
//            DCB=(RECFM=FB,LRECL=0790,DSORG=PS,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHSITI02),DISP=SHR
//*
//*====================================================================*
//* PASO     : PSITI001                                                *
//* PROGRAMA : ICEMAN                                                  *
//* OBJETIVO : FORMATEA EL ARCHIVO PARA EL PORTAL CNBV                 *
//*====================================================================*
//PSITI001 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DISP=SHR,DSN=MXCP.ZM.FIX.REPSITI.ORDENESC.F&FECHA
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPSITI.ORDENESD.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,500),RLSE),
//            DCB=(RECFM=FB,LRECL=0790,DSORG=PS,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHSITI01),DISP=SHR
//*
//*
//*====================================================================*
//* PASO     : PSITI000                                                *
//* PROGRAMA : IKJEFT01/ZM4CBSIO                                       *
//* OBJETIVO : GENERAR LA TARJETA DE ENVIO PARA LOS REPORTES SITI      *
//*====================================================================*
//*--------------------------------------------------------------------*
//PSITI009 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFSITIA DD DSN=MXCP.ZM.FIX.SITI.ZM4SIT01.TARJASIG,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE)
//*
//ZMFSITIO DD DSN=MXCP.ZM.FIX.SITI.ZM4SIT01.TARJORDE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHSITI10),DISP=SHR
//*
//*====================================================================*
//*         F I N    D E L    P R O C E S O    Z M S I T I 0 1         *
//*====================================================================*
