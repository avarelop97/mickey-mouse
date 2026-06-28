//ZMLCPD40 PROC                                                         00010800
//*                                                                     00020000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *
//*                                                                    *
//*   PROCEDIM. :  ZMLCPD40  INICIO DE DIA DEL SIVA.                   *
//*                                                                    *
//*   OBJETIVO  :  INICIO DE DIA DE MERCADO DE DINERO.                 *
//*                                                                    *
//*   CORRE DESPUES DE:  SIVAXRRC                                      *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR   :  J. JAIME FLORES ESTRADA                       *
//*                                                                    *
//*   FECHA:  NOVIEMBRE  2007.                                         *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00030000
//*               GRABA EN ARCHIVO SECUENCIAL.                         *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PLC40P20 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD40,
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
//*  PASO:  1   SE MUESTRA LA RELACION DE EMISORA DE CANJE.            *00030000
//*                                                   -  ZM4DLH69  -   *00040000
//**********************************************************************00060000
//PLC40P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00510002
//*                                                                     00520000
//ZMLH69A1 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.ZMLLPE39,DISP=SHR
//ZMLH69R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*                                                                     00520000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00570000
//SYSPRINT DD  SYSOUT=*                                                 00580000
//SYSOUT   DD  SYSOUT=*                                                 00590000
//SYSDBOUT DD  SYSOUT=*                                                 00600000
//SYSABOUT DD  DUMMY                                                    00610000
//SYSUDUMP DD  DUMMY                                                    00620002
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC40T01),DISP=SHR                  00630000
//*                                                                     00010000
//**********************************************************************00010000
//*  PROGRAMA: ZM4DLE11
//*  FUNCION:  ACTUALIZA EL FINAL DEL PROCESO DE AMORTIZACIONES
//*            (ACT EN "F" EL EVENTO APT).
//**********************************************************************
//PLC40P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.ZMLLPE39,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC41T02),DISP=SHR
//*
//**********************************************************************
//*            F I N      Z M L C P D 4 0                              *
//**********************************************************************
