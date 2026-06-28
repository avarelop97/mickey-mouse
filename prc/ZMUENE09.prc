//ZMUENE09 PROC
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*   OBJETIVO: DESCARGA SELLOS DEL DIA ANTERIOR DE LA TABLA ZMDT884   *
//*--------------------------------------------------------------------*
//ZMNE0902 EXEC PGM=ADUUMAIN,                                           00385600
//         PARM='MXP1,ZMNE0902,NEW,,MSGLEVEL(1)'                        00385700
//*                                                                     00385800
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00385900
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00386000
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00386100
//*                                                                     00386200
//SYSREC   DD DSN=MXCP.ZM.FIX.ECBP.ZMDT884.SELLOS,                      00386300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00386400
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00386500
//            SPACE=(CYL,(500,250),RLSE)                                00386600
//*                                                                     00386700
//SYSTSPRT DD SYSOUT=*                                                  00386800
//SYSPRINT DD SYSOUT=*                                                  00386900
//SYSPUNCH DD SYSOUT=*                                                  00387000
//SYSCNTL  DD DUMMY                                                     00387100
//*                                                                     00387200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNE0902),DISP=SHR                   00387300
//*--------------------------------------------------------------------*
//*   OBJETIVO: VALIDA SI LA DESCARGA SE GENERO EN VACIO               *
//*--------------------------------------------------------------------*
//ZMNE0901 EXEC PGM=ICEMAN,COND=(04,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.ZMDT884.SELLOS,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECBP.ZMDT884.SELLOS,
//            DISP=(NEW,PASS),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(LRECL=42,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDC5101),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   OBJETIVO: PRENDE CONDICION PARA ENVIAR ARCHIVO DE SUSTITUCION    *
//*--------------------------------------------------------------------*
// IF  ZMNE0901.RC EQ 00 THEN
//ZMDB5100 EXEC PGM=CTMCND,PARM='ADD COND CBUENE09_SUS_OK WDATE',       00395100
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
