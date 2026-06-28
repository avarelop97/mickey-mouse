//ZMGLPE35 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   << SOCIEDADES DE INVERSION >                     *
//*                                                                    *
//*  SISTEMA       :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//*  PROCESO       :  ZMGLPE35                                         *
//*                                                                    *
//*  DISPARADOR    :  SIVAXINU (DISPARADOR)                            *
//*                                                                    *
//*  OBJETIVO      :  GENERAR  EL REPORTE  QUE DETALLA TODAS LAS       *
//*                   OPERACIONES  INUSUALES  DE  CASA DE  BOLSA       *
//*                   A PARTIR DE LOS PARÁMETROS DE ITIPOPAR TZ2.      *
//*                                                                    *
//*                                                                    *
//*  CORRE ANTES DE : NINGUNO                                          *
//*                                                                    *
//*  CORRE DESPUES DE: NINGUNO                                         *
//*                                                                    *
//*  PERIODICIDAD    : EVENTUAL (CORRE A SOLICITUD DEL USUARIO)        *
//*                                                                    *
//*  ELABORADO POR   : ARACELI SALAZAR PEREZ                           *
//*                                                                    *
//*  FECHA           : JULIO     2004.                                 *
//*                                                                    *
//*  OBSERVACIONES   : SUBMITIDO DESDE EL MENU PRINCIPAL               *
//*                                                      ZT69 (OPC.406)*
//*                                                      ZZ42          *
//**********************************************************************
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//* PROGRAMA: ZM3DG001                                                 *
//* OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS CARGA      *
//*           EN ARCHIVO PARA SIGUIENTES PASOS                         *
//*                                              ***RECIBE PARAMETROS  *
//**********************************************************************
//PGL35P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.OTR.E&EMP..S&SUC..ZMGLPE35,
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
//*                       --  ZM4DGV39  --                             *
//* OBJETIVO :    REPORTE DE OPERACIONES INUSUALES (ENVIO IMP. USUARIO)*
//**********************************************************************
//PGL35P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMGV39P1 DD DSN=MXCP.ZM.TMP.OTR.E&EMP..S&SUC..ZMGLPE35,DISP=SHR
//*
//ZMGV39R1 DD SYSOUT=S,DEST=CONTAB01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL35T01),DISP=SHR
//**********************************************************************
//*                       --  ZM4DGV39  --                             *
//* OBJETIVO :    REPORTE DE OPERACIONES INUSUALES                     *
//**********************************************************************
//PGL35P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMGV39P1 DD DSN=MXCP.ZM.TMP.OTR.E&EMP..S&SUC..ZMGLPE35,DISP=SHR
//*
//ZMGV39R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL35T01),DISP=SHR
//**********************************************************************
//*                       --   CTMSND   --                             *
//*      SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTRL-D          *
//**********************************************************************
//PGL35P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXINU_IN_SEP_OK WDATE',
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
//*                      F I N   Z M G L P E 3 5                       *
//**********************************************************************
