//ZMLFPD25 PROC
//*
//**********************************************************************
//**
//** SISTEMA        :  MUV/SIVA
//**
//** PROCESO        :  ZMLFPD25 / CBLFND25
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
//*                    06-OCTUBRE-2011                                 *
//*                                                                    *
//**********************************************************************
//**********************************************************************00010000
//*                                                                    *00020000
//*   RECIBIR PARAMETROS DE DISPARADOR Y GRABAR EN ARCHIVO.            *00020000
//*                                                                    *00020000
//**********************************************************************00060000
//PLF25P05 EXEC PGM=ZM3DG001,PARM=('&EMP','    ','     ','     ',)
//*
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZMLFPD25,
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
//**********************************************************************
//*                                                                    *
//*  PASO:      REPORTE DE COMISIONES GENERADAS                        *
//*  PLF23P06                                               ZM4DGG54   *
//**********************************************************************
//PLF25P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGG54R1 DD DSN=MXCP.ZM.FIX.COM.E&EMP..ZM4DGG54.REP1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T17),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: ICEGENER
//* OBJETIVO: ENVIAR ARCHIVO GENERADO EN PASO ANTERIOR A BANDEJA
//*           CARVAR EN EL CONTROL-D.
//*---------------------------------------------------------------------
//PLF25P03 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.COM.E&EMP..ZM4DGG54.REP1,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                                                                    *
//*  PASO:      GENERAR REPORTE DE POSICION Y SALDO AL DIA             *
//*  PLF23P06                                               ZM4DGP02   *
//**********************************************************************
//PLF25P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGP02P1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZMLFPD25,DISP=SHR
//ZMGP02R1 DD DSN=MXCP.ZM.FIX.OTR.E&EMP..ZM4DGP02.REP1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(LRECL=147,RECFM=FBA,BLKSIZE=0,DSORG=PS),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI13T05),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: ICEGENER
//* OBJETIVO: ENVIAR ARCHIVO GENERADO EN PASO ANTERIOR A BANDEJA
//*           CARVAR EN EL CONTROL-D.
//*---------------------------------------------------------------------
//PLF25P01 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.OTR.E&EMP..ZM4DGP02.REP1,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
