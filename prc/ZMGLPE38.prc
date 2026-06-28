//ZMGLPE38 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<    P    L    D     >>                       *
//*                                                                    *
//*  APLICACION    :  MODULO DE PREVENSION LAVADO DE DINERO            *
//*                   (CONTRALORIA)                                    *
//*                                                                    *
//*  PROCESO       :  ZMGLPE38                                         *
//*                                                                    *
//*  DISPARADOR    :  SIVAXAGR (DISPARADOR)                            *
//*                                                                    *
//*  OBJETIVO      :  GENERAR  EL REPORTE  QUE DETALLA TODAS LAS       *
//*                   CUENTAS QUE OBTIENE ALTO GRADO DE RIESGOS.       *
//*                                                                    *
//*  CORRE ANTES DE  : NINGUNO                                         *
//*                                                                    *
//*  CORRE DESPUES DE: NINGUNO                                         *
//*                                                                    *
//*  PERIODICIDAD    : EVENTUAL (CORRE A SOLICITUD DEL USUARIO)        *
//*                                                                    *
//*  ELABORADO POR   : ARACELI SALAZAR PEREZ (GETRONICS)               *
//*                                                                    *
//*  FECHA           : JUNIO     2005.                                 *
//*                                                                    *
//*  OBSERVACIONES   : SUBMITIDO DESDE EL MENU PRINCIPAL               *
//*                                                      ZT69 (OPC.406)*
//*                                                      Z406 (OPC.657)*
//**********************************************************************
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ASP  |12-08-2005|       |   00   |CAMBIO DE BIBLIOTECA PARA CTRL-D *
//**********************************************************************
//* PROGRAMA: ZM3DG001                                                 *
//* OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS CARGA      *
//*           EN ARCHIVO PARA SIGUIENTES PASOS                         *
//*                                              ***RECIBE PARAMETROS  *
//**********************************************************************
//PGL38P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.OTR.E&EMP..S&SUC..ZMGLPE38,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//**********************************************************************
//*                       --  ZM4EGP42  --                             *
//* OBJETIVO :    REPORTE DE ALTO GRADO DE RIESGO                      *
//**********************************************************************
//PGL38P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGP42P1 DD DSN=MXCP.ZM.TMP.OTR.E&EMP..S&SUC..ZMGLPE38,DISP=SHR
//*
//ZMGP42R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL38T01),DISP=SHR
//**********************************************************************
//*                       --   CTMSND   --                             *
//*      SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTRL-D          *
//**********************************************************************
//PGL38P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXAGR_IN_SEP_OK WDATE',
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
//**********************************************************************
//*                      F I N   Z M G L P E 3 8                       *
//**********************************************************************
