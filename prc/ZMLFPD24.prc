//ZMLFPD24 PROC
//*
//**********************************************************************
//**
//** SISTEMA        :  MUV/SIVA
//**
//** PROCESO        :  ZMLFPD24 / CBLFND24
//**
//** OBJETIVO       :  GENERACION DE REPORTES FINANZAS CASA DE
//**                   BOLSA Y SOCIEDADES DE INVERSION (CARVAR)
//**
//** CORRE ANTES DE :
//**
//** DESPUES DE     :
//**
//** OBSERVACIONES  :
//**
//** REALIZO        :  JOSE OSCAR SEGURA PEREZ (HILDEBRANDO)
//*                    05-OCTUBRE-2011                                 *
//*                                                                    *
//**********************************************************************
//**********************************************************************00010000
//*                                                                    *00020000
//*   RECIBIR PARAMETROS DE DISPARADOR Y GRABAR EN ARCHIVO.            *00020000
//*                                                                    *00020000
//**********************************************************************00060000
//PLF24P07 EXEC PGM=ZM3DG001,PARM=('&EMP','    ','     ','     ',)
//*
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZMLFPD24,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00010000
//*                                                                    *
//*  PASO:      IMPRIMIR EL REPORTE DE COMPRAS Y VENTAS DE REPORTOS.   *00030000
//*  PLF23P06           ( OPERAS 526, 626)                  ZM4DLE21   *00020000
//**********************************************************************00060000
//PLF24P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMLE21A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZMLFPD24,DISP=SHR
//*
//ZMLE21R1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZM4DLE21.REP1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//ZMLE21R2 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZM4DLE21.REP2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//ZMLE21R3 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..CONCENT.MDDC1P1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//ZMLE21R4 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..CONCENT.MDDC2P2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T06),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ICEGENER
//* OBJETIVO: ENVIAR ARCHIVO GENERADO EN PASO ANTERIOR A BANDEJA
//*           CARVAR EN EL CONTROL-D.
//*---------------------------------------------------------------------
//PLF24P05 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZM4DLE21.REP1,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ICEGENER
//* OBJETIVO: ENVIAR ARCHIVO GENERADO EN PASO ANTERIOR A BANDEJA
//*           CARVAR EN EL CONTROL-D.
//*---------------------------------------------------------------------
//PLF24P04 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZM4DLE21.REP2,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************00010000
//*                                                                    *
//*  PASO:      IMPRIMIR EL REPORTE DE COMPRAS Y VENTAS DE REPORTOS    *00030000
//*  PLF23P05                 ( OPERAS 527, 627)            ZM4DLE21   *00020000
//**********************************************************************00060000
//PLF24P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMLE21A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZMLFPD24,DISP=SHR
//*
//ZMLE21R1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZM4DLE21.REP3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//ZMLE21R2 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZM4DLE21.REP4,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//ZMLE21R3 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..CONCENT.MDDC3P3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//ZMLE21R4 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..CONCENT.MDDC4P4,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T05),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ICEGENER
//* OBJETIVO: ENVIAR ARCHIVO GENERADO EN PASO ANTERIOR A BANDEJA
//*           CARVAR EN EL CONTROL-D.
//*---------------------------------------------------------------------
//PLF24P02 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZM4DLE21.REP3,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ICEGENER
//* OBJETIVO: ENVIAR ARCHIVO GENERADO EN PASO ANTERIOR A BANDEJA
//*           CARVAR EN EL CONTROL-D.
//*---------------------------------------------------------------------
//PLF24P01 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZM4DLE21.REP4,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
