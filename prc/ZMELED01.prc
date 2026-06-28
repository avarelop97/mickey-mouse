//ZMELED01 PROC
//*
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : ZMELED01                                             *
//* OBJETIVO    : ACTUALIZACION DIARIA DE INFORMACION DE CLIENTES ELE- *
//*               GIBLES                                               *
//* REALIZO     : INDRA.                                               *
//* FECHA       : 13/MARZO/2021.                                       *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*                                                                    *
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//PELD0110 EXEC PGM=IKJEFT01                                            00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL5,                     00007833
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13PB),DISP=SHR                   00007846
//*                                                                     00007847
//**********************************************************************00007848
//* PROGRAMA   : ZM3DG005                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//PELD0120 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL5,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZED10T01),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL5,                       00007869
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
//* OBJETIVO : DESCARGA DE TABLAS                                      *00007881
//**********************************************************************00007882
//PELD0130 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P51,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.EXPIRA,                      00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL5,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************
//* PROGRAMA    : IKJEFT01/ZM4ELE01                                    *
//* DESCRIPCION : REALIZA LA EXPIRACION DE UN CERTFICADO DE ELEGIBILI  *
//*               DAD, MARCA COMO NO ELEGIBLE AL CLIENTE               *
//**********************************************************************
//PELD0140 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMEL01E1 DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.EXPIRA,DISP=SHR              00007906
//*                                                                     00007905
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED01T01),DISP=SHR
//*
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//PELD0150 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL6,                     00007833
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13PB),DISP=SHR                   00007846
//*                                                                     00007837
//**********************************************************************00007847
//* PROGRAMA   : ZM3DG005                                              *00007847
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007847
//*              SE MODIFICA POR DESCARGA DE TABLAS                    *00007848
//*                                        ZMDT800/CARTERA/CUENTA      *00007849
//**********************************************************************00007850
//PELD0160 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL6,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZED03T01),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL6,                       00007869
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
//* OBJETIVO : DESCARGA DE TABLAS                                      *00007881
//**********************************************************************00007882
//PELD0170 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P52,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.SALDOS,                      00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL6,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************00007899
//* PASO     : PELD0175                                                *00007899
//* OBJETIVO :                                                         *00007899
//*  ORDENA ARCHIVO DESCARGADO POR FECHA Y CUENTA, SUMARISA MTENENCI   *00007899
//* UTILERIA : ICEMAN                                                  *00007899
//**********************************************************************00007899
//*                                                                     00007899
//PELD0175 EXEC PGM=ICEMAN,COND=(4,LT)                                  00007899
//SYSOUT   DD SYSOUT=*                                                  00007899
//SYSTSPRT DD SYSOUT=*                                                  00007899
//SYSPRINT DD SYSOUT=*                                                  00007899
//SORTIN   DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.SALDOS,DISP=SHR              00007899
//SORTOUT  DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.SORTS.SALDOS,                00007899
//            DISP=(NEW,CATLG,DELETE),                                  00007899
//* EZP INI 18-08-2023                                                  00007899
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=36,BLKSIZE=0),               00007899
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),                        00007899
//* EZP FIN                                                             00007899
//            SPACE=(CYL,(100,20),RLSE),UNIT=3390                       00007899
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZED05T01),DISP=SHR                   00007899
//*                                                                     00007899
//**********************************************************************
//* PROGRAMA    : IKJEFT01/ZM4ELE10                                    *
//* DESCRIPCION : ACTUALIZACION DIARIA DE SALDOS ZMDT889               *
//**********************************************************************
//PELD0180 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMEL01E1 DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.SORTS.SALDOS,DISP=SHR        00007906
//*                                                                     00007905
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED04T01),DISP=SHR
//*
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//*PELD0190 EXEC PGM=IKJEFT01,COND=(4,LT)                               00007829
//*                                                                     00007830
//*ZMSATAE1 DD DUMMY                                                    00007831
//*                                                                     00007832
//*ZMSATAS1 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL7,                    00007833
//*            DISP=(NEW,CATLG,CATLG),                                  00007834
//*            UNIT=3390,SPACE=(CYL,(1,1),RLSE),                        00007835
//*            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)               00007836
//*                                                                     00007837
//*QRLSDB2  DD  SYSOUT=*                                                00007838
//*SYSPRINT DD  SYSOUT=*                                                00007839
//*SYSTSPRT DD  SYSOUT=*                                                00007840
//*SYSUDUMP DD  SYSOUT=*                                                00007841
//*SYSABOUT DD  SYSOUT=*                                                00007842
//*SYSDBOUT DD  SYSOUT=*                                                00007843
//*SYSOUT   DD  SYSOUT=*                                                00007844
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13PB),DISP=SHR                  00007846
//*                                                                     00007847
//**********************************************************************00007848
//* PROGRAMA   : ZM3DG005                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//*PELD0200 EXEC PGM=ZM3DG005,COND=(4,LT)                               00007852
//*                                                                     00007853
//*E1DQ0001 DD DUMMY                                                    00007854
//*E2DQ0002 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL7,DISP=SHR            00007856
//*E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZED30T01),DISP=SHR                  00007858
//*                                                                     00007868
//*S1DQ0001 DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL7,                      00007869
//*            DISP=(NEW,CATLG,CATLG),                                  00007870
//*            UNIT=3390,SPACE=(CYL,(1,1),RLSE),                        00007871
//*            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)               00007872
//*                                                                     00007873
//*SYSABOUT DD  SYSOUT=*                                                00007874
//*SYSDBOUT DD  SYSOUT=*                                                00007875
//*SYSOUT   DD  SYSOUT=*                                                00007876
//*                                                                     00007878
//**********************************************************************00007879
//* UTILERIA : ADUUMAIN                                                *00007880
//* OBJETIVO : DESCARGA DE TABLAS                                      *00007881
//**********************************************************************00007882
//*PELD0210 EXEC PGM=ADUUMAIN,COND=(4,LT),                              00007883
//*         PARM='MXP1,PUE16P50,NEW,,MSGLEVEL(1)'                       00007884
//*                                                                     00007885
//*STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                00007886
//*         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00007887
//*         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00007888
//*                                                                     00007889
//*SYSREC   DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.PROF24,                     00007890
//*            SPACE=(CYL,(100,20),RLSE),                               00007891
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,                       00007892
//*            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                        00007893
//*                                                                     00007894
//*SYSPRINT DD SYSOUT=*                                                 00007895
//*SYSTSPRT DD SYSOUT=*                                                 00007896
//*SYSOUT   DD SYSOUT=*                                                 00007897
//*SYSIN    DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL7,DISP=SHR              00007898
//*                                                                     00007899
//**********************************************************************
//* PROGRAMA    : IKJEFT01/ZM4ELE03                                    *
//* DESCRIPCION : ACTUALIZACION DIARIA DE PROMEDIO Y PROFUNDIDAD A 24  *
//*               MESES EN CERTIFICADO ZMDT887                         *
//**********************************************************************
//*PELD0220 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ZMEL01E3 DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.PROF24,DISP=SHR             00007906
//*                                                                     00007905
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*QRLSDB2  DD SYSOUT=*
//*SYSUDUMP DD SYSOUT=*
//*
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED01T03),DISP=SHR
//*
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//*PELD0230 EXEC PGM=IKJEFT01,COND=(4,LT)                               00007829
//*                                                                     00007830
//*ZMSATAE1 DD DUMMY                                                    00007831
//*                                                                     00007832
//*ZMSATAS1 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL8,                    00007833
//*            DISP=(NEW,CATLG,CATLG),                                  00007834
//*            UNIT=3390,SPACE=(CYL,(1,1),RLSE),                        00007835
//*            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)               00007836
//*                                                                     00007837
//*QRLSDB2  DD  SYSOUT=*                                                00007838
//*SYSPRINT DD  SYSOUT=*                                                00007839
//*SYSTSPRT DD  SYSOUT=*                                                00007840
//*SYSUDUMP DD  SYSOUT=*                                                00007841
//*SYSABOUT DD  SYSOUT=*                                                00007842
//*SYSDBOUT DD  SYSOUT=*                                                00007843
//*SYSOUT   DD  SYSOUT=*                                                00007844
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13PB),DISP=SHR                  00007846
//*                                                                     00007847
//**********************************************************************00007848
//* PROGRAMA   : ZM3DG005                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//PELD0240 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL5,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZED40T01),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL8,                       00007869
//            DISP=(NEW,CATLG,CATLG),                                   00007870
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),                         00007871
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)                00007872
//*                                                                     00007873
//SYSABOUT DD  SYSOUT=*                                                 00007874
//SYSDBOUT DD  SYSOUT=*                                                 00007875
//SYSOUT   DD  SYSOUT=*                                                 00007876
//*                                                                     00007847
//**********************************************************************00007848
//* PROGRAMA   : ZM3DG005                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//PELD0245 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL5,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZED45T01),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL7,                       00007869
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
//* OBJETIVO : DESCARGA DE TABLAS ZMDT889                              *00007881
//**********************************************************************00007882
//PELD0250 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P53,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.PROF12,                      00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL8,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************00007899
//* UTILERIA : ADUUMAIN                                                *00007899
//* OBJETIVO : DESCARGA DE TABLAS TIPCAMB UN ANO                       *00007899
//**********************************************************************00007899
//PELD0255 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007899
//         PARM='MXP1,PUE16P54,NEW,,MSGLEVEL(1)'                        00007899
//*                                                                     00007899
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007899
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007899
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007899
//*                                                                     00007899
//SYSREC   DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.TIPCAM,                      00007899
//            SPACE=(CYL,(100,20),RLSE),                                00007899
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007899
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007899
//*                                                                     00007899
//SYSPRINT DD SYSOUT=*                                                  00007899
//SYSTSPRT DD SYSOUT=*                                                  00007899
//SYSOUT   DD SYSOUT=*                                                  00007899
//SYSIN    DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL7,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************
//* PASO        : PELD0256                                             *
//* PROGRAMA    : ICEMAN, SORT                                         *
//* DESCRIPCION : FILTRA CONTRATOS-CLIENTE MARCADO CON ASESOR INDEP    *
//*               ORDENA POR CLIENTE, ELIMINA DUPLICADO Y REDUCE LONG  *
//* LOG.        : SDATOOL-35155| MAR.2023                              *
//**********************************************************************
//*                                                                         0000
//PELD0256 EXEC PGM=ICEMAN,COND=(4,LT)                                  00007899
//SYSOUT   DD SYSOUT=*                                                  00007899
//SYSTSPRT DD SYSOUT=*                                                  00007899
//* EZP INI 18-08-2023                                                  00007899
//*SORTIN   DD DSN=MXBP.YH.FIX.F&FECHA..MYHPPD01.YHDTCON,DISP=SHR       00007899
//SORTIN   DD DSN=MXBP.YH.FIX.F&FECHA..MYHPPCI1.YHDTCON,DISP=SHR        00007899
//* EZP FIN                                                             00007899
//SORTOUT  DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.TYHDTCON.SORT,               00007899
//            DISP=(NEW,CATLG,DELETE),                                  00007899
//            DCB=(DSORG=PS,RECFM=FB,LRECL=27,BLKSIZE=0),               00007899
//            SPACE=(CYL,(400,200),RLSE),UNIT=3390                      00007899
//SYSIN    DD *                                                         00007899
  SORT FIELDS=(19,08,CH,A)
  INCLUDE COND=(133,1,CH,EQ,C'S')
  SUM FIELDS=NONE
  OUTREC FIELDS=(01,26,133,01)
  END
