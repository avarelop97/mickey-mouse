//ZMLCLO56 PROC                                                         00010004
//*--------------------------------------------------------------------*00020001
//*                     C A S A   D E  B O L S A                       *00030001
//*                     ========================                       *00040001
//*                     <<  D E S C A R G A   >>                       *00050001
//*   SISTEMA         :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00060001
//*   APLICACION      :  MODULO DE CASA DE BOLSA                       *00070001
//*   OBJETIVO        :  PROCESO DE DESCARGA Y CARGA DEL MODELO DE     *00080001
//*                      DATOS ESPEJO DE CIERRES PARCIALES PARA LA     *00090001
//*                      TABLA OPERASI A LA TABLA  ZMDTOPS.            *00100001
//*   FECHA CREACION  :  ENERO 17 2012                                 *00120003
//*   PERIODICIDAD    :  DIARIA                                        *00140001
//**********************************************************************00150001
//*--------------------------------------------------------------------*00160001
//*--------------------------------------------------------------------*00170001
//*        L O G    D E   M O D I F I C A C I O N E S                  *00180001
//*--------------------------------------------------------------------*00190001
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *00200001
//* -----------  ------- ------- ------------------------------------- *00210001
//*--------------------------------------------------------------------*00300001
//*                                                                    *00310001
//*--------------------------------------------------------------------*00330001
//* PASO    : ZMLO5650                                                 *00331005
//* PROGRAMA: ADUUMAIN                                                 *00340001
//* OBJETIVO: DESCARGA DE TABLA OPERASI                                *00350001
//*--------------------------------------------------------------------*00360001
//ZMLO5650  EXEC PGM=ADUUMAIN,                                          00370005
//          PARM='MXP1,ZMLO5650,NEW,,MSGLEVEL(1)'                       00380001
//*                                                                     00390001
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00400001
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT                       00410001
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00420001
//*                                                                     00430001
//SYSREC   DD DSN=MXCP.ZM.FIX.CBP.BCLCL056.UNLOAD.OPERASI,              00470002
//            UNIT=3390,                                                00480001
//            SPACE=(CYL,(50,25),RLSE),DISP=(NEW,CATLG,DELETE),         00490001
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00500001
//*                                                                     00510001
//SYSCNTL  DD  DUMMY                                                    00520001
//*                                                                     00530001
//UTPRINT  DD SYSOUT=*                                                  00540001
//SYSPRINT DD SYSOUT=*                                                  00550001
//SYSUDUMP DD SYSOUT=*                                                  00560001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLO5650),DISP=SHR                   00570005
//*                                                                     00580001
//**********************************************************************00590001
//* PASO    : ZMLO5645                                                 *00600005
//* PROGRAMA: AMUUMAIN                                                 *00610003
//* OBJETIVO: CARGA DE TABLA ZMDTOPS                                   *00620003
//**********************************************************************00640001
//ZMLO5645 EXEC MBMCLOAD,COND=(4,LT),                                   00640002
//         UID=ZMLO5645.LOOPS,                                          00640003
//         CREATOR=PRODUSVP,                                            00640004
//*        CREATOR=PRUEBSVP,                                            00640005
//         NOMTAB=ZMDTOPS,                                              00640006
//         OPTION=REPLACE,                                              00640007
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZMLO5645),                       00640008
//         INPREC=DSN=MXCP.ZM.FIX.CBP.BCLCL056.UNLOAD.OPERASI           00640009
//*                                                                     00640010
