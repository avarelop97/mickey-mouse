//ZMFSLD21 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - FACTSET.                                       *
//* PROCESO      : ZMFSLD21.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REPORTES DE POSIC. Y MOVTOS. PARA FACTSET           *
//* REALIZO      : INDRA                                               *
//* FECHA        : MAYO 2019.                                          *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*
//**********************************************************************
//*
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT608 Y CUENTA PARA FACTSET      *
//**********************************************************************
//ZFS21T76 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFS20T76,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.ZMDT608,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=167,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T50),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDTEML CORREOS PAPERLESS P/FACTSET*
//**********************************************************************
//ZFS21T74 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFS20T74,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.ZMDTEML,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=118,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T11),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PARAM - ITIPOPAR 'FTS'             *
//**********************************************************************
//ZFS21T72 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFS20T72,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTASIND,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=058,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T52),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO POR LOS CAMPOS: IEMPR, ISUCCASA,         *
//*                                           ZM608_CCTAINVPAT         *
//**********************************************************************
//ZFS21T66 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.ZMDT608,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.ZMDT608.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=167,BLKSIZE=0),
//            SPACE=(CYL,(100,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T40),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO POR LOS CAMPOS: ICUENTA, IFOLIO          *
//**********************************************************************
//ZFS21T64 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.ZMDTEML,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.ZMDTEML.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=118,BLKSIZE=0),
//            SPACE=(CYL,(100,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T12),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO A PROCESAR DE CONTRATOS INDIVIDUALES     *
//*                             POR FCT-CCTAINVPAT                     *
//**********************************************************************
//ZFS21T60 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTASIND,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTASIND.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=047,BLKSIZE=0),
//            SPACE=(CYL,(200,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T75),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4FSL24                                     *
//* OBJETIVO   : OBTIENE CONTRATOS PARA FACTSET                        *
//**********************************************************************
//ZFS21T52 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUL24E1 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL05.MYHPPSUI.BACK,DISP=SHR
//ZMUL24E2 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.ZMDT608.SORT,DISP=SHR
//ZMUL24E3 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.ZMDTEML.SORT,DISP=SHR
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
//ZFS21T48 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTAS.ALL,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTAS.ALL.SORT,
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
//ZFS21T46 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUL25E1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTAS.ALL.SORT,DISP=SHR
//ZMUL25E2 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTASIND.SORT,DISP=SHR
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
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4FSL15                                     *
//* OBJETIVO   : OBTIENE POSICION  PARA FACTSET   (X OFIC. - TPO BANCA)*
//**********************************************************************
//ZFS21T42 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* OBJETIVO   : OBTIENE MOVIMIENTOS PARA FACTSET (X OFIC. - TPO BANCA)*
//**********************************************************************
//ZFS21T38 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* PROGRAMA:    ICEMAN                    (X OFIC. - TPO BANCA)       *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE HOLDING PARA MATCH       *
//**********************************************************************
//ZFS21T34 EXEC PGM=ICEMAN,COND=(4,LT)
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
//* UTILERIA   : IKJEFT01/ZM4FSL26     (X OFIC. - TPO BANCA)           *
//* OBJETIVO   : ACTUALIZA ARCHIVO DE HOLDING EL CAMPO CLAS_PORT       *
//**********************************************************************
//ZFS21T30 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* PROGRAMA:    ICEMAN               (X OFIC. - TPO BANCA)            *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE DATANTIG   FACTSET       *
//**********************************************************************
//ZFS21T26 EXEC PGM=ICEMAN,COND=(4,LT)
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
//* PROGRAMA:    ICEMAN               (X OFIC. - TPO BANCA)            *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE HOLDING    FACTSET       *
//**********************************************************************
//ZFS21T22 EXEC PGM=ICEMAN,COND=(4,LT)
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
//* PROGRAMA:    ICEMAN               (X OFIC. - TPO BANCA)            *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE MOVIMIENTOS FACTSET      *
//**********************************************************************
//ZFS21T18 EXEC PGM=ICEMAN,COND=(4,LT)
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
//*              HOLDING_DATPDV                                        *
//**********************************************************************
//ZFS21T17 EXEC PGM=ICEMAN,COND=(4,LT)
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
//*              HOLDING_POSIC                                         *
//**********************************************************************
//ZFS21T16 EXEC PGM=ICEMAN,COND=(4,LT)
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
//* PROGRAMA:    ICEMAN               (X OFIC. - TPO BANCA)            *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE MOVIMIENTOS FACTSET      *
//**********************************************************************
//ZFS21T15 EXEC PGM=ICEMAN,COND=(4,LT)
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
//* PROGRAMA   : IKJEFT01/ZM4FSL07    (X OFIC. - TPO BANCA)            *00007849
//* OBJETIVO   : COMPRIME LOS REGISTROS ELIMINANDO ESPACIOS QUE NO SON *00007850
//*              REQUERIDOS                                            *00007850
//**********************************************************************00007851
//ZFS21T14 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* DESCRIPCION: REALIZAR SORT ELIMINANDO DUPLICADOS ARCHIVO PARA      *
//*              FACTSET (FEC. CORTE , FCT-NUMCTE , FCT-PROM)          *
//**********************************************************************
//ZFS21T13 EXEC PGM=ICEMAN,COND=(4,LT)
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
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA Y EXTRAE PROMOTOR ORIGINAL, PROMOTOR FCT         *
//*                     PARA OBTENER PROMOTORES MANCUERNA              *
//**********************************************************************
//ZFS21T08 EXEC PGM=ICEMAN,COND=(4,LT)
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
//ZFS21T06 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//*                    TERMINA ZMFSLD21
//**********************************************************************
