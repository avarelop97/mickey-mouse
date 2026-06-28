//ZMHCPD39 PROC
//*--------------------------------------------------------------------*
//* SISTEMA  : ZM - BANCA PATRIMONIAL                                  *00003000
//* PROCESO  : ZMHCPD39                                                *
//* OBJETIVO : REPROCESO DE CALCULO DE COSTO PROMEDIO PARA LA EJECUCION*
//*            DE SOC INV BP COSTO FISCAL                              *
//* REALIZO  : GESFOR                                                  *
//* FECHA    : ENERO 2015                                              *
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
//* PASO    : PHC39P02                                                 *
//* PROGRAMA: IKJEFT01/ZM4ISR08                                        *
//* OBJETIVO: GENERA DOS REPORTES UNO DE CASA Y OTRO DE BANCA          *
//*           PATRIMONIAL EN DONDE DEPENDIENDO EL EVENTO DE            *
//*           MODIFICACION AFECTARA TABLAS.                            *
//*---------------------------------------------------------------------
//PHC39P03 EXEC PGM=IKJEFT01
//*
//UNLOAD2  DD DUMMY
//*
//ZMISR8R1 DD DSN=MXC&AMB..ZM.FIX.CUENREP.COSANT.CBP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR8R2 DD DSN=MXC&AMB..ZM.FIX.CUENREP.COSANT.BCM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR8R3 DD DSN=MXC&AMB..ZM.FIX.CUENREP.COSNVO.CBP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR8R4 DD DSN=MXC&AMB..ZM.FIX.CUENREP.COSNVO.BCM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR8A1 DD DSN=MXC&AMB..ZM.FIX.REPDETA.COSFIS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=080,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR8A2 DD DSN=MXC&AMB..ZM.FIX.CUENREP.ARCH.ORI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=311,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR8A3 DD DSN=MXC&AMB..ZM.FIX.CUENREP.ARCH.NVO,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC39T01),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PASO    : PHC39P01                                                 *
//* PROGRAMA: ICEMAN                                                   *
//*---------------------------------------------------------------------
//PHC39P02 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.CUENREP.COSANT.CBP,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.CUENREP.COSNVO.CBP,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.CUENREP.COSPROM.CBP.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=186,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC39T00),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PASO    : PHC39P00                                                 *
//* PROGRAMA: ICEMAN                                                   *
//*---------------------------------------------------------------------
//PHC39P01 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.CUENREP.COSANT.BCM,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.CUENREP.COSNVO.BCM,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.CUENREP.COSPROM.BCM.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=186,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC39T00),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO    : PHC39P00                                                 *
//* PROGRAMA: ZM4MAT01                                                 *
//* OBJETIVO: LEE LOS ARCHIVOS DE ANTES Y DESPUES DEL REPROCESO ORDENA *
//*           LAS SALIDAS DE TAL MANERA QUE LAS SALIDAS QUEDEN JUNTAS  *
//*--------------------------------------------------------------------*
//PHC39P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMMATCA1 DD DSN=MXC&AMB..ZM.FIX.CUENREP.ARCH.ORI,
//            DISP=SHR
//*
//ZMMATCA2 DD DSN=MXC&AMB..ZM.FIX.CUENREP.ARCH.NVO,
//            DISP=SHR
//*
//ZMMATCA3 DD DSN=MXC&AMB..ZM.FIX.CUENREP.INICIAL.ARCHIVO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE),
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
