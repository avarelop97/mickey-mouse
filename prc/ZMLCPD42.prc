//ZMLCPD42 PROC                                                         00010800
//*                                                                     00020000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *
//*                                                                    *
//*   PROCEDIM. :  ZMLCPD42 .                                          *
//*                                                                    *
//*   OBJETIVO  :  PROCESO DE AMORTIZACIONES ANTICIPADAS SELECTIVAS    *
//*                                                                    *
//*   CORRE DESPUES DE:  SIVAXAAS                                      *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR   :  INDRA-AZERTIA                                 *
//*                                                                    *
//*   FECHA:  DICIEMBRE  2009.                                         *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MARCA          |USUARIO|FECHA |DESCRIPCION                          *
//*--------------------------------------------------------------------*
//*CALIDAD-DELDATO|XM010ZL|191010|SE INCLUYE ARCHIVO SALIDA -> ENTRADA *
//*                              |PARA BLOQUEO DE CONTRATOS QUE PAGAN  *
//*                              |GARANTIAS.                           *
//*--------------------------------------------------------------------*
//**********************************************************************
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00030000
//*               GRABA EN ARCHIVO SECUENCIAL.                         *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PLC40P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD42,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  1   AMORTIZACION ANTICIPADA SELECTIVA.                     *00030000
//*                                                   -  ZM4DLH80  -   *00040000
//**********************************************************************00060000
//PLC40P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00510002
//*                                                                     00520000
//ZMLH80A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZXLLPE42,DISP=SHR
//ZMLH80R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*CALIDAD-DELDATO-I
//ZMLH80S2 DD  DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..ZMLH80S2,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(20,10),RLSE),
//             DCB=(DSORG=PS,LRECL=10,BLKSIZE=0,RECFM=FB)
//*CALIDAD-DELDATO-F
//*                                                                     00520000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00570000
//SYSPRINT DD  SYSOUT=*                                                 00580000
//SYSOUT   DD  SYSOUT=*                                                 00590000
//SYSDBOUT DD  SYSOUT=*                                                 00600000
//SYSABOUT DD  DUMMY                                                    00610000
//SYSUDUMP DD  DUMMY                                                    00620002
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC42T01),DISP=SHR                  00630000
//*                                                                     00520000
//*CALIDAD-DELDATO-I
//**********************************************************************
//*  PROGRAMA: ZM4DLX31
//*  FUNCION:  ACTUALIZA LA TABLA CUENTA Y CAUSCAN CANDADO 1 PARA
//*            GARANTIAS DE AMORTIZACION
//**********************************************************************
//PLC40P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..ZMLH80S2,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC41T01),DISP=SHR
//**
//*CALIDAD-DELDATO-I
//**********************************************************************00010000
//*            F I N      Z M L C P D 4 2                              *
//**********************************************************************00060000