//*                                                                     00007899
//**********************************************************************
//* PASO        : PELD0257                                             *
//* PROGRAMA    : ZM4ELE12                                             *
//* DESCRIPCION : SINCRONIZA MARCA ASESOR INDEPENDIENTE                *
//* LOG.        : SDATOOL-35155| MAR.2023                              *
//**********************************************************************
//PELD0257 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMELASE1 DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.TYHDTCON.SORT,DISP=SHR       00007906
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED01T12),DISP=SHR
//*
//**********************************************************************
//* PASO        : PELD0258                                             *
//* PROGRAMA    : ZM4ELE19                                             *
//* DESCRIPCION : SINCRONIZA MARCA SERVICIOS DE GESTION                *
//* LOG.        : SDATOOL-35155| MAR.2023                              *
//**********************************************************************
//PELD0258 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED01T19),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA    : IKJEFT01/ZM4ELE04                                    *
//* DESCRIPCION : ACTUALIZACION DIARIA DE PROMEDIO Y PROFUNDIDAD A 12  *
//*               MESES EN CERTIFICADO ZMDT887                         *
//**********************************************************************
//PELD0260 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMEL01E2 DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.TIPCAM,DISP=SHR              00007906
//ZMEL01E4 DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.PROF12,DISP=SHR              00007905
//*                                                                     00007905
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED01T04),DISP=SHR
//*
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//PELD0270 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL9,                     00007833
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13PB),DISP=SHR                   00007846
//*                                                                     00007847
//**********************************************************************00007848
//* PROGRAMA   : ZM3DG005                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//PELD0280 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL9,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZED50T01),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL9,                       00007869
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
//* OBJETIVO : DESCARGA DE TABLAS                                      *00007881
//**********************************************************************00007882
//PELD0290 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P55,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.HERELEG,                     00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL9,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************
//* PROGRAMA    : IKJEFT01/ZM4ELE05                                    *
//* DESCRIPCION : HERENCIA DE ELEGIBILIDAD PARA NUEVOS CONTRATOS DE UN *
//*               CLIENTE ELEGIBLE                                     *
//**********************************************************************
//PELD0300 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMEL01E5 DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.HERELEG,DISP=SHR             00007906
//*                                                                     00007905
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED01T05),DISP=SHR
//*
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//PELD0310 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL0,                     00007833
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13PB),DISP=SHR                   00007846
//*                                                                     00007847
//**********************************************************************00007848
//* PROGRAMA   : ZM3DG005                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//PELD0320 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL0,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZED80T01),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL0,                       00007869
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
//* OBJETIVO : DESCARGA DE TABLAS                                      *00007881
//**********************************************************************00007882
//PELD0330 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P56,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.CADUCID,                     00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL0,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************00018300
//* PROGRAMA    : IKJEFT01/ZM4ELE08                                    *00018400
//* DESCRIPCION : REPORTE DE CADUCIDAD DE CERTIFICACION DE CLIENTES    *00018500
//*               ELEGIBLES                                            *00018600
//**********************************************************************00018700
//PELD0340 EXEC PGM=IKJEFT01,COND=(4,LT)                                00018800
//*                                                                     00019000
//ZMEL01E8 DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.CADUCID,DISP=SHR             00007906
//*                                                                     00007905
//ZMJ787A1 DD DSN=MXCP.ZM.FIX.ELEGIB.CADUCID,                           00020500
//         DISP=(NEW,CATLG,DELETE),                                     00020600
//         DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),                 00020700
//         SPACE=(CYL,(001,001),RLSE),UNIT=3390                         00020800
//*                                                                     00019000
//SYSTSPRT DD SYSOUT=*                                                  00019100
//SYSPRINT DD SYSOUT=*                                                  00019200
//SYSOUT   DD SYSOUT=*                                                  00019300
//SYSDBOUT DD SYSOUT=*                                                  00019400
//SYSABOUT DD SYSOUT=*                                                  00019500
//SYSUDUMP DD DUMMY                                                     00019600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED01T06),DISP=SHR                   00019700
//*                                                                     00019800
//**********************************************************************
//* PASO    : PELD0107                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE DE CADUCIDAD DE ELEGIBILIDAD                     *
//**********************************************************************
//PELD0350 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.ELEGIB.CADUCID,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//PELD0360 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.ELE.DG006.PARMS.CTLA,                     00007833
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13PB),DISP=SHR                   00007846
//*                                                                     00007847
//**********************************************************************00007848
//* PROGRAMA   : ZM3DG005                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//PELD0370 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.ELE.DG006.PARMS.CTLA,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZED02T01),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.FIX.ELE.DG006.CONTROLA,                       00007869
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
//* OBJETIVO : DESCARGA DE TABLAS                                      *00007881
//**********************************************************************00007882
//PELD0380 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P57,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.FIX.ELE.ZMELED01.CANCTOS,                     00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.FIX.ELE.DG006.CONTROLA,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************
//* PASO        : PELD0390                                             *
//* PROGRAMA    : IKJEFT01/ZM4ELE17                                    *
//* DESCRIPCION : INTERFAZ DE CANCELACION DE CONTRATOS PATRIMONIALES   *
//*                                                                    *
//**********************************************************************
//PELD0390 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMELE171 DD DSN=MXCP.ZM.FIX.ELE.ZMELED01.CANCTOS,DISP=SHR             00020500
//*                                                                     00019000
//ZMJ787A1 DD DSN=MXCP.ZM.FIX.ZM4ELE17.CANCTOS,                         00020500
//         DISP=(NEW,CATLG,DELETE),                                     00020600
//         DCB=(DSORG=PS,RECFM=FB,LRECL=162,BLKSIZE=0),                 00020700
//         SPACE=(CYL,(001,001),RLSE),UNIT=3390                         00020800
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED02T02),DISP=SHR
//*
//**********************************************************************00007879
//* UTILERIA : ADUUMAIN                                                *00007880
//* OBJETIVO : DESCARGA DE TABLAS OPERACIONES DE RETIRO DE GTIAS PPG   *00007881
//**********************************************************************00007882
//PELD0400 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P58,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00003310
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00003320
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00003330
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.FIX.ELE.ZMELED01.OPERAS,                      00007890
//            SPACE=(CYL,(20,10),RLSE),                                 00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD *                                                         00007898
    UNLOAD DIRECT AUTO SHRLEVEL CHANGE
    FORMAT STANDARD
    SELECT A.ZM107_IOPERA, A.ZM107_ICUENTA1,
           DECIMAL(VALUE(A.ZM107_ICONCEP2,0),10,0), A.ZM107_FOPERA,
           A.ZM107_FREG, B.ITIPOEMI, A.ZM107_IUSUARIO,
           B.IEMISORA, B.ISERIE, B.ICUPON
     FROM PRODUSVP.ZMDT107 A, PRODUSVP.CONCEPT B
    WHERE A.ZM107_ICONCEP2 = B.ICONCEPT
    AND   B.ITIPOEMI IN('SI1','CAP')
    AND   A.ZM107_IOPERA   = 203
    AND   A.ZM107_ICVEOPES = 20
    AND   YEAR(A.ZM107_FOPERA) = YEAR(CURRENT DATE)
    ORDER BY 5
