//ZMLCLO55 PROC
//**********************************************************************
//* SISTEMA  : ZM (CIERRES PARCIALES ODT2)                             *
//* PROCESO  : ZMLCLO55                                                *
//* OBJETIVO : PROCESO DE DESCARGA Y CARGA DEL MODELO DE DATOS ESPEJO  *
//*            DE CIERRES PARCIALES PARA LA TABLA OPERA A LA TABLA     *
//*            ZMDTOPE.                                                *
//* REALIZO  : FABRICA DE SOFTWARE ACCENTURE                           *
//* FECHA    : 17 DE ENERO DEL 2012                                    *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ---------------------------------     *
//*            *        *       *                                      *
//**********************************************************************
//**********************************************************************
//* PASO     : ZMLO5550                                                *
//* OBJETIVO : DESCARGA DE TABLA OPERA                                 *
//* PROGRAMA : ADUUMAIN                                                *
//**********************************************************************
//ZMLO5550  EXEC PGM=ADUUMAIN,
//          PARM='MXP1,ZMLO5550,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBP.CBJCLO55.UNLOAD.OPERA,
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//*
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLO5550),DISP=SHR
//*
//**********************************************************************
//* PASO     : ZMLO5545                                                *
//* OBJETIVO : CARGA DE TABLA ZMDTOPE                                  *
//* PROGRAMA : AMUUMAIN                                                *
//**********************************************************************
//ZMLO5545 EXEC MBMCLOAD,COND=(4,LT),                                   0920002
//         UID=ZMLO5545.LOOPE,
//         CREATOR=PRODUSVP,
//*        CREATOR=PRUEBSVP,
//         NOMTAB=ZMDTOPE,
//         OPTION=REPLACE,
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZMLO5545),
//         INPREC=DSN=MXCP.ZM.FIX.CBP.CBJCLO55.UNLOAD.OPERA
//*
//**********************************************************************
//*               F I N    D E    P R O C E S O                        *
//**********************************************************************
