//ZMCFDC47 PROC
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDC4701                                               *
//*   OBJETIVO: GENERA TARJETA DINAMICA PARA REALIZAR DESCARGA DE LA   *
//*             TABLA ZMDT884                                          *
//*                     -- ZM4CFD12 --                                 *
//*--------------------------------------------------------------------*
//ZMDC4701 EXEC PGM=IKJEFT01
//*
//SZMDT884 DD DSN=MXCP.ZM.FIX.ZMCFDC47.DESCAR.ZMDT884,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC4701),DISP=SHR
//*
//*--------------------------------------------------------------------*00385100
//* PASO       : ZMDC4702.                                             *00385200
//* UTILERIA   : ADUUMAIN                                              *00385300
//* OBJETIVO   : DESCARGA TABLA ZMDT884                                *00385400
//*--------------------------------------------------------------------*00385500
//ZMDC4702 EXEC PGM=ADUUMAIN,                                           00385600
//         PARM='MXP1,ZMDC4702,NEW,,MSGLEVEL(1)',COND=(04,LT)           00385700
//*                                                                     00385800
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00385900
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00386000
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00386100
//*                                                                     00386200
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMCFDC47.ZMDT8884,                        00386300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00386400
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00386500
//            SPACE=(CYL,(500,250),RLSE)                                00386600
//*                                                                     00386700
//SYSTSPRT DD SYSOUT=*                                                  00386800
//SYSPRINT DD SYSOUT=*                                                  00386900
//SYSPUNCH DD SYSOUT=*                                                  00387000
//SYSCNTL  DD DUMMY                                                     00387100
//*                                                                     00387200
//SYSIN    DD DSN=MXCP.ZM.FIX.ZMCFDC47.DESCAR.ZMDT884,DISP=SHR          00387300
//*                                                                     00387500
//*--------------------------------------------------------------------*
//* PASO     : ZMDC4703.                                               *
//* UTILERIA : ICEMAN.                                                 *
//* OBJETIVO : VALIDA SI YA SE ENTREGARON LOS SELLOS DE CASA           *
//*--------------------------------------------------------------------*
//ZMDC4703 EXEC PGM=ICEMAN,COND=(04,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMCFDC47.ZMDT8884,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMCFDC47.ZMDT8884.SORT,
//            DISP=(NEW,PASS),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=36,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD *
  OPTION COPY,NULLOUT=RC4,STOPAFT=1
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDC4704                                               *
//*   OBJETIVO: REALIZA CONVERSION DE CARACTER ENIE POR #VARIABLE      *
//*                     -- ZM3CFD01 --                                 *
//*--------------------------------------------------------------------*
//ZMDC4704 EXEC PGM=ZM3CFD01
//*
//ZM3CFDE1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEDC.PIPES,
//            DISP=SHR
//*
//ZM3CFDS1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEDC.PIPESG,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=458,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMDC4705                                                *
//* OBJETIVO : PRENDE CONDICION PARA EJECUTAR TRANSMISION PARA         *
//*            RESPALDAR ARCHIVO PIPE DE CASA DE BOLSA                 *
//*--------------------------------------------------------------------*
// IF  ZMDC4703.RC EQ 00 THEN
//ZMDC4705 EXEC PGM=CTMCND,PARM='ADD COND CBCFDI47_PRC_OK WDATE',       00395100
//         COND=(4,LT)                                                  00395200
//*                                                                     00395300
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00395400
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00395500
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00395600
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00395700
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00395800
//PRTDBG   DD SYSOUT=*                                                  00395900
//SYSPRINT DD DUMMY                                                     00396000
//SYSUDUMP DD DUMMY                                                     00396100
//DAPRINT  DD SYSOUT=*                                                  00396200
//DACNDIN  DD DDNAME=SYSIN                                              00396300
// ENDIF                                                                00396400
//*
