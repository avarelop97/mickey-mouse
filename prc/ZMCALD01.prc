//ZMCALD01 PROC
//*
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : ZMCALD01                                             *
//* OBJETIVO    : ACTUALIZACION DIARIA DE INFORMACION DE CALIFICACION  *
//*               DEC CLIENTES DE CLIENTES.                            *
//* REALIZO     : INDRA.                                               *
//* FECHA       : 11/ABRIL/2022.                                       *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*--------------------------------------------------------------------*
//* MODIFICO:         MI12728 LSR                                      *
//* FECHA:            SEPTIEMBRE 2023                                  *
//* ASUNTO:           INCREMENTO FOLIO CONCEPT,INCREMENTO DE LONGITUD  *
//*--------------------------------------------------------------------*
//*                                                                    *
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//PCAL0200 EXEC PGM=IKJEFT01                                            00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.CAL.DG005.PARMS.CTL0,                     00007833
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
//**********************************************************************00007847
//* PROGRAMA   : ZM3DG005                                              *00007847
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007847
//*              SE MODIFICA POR DESCARGA DE TABLAS                    *00007848
//*                                        ZMDT800/CARTERA/CUENTA      *00007849
//**********************************************************************00007850
//PCAL0190 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.CAL.DG005.PARMS.CTL0,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZCD01T03),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.CAL.DG005.CONTROL6,                       00007869
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
//PCAL0180 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PCAL0180,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.CAL.ZMCALD01.SALDOS,                      00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.CAL.DG005.CONTROL6,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************00007899
//* PASO     : PELD0175                                                *00007899
//* OBJETIVO :                                                         *00007899
//*  ORDENA ARCHIVO DESCARGADO POR FECHA Y CUENTA, SUMARISA MTENENCI   *00007899
//* UTILERIA : ICEMAN                                                  *00007899
//**********************************************************************00007899
//PCAL0170 EXEC PGM=ICEMAN,COND=(4,LT)                                  00007899
//SYSOUT   DD SYSOUT=*                                                  00007899
//SYSTSPRT DD SYSOUT=*                                                  00007899
//SYSPRINT DD SYSOUT=*                                                  00007899
//SORTIN   DD DSN=MXCP.ZM.TMP.CAL.ZMCALD01.SALDOS,DISP=SHR              00007899
//SORTOUT  DD DSN=MXCP.ZM.TMP.CAL.ZMCALD01.SORTS.SALDOS,                00007899
//            DISP=(NEW,CATLG,DELETE),                                  00007899
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=36,BLKSIZE=0),               00007899
//            DCB=(DSORG=PS,RECFM=FB,LRECL=39,BLKSIZE=0),               00007899
//            SPACE=(CYL,(100,20),RLSE),UNIT=3390                       00007899
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCD01T04),DISP=SHR                   00007899
//*                                                                     00007899
//**********************************************************************
//* PROGRAMA    : IKJEFT01/ZM4CAL10                                    *
//* DESCRIPCION : ACTUALIZACION DIARIA DE SALDOS ZMDT891               *
//**********************************************************************
//PCAL0160 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMEL01E1 DD DSN=MXCP.ZM.TMP.CAL.ZMCALD01.SORTS.SALDOS,DISP=SHR        00007906
//*                                                                     00007905
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZCD01T05),DISP=SHR
//*
//**********************************************************************00007848
//* PROGRAMA   : ZM3DG005                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//PCAL0150 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.CAL.DG005.PARMS.CTL0,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZCD01T06),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.CAL.DG005.CONTROL8,                       00007869
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
//PCAL0140 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.CAL.DG005.PARMS.CTL0,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZCD01T07),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.CAL.DG005.CONTROL7,                       00007869
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
//* OBJETIVO : DESCARGA DE TABLAS ZMDT891                              *00007881
//**********************************************************************00007882
//PCAL0130 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PCAL0130,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.CAL.ZMCALD01.PROF12,                      00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.CAL.DG005.CONTROL8,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************00007899
//* UTILERIA : ADUUMAIN                                                *00007899
//* OBJETIVO : DESCARGA DE TABLAS TIPCAMB UN ANO                       *00007899
//**********************************************************************00007899
//PCAL0120 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007899
//         PARM='MXP1,PCAL0120,NEW,,MSGLEVEL(1)'                        00007899
//*                                                                     00007899
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007899
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007899
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007899
//*                                                                     00007899
//SYSREC   DD DSN=MXCP.ZM.TMP.CAL.ZMCALD01.TIPCAM,                      00007899
//            SPACE=(CYL,(100,20),RLSE),                                00007899
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007899
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007899
//*                                                                     00007899
//SYSPRINT DD SYSOUT=*                                                  00007899
//SYSTSPRT DD SYSOUT=*                                                  00007899
//SYSOUT   DD SYSOUT=*                                                  00007899
//SYSIN    DD DSN=MXCP.ZM.TMP.CAL.DG005.CONTROL7,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************
//* PROGRAMA    : IKJEFT01/ZM4CAL04                                    *
//* DESCRIPCION : ACTUALIZACION DIARIA DE SALDOS PROMEDIO A 365 DIAS   *
//*               EN ZMDT890                                           *
//**********************************************************************
//PCAL0110 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMEL01E2 DD DSN=MXCP.ZM.TMP.CAL.ZMCALD01.TIPCAM,DISP=SHR              00007906
//ZMEL01E4 DD DSN=MXCP.ZM.TMP.CAL.ZMCALD01.PROF12,DISP=SHR              00007905
//*                                                                     00007905
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZCD01T08),DISP=SHR
//
//*
//**********************************************************************
//*                                                                    *
//*                   FIN DE PROCESO  -  WA                            *
//*                                                                    *
//**********************************************************************
