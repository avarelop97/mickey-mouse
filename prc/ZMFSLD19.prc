//ZMFSLD19 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - FACTSET.                                       *
//* PROCESO      : ZMFSLD19.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REPORTES DE POSIC. Y MOVTOS. PARA FACTSET (PARTE 1) *
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
//*
//*--------------------------------------------------------------------*
//*                                                                     00007824
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//ZFS19T39 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.FCT.FSLD19.PARMS.CTL,                     00007833
//            DISP=(NEW,CATLG,CATLG),                                   00007834
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),                         00007835
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)                00007836
//*                                                                     00007837
//QRLSDB2  DD  SYSOUT=*                                                 00007838
//SYSPRINT DD  SYSOUT=*                                                 00007839
//SYSTSPRT DD  SYSOUT=*                                                 00007840
//SYSUDUMP DD  SYSOUT=*                                                 00007841
//SYSABOUT DD  SYSOUT=*                                                 00007842
//SYSDBOUT DD  SYSOUT=*                                                 00007843
//SYSOUT   DD  SYSOUT=*                                                 00007844
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13PA),DISP=SHR                   00007846
//*                                                                     00007847
//**********************************************************************00007848
//* PROGRAMA   : ZM3DG005                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//ZFS19T37 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.FCT.FSLD19.PARMS.CTL,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZFS20T03),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.FCT.FSLD19.CONTROL,                       00007869
//            DISP=(NEW,CATLG,CATLG),                                   00007870
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),                         00007871
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)                00007872
//*                                                                     00007873
//SYSABOUT DD  SYSOUT=*                                                 00007874
//SYSDBOUT DD  SYSOUT=*                                                 00007875
//SYSOUT   DD  SYSOUT=*                                                 00007876
//*                                                                     00007878
//**********************************************************************00007879
//* UTILERIA : ADUUMAIN                                                *00007880
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT930, ZMDT934, ZMDT608          *00007881
//*            LOS RENDIMEINTOS NETOS Y BRUTOS DE LOS ESTADOS DE CUENTA*00007881
//**********************************************************************00007882
//ZFS19T35 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,ZFS19T35,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.FCT.FSLD19.RENDI,                         00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=152,DSORG=PS)               00007872
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.FCT.FSLD19.CONTROL,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************00007900
//* UTILERIA   : IKJEFT01/ZM4FSL30                                     *00007901
//* OBJETIVO   : GENERA ARCHIVO DE RENDIMIENTOS DIA ANTE. DE EDOS.CTA. *00007902
//**********************************************************************00007903
//ZFS19T33 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007904
//*                                                                     00007905
//ZMUL30E1 DD DSN=MXCP.ZM.TMP.FCT.FSLD19.RENDI,DISP=SHR                 00007906
//*                                                                     00007907
//ZMUL30S1 DD DSN=MXCP.ZM.FIX.FCT.ZMFSLD19.ECDIAANT,                    00007908
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007909
//            SPACE=(CYL,(500,250),RLSE),                               00007910
//            DCB=(RECFM=FB,LRECL=317,BLKSIZE=0,DSORG=PS)               00007911
//*                                                                     00007920
//QRLSDB2  DD SYSOUT=*                                                  00009000
//SYSPRINT DD SYSOUT=*                                                  00009100
//SYSTSPRT DD SYSOUT=*                                                  00009200
//SYSUDUMP DD SYSOUT=*                                                  00009300
//SYSABOUT DD SYSOUT=*                                                  00009400
//SYSDBOUT DD SYSOUT=*                                                  00009500
//SYSOUT   DD SYSOUT=*                                                  00009600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS20T04),DISP=SHR                   00009700
//*
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT608 Y CUENTA PARA FACTSET      *
//**********************************************************************
//ZFS19T31 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFS19T31,NEW,,MSGLEVEL(1)'
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
//ZFS19T29 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFS19T29,NEW,,MSGLEVEL(1)'
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
//ZFS19T27 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFS19T27,NEW,,MSGLEVEL(1)'
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
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PARAM - ITIPOPAR 'FS2' ALTAS/BAJAS *
//**********************************************************************
//ZFS19T25 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFS19T25,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL40.ALTABAJA,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=077,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T06),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PROMOT - ZMDTPRM LIC.FCT. VIGENTES *
//**********************************************************************
//ZFS19T23 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFS19T23,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL40.VIGENTES,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=213,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T08),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO POR LOS CAMPOS: IEMPR, ISUCCASA,         *
//*                                           ZM608_CCTAINVPAT         *
//**********************************************************************
//ZFS19T21 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.ZMDT608,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL24.ZMDT608.SORT,
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
//ZFS19T19 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL24.ZMDTEML,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL24.ZMDTEML.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=118,BLKSIZE=0),
//            SPACE=(CYL,(100,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T12),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN           (MYHPPSUI) (ARCH. DEL DIA)           *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE DATOS DE PDV MATCHSUI    *
//**********************************************************************
//ZFS19T17 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.F&FECHA..MYHPPSUI.MATCHSUI,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL05.MYHPPSUI.FHOY,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=500,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T30),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN           (MYHPPSUI) (ARCH. RESPALDO DIAS ANT) *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE DATOS DE PDV MATCHSUI    *
//**********************************************************************
//ZFS19T15 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL05.MYHPPSUI.BACK,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL05.MYHPPSUI.FANT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=500,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T30),DISP=SHR
//*
//**********************************************************************00007848
//* PROGRAMA   : IKJEFT01/ZM4FSL05 (MYHPPSUI)                          *00007849
//* OBJETIVO   : REALIZA MATCH ENTRE EL ARCH. DEL DIA Y EL DE DIAS ANT *00007850
//*              PARA GARANTIZAR NO VAYA VACIO EL ARCHIVO A PROCESAR   *00007850
//**********************************************************************00007851
//ZFS19T13 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSL05E1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL05.MYHPPSUI.FHOY,DISP=SHR
//ZMSL05E2 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL05.MYHPPSUI.FANT,DISP=SHR
//ZMSL05S1 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL05.MYHPPSUI.BACK,DISP=SHR
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS20T13),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN           (MYHPPVAA) (ARCH. DEL DIA)           *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE DATOS DE PDV EVALMER     *
//**********************************************************************
//ZFS19T11 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.F&FECHA..MYHPPVAA.EVALMER,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL06.MYHPPVAA.FHOY,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=368,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T35),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN           (MYHPPVAA) (ARCH. RESPALDO DIAS ANT) *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE DATOS DE PDV EVALMER     *
//**********************************************************************
//ZFS19T09 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL06.MYHPPVAA.BACK,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL06.MYHPPVAA.FANT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=368,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T35),DISP=SHR
//*
//**********************************************************************00007848
//* PROGRAMA   : IKJEFT01/ZM4FSL06 (MYHPPVAA)                          *00007849
//* OBJETIVO   : REALIZA MATCH ENTRE EL ARCH. DEL DIA Y EL DE DIAS ANT *00007850
//*              PARA GARANTIZAR NO VAYA VACIO EL ARCHIVO A PROCESAR   *00007850
//**********************************************************************00007851
//ZFS19T07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSL06E1 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL06.MYHPPVAA.FHOY,DISP=SHR
//ZMSL06E2 DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL06.MYHPPVAA.FANT,DISP=SHR
//ZMSL06S1 DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL06.MYHPPVAA.BACK,DISP=SHR
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS20T14),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO A PROCESAR DE CONTRATOS INDIVIDUALES     *
//*                             POR FCT-CCTAINVPAT                     *
//**********************************************************************
//ZFS19T05 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL25.CTASIND,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL25.CTASIND.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=047,BLKSIZE=0),
//            SPACE=(CYL,(200,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T75),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO A PROCESAR DE PROMOTORES A DAR DE        *
//*                             ALTA/BAJA DE LICENCIA FACTSET          *
//**********************************************************************
//ZFS19T03 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL40.ALTABAJA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL40.ALTABAJA.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=077,BLKSIZE=0),
//            SPACE=(CYL,(200,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T07),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO A PROCESAR DE PROMOTORES CON             *
//*                             LICENCIA FACTSET VIGENTE               *
//**********************************************************************
//ZFS19T01 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FCT.ZM4FSL40.VIGENTES,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL40.VIGENTES.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=213,BLKSIZE=0),
//            SPACE=(CYL,(200,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS20T09),DISP=SHR
//*
//**********************************************************************
//*                    TERMINA ZMFSLD19
//**********************************************************************
