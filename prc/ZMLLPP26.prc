//ZMLLPP26 PROC
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPP26                                            *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  EJECUTAR LA CARGA DE LA DEMANDA E INVENTARIO PARA   *00003000
//*                LA ASIGNACIóN PREVIA DE MDD.                        *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  CBLLPZ26                                      *00003000
//*   CORRE ANTES DE  :  ASIGNACIóN PREVIA                             *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//**                      LOG DE MODIFICACIONES                        *00003000
//**********************************************************************00003000
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).                       *00003000
//* FECHA          :  NOVIEMBRE 2008.                                  *00003000
//**********************************************************************00003000
//*---------------------------------------------------------------------
//* OBJETIVO:   REALIZAR LA CARGA DE DEMANDA Y MDD A LAS TABLAS
//*           DEMASAU Y OFERTA PARA COMIENZO DE ASIGNACION    M D D
//*---------------------------------------------------------------------
//**********************************************************************00003000
//* OBJETIVO: RECIBE PARAMETROS DE LA APLICACIóN LINEA (OPC 932-CP_1)  *
//**********************************************************************00003000
//PLL26P02 EXEC PGM=ZM3DG001,                                           00040000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00040000
//*                                                                     00130000
//SYSTSPRT DD SYSOUT=*                                                  00130000
//SYSPRINT DD SYSOUT=*                                                  00130000
//SYSOUT   DD SYSOUT=*                                                  00130000
//SYSDBOUT DD SYSOUT=*                                                  00130000
//SYSABOUT DD DUMMY                                                     00130000
//SYSUDUMP DD DUMMY                                                     00130000
//*                                                                     00130000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE26,                     00130000
//            DISP=(NEW,CATLG,DELETE),                                  00130000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0),                       00130000
//            UNIT=3390,SPACE=(CYL,(01,01),RLSE)                        00130000
//*                                                                     00130000
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PLL26P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXD71_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
//*
