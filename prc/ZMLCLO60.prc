//ZMLCLO60 PROC
//**********************************************************************00000700
//*   SISTEMA         :  BANCA PATRIMONIAL Y FIDUCIARIO                *00001100
//*   APLICACION      :  ZM                                            *00001200
//*   OBJETIVO        :  PROCESO DE DESCARGA Y CARGA DEL MODELO DE     *00001300
//*                      DATOS ESPEJO DE CIERRES PARCIALES PARA LA     *00001400
//*                      TABLA OPERATE A LA TABLA ZMDTATE.             *00001500
//*   PERIODICIDAD    :  DIARIA                                        *00001800
//*   AUTOR           :  FABRICA DE SOFTWARE (ACCENTURE)               *
//*   FECHA           :  17 DEL ENERO DE 2012                          *
//**********************************************************************
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//**********************************************************************   75700
//* PASO    : ZMLO6050                                                 *
//* PROGRAMA: ADUUMAIN                                                 *   22600
//* OBJETIVO: DESCARGA DE TABLA OPERATE.                               *   22700
//**********************************************************************   22800
//ZMLO6050 EXEC PGM=ADUUMAIN,                                              22900
//         PARM='MXP1,ZMLO6050,NEW,,MSGLEVEL(1)'                           23000
//*                                                                        23400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                               23400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                          23400
//*                                                                        23400
//SYSREC   DD DSN=MXCP.ZM.FIX.CBP.CBJCLO60.UNLOAD.OPERATE,                 23800
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,                                                   23900
//            SPACE=(CYL,(200,100),RLSE),                                  24000
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                            24100
//*                                                                        24200
//SYSCNTL  DD DUMMY                                                        24300
//SYSPUNCH DD DUMMY
//*                                                                        24400
//UTPRINT  DD SYSOUT=*                                                     24500
//SYSPRINT DD SYSOUT=*                                                     24600
//SYSUDUMP DD SYSOUT=*                                                     24700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLO6050),DISP=SHR                      24800
//*
//**********************************************************************
//* PASO    : ZMLO6045                                                 *
//* PROGRAMA: AMUUMAIN                                                 *   22600
//* OBJETIVO: CARGA DE TABLA ZMDTATE.                                  *   22700
//**********************************************************************
//ZMLO6045 EXEC MBMCLOAD,COND=(4,LT),
//         UID=ZMLO6045.LOATE,
//         CREATOR=PRODUSVP,
//*        CREATOR=PRUEBSVP,
//         NOMTAB=ZMDTATE,
//         OPTION=REPLACE,
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZMLO6045),
//         INPREC=DSN=MXCP.ZM.FIX.CBP.CBJCLO60.UNLOAD.OPERATE
//*
