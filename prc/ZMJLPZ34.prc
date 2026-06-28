//ZMJLPZ34 PROC                                                         00250000
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
//*  PROCEDIM.  :  ZMJLPZ34.                                           *
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
//*  PROGRAMA: ZM4EJ001                                                *00020000
//*  OBJETIVO: REPORTE DE CONTRATOS CARGOS Y ABONOS                    *00030000
//*            A CUENTAS JUMBO BPIGO                                   *00020000
//**********************************************************************00060000
//PJL34P01 EXEC PGM=IKJEFT01                                            00300000
//PI601765 DD DUMMY
//*
//ZMJ001P1 DD DSN=MXCP.ZM.WKF.SIN.EMP.SUC.ZMJLPE34,DISP=SHR             00340000
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
//**********************************************************************00010000
//*                      F I N   Z M J L P Z 3 4                       *00020000
//**********************************************************************00060000
