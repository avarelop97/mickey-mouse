//ZMLLPE27 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  SIVAXE71  OPC(932)                                  *
//*                                                                    *
//*   OBJETIVO  :  CARGA DE LA DEMANDA E INVENTARIO ESPECIFICO PARA    *
//*                LA ASIGNACION DE MDD.                               *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  CORRE A PETISION DEL USUARIO.                 *
//*                                                                    *
//*   ELABORADO POR: ASATECK.                                          *
//*                                                                    *
//*   FECHA:  JULIO  2002                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*H.P.C.|17/JUL/02 |IDCEX52|TODOS   |STANDARES PARA PU                *
//**********************************************************************
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PLL27P07     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PLL27P07 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE27,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     ACTUALIZA PRECIOS EN MDD EN LA TABLA DE PRECIOS.     *00030000
//*  PLL27P06                                              ZM4DLN26    *00040000
//**********************************************************************00060000
//PLL27P06 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M                      00070000
//*
//ZMLN26A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE27,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00090000
//SYSPRINT DD  SYSOUT=*                                                 00100000
//SYSOUT   DD  SYSOUT=*                                                 00110000
//SYSDBOUT DD  SYSOUT=*                                                 00160000
//SYSABOUT DD  DUMMY                                                    00170000
//SYSUDUMP DD  DUMMY                                                    00180000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL27T06),DISP=SHR                  00190006
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  3     REALIZA LA CARGA DE LA DEMANDA Y EL PAPEL ESPECIFICO.*00030000
//*  PLL27P05                                              ZM4DLN17    *00040000
//**********************************************************************00060000
//PLL27P05 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//*
//ZMLN17A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE27,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL27T05),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  4     EMITIR REPORTE DE DEMANDAS DUPLICADAS.               *00030000
//*  PLL27P04                                              ZM4DLD83    *00040000
//**********************************************************************00060000
//PLL27P04 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)
//*
//ZMLD83A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE27,DISP=SHR
//*
//ZMLD83DR DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL27T04),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  5     REPORTE DE DEMANDA NO CUBIERTA Y DE POSICION DE      *00030000
//*  PLL27P03     OFERTA.                                  ZM4DLD77    *00040000
//**********************************************************************00060000
//PLL27P03 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//*
//ZMLD77A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE27,DISP=SHR
//*
//ZMLD77R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLD77R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL27T03),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  6     INICIALIZA EL EVENTO PARA FINALIZAR CARGA ESPECIFICA *00030000
//*  PLL27P02     APAGA EL EVENTO PD6 --> 'F'              ZM4DLE11    *00040000
//**********************************************************************00060000
//PLL27P02 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE27,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL27T02),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  7     SE ADICIONA CONDICION PARA QUE SEA TOMADA POR        *00030000
//*  PLL27P01     CTRL-D.                                              *00040000
//**********************************************************************00060000
//PLL27P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXE71_IN_SEP_OK WDATE',
//         COND=(4,LT)
//*
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//*
//**********************************************************************00010000
//*                   F I N    Z M L L P E 2 7                         *00020000
//**********************************************************************00060000
