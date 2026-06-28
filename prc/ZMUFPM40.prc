//ZMUFPM40 PROC
//*--------------------------------------------------------------------*
//* PROYECTO    :  ZM - REFORMA FISCAL                                 *
//* PROCESO     :  ZMUFPM40                                            *
//* PERIODICIDAD:  MENSUAL                                             *
//* OBJETIVO    :  REALIZA CARGA DE NUEVAS CUENTAS EN TABLA ZMDT895    *
//*                GENERA REPORTE PARA COMPAR NOMBRE PARTICULAR VS     *
//*                NOMBRE FISCAL (CEDULA FISCAL)                       *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//**********************************************************************00385100
//* PASO       : ZMPM4002.                                             *00385200
//* UTILERIA   : ADUUMAIN                                              *00385300
//* OBJETIVO   : DESCARGA DE TABLA CUENTA                              *00385400
//**********************************************************************00385500
//ZMPM4002 EXEC PGM=ADUUMAIN,                                           00385600
//         PARM='MXP1,ZMPM4003,NEW,,MSGLEVEL(1)'                        00385700
//*                                                                     00385800
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00385900
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00386000
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00386100
//*                                                                     00386200
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMUFPM40.CUENTA.ALTA,                     00386300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00386400
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00386500
//            SPACE=(CYL,(500,250),RLSE)                                00386600
//*                                                                     00386700
//SYSTSPRT DD SYSOUT=*                                                  00386800
//SYSPRINT DD SYSOUT=*                                                  00386900
//SYSPUNCH DD SYSOUT=*                                                  00387000
//SYSCNTL  DD DUMMY                                                     00387100
//*                                                                     00387200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUPM4102),DISP=SHR                   00387300
//*                                                                     00387500
//**********************************************************************02322306
//* OBJETIVO : OBTIENE CONTRATOS NUEVO DE CASA DE BOLSA PARA DARSE DE  *02322406
//*            ALTA EN TABLA DE DATOS FISCALES (ZMDT895)               *02323006
//*          -- ZM4OU011 --                                            *02323006
//**********************************************************************02324006
//ZMPM4001 EXEC PGM=IKJEFT01,COND=(04,LT)                               02325006
//*                                                                     02327006
//ENTRADA  DD DSN=MXCP.ZM.FIX.ZMUFPM40.CUENTA.ALTA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  02329406
//SYSPRINT DD SYSOUT=*                                                  02329506
//SYSOUT   DD SYSOUT=*                                                  02329606
//SYSDBOUT DD SYSOUT=*                                                  02329706
//SYSABOUT DD DUMMY                                                     02329806
//SYSUDUMP DD DUMMY                                                     02329906
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPM4001),DISP=SHR                   02330008
//*                                                                     02330106
