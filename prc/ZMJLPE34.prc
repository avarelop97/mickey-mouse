//ZMJLPE34 PROC                                                         00250000
//*                                                                     00020000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   << SOCIEDADES DE INVERSION >>                    *
//*                                                                    *
//*  APLICACION :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*  DISPARADOR :  SIVAXCCA.                 (OPC. 460)                *
//*                                                                    *
//*  PROCEDIM.  :  ZMJLPE34.                                           *
//*                                                                    *
//*  OBJETIVO   :  REPORTE DE CONTRATOS CARGOS Y ABONOS.               *
//*                                                                    *
//*                LIQUIDACION SOCIENDADES DE INVERSION.               *
//*                                                                    *
//*                                                                    *
//*  CORRE ANTES DE  : NINGUNO                                         *
//*                                                                    *
//*  CORRE DESPUES DE: NINGUNO                                         *
//*                                                                    *
//*  PERIODICIDAD    : EVENTUAL (CORRE A SOLICITUD DEL USUARIO)        *
//*                                                                    *
//*  ELABORADO POR   : ARACELI SALAZAR PEREZ                           *
//*                                                                    *
//*  FECHA           : NOVIEMBRE 2003.                                 *
//*                                                                    *
//*  OBSERVACIONES   : SUBMITIDO DESDE EL MENU ADMINISTRACION SOC. INV.*
//*                                                      Z025 (OPC.500)*
//*                                                      Z170 (OPC.543)*
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*  PROGRAMA: ZM3DG001                                                *
//*  OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DE LINEA                 *
//*            Y LOS CARGA EN ARCHIVO PARA SIGUIENTES PASOS            *
//**********************************************************************
//PJL34P02 EXEC PGM=ZM3DG001,REGION=0M,                                 00070000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00080000
//PI601765 DD DUMMY
//*                                                                     00250000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00120000
//SYSPRINT DD SYSOUT=*                                                  00130000
//SYSOUT   DD SYSOUT=*                                                  00140000
//SYSDBOUT DD SYSOUT=*                                                  00150000
//SYSABOUT DD DUMMY                                                     00160000
//SYSUDUMP DD DUMMY                                                     00170000
//*                                                                     00250000
//ZMG001A1 DD DSN=MXCP.ZM.WKF.SIN.E&EMP..S&SUC..ZMJLPE34,               00190000
//            DISP=(NEW,CATLG,DELETE),                                  00200000
//            SPACE=(CYL,(2,1),RLSE),                                   00220000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00210000
//            UNIT=3390                                                 00220000
//*                                                                     00250000
//**********************************************************************00010000
//*  PROGRAMA: ZM4EJ001                                                *00020000
//*  OBJETIVO: REPORTE DE CONTRATOS CARGOS Y ABONOS                    *00030000
//*            A CUENTAS JUMBO BPIGO                                   *00020000
//**********************************************************************00060000
//PJL34P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00300000
//PI601765 DD DUMMY
//*
//ZMJ001P1 DD DSN=MXCP.ZM.WKF.SIN.E&EMP..S&SUC..ZMJLPE34,DISP=SHR       00340000
//*
//ZMJ001R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*                                                                     00360000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00360000
//SYSPRINT DD SYSOUT=*                                                  00370000
//SYSOUT   DD SYSOUT=*                                                  00380000
//SYSDBOUT DD SYSOUT=*                                                  00390000
//SYSABOUT DD SYSOUT=*                                                  00400000
//SYSUDUMP DD DUMMY                                                     00410000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL34T01),DISP=SHR                   00420000
//*
//**********************************************************************
//*  PROGRAMA: CTMCND                                                  *
//*  OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTRL-D    *
//**********************************************************************
//PJL34P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXCCA_IN_SEP_OK WDATE',
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
//**********************************************************************00010000
//*                      F I N   Z M J L P E 3 4                       *00020000
//**********************************************************************00060000
