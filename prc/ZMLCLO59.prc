//ZMLCLO59 PROC
//*--------------------------------------------------------------------*00000700
//*                     C A S A   D E  B O L S A                       *00000800
//*                     ========================                       *00000900
//*                     <<  D E S C A R G A   >>                       *00001000
//*   SISTEMA         :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00001100
//*   APLICACION      :  MODULO DE CASA DE BOLSA                       *00001200
//*   OBJETIVO        :  PROCESO DE DESCARGA Y CARGA DEL MODELO DE     *00001300
//*                      DATOS ESPEJO DE CIERRES PARCIALES PARA LA     *00001400
//*                      TABLA SEHIPRO A LA TABLA  ZMDTSEH.            *00001500
//*   CORRE ANTES DE  :                                                *00001500
//*   CORRE DESPUES DE:  A SOLICITUD DEL USUARIO                       *00001600
//*   PERIODICIDAD    :  DIARIA                                        *00001700
//*--------------------------------------------------------------------*00001800
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *00001900
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: ADUUMAIN                                                 *00022600
//* OBJETIVO: DESCARGA DE TABLA SEHIPRO                                *00022700
//*--------------------------------------------------------------------*00022800
//ZMLO5950  EXEC PGM=ADUUMAIN,                                          00022900
//          PARM='MXP1,ZMLO5950,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.CBP.CBJCLO59.UNLOAD.SEHIPRO,              00023800
//            UNIT=3390,                                                00023900
//            SPACE=(CYL,(50,25),RLSE),DISP=(NEW,CATLG,DELETE),         00024000
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00024100
//*                                                                     00024200
//SYSCNTL  DD  DUMMY                                                    00024300
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLO5950),DISP=SHR                   00024800
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: AMUUMAIN                                                 *00022600
//* OBJETIVO: CARGA DE TABLA ZMDTSEH                                   *00022700
//*--------------------------------------------------------------------*00022800
//ZMLO5945 EXEC MBMCLOAD,COND=(4,LT),
//         UID=ZMLO5945.LOSEH,
//         CREATOR=PRODUSVP,
//*        CREATOR=PRUEBSVP,
//         NOMTAB=ZMDTSEH,
//         OPTION=REPLACE,
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZMLO5945),
//         INPREC=DSN=MXCP.ZM.FIX.CBP.CBJCLO59.UNLOAD.SEHIPRO
//*
