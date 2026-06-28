//ZMLIPD05 PROC                                                         00010800
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
//**                     LOG DE MODIFICACIONES                       **
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **
//** LOG           : FIDEICOMISOS-09                                 **
//** RESPONSABLE   : ACCENTURE (YPC)                                 **
//** FECHA         : 2009-03-02                                      **
//** DESCRIPCION   : AGREGAR EL REPORTE DE REDENCIONES DE REPORTO  Y **
//**                 EL REPORTE DE AMORTIZACION DE EMISORAS PARA LOS **
//**                 CONTRATOS DE FIDEICOMISOS                       **
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **
//** LOG           : FIDEICOMISOS-09                                 **
//** RESPONSABLE   : SWF-BBVA ACCENTURE  -- MARCA  (XM09134) --      **
//** FECHA         : 2010-11-01                                      **
//** DESCRIPCION   : AGREGAR EL PASO PLI05P05                        **
//**                 GENERA EL ARCHIVO REPORTE DE REDENCIONES DE      *
//**                 REPORTO A UN  EL REPORTE DE AMORTIZACION DE      *
//**                 EMISORAS PARA LOS CONTRATOS DE FIDEICOMISOS      *
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **
//** LOG           : FIDEICOMISOS-10                                 **
//** RESPONSABLE   : SWF-BBVA ACCENTURE  -- MARCA  (XM09250) --      **
//** FECHA         : 2010-11-29                                      **
//** DESCRIPCION   : SE MODIFICAN LAS SALIDAS DEL PASO PLI05P05      **
//**                 DEJANDOLAS COMO SE MUESTAN                      **
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00030000
//*  PLI05P26     GRABA EN ARCHIVO SECUENCIAL.                         *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PLI05P26 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
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
//*                <<<   PASO REINICIABLE POR RESTART   >>>            *00020000
//*  PASO:  2     GENERAR ARCHIVO DE COMISIONES                        *00030000
//*  PLI05P25                                               ZM4DGR16   *00040000
//**********************************************************************00060000
//PLI05P25  EXEC PGM=IKJEFT01,COND=(4,LT)                               00030024
//*
//ZMGR16A2 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*
//*SDATOOL-41254-KAR-INI
//*ZMGR16A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..IDD05.COMIS,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(DSORG=PS,RECFM=FBA,LRECL=78,BLKSIZE=0),
//*            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//ZMGR16A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..IDD05.COMIS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=83,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*SDATOOL-41254-KAR-FIN
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00070024
//SYSPRINT DD SYSOUT=*                                                  00090024
//SYSOUT   DD SYSOUT=*                                                  00100024
//SYSDBOUT DD SYSOUT=*                                                  00110024
//SYSABOUT DD DUMMY                                                     00120024
//SYSUDUMP DD DUMMY                                                     00130024
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLI05T25),DISP=SHR                   00140024
//*
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART   >>>            *00020000
//*  PASO:  3     ARCHIVO DE MOVIMIENTOS Y TENENCIA DE LA CUENTA       *00030000
//*  PLI05P24     5035944.                                  ZM4DLN38   *00040000
//**********************************************************************00060000
//PLI05P24 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLN38A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*
//ZMLN38S1 DD  DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..PROPIA,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(DSORG=PS,RECFM=FBA,LRECL=119,BLKSIZE=0),
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01710000
//SYSPRINT DD SYSOUT=*                                                  01720000
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T24),DISP=SHR
//*                                                                    *00260000
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART   >>>            *00020000
//*  PASO:  4     ARCHIVO DE MOVIMIENTOS Y TENENCIAS DE LA CUENTA      *00030000
//*  PLI05P23     5164017.                                  ZM4DLN38   *00040000
//**********************************************************************00060000
//PLI05P23  EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLN38A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*
//ZMLN38S1 DD  DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..PROPIA,DISP=MOD
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01710000
//SYSPRINT DD SYSOUT=*                                                  01720000
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLI05T23),DISP=SHR
//*                                                                    *00260000
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART   >>>            *00020000
//*  PASO:  5     ARCHIVO DE MOVIMIENTOS Y TENENCIAS DE LA CUENTA      *00030000
//*  PLI05P22     5207410.                                  ZM4DLN38   *00040000
//**********************************************************************00060000
//PLI05P22  EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLN38A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*
//ZMLN38S1 DD  DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..PROPIA,DISP=MOD
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01710000
//SYSPRINT DD SYSOUT=*                                                  01720000
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLI05T22),DISP=SHR
//*                                                                    *00260000
//**********************************************************************00010000
//*                                                                    *00060000
//*  PASO:  6     SPUFI QUE INICIALIZA LA TABLA PARAM P09 UTILIZADA EN *00030000
//*  PLI05P21     EL  PROCESO DE TRANSMISION DE INFORMACION DE LA BMV. *00040000
//**********************************************************************00060000
//PLI05P21 EXEC PGM=IKJEFT01,COND=(4,LT)                                00009000
//*                                                                     00150000
//SYSTSPRT DD  SYSOUT=*                                                 00010000
//SYSPRINT DD  SYSOUT=*                                                 00020000
//SYSUDUMP DD  DUMMY                                                    00030000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T99),DISP=SHR                  00040000
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZLI05T21),DISP=SHR                  00100000
//*                                                                     00150000
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  7     REPORTE DE OPERACIONES REALIZADAS A TASA REAL O DLL. *00030000
//*  PLI05P20                          CASA                 ZM4DLH16   *00040000
//**********************************************************************00060000
//PLI05P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                01520000
//*                                                                     01530000
//ZMLH16A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*                                                                     01530000
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMLH16R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMLH16R1 DD DSN=MXCP.ZM.FIX.E&EMP..ZMLIPD05.REPORTE1,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(3,1),RLSE)
//ZMLH16R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*                                                                     01510000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   01540000
//SYSPRINT DD  SYSOUT=*                                                 01550000
//SYSOUT   DD  SYSOUT=*                                                 01560000
//SYSDBOUT DD  SYSOUT=*                                                 01570000
//SYSABOUT DD  DUMMY                                                    00114100
//SYSUDUMP DD  DUMMY                                                    00114200
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T20),DISP=SHR                  01590000
//*
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  8     GENERA EL RENGLON DE INTERFACES EN CTLPROC.          *00030000
//*  PLI05P19                   'IIPD11'                    ZM4DLE11   *00040000
//**********************************************************************00060000
//PLI05P19 EXEC PGM=IKJEFT01,COND=(4,LT)                                01520000
//*                                                                     00113500
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*                                                                     01510000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   01540000
//SYSPRINT DD  SYSOUT=*                                                 01550000
//SYSOUT   DD  SYSOUT=*                                                 01560000
//SYSDBOUT DD  SYSOUT=*                                                 01570000
//SYSUDUMP DD  DUMMY                                                    01580000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T19),DISP=SHR                  01590000
//*                                                                     01600000
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  9     ALTA AL MAESTRO DE TASAS.                            *00030000
//*  PLI05P18                                               ZM4DLH51   *00040000
//**********************************************************************00060000
//PLI05P18 EXEC PGM=IKJEFT01,COND=(4,LT)                                00113402
//*                                                                     00113500
//ZMLH51A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*                                                                     00113500
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMLH51R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMLH51R1 DD DSN=MXCP.ZM.FIX.E&EMP..ZMLIPD05.REPORTE2,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(3,1),RLSE)
//ZMLH51R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*                                                                     00113500
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00113600
//SYSPRINT DD  SYSOUT=*                                                 00113700
//SYSOUT   DD  SYSOUT=*                                                 00113800
//SYSDBOUT DD  SYSOUT=*                                                 00114000
//SYSABOUT DD  DUMMY                                                    00114100
//SYSUDUMP DD  DUMMY                                                    00114200
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T18),DISP=SHR                  00114302
//*                                                                     00114700
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  10    CANCELACION DE LA CUENTA SIVATIVA.                   *00030000
//*  PLI05P17     ACTUALIZA :CARTERA, CARTAUX Y OPERDIN     ZM4DLH52   *00040000
//**********************************************************************00060000
//PLI05P17 EXEC PGM=IKJEFT01,COND=(4,LT)                                00116002
//*                                                                     00120000
//ZMLH52A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*                                                                     00120000
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMLH52R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMLH52R1 DD DSN=MXCP.ZM.FIX.E&EMP..ZMLIPD05.REPORTE3,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(3,1),RLSE)
//*
//*ZMLH52R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMLH52R2 DD DSN=MXCP.ZM.FIX.E&EMP..ZMLIPD05.REPORTE4,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(3,1),RLSE)
//*
//ZMLH52R1 DD DUMMY
//ZMLH52R2 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*                                                                     00120000
//*                                                                     00115900
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150000
//SYSPRINT DD  SYSOUT=*                                                 00160000
//SYSOUT   DD  SYSOUT=*                                                 00170000
//SYSDBOUT DD  SYSOUT=*                                                 00200000
//SYSABOUT DD  DUMMY                                                    00210000
//SYSUDUMP DD  DUMMY                                                    00220000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T17),DISP=SHR                  00230002
//*                                                                     00240000
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  11    PREPARAR REPORTOS A PLAZO.                           *00030000
//*  PLI05P16     ACTUALIZA :REDAUXI                        ZM4DLH54   *00040000
//**********************************************************************00060000
//PLI05P16 EXEC PGM=IKJEFT01,COND=(4,LT)                                00510002
//*                                                                     00520000
//ZMLH54A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*                                                                     00520000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00560000
//SYSPRINT DD  SYSOUT=*                                                 00570000
//SYSOUT   DD  SYSOUT=*                                                 00580000
//SYSDBOUT DD  SYSOUT=*                                                 00590000
//SYSABOUT DD  DUMMY                                                    00600000
//SYSUDUMP DD  DUMMY                                                    00610000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T16),DISP=SHR                  00620002
//*                                                                     00630000
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  12    CHECAR LA NO EXISTENCIA DEL EVENTO PD8(CIERRE MDD)   *00030000
//*  PLI05P15     PARA LA CORRECTA EJECUCUON DEL PGM ZM4DLH55          *00040000
//*               (REDENCION)                               ZM4DLM12   *00040000
//**********************************************************************00060000
//PLI05P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLM12A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*                                                                     00520000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T15),DISP=SHR
//*
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  13    PREPARAR ALTA AL MAESTRO DE TASAS.                   *00030000
//*  PLI05P14     ACTUALIZA  : CARTERA,OPERDIN,CARTAUX,REPORTO,RENDEMD *00040000
//*                                                         ZM4DLH55   *00040000
//**********************************************************************00060000
//PLI05P14 EXEC PGM=IKJEFT01,COND=(4,LT)                                00690002
//*                                                                     00680000
//ZMLH55A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*                                                                     00680000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00741000
//SYSPRINT DD  SYSOUT=*                                                 00742000
//SYSOUT   DD  SYSOUT=*                                                 00743000
//SYSDBOUT DD  SYSOUT=*                                                 00744000
//SYSABOUT DD  DUMMY                                                    00745000
//SYSUDUMP DD  DUMMY                                                    00746000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T14),DISP=SHR                  00746102
//*                                                                     00746500
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  14    PREPARAR ALTA AL MAESTRO DE TASAS.                   *00030000
//*  PLI05P13                    CASA                       ZM4DLH56   *00040000
//**********************************************************************00060000
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLI05P13 EXEC PGM=IKJEFT01,COND=(4,LT)                               00747902
//**                                                                    00747800
//*ZMLH56A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//**                                                                    00747800
//**ZMLH56R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//**ZMLH56R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//**                                                                    00015000
//*SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                  00748100
//*SYSPRINT DD  SYSOUT=*                                                00748200
//*SYSOUT   DD  SYSOUT=*                                                00748300
//*SYSDBOUT DD  SYSOUT=*                                                00748600
//*SYSABOUT DD  DUMMY                                                   00748700
//*SYSUDUMP DD  DUMMY                                                   00748800
//*SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T13),DISP=SHR                 00748902
//**                                                                    00015000
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  15    ELIMINA LOS REGISTROS DE DIA DE HOY QUE NO TENGAN    *00030000
//*  PLI05P12     INVENTARIO, NI REGRESO DE REPORTO O POSICION EN      *00040000
//*               CARTERA. ACT : PRECIO.                               *00040000
//*                                                         ZM4DLH61   *00040000
//**********************************************************************00060000
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLI05P12 EXEC PGM=IKJEFT01,COND=(4,LT)                               00753502
//**                                                                    00753600
//*ZMLH61A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//**                                                                    00753600
//*ZMLH61R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**                                                                    00753600
//*SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                  00753700
//*SYSPRINT DD  SYSOUT=*                                                00753800
//*SYSOUT   DD  SYSOUT=*                                                00753900
//*SYSDBOUT DD  SYSOUT=*                                                00754000
//*SYSABOUT DD  DUMMY                                                   00754100
//*SYSUDUMP DD  DUMMY                                                   00754200
//*SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T12),DISP=SHR                 00754302
//**                                                                    00754700
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  16    PREPARAR ALTA AL MAESTRO DE TASAS.                   *00030000
//*  PLI05P11     ACTUALIZA : REDAUXI.                                 *00040000
//*                                                         ZM4DLH58   *00040000
//**********************************************************************00060000
//PLI05P11 EXEC PGM=IKJEFT01,COND=(4,LT)                                00753502
//*                                                                     00753400
//ZMLH58A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*                                                                     00753400
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00753700
//SYSPRINT DD  SYSOUT=*                                                 00753800
//SYSOUT   DD  SYSOUT=*                                                 00753900
//SYSDBOUT DD  SYSOUT=*                                                 00754000
//SYSABOUT DD  DUMMY                                                    00754100
//SYSUDUMP DD  DUMMY                                                    00754200
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T11),DISP=SHR                  00754302
//*                                                                     00754700
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  17    REPORTE DE AMORTIZACION DE EMISORAS.                 *00030000
//*  PLI05P10                         CASA                  ZM4DLH59   *00040000
//**********************************************************************00060000
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLI05P10 EXEC PGM=IKJEFT01,COND=(4,LT)                               00756102
//**                                                                    00756200
//*ZMLH59A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//**                                                                    00756200
//*ZMLH59R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**                                                                    00756600
//*ZMLH59R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**                                                                    00015001
//*** FIDEICOMISOS-09 INI
//*ZMLH59F1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//*ZMLH59F2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*** FIDEICOMISOS-09 INI
//**
//*SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                  00756300
//*SYSPRINT DD  SYSOUT=*                                                00756400
//*SYSOUT   DD  SYSOUT=*                                                00756500
//*SYSDBOUT DD  SYSOUT=*                                                00756800
//*SYSABOUT DD  DUMMY                                                   00756900
//*SYSUDUMP DD  DUMMY                                                   00757000
//*SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T10),DISP=SHR                 00757102
//**                                                                    00757500
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  18    ACTUALIZA EL RENGLON DE INTERFACES EN CTLPROC        *00030000
//*  PLI05P09               'UFPD11'                        ZM4DLE11   *00040000
//**********************************************************************00060000
//PLI05P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                03120000
//*                                                                     00113500
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*                                                                     03110000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   03140000
//SYSPRINT DD  SYSOUT=*                                                 03150000
//SYSOUT   DD  SYSOUT=*                                                 03160000
//SYSDBOUT DD  SYSOUT=*                                                 03170000
//SYSUDUMP DD  DUMMY                                                    03180000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T09),DISP=SHR                  03190000
//*                                                                     03200000
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  19    GENERA EL RENGLON  DE CARGA DE MATRICES DE INVENTARIO*00030000
//*  PLI05P08     Y DEMANDA DE MERCADO DE DINERO.                      *00040000
//*                           'IIPD21'                      ZM4DLE11   *00040000
//**********************************************************************00060000
//PLI05P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                03310000
//*                                                                     00113500
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*                                                                     03320000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   03330000
//SYSPRINT DD  SYSOUT=*                                                 03340000
//SYSOUT   DD  SYSOUT=*                                                 03350000
//SYSDBOUT DD  SYSOUT=*                                                 03360000
//SYSUDUMP DD  DUMMY                                                    03370000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T08),DISP=SHR                  03380000
//*                                                                     03390000
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  21    PONE EVENTOS DE INICIO DE DIA PARA MDD               *00030000
//*  PLI05P06                                          ZM4DLE12        *00040000
//**********************************************************************00060000
//PLI05P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                04100000
//*                                                                     00113500
//ZMLE12A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*                                                                     04110000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   04120000
//SYSPRINT DD  SYSOUT=*                                                 04130000
//SYSOUT   DD  SYSOUT=*                                                 04140000
//SYSDBOUT DD  SYSOUT=*                                                 04150000
//SYSUDUMP DD  DUMMY                                                    04160000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T06),DISP=SHR                  04170000
//*                                                                     04180000
//**********************************************************************
//**XM09134--> INI                                                     *
//* PASO     : PLI05P05                                                *
//* PROGRAMA : ZM4DLE25                                                *
//* OBJETIVO : GENERA EL ARCHIVO REPORTE DE REDENCIONES DE REPORTO A UN*
//*            DIA.                                                    *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLI05P05 EXEC PGM=IKJEFT01,COND=(04,LT)
//**
//*ZMLE25A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,
//*            DISP=SHR
//*** FIDEICOMISOS-10 INI
//*ZMLE25R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//*ZMLE25F1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*** FIDEICOMISOS-10 FIN
//**
//*SYSOUT   DD  SYSOUT=*
//*SYSPRINT DD  SYSOUT=*
//*SYSABOUT DD  SYSOUT=*
//*SYSDBOUT DD  SYSOUT=*
//*SYSUDUMP DD  SYSOUT=*
//*SYSTSPRT DD  SYSOUT=*
//*SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T30),DISP=SHR                 04170000
//**
//**XM09134<-- FIN                                                     *
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:  25    DEPURACION DE CARTAUX.                               *00030000
//*  PLI05P02                                               ZM4DLM28   *00040000
//**********************************************************************00060000
//PLI05P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLM28A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLI05T02),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *
//*  PASO:  26    IMPRIMIR  REPORTE DE COMISIONES EN EL INICIO DE DIA  *00030000
//*  PLI05P01     DE MERCADO DE DINERO USUARIO HORACIO M. DEL CAMPO.   *00040000
//*                                                         ZM4DLM02   *
//**********************************************************************00060000
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLI05P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMLM02A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//**
//*ZMLM02R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//*SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD  SYSOUT=*
//*SYSOUT   DD  SYSOUT=*
//*SYSDBOUT DD  SYSOUT=*
//*SYSABOUT DD  DUMMY
//*SYSUDUMP DD  DUMMY
//*SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T01),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************00010000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00060000
//*  PASO:        REPORTE DE REDENCIONES DE REPORTO                    *00030000
//*  PLI05P00                                               ZM4DLE20   *00040000
//**********************************************************************00060000
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLI05P00 EXEC PGM=IKJEFT01,COND=(4,LT)                               00747902
//**                                                                    00747800
//*ZMLE20A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLIPD05,DISP=SHR
//**                                                                    00747800
//*ZMLE20R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**                                                                    00015000
//*** FIDEICOMISOS-09 INI
//*ZMLE20F1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*** FIDEICOMISOS-09 INI
//**
//*SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                  00748100
//*SYSPRINT DD  SYSOUT=*                                                00748200
//*SYSOUT   DD  SYSOUT=*                                                00748300
//*SYSDBOUT DD  SYSOUT=*                                                00748600
//*SYSABOUT DD  DUMMY                                                   00748700
//*SYSUDUMP DD  DUMMY                                                   00748800
//*SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLI05T00),DISP=SHR                 00748902
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*  PASO:        REPORTE DE REDENCIONES DE REPORTO                    *
//*  PLI05P0A                                                          *
//**********************************************************************
//PLI05P0A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE30S1 DD  DSN=MXCP.ZM.FIX.E&EMP..REPDE.REPORT.ZMLIPD05,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSTSIN  DD  DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZLI05T0A)
//*
//**********************************************************************00010000
//*            F I N      Z M L I P D 0 5                              *
//**********************************************************************00060000
