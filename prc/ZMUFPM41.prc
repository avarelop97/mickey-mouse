//ZMUFPM41 PROC
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*====================================================================*
//**********************************************************************00385100
//* PASO       : ZUPM4102.                                             *00385200
//* UTILERIA   : ADUUMAIN                                              *00385300
//* OBJETIVO   : DESCARGA TABLA ZMDT895                                *00385400
//**********************************************************************00385500
//ZUPM4103 EXEC PGM=ADUUMAIN,                                           00385600
//         PARM='MXP1,ZUPM4102,NEW,,MSGLEVEL(1)'                        00385700
//*                                                                     00385800
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00385900
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00386000
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00386100
//*                                                                     00386200
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMUFPM41.ZMDT895,                         00386300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00386400
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00386500
//            SPACE=(CYL,(500,250),RLSE)                                00386600
//*                                                                     00386700
//SYSTSPRT DD SYSOUT=*                                                  00386800
//SYSPRINT DD SYSOUT=*                                                  00386900
//SYSPUNCH DD SYSOUT=*                                                  00387000
//SYSCNTL  DD DUMMY                                                     00387100
//*                                                                     00387200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPM4003),DISP=SHR                   00387300
//*                                                                     00387500
//**********************************************************************02322306
//* OBJETIVO : GENERA REPORTE DE VALIDACION DE CONTRATOS DE CASA DE    *02322406
//*            BOLSA PARA COMPARAR NOMBRE PARTICULAR VS NOMBRE FISCAL  *02323006
//*          -- ZM4OU012 --                                            *02323006
//**********************************************************************02324006
//ZUPM4102 EXEC PGM=IKJEFT01,COND=(04,LT)                               02325006
//*                                                                     02327006
//ENTRADA  DD DSN=MXCP.ZM.FIX.ZMUFPM41.ZMDT895,DISP=SHR
//*
//ZMM40RF1 DD DSN=MXCP.ZM.FIX.ZMUFPM41.NOMBRE.FISCAL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=382,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)
//*
//SYSTSPRT DD SYSOUT=*                                                  02329406
//SYSPRINT DD SYSOUT=*                                                  02329506
//SYSOUT   DD SYSOUT=*                                                  02329606
//SYSDBOUT DD SYSOUT=*                                                  02329706
//SYSABOUT DD DUMMY                                                     02329806
//SYSUDUMP DD DUMMY                                                     02329906
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUPM0902),DISP=SHR                   02330008
//*                                                                     02330106
//**********************************************************************02322306
//* OBJETIVO : BORRA ARCHIVO DE CONTRATOS                              *02322406
//**********************************************************************02324006
//ZUPM4103 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//ARCHSA   DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLCF02,
//            DISP=(OLD,DELETE,DELETE)
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
