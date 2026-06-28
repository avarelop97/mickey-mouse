//ZMCFDC39 PROC
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDC4003                                               *
//*   OBJETIVO: VALIDA SI EL EVENTO 'RED' ESTA ACTIVO, PARA DAR INICIO *
//*             CON EL FLUJO DE CANCELACION/RETIMBRADO DE EDC Y EGRESO *
//*             DE CASA DE BOLSA                                       *
//*                     -- ZM4ECR01 --                                 *
//*--------------------------------------------------------------------*
//ZMDC3902 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC3902),DISP=SHR
//*
// IF  ZMDC3902.RC EQ 00 THEN
//ZMDC3901 EXEC PGM=CTMCND,PARM='ADD COND CBCFDI39_CAN_OK WDATE',       00395100
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
// IF  ZMDC3902.RC EQ 01 THEN
//ZMDC3901 EXEC PGM=CTMCND,PARM='ADD COND CBCFDI39_RET_OK WDATE',       00395100
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
