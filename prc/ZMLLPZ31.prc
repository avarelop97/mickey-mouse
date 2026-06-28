//ZMLLPZ31 PROC                                                         00001000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBLLPZ31 ZMLLPZ31                                   *
//*                                                                    *
//*   OBJETIVO  :  REALIZA LA ASIGNACION DEFINITIVA DE MDD             *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMLLPP29 CBLLPZ29                             *
//*                                                                    *
//*   PERIODICIDAD    :  A PETICION DEL USUARIO                        *
//*                                                                    *
//*   ELABORADO POR: ASATECK.                                          *
//*                                                                    *
//*   FECHA:  JULIO  2002                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).                       *
//* FECHA          :  NOVIEMBRE 2008.                                  *
//**********************************************************************
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     INICIALIZA EVENTO PARA LIMITAR COMPRAS Y VENTAS      *00030000
//*  PLL31P14                     PD5 = I (UIPD51)          ZM4DLE11   *00040000
//**********************************************************************00060000
//PLL31P14 EXEC PGM=IKJEFT01
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE31,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL31T14),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  3     ACTUALIZA EN CTLPROC PD0 PARA LIMITAR LA OPERACION   *00030000
//*  PLL31P13     DURANTE LA ASIGNACION DEFINITIVA.                    *00040000
//*                       << UIPD01 >>                      ZM4DLE11   *00020000
//**********************************************************************00060000
//PLL31P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE31,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL31T13),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  4     EJECUTAR LA REVERSION DE DEMANDA CUBIERTA POR ASIG.  *00030000
//*  PLL31P12     AUTOMATICA.                               ZM4ELC27   *00040000
//**********************************************************************00060000
//PLL31P12 EXEC PGM=IKJEFT01,COND=(4,LT)                                00060004
//*                                                                     00070004
//ZMLC27A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE31,DISP=SHR
//*                                                                     00070004
//SYSTSPRT DD  SYSOUT=*                                                 00110004
//SYSPRINT DD  SYSOUT=*                                                 00120004
//SYSOUT   DD  SYSOUT=*                                                 00130004
//SYSDBOUT DD  SYSOUT=*                                                 00150004
//SYSABOUT DD  DUMMY                                                    00160004
//SYSUDUMP DD  DUMMY                                                    00170004
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL31T12),DISP=SHR                  00180008
//*                                                                     00180008
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  5     COMOPRAS, VENTAS Y ACTUALIZACION DE CARTERA          *00030000
//*  PLL31P11       >> PASO NO REINICIABLE POR RESTART <<              *00040000
//*                    -------------------------------      ZM4DLD78   *00020000
//**********************************************************************00060000
//PLL31P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD78A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE31,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//VNBE00R1 DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL31T11),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  6     ACTUALIZACION DE DEMANDA A VALOR NORMAL              *00030000
//*  PLL31P10       >>   PASO REINICIABLE POR RESTART  <<              *00040000
//*                    -------------------------------      ZM4DLD79   *00020000
//**********************************************************************00060000
//PLL31P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD79A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE31,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//VNBE00R1 DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL31T10),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  7     CARGA LA MATRIZ DE INVENTARIO                        *00030000
//*  PLL31P09    >>  PASO REINICIABLE POR RESTART  <<                  *00040000
//*                  ----------------------------           ZM4DLD30   *00020000
//**********************************************************************00060000
//PLL31P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD30P1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE31,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL31T09),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  8     ACTUALIZA LAS EMISORAS DE DEMANDA Y CARGA MTZDEM     *00030000
//*  PLL31P08    >>  PASO REINICIABLE POR RESTART  <<                  *00040000
//*                  ----------------------------           ZM4DLD65   *00020000
//**********************************************************************00060000
//PLL31P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD65P1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE31,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL31T08),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *
//*  PASO:  9     ACTUALIZA EL RENGLON DE CARGA DE MATRICES DE INVENTA-*00030000
//*  PLL31P07     RIO Y DEMANDA DE MERCADO DE DINERO.                  *00020000
//*                          << UFPD21 >>                   ZM4DLE11   *00020000
//**********************************************************************00060000
//PLL31P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE31,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL31T07),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  10    EMITIR REPORTE DE ACUMULADO DE COMISIONES ARRIBA Y   *00030000
//*  PLL31P06     ABAJO DE CORRO.    .. NO ACTUALIZA TABLAS ..         *00020000
//*                 >>  PASO REINICIABLE POR RESTART  <<               *00040000
//*                     ----------------------------        ZM4DLD91   *00020000
//**********************************************************************00060000
//PLL31P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD91A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE31,DISP=SHR
//*
//ZMGD91DR DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL31T06),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  11    ACTUALIZA EL RENGLON DE INTERFACES EN CTLPROC        *00030000
//*  PLL31P05       >>  PASO REINICIABLE POR RESTART  <<               *00040000
//*                     ----------------------------                   *00020000
//*                             << UFADC1 >>                ZM4DLE11   *00020000
//**********************************************************************00060000
//PLL31P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                03120000
//*                                                                     03130000
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE31,DISP=SHR
//*                                                                     03130000
//SYSTSPRT DD  SYSOUT=*                                                 03140000
//SYSPRINT DD  SYSOUT=*                                                 03150000
//SYSDBOUT DD  SYSOUT=*                                                 03170000
//SYSUDUMP DD  DUMMY                                                    03180000
//SYSOUT   DD  DUMMY                                                    03160000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL31T05),DISP=SHR                  03190000
//*                                                                     03130000
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  12    ACTUALIZAR EN CTLPROC PD0 PARA LIMITAR LA OPERACION  *00030000
//*  PLL31P04     DURANTE LA ASIGNACION DEFINITIVA.                    *00040000
//*                           << UFPD01 >>                  ZM4DLE11   *00020000
//**********************************************************************00060000
//PLL31P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE31,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL31T04),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  13    FINALIZA EVENTO PARA LIMITAR COMPRAS Y VENTAS.       *00030000
//*  PLL31P03     APAGA EL EVENTO PD5 = F                              *00040000
//*                        << UFPD51 >>                     ZM4DLE11   *00020000
//**********************************************************************00060000
//PLL31P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE31,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL31T03),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  14    FINALIZA EVENTO ASIGNACION DEFINITIVA BANCO.         *00030000
//*  PLL31P02     --  F  --                                            *00040000
//*                      << UFADB1 >>                       ZM4DLE11   *00020000
//**********************************************************************00060000
//PLL31P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE31,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL31T02),DISP=SHR
//*
//**********************************************************************00060000
//*                    F I N    Z M L L P Z 3 1                        *00020000
//**********************************************************************00060000
