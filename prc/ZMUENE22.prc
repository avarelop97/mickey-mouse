//ZMUENE22 PROC
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*   OBJETIVO: DESCARGA SELLOS FISCALES DEL PERIODO FISCAL DE ZMDTCFI *
//*--------------------------------------------------------------------*
//ZMNE2202 EXEC PGM=ADUUMAIN,                                           00385600
//         PARM='MXP1,ZMNE2202,NEW,,MSGLEVEL(1)'                        00385700
//*                                                                     00385800
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00385900
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00386000
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00386100
//*                                                                     00386200
//SYSREC   DD DSN=MXCP.ZM.FIX.EBCM.ZMDTCFI.DATOS.FIS.ACT,               00386300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00386400
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00386500
//            SPACE=(CYL,(500,250),RLSE)                                00386600
//*                                                                     00386700
//SYSTSPRT DD SYSOUT=*                                                  00386800
//SYSPRINT DD SYSOUT=*                                                  00386900
//SYSPUNCH DD SYSOUT=*                                                  00387000
//SYSCNTL  DD DUMMY                                                     00387100
//*                                                                     00387200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNE2202),DISP=SHR                   00387300
//*
//*--------------------------------------------------------------------*
//*   OBJETIVO: REALIZA MATCH PARA REALIZAR LA ACTUALIZACION DE SELLOS *
//*             EN LA TABLAS ZMDT884 Y ZMDT886 POR ACTUALIZACION DE    *
//*             DATOS FISCALES                                         *
//*   PROGRAMA: ZM4RRET2                                               *
//*--------------------------------------------------------------------*
//ZMNE2201 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.EBCM.RET.CONS.DATOS.FIS,
//            DISP=SHR
//*
//ENTRADA2 DD DSN=MXCP.ZM.FIX.EBCM.ZMDTCFI.DATOS.FIS.ACT,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNE2201),DISP=SHR
//*
