//ZMFSLD20 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - FACTSET.                                       *
//* PROCESO      : ZMFSLD20.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REPORTES DE POSIC. Y MOVTOS. PARA FACTSET (PARTE 2) *
//* REALIZO      : BBVA BPYP                                           *
//* FECHA        : SEPTIEMBRE 2024.                                    *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*SDATOOL-45415-ASO-INI ANGEL SANCHEZ OSORNO ABRIL 2024               *
//*SE AGREGAN PASO PARA LEVANTAR CONDICIONES EN ALTAMIRA PARA QUE      *
//*DATIO HAGA EL APROVISIONAMIENTO DE LAS TABLAS QUE SE ENVIAN A FACSET*
//*--------------------------------------------------------------------*
//*SDATOOL-45415 OGJ-2024OCT04
//*SE ADICIONA LA FECHA A LOS ARCHIVOS: DATANTIG.DIA / HOLDING.DIA
//* CTASUC.SRVFCT / TRADES.DIA / CLTES.APX /CLTEPRM.FCT / MANCUER.DIA
//*--------------------------------------------------------------------*
//*SDATOOL-51565 EGC-2026FEB20
//*SE AGREGA UN PASO PARA GENERAR UN LAYOUT CON LA MARCA DE AQUILA
//**********************************************************************
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4FSL24                                     *
//* OBJETIVO   : OBTIENE CONTRATOS PARA FACTSET                        *
//**********************************************************************
//ZFS20T68 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUL24E1 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL05.MYHPPSUI.BACK,DISP=SHR
//ZMUL24E2 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL24.ZMDT608.SORT,DISP=SHR
//ZMUL24E3 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL24.ZMDTEML.SORT,DISP=SHR
//*
//ZMUL24A1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,20),RLSE),
//            DCB=(RECFM=FB,LRECL=819,BLKSIZE=0,DSORG=PS)
//*
//ZMUL24A2 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.CLTES.MUV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,20),RLSE),
//            DCB=(RECFM=FB,LRECL=377,BLKSIZE=0,DSORG=PS)
//*
//ZMUL24A3 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTAS.ALL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,20),RLSE),
//            DCB=(RECFM=FB,LRECL=819,BLKSIZE=0,DSORG=PS)
//*
//ZMUL24A4 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.CTAS.BAJA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,10),RLSE),
//            DCB=(RECFM=FB,LRECL=081,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS20T10),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE CONTRATOS (CTASINDIV)    *
//*                            ORDENA POR FCT-CCTAINVPAT               *
//**********************************************************************
//ZFS20T66 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.CTAS.BAJA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL24.CTAS.BAJA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=081,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,10),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T92),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE CONTRATOS (CTASINDIV)    *
//*                            ORDENA POR FCT-CCTAINVPAT               *
//**********************************************************************
//ZFS20T64 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTAS.ALL,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL25.CTAS.ALL.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=819,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(200,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T85),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4FSL25                                     *
//* OBJETIVO   : OBTIENE CONTRATOS INDIVIDUALES PARA FACTSET           *
//**********************************************************************
//ZFS20T62 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUL25E1 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL25.CTAS.ALL.SORT,DISP=SHR
//ZMUL25E2 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL25.CTASIND.SORT,DISP=SHR
//*
//ZMUL25A1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTAIND.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,20),RLSE),
//            DCB=(RECFM=FB,LRECL=819,BLKSIZE=0,DSORG=PS)
//*
//ZMUL25A2 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTAIND.MUV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,20),RLSE),
//            DCB=(RECFM=FB,LRECL=377,BLKSIZE=0,DSORG=PS)
//*
//ZMUL25A3 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.ENVFCT.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,20),RLSE),
//            DCB=(RECFM=FB,LRECL=819,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS20T70),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4FSL15                                     *
//* OBJETIVO   : OBTIENE POSICION  PARA FACTSET (X CONTRATO INDIV.)    *
//**********************************************************************
//ZFS20T60 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM15FME1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTAIND.DIA,DISP=SHR
//*
//ZM15FMS1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL15.HOLDING.CTAIND,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=1254,BLKSIZE=0,DSORG=PS)
//*
//ZM15FMS2 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL15.DATANTIG.CTAIND,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=73,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS20T20),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4FSL15                                     *
//* OBJETIVO   : OBTIENE POSICION  PARA FACTSET   (X OFIC. - TPO BANCA)*
//**********************************************************************
//ZFS20T58 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM15FME1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.DIA,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.ENVFCT.DIA,DISP=SHR
//*
//ZM15FMS1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL15.HOLDING.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=1254,BLKSIZE=0,DSORG=PS)
//*
//ZM15FMS2 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL15.DATANTIG.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=73,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS20T20),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4FSL20                                     *
//* OBJETIVO   : OBTIENE MOVIMIENTOS PARA FACTSET (X CONTRATO INDIV.)  *
//**********************************************************************
//ZFS20T56 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM20FME1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTAIND.DIA,DISP=SHR
//*
//ZM20FMS1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL20.TRADES.CTAIND,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=517,BLKSIZE=0,DSORG=PS)
//*
//ZM20FMS2 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL20.TRADES.INCID1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,2),RLSE),
//            DCB=(RECFM=FB,LRECL=517,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS20T60),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4FSL20                                     *
//* OBJETIVO   : OBTIENE MOVIMIENTOS PARA FACTSET (X OFIC. - TPO BANCA)*
//**********************************************************************
//ZFS20T54 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM20FME1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.DIA,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.ENVFCT.DIA,DISP=SHR
//*
//ZM20FMS1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL20.TRADES.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=517,BLKSIZE=0,DSORG=PS)
//*
//ZM20FMS2 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL20.TRADES.INCID,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,2),RLSE),
//            DCB=(RECFM=FB,LRECL=517,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS20T60),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                    (X CONTRATO INDIV.)         *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE HOLDING CTAIND PARA MACH *
//**********************************************************************
//ZFS20T52 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL15.HOLDING.CTAIND,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL26.HOLDING.CI.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=1254,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T78),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                    (X OFIC. - TPO BANCA)       *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE HOLDING PARA MATCH       *
//**********************************************************************
//ZFS20T50 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL15.HOLDING.DIA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL26.HOLDING.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=1254,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T78),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4FSL26    (X CONTRATO INDIV.)              *
//* OBJETIVO   : ACTUALIZA ARCHIVO DE HOLDING EL CAMPO CLAS_PORT       *
//**********************************************************************
//ZFS20T48 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUL26E1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL26.HOLDING.CI.SRT,DISP=SHR
//*
//ZMUL26E2 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL06.MYHPPVAA.BACK,DISP=SHR
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS20T72),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4FSL26     (X OFIC. - TPO BANCA)           *
//* OBJETIVO   : ACTUALIZA ARCHIVO DE HOLDING EL CAMPO CLAS_PORT       *
//**********************************************************************
//ZFS20T46 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUL26E1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL26.HOLDING.SRT,DISP=SHR
//*
//ZMUL26E2 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL06.MYHPPVAA.BACK,DISP=SHR
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS20T72),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                (X CONTRATO INDIV.)             *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE DATANTIG CTAIND FACTSET  *
//**********************************************************************
//ZFS20T44 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL15.DATANTIG.CTAIND,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL15.DATANTIG.CTAIND,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=73,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T81),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN               (X OFIC. - TPO BANCA)            *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE DATANTIG   FACTSET       *
//**********************************************************************
//ZFS20T42 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL15.DATANTIG.DIA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL15.DATANTIG.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=73,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T81),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                (X CONTRATO INDIV.)             *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE HOLDING CTAIND FACTSET   *
//**********************************************************************
//ZFS20T40 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL26.HOLDING.CI.SRT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL15.HOLDING.CTAIND,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=1241,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T80),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN               (X OFIC. - TPO BANCA)            *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE HOLDING    FACTSET       *
//**********************************************************************
//ZFS20T38 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL26.HOLDING.SRT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL15.HOLDING.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=1241,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T80),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                (X CONTRATO INDIV.)             *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE MOVIMIENTOS FACTSET      *
//**********************************************************************
//ZFS20T36 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL20.TRADES.CTAIND,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL20.TRADES.CTAIND,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=517,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T90),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN               (X OFIC. - TPO BANCA)            *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE MOVIMIENTOS FACTSET      *
//**********************************************************************
//ZFS20T34 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL20.TRADES.DIA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL20.TRADES.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=517,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T90),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//* DESCRIPCION: REALIZAR SORT ELIMINANDO DUPLICADOS ARCHIVO PARA      *
//*              HOLDING_DATOS_PDV      (X CONTRATO INDIV.)            *
//**********************************************************************
//ZFS20T32 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL15.HOLDING.CTAIND,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL15.HOLDING.DATPDV.CTAI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=785,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(800,200),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T21),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//* DESCRIPCION: REALIZAR SORT ARCHIVO PARA                            *
//*              HOLDING_POSICION       (X CONTRATO INDIV.)            *
//**********************************************************************
//ZFS20T30 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL15.HOLDING.CTAIND,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL15.HOLDING.POSIC.CTAI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=501,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1200,120),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T22),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//* DESCRIPCION: REALIZAR SORT ELIMINANDO DUPLICADOS ARCHIVO PARA      *
//*              HOLDING_DATPDV       (X OFIC. - TPO BANCA)            *
//**********************************************************************
//ZFS20T28 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL15.HOLDING.F&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL15.HOLDING.DATPDV.DIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=785,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(800,200),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T21),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//* DESCRIPCION: REALIZAR SORT ARCHIVO PARA                            *
//*              HOLDING_POSIC        (X OFIC. - TPO BANCA)            *
//**********************************************************************
//ZFS20T26 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL15.HOLDING.F&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL15.HOLDING.POSIC.DIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=501,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1200,120),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T22),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                (X CONTRATO INDIV.)             *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE MOVIMIENTOS FACTSET      *
//**********************************************************************
//ZFS20T24 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL20.TRADES.CTAIND,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL20.TRADES.MOVTO.CTAI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=517,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T23),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN               (X OFIC. - TPO BANCA)            *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE MOVIMIENTOS FACTSET      *
//**********************************************************************
//ZFS20T22 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL20.TRADES.F&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL20.TRADES.MOVTO.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=517,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T23),DISP=SHR
//*
//**********************************************************************00007848
//* PROGRAMA   : IKJEFT01/ZM4FSL07     (X CONTRATO INDIV.)             *00007849
//* OBJETIVO   : COMPRIME LOS REGISTROS ELIMINANDO ESPACIOS QUE NO SON *00007850
//*              REQUERIDOS                                            *00007850
//**********************************************************************00007851
//ZFS20T20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSL07E1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL15.HOLDING.DATPDV.CTAI,DISP=SHR
//ZMSL07E2 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL15.HOLDING.POSIC.CTAI,DISP=SHR
//ZMSL07E3 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL20.TRADES.MOVTO.CTAI,DISP=SHR
//*
//ZMSL07S1 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL15.HOLDING.DATPDV.CTAI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=785,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(800,200),RLSE)
//*
//ZMSL07S2 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL15.HOLDING.POSIC.CTAI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=501,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1200,120),RLSE)
//*
//ZMSL07S3 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL20.TRADES.MOVTO.CTAI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=517,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS20T16),DISP=SHR
//*
//**********************************************************************00007848
//* PROGRAMA   : IKJEFT01/ZM4FSL07    (X OFIC. - TPO BANCA)            *00007849
//* OBJETIVO   : COMPRIME LOS REGISTROS ELIMINANDO ESPACIOS QUE NO SON *00007850
//*              REQUERIDOS                                            *00007850
//**********************************************************************00007851
//ZFS20T18 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSL07E1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL15.HOLDING.DATPDV.DIA,DISP=SHR
//ZMSL07E2 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL15.HOLDING.POSIC.DIA,DISP=SHR
//ZMSL07E3 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL20.TRADES.MOVTO.DIA,DISP=SHR
//*
//ZMSL07S1 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL15.HOLDING.DATPDV.DIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=785,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(800,200),RLSE)
//*
//ZMSL07S2 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL15.HOLDING.POSIC.DIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=501,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1200,120),RLSE)
//*
//ZMSL07S3 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL20.TRADES.MOVTO.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(800,200),RLSE),
//            DCB=(RECFM=FB,LRECL=517,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS20T16),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//* DESCRIPCION: REALIZAR SORT ELIMINANDO DUPLICADOS ARCHIVO PARA APX Y*
//*              QUITANDO ENCABEZADOS (PARA APX DIA SIGUIENTE 7:15 AM) *
//**********************************************************************
//ZFS20T16 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.CLTES.MUV,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTAIND.MUV,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL24.CLTES.APX.DIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=371,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(200,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T96),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//* DESCRIPCION: REALIZAR SORT ELIMINANDO DUPLICADOS ARCHIVO PARA APX  *
//*              Y QUITANDO ENCABEZADOS (FECHADO PARA DATIO)           *
//**********************************************************************
//ZFS20T15 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.CLTES.MUV,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTAIND.MUV,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL24.CLTES.APX.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=371,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(200,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T96),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//* DESCRIPCION: REALIZAR SORT ELIMINANDO DUPLICADOS ARCHIVO PARA      *
//*              FACTSET (FEC. CORTE , FCT-NUMCTE , FCT-PROM)          *
//**********************************************************************
//ZFS20T14 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.CLTES.MUV,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTAIND.MUV,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL24.CLTEPRM.FCT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=043,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,10),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T91),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//* DESCRIPCION: REALIZAR SORT ELIMINANDO DUPLICADOS Y JUNTANDO        *
//*              ARCHIVOS QUITANDO ENCABEZADOS                         *
//**********************************************************************
//ZFS20T12 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.CLTES.MUV,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTAIND.MUV,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.CLTES.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=371,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T95),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//*          (NO CAMBIAR ESTE PASO //ZFS20T10 ESTA EN EL JCL BCFSLD20) *
//* DESCRIPCION: REALIZAR SORT PARA GENERAR ARCHIVO PARA DATIO Y MLB   *
//**********************************************************************
//ZFS20T10 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.CLTES.SORT,DISP=SHR
//*
//ARCH1    DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL24.CLTES.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=036,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,20),RLSE)
//*
//ARCH2    DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL24.CLCIF.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=120,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA Y EXTRAE PROMOTOR ORIGINAL, PROMOTOR FCT         *
//*                     PARA OBTENER PROMOTORES MANCUERNA              *
//**********************************************************************
//ZFS20T09 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.DIA,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.ENVFCT.DIA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL27.PROMOT.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=15,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T71),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4FSL27                                     *
//* OBJETIVO   : OBTIENE ARCHIVO DE MANCUERNAS DE PROMOTORES MUV       *
//**********************************************************************
//ZFS20T08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUL27E1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL27.PROMOT.SRT,DISP=SHR
//*
//ZMUL27S1 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL27.MANCUER.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(RECFM=FB,LRECL=116,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS20T15),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4FSL40                                     *
//* OBJETIVO   : GENERA ARCHIVO DE PROMOTORES PARA DAR DE ALTA/BAJA LAS*
//*              LICENCIAS FACTSET                                     *
//**********************************************************************
//ZFS20T07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUL40E1 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL40.ALTABAJA.SORT,DISP=SHR
//ZMUL40E2 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL40.VIGENTES.SORT,DISP=SHR
//ZMUL40E3 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.DIA,DISP=SHR
//*
//ZMUL40S1 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL40.ALTBAJ.LICFCT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(RECFM=FB,LRECL=272,BLKSIZE=0,DSORG=PS)
//*
//ZMUL40S2 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL40.VIGENT.LICFCT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(RECFM=FB,LRECL=272,BLKSIZE=0,DSORG=PS)
//*
//ZMUL40S3 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL40.CTASUC.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,20),RLSE),
//            DCB=(RECFM=FB,LRECL=1018,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS20T82),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : COPIA ARCHIVO PARA TRANSFERENCIAS POR REPROCESO EDOS CTA*
//**********************************************************************
//ZFS20T7A EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL40.CTASUC.F&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL40.CTASUC.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,20),RLSE),
//            DCB=(RECFM=FB,LRECL=1018,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T17),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA LOS CAMPOS DE LA TABLA ZMDT608                 *
//*                  ZM608_NICUENTA, ZM608_CCTAINVPAT                  *
//*            SOLO LAS QUE SEAN PARA MUESTREO DE LOS EDOS DE CUENTA   *
//*            CONDICIONADAS EN LA TABLA ZMDT185                       *
//**********************************************************************
//ZFS20T06 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFS20T0F,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL40.CTASAPX,
//            SPACE=(CYL,(10,5),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=14,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T0F),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : EXTRAE SOLO LA ZM608_CCTAINVPAT 100 CUENTAS             *
//**********************************************************************
//ZFS20T05 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL40.CTASAPX,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL40.CTASAPX.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=10,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T0D),DISP=SHR
//*
//**********************************************************************
//*                SE ADICIONA CONDICION                               *
//*                PARA QUE SEA TOMADA POR CTL-M MUV -->(BCLTND21)     *
//*        (TRANSMISION DE ARCHIVOS INDIVIDUALES HOLDING Y TRADES)     *
//**********************************************************************
//ZFS20T03 EXEC PGM=CTMCND,COND=(0,NE),
//         PARM='ADD COND BCFSLD20_IN_OK &FECAD '
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
//*
//*SDATOOL-45415-ASO-INI
//**********************************************************************
//*                SE ADICIONA CONDICION CTL-M ALTAMIRA                *
//*PARA QUE DATIO PUEDA LEER LA CONDICION EN ALTAMIRA Y HACER EL       *
//*APROVISIONAMIENTO DE LA TABLA                                       *
//*PROGRAMA: IOACND                                                    *
//**********************************************************************
//ZFS20T02 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND BCFSLD20_OK &FECAD'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*SDATOOL-45415-ASO-FIN
//*
//**********************************************************************
//*                SE ADICIONA CONDICION CTL-M ALTAMIRA                *
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROL-M ALTAMIRA PARA QUE      *
//*            SE EJECUTE EL PROCESO QUE TOMA EL ARCHIVO PARA MLB      *
//*            "MXCP.ZM.FIX.FCT.ZM4FSL24.CLTES.F&FECHA" DE CLIENTES FCT*
//* PROGRAMA: IOACND                                                   *
//**********************************************************************
//ZFS20T01 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND BCFSLD20_OK_PR &FECAD '
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//**********************************************************************
//* OBJETIVO : GENERA UN LAYOUT CON LA MARCA DE AQUILA PARA FACSET     *
//*            "MXCP.ZM.FIX.FCT.ZM4FSL16.HOLDING.DATTP.DIA"            *
//* PROGRAMA: ZM4FSL16                                                 *
//**********************************************************************
//ZFS20T00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ARCFCTE1 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL24.CLTES.APX.F&FECHA,
//            DISP=SHR
//*
//ARCFCTS1 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL16.HOLDING.DATTP.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=58,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS20T02),DISP=SHR
//*
//**********************************************************************
//*                    TERMINA ZMFSLD20
//**********************************************************************