//*                                                                     00007899
//**********************************************************************
//* PASO        : PELD0400                                             *
//* PROGRAMA    : IKJEFT01/ZM4ELE51                                    *
//* DESCRIPCION : INTERFAZ DE VALIDACION DE GARANTIAS PPG              *
//*                                                                    *
//**********************************************************************
//PELD0410 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMEL01E2 DD DSN=MXCP.ZM.FIX.ELE.ZMELED01.OPERAS,DISP=SHR              00020500
//*                                                                     00019000
//ZMJ787A1 DD DSN=MXCP.ZM.FIX.ELE.ZMELED01.VALRETIR,                    00020500
//         DISP=(NEW,CATLG,DELETE),                                     00020600
//*        AMPL ICONCEPT 180 A 185
//         DCB=(DSORG=PS,RECFM=FB,LRECL=185,BLKSIZE=0),                 00020700
//         SPACE=(CYL,(001,001),RLSE),UNIT=3390                         00020800
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED02T03),DISP=SHR
//*
//**********************************************************************00007879
//* UTILERIA : ADUUMAIN                                                *00007880
//* OBJETIVO : DESCARGA DE TABLA ZMDT887 CLIENTES ELEGIBLES            *00007881
//**********************************************************************00007882
//PELD0420 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P59,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00003310
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00003320
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00003330
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.FIX.ELE.ZMELED01.CTES.ELEG,                   00007890
//            SPACE=(CYL,(20,10),RLSE),                                 00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD *                                                         00007898
    UNLOAD DIRECT AUTO SHRLEVEL CHANGE
    FORMAT STANDARD
    SELECT
          CHAR(VALUE(ZM887_CNUMCTE,' '),8),
          DECIMAL(VALUE(IPROM,0),4,0)     ,
          CHAR(VALUE(ISUCCASA,' '),3)     ,
          CHAR(VALUE(NOMBRE,' '),20)      ,
          CHAR(VALUE(NAPELL1,' '),40)     ,
          CHAR(VALUE(NAPELL2,' '),20)     ,
          CHAR(VALUE(ZM887_IND_ELEGIBILIDAD,' '),1)  ,
          CHAR(VALUE(ZM887_IND_ELEASE_PDV,' '),1)    ,
          CHAR(VALUE(ZM887_IND_ELEGES_PDV,' '),1)    ,
          VALUE(ZM887_FHEXPIRACION,'0001-01-01')     ,
          CHAR(VALUE(ZM887_IND_REFRENDO,' '),1)      ,
          DECIMAL(VALUE(ZM887_PRMORI_MXN12M,0),15,2) ,
          DECIMAL(VALUE(ZM887_PRM_MXN12M,0),15,2)    ,
          DECIMAL(VALUE(ZM887_SDO_POS_ACTIVA,0),15,2),
          CHAR(VALUE(ZM887_IND_CARTA_VAL,' '),1)
     FROM PRODUSVP.ZMDT887, PRODUSVP.ZMDT800,
          PRODUSVP.CUENTA
    WHERE ZM887_IND_ELEGIBILIDAD = 'S'
      AND ZM887_CNUMCTE           = ZM800_NUMCTE
      AND ZM800_CVEREG            = 'RINO'
      AND ZM800_ICONCEPT          = 1
      AND ZM800_ICUENTA           = ICUENTA
      AND SVIGEN                  = 'A'
