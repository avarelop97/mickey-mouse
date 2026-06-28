//ZMUEPM48 PROC
//**********************************************************************
//*                                                                    *
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBUENM48                                         *
//*                   PREPARACION DE ESTADOS DE CUENTA - PREVIO        *
//*                                                                    *
//* OBJETIVO       :  CARGA LAS CARTERAS Y CALCULA IMPUESTOS           *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBUENM09 (ZMUEPM09)                              *
//*                                                                    *
//* DESPUES DE     :  CBUENM47 (ZMUEPM47)                              *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JULIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  CORRE MENSUALMENTE (PREVIO AL DEFINITIVO)        *
//*                                                                    *
//**********************************************************************
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-01  XMBB157  14NOV18 SE INTEGRAN LOS PASOS PREVIOS QUE    *
//*                               USA LA CARGA DE IMPUESTOS, ESTO POR  *
//*                               SU REINGIENERIA APLICADA; A SU VEZ   *
//*                               PARA HACER EL ESTRACTO DEL DETALLE   *
//*                               RETENCIONES.                         *
//*                                                                    *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.2.0-01  XMBB157  04MAR19 SE ELIMINA EL USO DEL ARCHIVO,       *
//*                               MXC&AMB..ZM.WKF.CBUENM48.EDIMPUE.CTAS*
//*                               MISMO QUE CONTENIA CONTRATOS UNICOS  *
//*                               DEL ARCHIVO DE DETALLE.              *
//*                                                                    *
//**********************************************************************
//*                          == ZM4MU470 ==                            *
//* OBJETIVO : CARGA LA TABLA DE OPERATE A EDOPERT1.                   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUE48P05 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE48T05),DISP=SHR
//**********************************************************************
//*                          == ZM4MU240 ==                            *
//* OBJETIVO : CARGA LOS MOVIMIENTOS DEL MES.                          *
//* ACTUALIZA: EDMOVED                                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUE48P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE48T04),DISP=SHR
//**********************************************************************
//*                          ==  IDCAMS  ==                            *
//* OBJETIVO    : BORRAR ARCHIVOS DE TRABAJO                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUE48P03 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE48T03),DISP=SHR
//*                                                                     00007824
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//PUE48P84 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.ECT.ZMUEPM48.PARMS.CTL,                   00007833
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
//PUE48P82 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.ECT.ZMUEPM48.PARMS.CTL,DISP=SHR           00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZUE44T08),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ECT.ZMUEPM48.CONTROL,                     00007869
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
//PUE48P80 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE48P80,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ZMUEPM48.EDMOVED,                     00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=152,DSORG=PS)               00007872
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.ZMUEPM48.CONTROL,DISP=SHR             00007898
//*
//**********************************************************************
//*                          == ZM4MU250 ==                            *
//* OBJETIVO : PREPARAR INFORMACION PARA EL SIGUIENTE PASO(ZM4MU255)   *
//* ACTUALIZA: EDMOVED                                                 *
//*                                                                    *
//* PASO -NO- REINICIABLE, REINICIAR DESDE EL PASO ANTERIOR(PUE48P03)  *
//**********************************************************************
//PUE48P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//SORTWK05 DD UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//SORTWK06 DD UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//ZMU250E1 DD DSN=MXCP.ZM.TMP.ECT.ZMUEPM48.EDMOVED,DISP=SHR
//ZMU250A1 DD DSN=MXCP.ZM.FIX.ECT.MOVTOS.EDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=115,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(40,20),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE48T02),DISP=SHR
//*FS-1.1.0-01-INI
//*--------------------------------------------------------------------*
//* PASO       : ZME44T20                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE TF9 DE PARAM.                             *
//*--------------------------------------------------------------------*
//ZME44T20 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZME44T20,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.WKF.CBUENM48.UNLOAD.PARAM.TF9,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZME44T20),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZME44T25                                              *
//* UTILERIA   : ZM3CR255                                              *
//* OBJETIVO   : CREA INTERFACE JOB PROGRAMAS.                         *
//*--------------------------------------------------------------------*
//ZME44T25 EXEC PGM=ZM3CR255,PARM='&AMB.&FODATE.EC',COND=(4,LT)
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.JOB,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZME44T30                                              *
//* UTILERIA   : IKJEFT01/ZM4CR255                                     *
//* OBJETIVO   : GENERA LAS CONTROL DE DESCARGA DE REINGENIERIA DEL    *
//*              PROGRAMA ZM4MU255.                                    *
//*--------------------------------------------------------------------*
//ZME44T30 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.JOB,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.RISRSOC.CTL,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//S2DQ0002 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.EDIMPUE.CTL,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//S3DQ0003 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.CONCZ111.CTL,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//S4DQ0004 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.CTASEDIM.CTL,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZME44T30),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZME44T35                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE RETENCIONES DE FONDOS DE INVERSION.       *
//*--------------------------------------------------------------------*
//ZME44T35 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZME44T35,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.WKF.CBUENM48.UNLOAD.RISRSOC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=MXC&AMB..ZM.WKF.CBUENM48.RISRSOC.CTL,
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZME44T40                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : OBTIENE CAPA INICIAL COSTO PROMEDIO PONDERADO FISCAL. *
//*--------------------------------------------------------------------*
//ZME44T40 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZME44T40,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.WKF.CBUENM48.UNLOAD.EDIMPUE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=MXC&AMB..ZM.WKF.CBUENM48.EDIMPUE.CTL,
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZME44T45                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : OBTIENE MOVIMIENTOS CON PERDIDAS Y GANANCIAS.         *
//*--------------------------------------------------------------------*
//ZME44T45 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZME44T45,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.WKF.CBUENM48.UNLOAD.CONCZ111,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=MXC&AMB..ZM.WKF.CBUENM48.CONCZ111.CTL,
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZME44T50                                              *
//* UTILERIA   : ZM3CF255                                              *
//* OBJETIVO   : SE UNIFICAN Y FILTRAN LOS ARCHIVOS DE CURSORES.       *
//*--------------------------------------------------------------------*
//ZME44T50 EXEC PGM=ZM3CF255,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.UNLOAD.RISRSOC,
//            DISP=SHR
//*
//E2DQ0002 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.UNLOAD.EDIMPUE,
//            DISP=SHR
//*
//E3DQ0003 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.UNLOAD.CONCZ111,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.RISRSOC,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=69,DSORG=PS)
//*
//S2DQ0002 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.ZMDT111,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=81,DSORG=PS)
//*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZME44T55                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE ORDENA EL ARCHIVO DE LA TABLA ZMDT111.             *
//*--------------------------------------------------------------------*
//ZME44T55 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.WKF.CBUENM48.ZMDT111,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.WKF.CBUENM48.ZMDT111.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=81,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZME44T55),
//            DISP=SHR
//*
//*FS-1.1.0-01-FIN
//**********************************************************************
//*                          == ZM4MU255 ==                            *
//* OBJETIVO : ACTUALIZA SALDOS PROMEDIO Y CALCULA IMPUESTOS           *
//* ACTUALIZA: EDIMPUE, EDDEPRE                                        *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUE48P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU255A1 DD DSN=MXCP.ZM.FIX.ECT.MOVTOS.EDC,DISP=SHR
//*FS-1.1.0-01-INI
//E1DQ0001 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.UNLOAD.PARAM.TF9,
//            DISP=SHR
//*
//E2DQ0002 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.RISRSOC,
//            DISP=SHR
//*
//E3DQ0003 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.ZMDT111.SORT,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.DETALLE.EDIMPUE,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=87,DSORG=PS)
//*
//*FS-1.1.0-01-FIN
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE48T01),DISP=SHR
//*FS-1.1.0-01-INI
//*--------------------------------------------------------------------*
//* PASO       : ZME44T60                                              *
//* UTILERIA   : IKJEFT01/ZM4MU300                                     *
//* OBJETIVO   : SE CREA LA CONTROL DE DESCARGA DE INTERESES DE CEDES  *
//*              Y PAGARES.                                            *
//*--------------------------------------------------------------------*
//ZME44T60 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.JOB,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.ZMDT610.CTL,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZME44T60),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZME44T65                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : OBTIENE RETENCIONES DE CEDES Y PAGARES.               *
//*--------------------------------------------------------------------*
//ZME44T65 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZME44T65,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.WKF.CBUENM48.UNLOAD.ZMDT610,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=MXC&AMB..ZM.WKF.CBUENM48.ZMDT610.CTL,
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZME44T70                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE ORDENA EL ARCHIVO DEL DETALLE DE RETENCIONES DE    *
//*              CEDES Y PAGARES POR CONTRATO Y TIPO DE RETENCION.     *
//*--------------------------------------------------------------------*
//ZME44T70 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.WKF.CBUENM48.UNLOAD.ZMDT610,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.WKF.CBUENM48.UNLOAD.ZMDT610.SORT,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=53,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZME44T70),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZME44T80                                              *
//* UTILERIA   : ZM3MU300                                              *
//* OBJETIVO   : SE GENERA EL DETALLE DE CEDES Y PAGARES.              *
//*--------------------------------------------------------------------*
//ZME44T80 EXEC PGM=ZM3MU300,COND=(4,LT)
//*
//E2DQ0002 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.UNLOAD.ZMDT610.SORT,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.DETALLE.ZMDT610,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=87,DSORG=PS)
//*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZME44T85                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : OBTIENE LOS ACUMULADOS DE LOS CONTRATOS DEL EDC.      *
//*--------------------------------------------------------------------*
//ZME44T85 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZME44T85,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.WKF.CBUENM48.UNLOAD.EDIMPUE.ACUM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=MXC&AMB..ZM.WKF.CBUENM48.CTASEDIM.CTL,
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZME44T90                                              *
//* UTILERIA   : ZM3MU305                                              *
//* OBJETIVO   : SE DEPURAN LOS ACUMULADOS DE LOS CONTRATOS DEL EDC.   *
//*--------------------------------------------------------------------*
//ZME44T90 EXEC PGM=ZM3MU305,COND=(4,LT)
//*
//E2DQ0002 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.UNLOAD.EDIMPUE.ACUM,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.WKF.CBUENM48.DETALLE.EDIMPUE.ACUM,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=87,DSORG=PS)
//*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZME44T95                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE ORDENA EL ARCHIVO DEL DETALLE DE RETENCIONES POR   *
//*              TIPO DE MERCADO, CONTRATO, EMISORA Y SERIE.           *
//*              SE UNE EL DETALLE MENSUAL, EL DETALLE ACUMULADO Y     *
//*              EL DETALLE DE CEDES Y PAGARES.                        *
//*--------------------------------------------------------------------*
//ZME44T95 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.WKF.CBUENM48.DETALLE.EDIMPUE,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.WKF.CBUENM48.DETALLE.EDIMPUE.ACUM,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.WKF.CBUENM48.DETALLE.ZMDT610,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.CBUENM48.DETALLE.EDIMPUE.SORT,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=87,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZME44T95),
//            DISP=SHR
//*
//*FS-1.1.0-01-FIN
