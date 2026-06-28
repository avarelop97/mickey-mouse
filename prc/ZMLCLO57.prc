//ZMLCLO57 PROC                                                         00010001
//*--------------------------------------------------------------------*00020000
//*                     C A S A   D E  B O L S A                       *00030000
//*                     ========================                       *00040000
//*                     <<  D E S C A R G A   >>                       *00050000
//*   SISTEMA         :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00060000
//*   APLICACION      :  MODULO DE CASA DE BOLSA                       *00070000
//*   OBJETIVO        :  PROCESO DE DESCARGA Y CARGA DEL MODELO DE     *00080000
//*                      DATOS ESPEJO DE CIERRES PARCIALES PARA LA     *00090000
//*                      TABLA OPERTET A LA TABLA  ZMDTOPT.            *00100000
//*   FECHA CREACION  :  ENERO 17 2012                                 *00120000
//*   PERIODICIDAD    :  DIARIA                                        *00140000
//**********************************************************************00150000
//*--------------------------------------------------------------------*00160000
//*--------------------------------------------------------------------*00170000
//*        L O G    D E   M O D I F I C A C I O N E S                  *00180000
//*--------------------------------------------------------------------*00190000
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *00200000
//* -----------  ------- ------- ------------------------------------- *00210000
//*--------------------------------------------------------------------*00300000
//*                                                                    *00310000
//*--------------------------------------------------------------------*00330000
//* PASO    : ZMLO5750                                                  00331001
//* PROGRAMA: ADUUMAIN                                                 *00340000
//* OBJETIVO: DESCARGA DE TABLA OPERTET.                               *00350001
//*--------------------------------------------------------------------*00360000
//ZMLO5750  EXEC PGM=ADUUMAIN,                                          00370001
//          PARM='MXP1,ZMLO5750,NEW,,MSGLEVEL(1)'                       00380000
//*                                                                     00390000
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00400000
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT                       00410000
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00420000
//*                                                                     00430000
//SYSREC   DD DSN=MXCP.ZM.FIX.CBP.CBJCLO57.UNLOAD.OPERTET,              00470001
//            UNIT=3390,                                                00480000
//            SPACE=(CYL,(50,25),RLSE),DISP=(NEW,CATLG,DELETE),         00490000
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00500000
//*                                                                     00510000
//SYSCNTL  DD  DUMMY                                                    00520000
//*                                                                     00530000
//UTPRINT  DD SYSOUT=*                                                  00540000
//SYSPRINT DD SYSOUT=*                                                  00550000
//SYSUDUMP DD SYSOUT=*                                                  00560000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLO5750),DISP=SHR                   00570001
//*                                                                     00580000
//**********************************************************************00590000
//* PASO    : ZMLO5745                                                 *00600001
//* PROGRAMA: AMUUMAIN                                                 *00610000
//* OBJETIVO: CARGA DE TABLA ZMDTOPT                                   *00620001
//**********************************************************************00640000
//ZMLO5745 EXEC MBMCLOAD,COND=(4,LT),                                   00640100
//         UID=ZMLO5745.LOOPT,                                          00640200
//         CREATOR=PRODUSVP,                                            00640300
//*        CREATOR=PRUEBSVP,                                            00640310
//         NOMTAB=ZMDTOPT,                                              00640400
//         OPTION=REPLACE,                                              00640500
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZMLO5745),                       00640600
//         INPREC=DSN=MXCP.ZM.FIX.CBP.CBJCLO57.UNLOAD.OPERTET           00640700
//*                                                                     00640800
