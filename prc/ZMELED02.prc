//ZMELED02 PROC
//*
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : ZMELED02                                             *
//* OBJETIVO    : CERTIFICADO DE ELEGIBILIDAD DE UN CLIENTE DE LA BANCA*
//*               PATRIMONIAL Y PRIVADA (SE GENERA A PETICION DEL USUA-*
//*               RIO).                                                *
//* REALIZO     : INDRA.                                               *
//* FECHA       : 13/MARZO/2021.                                       *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* M@001        INDRA   2022-03 SE AGREGA PASO PARA REALIZAR DESCARGA *
//* DE LA TABLA DE TIPO DE CAMBIO (UDI)                                *
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATY                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//PELD0210 EXEC PGM=IKJEFT01                                            00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAE2 DD DSN=MXCP.ZM.FIX.TES.EMP.ZMJLPP51,DISP=SHR                 00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL1,                     00007833
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED01T09),DISP=SHR                   00007846
//*                                                                     00007847
//**********************************************************************00007848
//* PROGRAMA   : ZM3DG005                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//PELD0220 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL1,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZED60T01),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL1,                       00007869
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
//PELD0230 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P50,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.ELE.ZMELED02.CABECERA,                    00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL1,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATY                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//PELD0240 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAE2 DD DSN=MXCP.ZM.FIX.TES.EMP.ZMJLPP51,DISP=SHR                 00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL2,                     00007833
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED01T09),DISP=SHR                   00007846
//*                                                                     00007847
//**********************************************************************00007848
//* PROGRAMA   : ZM3DG005                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//PELD0250 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL2,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZED60T02),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL2,                       00007869
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
//PELD0260 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P50,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.ELE.ZMELED02.DETALLE,                     00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL2,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATY                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//PELD0270 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAE2 DD DSN=MXCP.ZM.FIX.TES.EMP.ZMJLPP51,DISP=SHR                 00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTLA,                     00007833
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED01T09),DISP=SHR                   00007846
//*                                                                     00007847
//**********************************************************************00007848
//* PROGRAMA   : ZM3DG005                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//PELD0280 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTLA,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZED60T04),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROLA,                       00007869
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
//         PARM='MXP1,PUE16P50,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.ELE.ZMELED02.DAT608,                      00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROLA,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//PELD0300 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTLB,                     00007833
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
//PELD0310 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTLB,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZED60T03),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROLB,                       00007869
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
//PELD0320 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P50,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.ELE.ZMELED02.DATPAR,                      00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROLB,DISP=SHR               00007898
//*                                                                     00007899
//*                                                                     00007899
//**********************************************************************00007899
//* UTILERIA : ADUUMAIN                                                *00007899
//* OBJETIVO : DESCARGA DE TABLAS TIPCAMB UN ANO                       *00007899
//**********************************************************************00007899
//PELD0330 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007899
//         PARM='MXP1,PUE16P50,NEW,,MSGLEVEL(1)'                        00007899
//*                                                                     00007899
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007899
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007899
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007899
//*                                                                     00007899
//SYSREC   DD DSN=MXCP.ZM.TMP.ELE.ZMELED06.TIPCAM,                      00007899
//            SPACE=(CYL,(100,20),RLSE),                                00007899
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007899
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007899
//*                                                                     00007899
//SYSPRINT DD SYSOUT=*                                                  00007899
//SYSTSPRT DD SYSOUT=*                                                  00007899
//SYSOUT   DD SYSOUT=*                                                  00007899
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZED60T05),DISP=SHR                   00007899
//*                                                                     00007899
//**********************************************************************
//* PROGRAMA    : IKJEFT01/ZM4ELE06                                    *
//* DESCRIPCION : GENERA CERTIFICADO DE ELEGIBILIDAD                   *
//*                                                                    *
//**********************************************************************
//PELD0340 EXEC PGM=IKJEFT01,COND=(4,LT)                                00018800
//*                                                                     00019000
//ZMEL01E6 DD DSN=MXCP.ZM.TMP.ELE.ZMELED02.CABECERA,
//             DISP=SHR
//*                                                                     00019000
//ZMEL01F6 DD DSN=MXCP.ZM.TMP.ELE.ZMELED02.DETALLE,
//             DISP=SHR
//*                                                                     00019000
//ZMEL01G6 DD DSN=MXCP.ZM.TMP.ELE.ZMELED02.DATPAR,
//             DISP=SHR
//*                                                                     00019000
//ZMEL01H6 DD DSN=MXCP.ZM.TMP.ELE.ZMELED02.DAT608,
//             DISP=SHR
//*                                                                     00019000
//ZMJ787E1 DD DSN=MXCP.ZM.FIX.TES.EMP.ZMJLPP51,
//             DISP=SHR
//*                                                                     00019000
//ZMEL01I6 DD DSN=MXCP.ZM.TMP.ELE.ZMELED06.TIPCAM,
//             DISP=SHR
//*                                                                     00019000
//ZMJ787A1 DD DSN=MXCP.ZM.FIX.ELEGIB.CERTIFI,                           00020500
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED01T07),DISP=SHR                   00019700
//*                                                                     00019800
//**********************************************************************
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE DE CERTIFICACION DE ELEGIBILIDAD                 *
//**********************************************************************
//PELD0350 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.ELEGIB.CERTIFI,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                                                                    *
//*                           FIN DE PROCESO                           *
//*                                                                    *
//**********************************************************************
