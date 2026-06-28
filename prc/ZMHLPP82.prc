//ZMHLPP82 PROC
//**********************************************************************
//* SISTEMA  : MODULO UNICO DE VALORES (MUV)                           *
//* OBJETIVO : GENERA ARCHIVO DE PARAMETROS Y CONDICION DE CONTROL M   *
//*            PREPARA PARA GENERAR REPORTE A INICIO DE DIA CON LOS    *
//*            CTOS DE BANCA PATRIMONIAL QUE PRESENTAN DIFERENCIAS ENTRE
//*            EL SALDO DE MUV Y EL SALDO DE BG PRODUCTO 10.           *
//*            AURORA G. GONZALEZ PE#A (ANS-HILDEBRANDO) AGOSTO-2013   *
//* PERIODIC : DIARIA                                                  *
//**********************************************************************
//*           RECEPCION DE PARAMETROS                                  *
//**********************************************************************
//PHL82P10 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.DIF.EBCM.ZMHLPP82,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//****************************************************************
//*           SE AGREGA CONDICION PARA CONTROL-M                 *
//****************************************************************
//PHL82P05 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXDIF_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//*
