//ZMLLPE32 PROC                                                         00001000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  SIVAXE7C                                            *
//*                                                                    *
//*   OBJETIVO  :  ASIGNACION DEFINITIVA ESPECIFICA                    *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  A PETICION DEL USUARIO                        *
//*                                                                    *
//*   ELABORADO POR: ASATECK.                                          *
//*                                                                    *
//*   FECHA:  JUNIO  2002                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PLL32P14     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PLL32P14 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE32,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
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
//*  PASO:  2     INICIALIZA EL EVENTO PARA LIMITAR COMPRAS Y VENTAS   *00030000
//*  PLL32P13     ENCIENDE EVENTO   PD5 = I                 ZM4DLE11   *00040000
//**********************************************************************00060000
//PLL32P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE32,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL32T13),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  3     ACTUALIZA EL RENGLON DE CARGA DE MATRICES DE INVENTA-*00030000
//*  PLL32P12     RIO Y DEMANDA DE MERCADO DE DINERO.                  *00040000
//*                          PD0 = I                         ZM4DLE11  *00020000
//**********************************************************************00060000
//PLL32P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE32,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL32T12),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  3     EJECUTAR LA REVERSION DE DEMANDA ESPECIFICA CUBIERTA *00030000
//*  PLL32P11     POR ASIGNACION AUTOMATICA.                           *00040000
//*                                                          ZM4DLN86  *00020000
//**********************************************************************00060000
//PLL32P11 EXEC PGM=IKJEFT01,COND=(4,LT)                                00060004
//*                                                                     00070004
//ZMLN86A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE32,DISP=SHR
//*                                                                     00070004
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00110004
//SYSPRINT DD  SYSOUT=*                                                 00120004
//SYSOUT   DD  SYSOUT=*                                                 00130004
//SYSDBOUT DD  SYSOUT=*                                                 00150004
//SYSABOUT DD  DUMMY                                                    00160004
//SYSUDUMP DD  DUMMY                                                    00170004
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL32T11),DISP=SHR                  00180008
//*                                                                     00180008
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  4     COMPRAS, VENTAS ESPECIFICAS Y ACTUALIZACION DE       *00030000
//*  PLL32P10     CARTERA.                                             *00040000
//*                     >>  PASO REINICIABLE POR RESTART <<            *00020000
//*                         ----------------------------     ZM4DLN56  *00020000
//**********************************************************************00060000
//PLL32P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLN56A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE32,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL32T10),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  5     ACTUALIZACION DE DEMANDA ESPECIFICA A VALOR NORMAL   *00030000
//*  PLL32P09     CARTERA.                                             *00040000
//*                     >>  PASO REINICIABLE POR RESTART <<            *00020000
//*                         ----------------------------     ZM4DLN09  *00020000
//**********************************************************************00060000
//PLL32P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLN09A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE32,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL32T09),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  6     CARGA LA MATRIZ DE INVENTARIO                        *00030000
//*  PLL32P08           >>  PASO REINICIABLE POR RESTART <<            *00020000
//*                         ----------------------------     ZM4DLD30  *00020000
//**********************************************************************00060000
//PLL32P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD30P1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE32,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL32T08),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  7     ACTUALIZA LAS EMISORAS DE LA TABLA DEMANDA Y CARGA   *00030000
//*  PLL32P07     MTZDEM.                                              *00020000
//*                       >> PASO EINICIABLE POR RESTART <<            *00020000
//*                          ---------------------------     ZM4DLD65  *00020000
//**********************************************************************00060000
//PLL32P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD65P1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE32,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL32T07),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  8     ACTUALIZA EL RENGLON DE CARGA DE MATRICES DE INVENTA-*00030000
//*  PLL32P06     RIO Y DEMANDA DE MERCADO DE DINERO.                  *00020000
//*                              PD2 = F                     ZM4DLE11  *00020000
//**********************************************************************00060000
//PLL32P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE32,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL32T06),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  9     EMITIR REPORTE DE ACUMULADO DE COMISIONES ARRIBA Y   *00030000
//*  PLL32P05     ABAJO DE CORRO.                                      *00020000
//*                       >> PASO EINICIABLE POR RESTART <<            *00020000
//*                          ---------------------------               *00020000
//* NO ACTUZLIZA TABLAS                                      ZM4DLD91  *00020000
//**********************************************************************00060000
//PLL32P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD91A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE32,DISP=SHR
//*
//ZMGD91DR DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL32T05),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  10    ACTUALIZA EL RENGLON DE INTERFACES EN CTLPROC        *00030000
//*  PLL32P04         >> PASO EINICIABLE POR RESTART <<                *00020000
//*                          ---------------------------               *00020000
//*                          PD7 = F                         ZM4DLE11  *00020000
//**********************************************************************00060000
//PLL32P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                03120000
//*                                                                     03130000
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE32,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL32T04),DISP=SHR                  03190000
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  11    ACTUALIZA EL RENGLON DE INTERFACES EN CTLPROC        *00030000
//*  PLL32P03         >> PASO EINICIABLE POR RESTART <<                *00020000
//*                          ---------------------------               *00020000
//*                          ADE = F                         ZM4DLE11  *00020000
//**********************************************************************00060000
//PLL32P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                03120000
//*                                                                     03130000
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE32,DISP=SHR
//*                                                                     03130000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL32T03),DISP=SHR                  03190000
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  12    ACTUALIZA EL RENGLON DE CARGA DE MATRICES DE INVENTA-*00030000
//*  PLL32P02     RIO Y DEMANDA DE MERCADO DE DINERO.                  *00020000
//*                          PD0 = F                         ZM4DLE11  *00020000
//**********************************************************************00060000
//PLL32P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE32,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL32T02),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  13    FINALIZA EL EVENTO PARA LIMITAR COMPRAS Y VENTAS     *00030000
//*  PLL32P01     APAGA EL EVENTO.                                     *00020000
//*                          PD5 = F                         ZM4DLE11  *00020000
//**********************************************************************00060000
//PLL32P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE32,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL32T01),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*  PASO:  14    SE ADICIONA CONDICION PARA QUE SEA TOMADA POR        *
//*  PLL30P01     CTRL-D.                                              *
//**********************************************************************
//PLL32P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXE7C_IN_SEP_OK WDATE',
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
//*                  F I N    Z M L L P E 3 2                          *00020000
//**********************************************************************00060000
