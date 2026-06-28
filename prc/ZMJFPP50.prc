//ZMJFPP50 PROC
//*--------------------------------------------------------------------*
//* PROYECTO    :  ZM - GENERACION DE REPORTES CENIFOM                 *
//* PROCESO     :  ZMJFPP50                                            *
//* PERIODICIDAD:  DIARIO                                              *
//* OBJETIVO    :  OPCION NUEVA LINEA QUE ENVIA LA EJECUCION PARA LA   *
//*                GENERACION DEL REPORTE DE INTERES POR SALDO ACREEDOR*
//*                Y SALDO DEUDOR                                      *
//* REALIZO     :  CAPGEMINI                                           *
//* FECHA       :  21 MARZO 2013                                       *
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
//*--------------------------------------------------------------------*
//* PASO     : PJI01P49                                                *
//* UTILERIA : ZM3DG001                                                *
//* OBJETIVO : RECIBE LOS PARAMETROS ENVIADOS EN EL DISPARADOR Y LOS   *
//*            GRABA EN UN ARCHIVO SECUENCIAL.                         *
//*--------------------------------------------------------------------*
//PJI01P49 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJFPP50,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(05,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : PJI02P49.                                             *
//* UTILERIA   : CTMCND.                                               *
//* OBJETIVO   : SE ADICIONA CONDICION PARA CONTROL - M.               *
//*--------------------------------------------------------------------*
//*
//PJI02P49 EXEC PGM=CTMCND,PARM='ADD COND SIVAXISA_IN_OK WDATE',
//         COND=(4,LT)
//*
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD  SYSOUT=*
//DAPRINT  DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//**********************************************************************
//*               FIN DEL PROCEDIMIENTO ZMJFPP50                       *
//**********************************************************************
