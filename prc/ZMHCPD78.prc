//ZMHCPD78 PROC
//*--------------------------------------------------------------------*
//* SISTEMA  : ZM - BANCA PATRIMONIAL                                  *00003000
//* PROCESO  : ZMHCPD78                                                *
//* OBJETIVO : REPROCESO DE CALCULO DE COSTO PROMEDIO PARA LA EJECUCION*
//*            DE SOC INV BP COSTO FISCAL                              *
//* REALIZO  : GESFOR                                                  *
//* FECHA    : OCTUBRE 16                                              *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-01  XXXXXXX 00XXX15 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  *
//*                              XXXXXXXXXXXXXXX.                      *
//*--------------------------------------------------------------------*
//*---------------------------------------------------------------------
//* PASO    : ZMH78P03                                                 *
//* PROGRAMA: IKJEFT01/ZM4ISR21                                        *
//* OBJETIVO: GENERA DOS REPORTES UNO DE CASA Y OTRO DE BANCA          *
//*           PATRIMONIAL EN DONDE DEPENDIENDO EL EVENTO DE            *
//*           MODIFICACION AFECTARA TABLAS.                            *
//*---------------------------------------------------------------------
//ZMH78P03 EXEC PGM=IKJEFT01
//*
//UNLOAD2  DD DSN=MXC&AMB..ZM.FIX.MEN.UNLOAD2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=42,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMH78T01),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMH78P02                                                 *
//* PROGRAMA: IKJEFT01/ZM4ISR08  (ANTES ZM4ISR20)                      *
//* OBJETIVO: GENERA DOS REPORTES UNO DE CASA Y OTRO DE BANCA          *
//*           PATRIMONIAL EN DONDE DEPENDIENDO EL EVENTO DE            *
//*           MODIFICACION AFECTARA TABLAS.                            *
//**********************************************************************
//ZMH78P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//UNLOAD2  DD DSN=MXC&AMB..ZM.FIX.MEN.UNLOAD2,DISP=SHR
//*
//ZMISR8R1 DD DSN=MXC&AMB..ZM.FIX.MEN.CUENREP.COSANT.CBP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR8R2 DD DSN=MXC&AMB..ZM.FIX.MEN.CUENREP.COSANT.BCM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR8R3 DD DSN=MXC&AMB..ZM.FIX.MEN.CUENREP.COSNVO.CBP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR8R4 DD DSN=MXC&AMB..ZM.FIX.MEN.CUENREP.COSNVO.BCM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR8A1 DD DSN=MXC&AMB..ZM.FIX.MEN.REPDETA.COSFIS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=080,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR8A2 DD DSN=MXC&AMB..ZM.FIX.MEN.CUENREP.ARCH.ORI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=311,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR8A3 DD DSN=MXC&AMB..ZM.FIX.MEN.CUENREP.ARCH.NVO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=311,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMH78T02),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMH78P01                                                 *
//* PROGRAMA: ZM4MAT01                                                 *
//* OBJETIVO: LEE LOS ARCHIVOS DE ANTES Y DESPUES DEL REPROCESO ORDENA *
//*           LAS SALIDAS DE TAL MANERA QUE LAS SALIDAS QUEDEN JUNTAS  *
//**********************************************************************
//ZMH78P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMMATCA1 DD DSN=MXC&AMB..ZM.FIX.MEN.CUENREP.ARCH.ORI,
//            DISP=SHR
//*
//ZMMATCA2 DD DSN=MXC&AMB..ZM.FIX.MEN.CUENREP.ARCH.NVO,
//            DISP=SHR
//*
//ZMMATCA3 DD DSN=MXC&AMB..ZM.FIX.MEN.CUENREP.INICIAL.ARCHIVO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=311,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC37T37),DISP=SHR
//**********************************************************************
