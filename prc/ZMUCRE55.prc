//ZMUCRE55 PROC                                                         00010800
//*                                                                     00020000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *
//*                                                                    *
//*   PROCEDIM. :  CBLICD05  INICIO DE DIA DEL SIVA.                   *
//*                                                                    *
//*   OBJETIVO  :  INICIO DE DIA DE MERCADO DE DINERO.                 *
//*                                                                    *
//*   CORRE DESPUES DE: CBJICD02                                       *
//*                                                                    *
//*   CORRE ANTES DE  : CBHIND08                                       *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR: J. JAIME FLORES ESTRADA                           *
//*                                                                    *
//*   FECHA:  SEPTIEMBRE 2003.                                         *
//*                                                               OSCT *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00030000
//*  PLI05P26     GRABA EN ARCHIVO SECUENCIAL.                         *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PUC55P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,
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
//*  PASO:  1     PREPARAR REPORTOS A PLAZO.                           *00030000
//*  PLI05P16     ACTUALIZA :REDAUXI                        ZM4DLH54   *00040000
//**********************************************************************00060000
//PUC55P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00510002
//*                                                                     00520000
//ZMLH55A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*                                                                     00520000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00560000
//SYSPRINT DD  SYSOUT=*                                                 00570000
//SYSOUT   DD  SYSOUT=*                                                 00580000
//SYSDBOUT DD  SYSOUT=*                                                 00590000
//SYSABOUT DD  DUMMY                                                    00600000
//SYSUDUMP DD  DUMMY                                                    00610000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T14),DISP=SHR                  00620002
//*                                                                     00630000
//**********************************************************************00010000
//*            F I N      Z M L I P D 0 5                              *
//**********************************************************************00060000
