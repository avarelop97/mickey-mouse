//ZMHCPA50 PROC
//*--------------------------------------------------------------------*
//* PROYECTO    :  ZM - AUTOCORRECION GL PRESVAL                       *
//* PROCESO     :  ZMHCPA50                                            *
//* PERIODICIDAD:  DIARIO                                              *
//* OBJETIVO    :  GENERA REPORTE DE ORDENES MODIFICADAS               *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//**********************************************************************00385100
//* PASO       : PHFPD711.                                             *00385200
//* UTILERIA   : ADUUMAIN                                              *00385300
//* OBJETIVO   : DESCARGA DE TABLA ZMDT945 DE ORDENES MODIFICADAS      *00385400
//**********************************************************************00385500
//PHPA5010 EXEC PGM=ADUUMAIN,                                           00385600
//         PARM='MXP1,PHPA5010,NEW,,MSGLEVEL(1)'                        00385700
//*                                                                     00385800
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00385900
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00386000
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00386100
//*                                                                     00386200
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMHCPA50.UNLOAD.ZMDT945,                  00386300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00386400
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00386500
//            SPACE=(CYL,(500,250),RLSE)                                00386600
//*                                                                     00386700
//SYSTSPRT DD SYSOUT=*                                                  00386800
//SYSPRINT DD SYSOUT=*                                                  00386900
//SYSPUNCH DD SYSOUT=*                                                  00387000
//SYSCNTL  DD DUMMY                                                     00387100
//*                                                                     00387200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHPA5010),DISP=SHR                   00387300
//*                                                                     00387500
//**********************************************************************02322306
//* OBJETIVO : GENERA ARCHIVO DE ORDENES MODIFICADAS                   *02322406
//*          -- ZM4DHU14 --                                            *02323006
//**********************************************************************02324006
//PHPA5008 EXEC PGM=IKJEFT01,COND=(04,LT)                               02325006
//*                                                                     02327006
//ENTRADA  DD DSN=MXCP.ZM.FIX.ZMHCPA50.UNLOAD.ZMDT945,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBCM.ORDENES.DIARIO.MODIF,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=272,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)
//*
//SYSTSPRT DD SYSOUT=*                                                  02329406
//SYSPRINT DD SYSOUT=*                                                  02329506
//SYSOUT   DD SYSOUT=*                                                  02329606
//SYSDBOUT DD SYSOUT=*                                                  02329706
//SYSABOUT DD DUMMY                                                     02329806
//SYSUDUMP DD DUMMY                                                     02329906
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHPA5008),DISP=SHR                   02330008
//*                                                                     02330106
//**********************************************************************02322306
//* OBJETIVO : GENERA REPORTE DE ORDENES MODIFICADAS PARA SER ENVIADO  *02322406
//*            POR CONTROL D                                           *02323006
//*          -- ZM4DHU16 --                                            *02323006
//**********************************************************************02324006
//PHPA5006 EXEC PGM=IKJEFT01,COND=(4,LT)                                02325006
//*                                                                     02327006
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBCM.ORDENES.DIARIO.MODIF,DISP=SHR
//*
//ZMPA50R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHPA5006),DISP=SHR
//*