//*                                                                     00007899
//**********************************************************************
//* PASO        : PELD0430                                             *
//* PROGRAMA    : ZM3ELE00                                             *
//* DESCRIPCION : INTERFAZ DE CLIENTES ELEGIBLES AL DIA                *
//*                                                                    *
//**********************************************************************
//PELD0430 EXEC PGM=ZM3ELE00,COND=(4,LT)
//*
//ZMEL01E1 DD DSN=MXCP.ZM.FIX.ELE.ZMELED01.CTES.ELEG,DISP=SHR           00020500
//*                                                                     00019000
//ZMJ787A1 DD DSN=MXCP.ZM.FIX.ELE.ZMELED01.CTESELEG,                    00020500
//         DISP=(NEW,CATLG,DELETE),                                     00020600
//         DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),                           00020700
//         SPACE=(CYL,(020,010),RLSE),UNIT=3390                         00020800
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//**********************************************************************00007848
//* PROGRAMA    : ZM3DG005                                             *00007849
//* OBJETIVO    : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS       *00007850
//* LOG.        : SDATOOL-35155| MAR.2023                              *
//**********************************************************************00007851
//PELD0435 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL5,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZED01T10),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTRL11,                       00007869
//            DISP=(NEW,CATLG,CATLG),                                   00007870
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),                         00007871
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)                00007872
//*                                                                     00007873
//SYSABOUT DD  SYSOUT=*                                                 00007874
//SYSDBOUT DD  SYSOUT=*                                                 00007875
//SYSOUT   DD  SYSOUT=*                                                 00007876
//*                                                                     00007878
//**********************************************************************00007879
//* UTILERIA    : ADUUMAIN                                             *00007880
//* OBJETIVO    : DESCARGA DE TABLAS                                   *00007881
//* LOG.        : SDATOOL-35155| MAR.2023                              *
//**********************************************************************00007882
//PELD0436 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PELD0436,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.DZMDT800,                    00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTRL11,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************
//* PASO        : PELD0440                                             *
//* PROGRAMA    : ZM4ELE11                                             *
//* DESCRIPCION : INSERTA CLIENTES CON CONTRATOS SIN POSICION          *
//* LOG.        : SDATOOL-35155| MAR.2023                              *
//**********************************************************************
//PELD0440 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMENCTES DD DSN=MXCP.ZM.TMP.ELE.ZMELED01.DZMDT800,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED01T11),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*                           FIN DE PROCESO                           *
//*                                                                    *
//**********************************************************************
