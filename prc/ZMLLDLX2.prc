//ZMLLDLX2 PROC                                                         00010800
//*                                                                     00020000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *
//*                                                                    *
//*   PROCEDIM. :  ZMLLDLX2 .                                          *
//*                                                                    *
//*   OBJETIVO  :  PROCESO DE CORTE DE CUPON SORPRESIVO                *
//*                                                                    *
//*   CORRE DESPUES DE:  BCLLDLX2                                      *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR   :                                                *
//*                                                                    *
//*   FECHA:  NOVIEMBRE  2010.                                         *
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
//PLCX2P60 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLDLX2,
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
//*  PASO:  1   CREA CASCARON NUEVO CUPON CORTE DE CUPON SORPRESIVO    *00030000
//*                                                   -  ZM4DLX25  -   *00040000
//**********************************************************************00060000
//PLCX2P50 EXEC PGM=IKJEFT01,COND=(4,LT)                                00510002
//*                                                                     00520000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00570000
//SYSPRINT DD  SYSOUT=*                                                 00580000
//SYSOUT   DD  SYSOUT=*                                                 00590000
//SYSDBOUT DD  SYSOUT=*                                                 00600000
//SYSABOUT DD  DUMMY                                                    00610000
//SYSUDUMP DD  DUMMY                                                    00620002
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLCX2T50),DISP=SHR                  00630000
//*                                                                     00010000
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  2   GENERA REGISTROS EN REDAUXI PARA LIQUIDACIO DE         *00030000
//*             CORTE DE CUPON SORPRESIVO                              *00030000
//*                                                   -  ZM4DLX26  -   *00040000
//**********************************************************************00060000
//PLCX2P30 EXEC PGM=IKJEFT01,COND=(4,LT)                                00510002
//*                                                                     00520000
//ZMLX26A1 DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZXLLDLX2,DISP=SHR  00520000
//*                                                                     00520000
//ZMLX26R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00520000
//*                                                                     00520000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00570000
//SYSPRINT DD  SYSOUT=*                                                 00580000
//SYSOUT   DD  SYSOUT=*                                                 00590000
//SYSDBOUT DD  SYSOUT=*                                                 00600000
//SYSABOUT DD  DUMMY                                                    00610000
//SYSUDUMP DD  DUMMY                                                    00620002
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLCX2T30),DISP=SHR                  00630000
//*                                                                     00010000
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*PROGRAMA: ZM4DLE11                                                  *00030000
//*  FUNCION:  ACTUALIZA EL FINAL DEL PROCESO DE CORTE DE CUPON        *00030000
//*            SORPRESIVO. (ACT EN "F" EL EVENTO CCS).                 *00040000
//**********************************************************************00060000
//PLCX2P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00510002
//*                                                                     00520000
//ZMLE11A1 DD  DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZXLLDLX2,DISP=SHR  00520000
//*                                                                     00520000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00570000
//SYSPRINT DD  SYSOUT=*                                                 00580000
//SYSOUT   DD  SYSOUT=*                                                 00590000
//SYSDBOUT DD  SYSOUT=*                                                 00600000
//SYSABOUT DD  DUMMY                                                    00610000
//SYSUDUMP DD  DUMMY                                                    00620002
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLCX2T15),DISP=SHR                  00630000
//*                                                                     00010000
//**********************************************************************00010000
//*            F I N      Z M L L D L X 2                              *
//**********************************************************************00060000
