//ZMLCLE50 PROC
//*--------------------------------------------------------------------*
//* SISTEMA      : ZM -                                                *
//* PROCESO      : ZMLCLE50                                            *
//* PERIODICIDAD : DIARIA                                              *
//* OBJETIVO     : PROCESO DE DESCARGA Y CARGA DEL MODELO DE DATOS     *
//*                ESPEJO DE CIERRES PARCIALES PARA LA TABLA CARTAUX   *
//*                A LA TABLA ZMDTCAX.                                 *
//* REALIZO      : FABRICA DE SOFTWARE DE ACCENTURE                    *
//* FECHA        : 17 DEL ENERO DE 2012                                *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO     : ZMLE5050                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE TABLA CARTAUX                               *
//**********************************************************************
//ZMLE5050  EXEC PGM=ADUUMAIN,                                          00022900
//          PARM='MXP1,ZMLE5050,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.CBP.CBJCLE50.UNLOAD.CARTAUX,              00023800
//            UNIT=3390,                                                00023900
//            SPACE=(CYL,(50,25),RLSE),DISP=(NEW,CATLG,DELETE),         00024000
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00024100
//*                                                                     00024200
//SYSCNTL  DD  DUMMY                                                    00024300
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLE5050),DISP=SHR                   00024800
//*
//**********************************************************************
//* PASO     : ZMLE5045                                                *
//* UTILERIA : AMUUMAIN                                                *
//* OBJETIVO : CARGA DE TABLA ZMDTCAX                                  *
//**********************************************************************
//ZMLE5045 EXEC MBMCLOAD,COND=(4,LT),                                   0920002
//         UID=ZMLE5045.LOCAX,
//         CREATOR=PRODUSVP,
//*        CREATOR=PRUEBSVP,
//         NOMTAB=ZMDTCAX,
//         OPTION=REPLACE,
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZMLE5045),
//         INPREC=DSN=MXCP.ZM.FIX.CBP.CBJCLE50.UNLOAD.CARTAUX
//*
//************************** FIN DE PROCESO ****************************
