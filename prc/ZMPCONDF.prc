//ZMPCONDF PROC
//**********************************************************************
//*                 C A S A   D E  B O L S A                           *
//*                 ========================                           *
//*                                                                    *
//* SISTEMA        :  ZM - VENTAS EN CORTO                             *
//*                                                                    *
//* PROCESO        :  OPC. ZAA1(SUBMITIDOR)                            *
//*                                                                    *
//* OBJETIVO       :  CARGA CONDICION PARA LA EJECUCION DEL REPORTE    *
//*                   DE MANTENIMIENTO DE CUENTAS DIFO                 *
//*                                                                    *
//* PERIODICIDAD   :  A PETICION DEL USUARIO                           *
//**********************************************************************
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*  MARCA      AUTOR     FECHA  DESCRIPCION                           *
//* ----------- --------- ------ --------------------------------------*
//*                                                                    *
//**********************************************************************
//*     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA EN         *00030000
//*     ARCHIVO SECUENCIAL.                                            *00040000
//**********************************************************************00060000
//PCONDP01 EXEC PGM=ZM3DG001,
// PARM=('&EMP','&SUC','&INT1','&INT2')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.FOD.EMP.SUC.ZMPCONDF,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//* SE ADICIONA CONDICION PARA QUE SEA TOMADA POR PROCESO QUE GENERA   *
//*           REPORTE DE CUENTAS DIFO                                  *
//**********************************************************************
//PCONDP02 EXEC PGM=CTMCND,PARM='ADD COND SIVAXFOD_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//
//**********************************************************************00010000
//*                   Z M P C O N D F                                  *00020000
//**********************************************************************00060000
