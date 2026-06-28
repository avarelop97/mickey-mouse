//ZMLFPD23 PROC
//*
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |24/07/2003|IDCEX15|        |SE RENUMERAN TARJETA DE CONTROL  *
//*      |          |       |        |PARA CUMPLIR CON ESTANDARES, SE  *
//*      |          |       |        |AGREGA PASO PARA DEPURAR 'TU4'   *
//*      |          |       |        |DE PARAM PROG ZM4DLD90           *
//**********************************************************************00010000
//*AZCS*SIVA*PENDIENTE*HPC**********************************************00010000
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:        RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00030000
//*  PLF23P32     GRABA EN ARCHIVO SECUENCIAL.                         *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PLF23P32 EXEC PGM=ZM3DG001,PARM=('&EMP','    ','     ','     ',)
//*
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE),
//            BUFNO=30
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00010000
//*  PASO:        PROGRAMA QUE ELIMINA DE LA PARAM LA TU4 QUE YA NO    *00030000
//*  PLF23P31     ESTAN VIGENTES PARAM(I/O), CONCEPT (I)    ZM4DLD90   *00020000
//**********************************************************************00060000
//PLF23P31 EXEC PGM=IKJEFT01,COND=(4,LT)                                00009000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY                                                     00006000
//SYSUDUMP DD DUMMY                                                     00010000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF23T31),DISP=SHR                   00020000
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:        INFORME DIARIO AL BANCO DE MEXICO SOBRE POSICION DE  *00030000
//*  PLF23P30     INSTRUMENTOS GUBERNAMENTALES.                        *00040000
//*                                                         ZM4DGR15   *00020000
//**********************************************************************00060000
//PLF23P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMGR15A2 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMGR15R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMGR15A1 DD  DSN=SIVA.MDD.FIX.E&EMP..INFORMES.CB,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(12,06),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T30),DISP=SHR
//*
//**********************************************************************00010000
//*                << PASO REINICIABLE POR RESTART >>                  *00020000
//*  PASO:        REPORTAR LOS INSTRUMENTOS OPERADOS CON CLIENTES      *00030000
//*  PLF23P29     VALOR HOY Y VALOR NORMAL.                            *00040000
//*                                                         ZM4DGR05   *00020000
//**********************************************************************00060000
//PLF23P29 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGR05A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMGR05R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMGR05R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF23T29),DISP=SHR
//*
//**********************************************************************00010000
//*                << PASO REINICIABLE POR RESTART >>                  *00020000
//*  PASO:        REPORTE DE COMISIONES DE MERCADO DE DINERO.          *00030000
//*  PLF23P28                                               ZM4DLN85   *00020000
//**********************************************************************00060000
//PLF23P28 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLN85A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLN85R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T28),DISP=SHR
//*
//**********************************************************************00010000
//*                << PASO REINICIABLE POR RESTART >>                  *00020000
//*  PASO:        REPORTE DE LAS CONFIRMACIONES IMPRESAS.              *00030000
//*  PLF23P27                                               ZM4DLN98   *00020000
//**********************************************************************00060000
//PLF23P27 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLN98A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLN98R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T27),DISP=SHR
//*
//**********************************************************************00010000
//*                << PASO REINICIABLE POR RESTART >>                  *00020000
//*  PASO:        REPORTE DE LAS OPERACIONES GLOBALES PARA LAS         *00030000
//*  PLF23P26     CONFIRMACIONES DE MDD.                               *00020000
//*                                                         ZM4DLN99   *00020000
//**********************************************************************00060000
//PLF23P26 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLN99A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLN99R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T26),DISP=SHR
//*
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        REPORTE DE OPERACIONES ESPECIALES DE MERCADO DE      *00030000
//*  PLF23P24     DINERO.                                              *00020000
//*                                                         ZM4DLH78   *00020000
//**********************************************************************00060000
//PLF23P24 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765  DD DUMMY
//*
//ZMLH78A2 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLH78R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLH78A1 DD  DSN=SIVA.MDD.FIX.E&EMP..ZM4DLH76,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=101,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T24),DISP=SHR
//*
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        GENERA REPORTE A LA COMISION NACIONAL DE VALORES.    *00030000
//*  PLF23P23                                               ZM4DLH12   *00020000
//**********************************************************************00060000
//PLF23P23 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLH12A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLH12R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T23),DISP=SHR
//*
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        REPORTE DE CUPONES VIGENETE Y SUBSECUENTES PARA      *00030000
//*  PLF23P22     AJUSTABONOS Y BONDES.                     ZM4DLH11   *00020000
//**********************************************************************00060000
//PLF23P22 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLH11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLH11R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T22),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO:        PROGRAMA QUE ELIMINA EL CONTRATO 99127 DEL GRUPO DE  *00030000
//*  PLF23P21     CTAS 85, PASO NECESARIO PARA REPORTE ZM4DLH10 DE C.B.*00020000
//*                                                         ZM4DG003   *00060000
//**********************************************************************00060000
//PLF23P21 EXEC PGM=IKJEFT01,COND=(4,LT)                                00009000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY                                                     00006000
//SYSUDUMP DD DUMMY                                                     00010000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF23T21),DISP=SHR                   00020000
//*
//**********************************************************************00010000
//*                 << PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        INFORME DIARIO AL BANCO DE MEXICO SOBRE POSICION DE  *00030000
//*  PLF23P20     INSTRUMENTOS GUBENAMENTALES.              ZM4DLH10  .*00020000
//**********************************************************************00060000
//PLF23P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMLH10A5 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLH10R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLH10R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLH10R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLH10R4 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLH10R5 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLH10A1 DD  DSN=SIVA.MDD.FIX.E&EMP..INFORME.GUBERCB,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(2,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMLH10A2 DD  DSN=SIVA.MDD.FIX.E&EMP..INFORME.AJUBONO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(2,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMLH10A3 DD  DSN=SIVA.MDD.FIX.E&EMP..INFORME.BONDES,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(2,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMLH10A4 DD  DSN=SIVA.MDD.FIX.E&EMP..INFORME.CETES,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(2,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T20),DISP=SHR
//*                                                                     00032303
//**********************************************************************00010000
//*                 << PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        INFORME DIARIO AL BANCO DE MEXICO SOBRE POSICION DE  *00030000
//*  PLF23P19     INSTRUMENTOS GUBENAMENTALES. (T R I B O N O S ).     *00020000
//*                                                         ZM4DLM98   *00020000
//**********************************************************************00060000
//PLF23P19 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMLM98A5 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLM98R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLM98R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLM98R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLM98R4 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLM98A1 DD  DSN=SIVA.MDD.FIX.E&EMP..INFORME.TRIBONO1,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(2,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMLM98A2 DD  DSN=SIVA.MDD.FIX.E&EMP..INFORME.TRIBONO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(2,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMLM98A3 DD  DSN=SIVA.MDD.FIX.E&EMP..INFORME.TRIBONO3,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(2,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMLM98A4 DD  DSN=SIVA.MDD.FIX.E&EMP..INFORME.TRIBONO4,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(2,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T19),DISP=SHR
//*
//**********************************************************************00010000
//*                 << PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        INFORME DIARIO AL BANCO DE MEXICO SOBRE POSICION DE  *00030000
//*  PLF23P18     INSTRUMENTOS GUBENAMENTALES. ( U M S ).              *00020000
//*                                                         ZM4DLM99   *00020000
//**********************************************************************00060000
//PLF23P18 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMLM99A5 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLM99R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLM99R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLM99R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLM99R4 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLM99A1 DD  DSN=SIVA.MDD.FIX.E&EMP..INFORME.UMS1,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(2,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZIBH10A2 DD  DSN=SIVA.MDD.FIX.E&EMP..INFORME.UMS,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(2,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMLM99A3 DD  DSN=SIVA.MDD.FIX.E&EMP..INFORME.UMS3,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(2,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMLM99A4 DD  DSN=SIVA.MDD.FIX.E&EMP..INFORME.UMS4,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(2,1),RLSE),
//             DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T18),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO:        PROG. QUE INSERTA EL CONTRATO 99127 AL GRUPO DE CTAS *00030000
//*  PLF23P17     85. PASO NECESARIO PARA OPERACION DURANTE EL SIGUIENTE00020000
//*               DIA.                                      ZM4DG003   *00020000
//**********************************************************************00060000
//PLF23P17 EXEC PGM=IKJEFT01,COND=(4,LT)                                00009000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*                                                  00006000
//SYSABOUT DD DUMMY                                                     00010000
//SYSUDUMP DD DUMMY                                                     00020000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF23T17),DISP=SHR                   00030000
//*                                                                     00032303
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        REPORTE DE CONTABILIDAD. REPORTOS CON FECHA DE VENCI-*00030000
//*  PLF23P16     MIENTO MAYOR A UN MES.                               *00020000
//*                                                         ZM4DLH33   *00020000
//**********************************************************************00060000
//PLF23P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLH33A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLH33R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLH33R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T16),DISP=SHR
//*
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        REPORTE DE CLIENTES SECTOR PUBLICO CON POSICION EN   *00030000
//*  PLF23P15     AJUBONOS, BONDES, CETES Y TEBONOS.                   *00020000
//*                                                         ZM4DLH09   *00020000
//**********************************************************************00060000
//PLF23P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLH09A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLH09R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF23T15),DISP=SHR
//*
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        REPORTE COMPARATIVO DE UTILIDADES.                   *00030000
//*  PLF23P14     PRESENTAR LA DIFERENCIA ENTRE LA UTILIDAD DE LA CASA *00020000
//*               Y LA UTILIDAD DE PROMOCION POR CADA MOVIMIENTO REALI-*00020000
//*               ZADO DURANTE EL DIA.                      ZM4DLH02  -*00020000
//**********************************************************************00060000
//PLF23P14 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLH02A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLH02R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF23T14),DISP=SHR
//*
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        COMPARATIVO DE UTILIDADES POR PROMOTOR.              *00030000
//*  PLF23P13     PRESENTAR EL COMPARATIVO ENTRE UTILIDAD DE LA CASA   *00020000
//*               Y UTILIDAD PROMOCION POR PROMOTOR DE LOS MOVIMIENTOS *00020000
//*               REALIZADOS DURANTE EL DIA.                ZM4DLH03  -*00020000
//**********************************************************************00060000
//PLF23P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLH03A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLH03R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF23T13),DISP=SHR
//*
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        PRESENTAR LAS OPERACIONES DE REPORTO CELEBRADAS CON  *00030000
//*  PLF23P12     EL BANCO DE MEXICO E INSTITUCIONES DE CREDITO DE LOS *00020000
//*               MOVIMIENTOS REALIZADOS DURANTE EL DIA.               *00020000
//*                                                         ZM4DLH05  -*00020000
//**********************************************************************00060000
//PLF23P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLH05A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLH05R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLH05R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF23T12),DISP=SHR
//*
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        REPORTAR LAS OPERACIONES DE REPORTO CELEBRADAS CON   *00030000
//*  PLF23P11     CLIENTES DURANTE EL DIA.                             *00020000
//*               MOVIMIENTOS REALIZADOS DURANTE EL DIA.               *00020000
//*                                                         ZM4DLH06  -*00020000
//**********************************************************************00060000
//PLF23P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLH06A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLH06R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLH06R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF23T11),DISP=SHR
//*
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        REPORTAR LOS INSTRUMENTOS OPERADOS CON CLIENTES      *00030000
//*  PLF23P10     VALOR HOY Y VALOR NORMAL.                            *00020000
//*                                                         ZM4DLH07  -*00020000
//**********************************************************************00060000
//PLF23P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLH07A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLH07R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF23T10),DISP=SHR
//*
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        REPORTAR OPERACIONES DE COMPRA Y VENTA DE ACEPTACIO- *00030000
//*  PLF23P09     NES BANCARIAS DURANTE EL DIA.                        *00020000
//*                                                         ZM4DLH08  -*00020000
//**********************************************************************00060000
//PLF23P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLH08A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLH08R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF23T09),DISP=SHR
//*
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        GENERAR REPORTE DE COMISIONES DEL DIA.               *00030000
//*  PLF23P08                                               ZM4DLD64  -*00020000
//**********************************************************************00060000
//PLF23P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMLD64A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLD64R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLD64T1 DD DSN=SIVA.MDD.FIX.E&EMP..COMIS1,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=132,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T08),DISP=SHR
//*
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        IMPRIMIR REPORTE DE COMISIONES FUERA DE RANGO.       *00030000
//*  PLF23P07                                               ZM4DLC25  -*00020000
//**********************************************************************00060000
//PLF23P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLC25A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLC25R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T07),DISP=SHR
//*
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:      IMPRIMIR EL REPORTE DE COMPRAS Y VENTAS DE REPORTOS. . *00030000
//*  PLF23P06           ( OPERAS 526, 626)                  ZM4DLE21  -*00020000
//**********************************************************************00060000
//PLF23P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMLE21A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLE21R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLE21R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLE21R3 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..CONCENT.MDDC1,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//ZMLE21R4 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..CONCENT.MDDC2,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T06),DISP=SHR
//*
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:      IMPRIMIR EL REPORTE DE COMPRAS Y VENTAS DE REPORTOS.   *00030000
//*  PLF23P05                 ( OPERAS 527, 627)            ZM4DLE21   *00020000
//**********************************************************************00060000
//PLF23P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMLE21A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLE21R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLE21R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLE21R3 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..CONCENT.MDDC3,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//ZMLE21R4 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..CONCENT.MDDC4,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T05),DISP=SHR
//*
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        MANDA A SPOOL REPORTE 3 DE PASO ANTERIOR             *00030000
//*  PLF23P04                                               ICEGENER   *00020000
//**********************************************************************00060000
//PLF23P04 EXEC PGM=ICEGENER,COND=(4,LT)                                00510005
//*                                                                     00171001
//SYSUT1   DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..CONCENT.MDDC1,DISP=SHR        00171001
//*                                                                     00171001
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00171001
//*                                                                     00171001
//SYSPRINT DD  SYSOUT=*                                                 00570005
//SYSOUT   DD  SYSOUT=*                                                 00580005
//SYSDBOUT DD  SYSOUT=*                                                 00590005
//SYSIN    DD  DUMMY                                                    00600005
//*                                                                     00630005
//**********************************************************************00010000
//*                <<  PASO REINICIABLE POR RESTART >>                 *
//*  PASO:        MANDA A SPOOL REPORTE 4 DE PASO ANTERIOR             *00030000
//*  PLF23P03                                               ICEGENER   *00020000
//**********************************************************************00060000
//PLF23P03 EXEC PGM=ICEGENER,COND=(4,LT)                                00510005
//*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..CONCENT.MDDC4,DISP=SHR        00171001
//*                                                                     00171001
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00171001
//*                                                                     00171001
//SYSPRINT DD  SYSOUT=*                                                 00570005
//SYSOUT   DD  SYSOUT=*                                                 00580005
//SYSDBOUT DD  SYSOUT=*                                                 00590005
//SYSIN    DD  DUMMY                                                    00600005
//*                                                                     00630005
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:        IMPRIMIR EL REPORTE DE POSICION DE INSTRUMENTOS PARA *00030000
//*  PLF23P02     BANCO  DE MEXICO.                          ZM4DLH04  *00040000
//**********************************************************************00060000
//PLF23P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLH04A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLH04R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T02),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *
//*  PASO:        IMPRIMIR REPORTE DE COMISIONES EN EL INICIO DE DIA   *00030000
//*  PLF23P01     DE MERCADO DE DINERO USUARIO: HORACION M. DEL CAMPO.-*00020000
//*                                                         ZM4DLM02   *
//**********************************************************************00060000
//PLF23P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLM02A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD23,DISP=SHR
//*
//ZMLM02R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF23T01),DISP=SHR
//*
//**********************************************************************00010000
//*              F  I  N     Z M L F P D 2 3                           *
//**********************************************************************00060000
