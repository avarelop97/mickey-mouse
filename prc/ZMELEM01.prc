//ZMELEM01 PROC
//*
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : ZMELEM01                                             *
//* OBJETIVO    : REPORTE E INTERFAZ DE PROXIMOS VENCIMIENTOS DE MARCA *
//*               DE ELEGIBILIDAD DE CLIENTES                          *
//* REALIZO     : INDRA.                                               *
//* FECHA       : 13/MARZO/2021.                                       *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*                                                                    *
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATZ                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//PELM0110 EXEC PGM=IKJEFT01                                            00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL3,                     00007833
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED01T08),DISP=SHR                   00007846
//*                                                                     00007847
//**********************************************************************00007848
//* PROGRAMA   : ZM3DG005                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//PELM0120 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL3,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZED70T01),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL3,                       00007869
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
//PELM0130 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P50,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.ELE.ZMELEM01.VENCIM,                      00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL3,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************
//* PASO        : PELM0101.                                            *
//* PROGRAMA    : IKJEFT01/ZM4ELE07                                    *
//* DESCRIPCION : REPORTE DE PROXIMOS VENCIMIENTOS DE MARCA  DE ELEGIBI*
//*               LIDAD DE CLIENTES                                    *
//**********************************************************************
//PELM0140 EXEC PGM=IKJEFT01,COND=(4,LT)                                00018800
//*                                                                     00019000
//ZMEL01E7 DD DSN=MXCP.ZM.TMP.ELE.ZMELEM01.VENCIM,DISP=SHR              00020500
//*                                                                     00019000
//ZMJ787A1 DD DSN=MXCP.ZM.FIX.ELEGIB.VENCIM,                            00020500
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZEM01T01),DISP=SHR                   00019700
//*                                                                     00019800
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATZ                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//PELM0150 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL4,                     00007833
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZED01T08),DISP=SHR                   00007846
//*                                                                     00007847
//**********************************************************************00007848
//* PROGRAMA   : ZM3DG005                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//PELM0160 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.ELE.DG005.PARMS.CTL4,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZED90T01),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL4,                       00007869
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
//PELM0170 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P50,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.ELE.ZMELEM01.INTERFAZ,                    00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.ELE.DG005.CONTROL4,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************
//* PASO        : PELM0102.                                            *
//* PROGRAMA    : IKJEFT01/ZM4ELE09                                    *
//* DESCRIPCION : INTERFAZ DE PROXIMOS VENCIMIENTOS DE MARCA DE ELEGI- *
//*               BILIDAD DE CLIENTES                                  *
//**********************************************************************
//PELM0180 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMEL01E9 DD DSN=MXCP.ZM.TMP.ELE.ZMELEM01.INTERFAZ,DISP=SHR            00020500
//*                                                                     00019000
//ZMJ787A1 DD DSN=MXCP.ZM.FIX.ELEGIB.RIESGOS,                           00020500
//         DISP=(NEW,CATLG,DELETE),                                     00020600
//         DCB=(DSORG=PS,RECFM=FB,LRECL=218,BLKSIZE=0),                 00020700
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZEM01T02),DISP=SHR
//*
//**********************************************************************
//* PASO    : PELM0103                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE DE CADUCIDAD DE ELEGIBILIDAD CTRL-D              *
//**********************************************************************
//PELM0190 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.ELEGIB.VENCIM,DISP=SHR
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
