//ZMUENE20 PROC
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*   OBJETIVO: IDENTIFICA SELLOS DE EDC Y CONSTANCIAS                 *
//*--------------------------------------------------------------------*
//ZMNE2001 EXEC PGM=ICEMAN                                              00385600
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.RET.MEDC.DATOS.FIS,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.EWBT.RET.MEDC.DATOS.FIS,DISP=SHR
//*
//SORTOUT1 DD DSN=MXCP.ZM.FIX.EBCM.RET.EDC.DATOS.FIS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=2363,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390
//*
//SORTOUT2 DD DSN=MXCP.ZM.FIX.EBCM.RET.CONS.DATOS.FIS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=2363,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNE2001),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   OBJETIVO: VALIDA SI LLEGARON SELLOS NUEVOS DE EDC                *
//*--------------------------------------------------------------------*
//ZMNE2002 EXEC PGM=ICEMAN,COND=(04,LT)                                 00385600
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.RET.EDC.DATOS.FIS,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.EBCM.RET.EDC.DATOS.FIS,
//            DISP=(NEW,PASS),
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=2363,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDC5101),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   OBJETIVO: PRENDE CONDICION PARA ENVIAR ACTUALIZAR SELLOS DE EDC  *
//*--------------------------------------------------------------------*
// IF  ZMNE2002.RC EQ 00 THEN
//ZMNE2003 EXEC PGM=CTMCND,PARM='ADD COND CBUENE20_EDC_OK WDATE',       00395100
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
//*--------------------------------------------------------------------*
//*   OBJETIVO: VALIDA SI LLEGARON SELLOS NUEVOS DE CONSTANCIAS        *
//*--------------------------------------------------------------------*
//ZMNE2004 EXEC PGM=ICEMAN,COND=(04,LT)                                 00385600
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.RET.CONS.DATOS.FIS,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.EBCM.RET.CONS.DATOS.FIS,
//            DISP=(NEW,PASS),
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=2363,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDC5101),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*  OBJETIVO: PRENDE CONDICION PARA ENVIAR ACTUALIZAR SELLOS DE CONS  *
//*--------------------------------------------------------------------*
// IF  ZMNE2004.RC EQ 00 THEN
//ZMNE2005 EXEC PGM=CTMCND,PARM='ADD COND CBUENE20_CON_OK WDATE',       00395100
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
