//ZMGFPD02 PROC                                                         00010000
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     << MERCADO DE VALORES   >>                     *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMGFPD02                                            *
//*                                                                    *
//*   OBJETIVO  :  ARCHVIO CON OPERACIONES DE BCM                      *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    : DIARIO.                                        *
//*                                                                    *
//*   ELABORADO POR   : BBV-BANCOMER / JOSE LUIS GUTIERREZ ORTEGA      *
//*                                                                    *
//*   FECHA           : ENERO     DEL 2006                             *
//**********************************************************************
//**********************************************************************
//*                           --ZM4DGD04--                             *
//* OBJETIVO    : GENERAR REPORTE CON OPERACIONES DE BANCA PATRIMONIAL *
//*               PARA RIESGOS                                         *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR   FECHA  DESCRIPCION                          *
//* ------------  ------- ------- -------------------------------------*
//* FS-1.0.0-01  CAPGEMI 25ABR11 SE CAMBIA LA LONGITUD DEL ARCHIVO DE  *
//*                               SALIDA EN EL PASO PGF02P04.          *
//*--------------------------------------------------------------------*
//* FS-1.1.0-01 CAPGEMINI 17JUN14 SE MODIFICA LA LONGITUD DEL ARCHIVO  *
//*                               ZMGD01R1 DEL PASO PGF02P04.          *
//*--------------------------------------------------------------------*
//* AXEL VS INI NOV 2023  MI30712 SE AGREGA INFORMACION DE MEDIO DE    *
//* AXEL VS FIN NOV 2023          RECEPCION SRA DE M.C.                *
//*--------------------------------------------------------------------*
//PGF02P06 EXEC PGM=IKJEFT01
//*
//ZMGD04R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF02T06),DISP=SHR
//*
//**********************************************************************
//*                           --ZM4CRX10--                             *
//* OBJETIVO    : GENERAR REPORTE DE OPERACIONES DE BANCA PRIVADA      *
//*               Y BANCA PATRIMONIAL                                  *
//*                                                                    *
//**********************************************************************
//PGF02P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMRX10R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF02T05),DISP=SHR
//*
//**********************************************************************
//*                           --ZM4DGD01--                             *
//* OBJETIVO    : GENERAR ARCHIVO CON OPERACIONES DE BANCA PATRIMONIAL *
//*               ZM4DGD01                                             *
//*                                                                    *
//**********************************************************************
//*PGF02P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ZMGD01R1 DD DSN=MXCP.ZM.FIX.TES.OPERABCM,
//*            DISP=(NEW,CATLG,DELETE),
//*FS-1.0.0-01-INI
//*           DCB=(LRECL=400,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*FS-1.1.0-01-INI
//*           DCB=(LRECL=430,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            DCB=(LRECL=456,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*FS-1.1.0-01-FIN
//*FS-1.0.0-01-FIN
//*            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//*
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF02T04),DISP=SHR
//*
//**********************************************************************
//*                           --ZM4DGD02--                             *
//* OBJETIVO    : GENERAR REPORTE CON OPERACIONES DE BANCA PATRIMONIAL *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//PGF02P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGD02R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF02T03),DISP=SHR
//*
//**********************************************************************
//*                           --ZM4CRX08--                             *
//* OBJETIVO    : GENERAR REPORTE DE OPERACIONES A PLAZO DEL DIA       *
//*               Y VENCIMIENTO.                                       *
//*                                                                    *
//**********************************************************************
//PGF02P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMRX08R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF02T02),DISP=SHR
//*                                                                    *
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//PGF02P0A EXEC PGM=IKJEFT01,COND=(4,LT)                                00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.FIX.ELE.DG005.PARMS.CTLA,                     00007833
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
//PGF02P0B EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.FIX.ELE.DG005.PARMS.CTLA,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZGF02T07),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.FIX.ELE.DG005.CONTROLA,                       00007869
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
//PGF02P0C EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.FIX.ELE.DG005.PARMS.CTLA,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZGF02T08),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.FIX.ELE.DG005.CONTROLB,                       00007869
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
//PGF02P0D EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.FIX.ELE.DG005.PARMS.CTLA,DISP=SHR             00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZGF02T09),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.FIX.ELE.DG005.CONTROLC,                       00007869
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
//PGF02P0E EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P50,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.FIX.ELE.ZMGFPD02.OPERACIA,                    00007890
//            SPACE=(CYL,(40,20),RLSE),                                 00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.FIX.ELE.DG005.CONTROLA,DISP=SHR               00007898
//*                                                                     00007878
//**********************************************************************00007879
//* UTILERIA : ADUUMAIN                                                *00007880
//* OBJETIVO : DESCARGA DE TABLAS                                      *00007881
//**********************************************************************00007882
//PGF02P0F EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P50,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.FIX.ELE.ZMGFPD02.OPERACIB,                    00007890
//            SPACE=(CYL,(40,20),RLSE),                                 00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.FIX.ELE.DG005.CONTROLB,DISP=SHR               00007898
//*                                                                     00007878
//**********************************************************************00007879
//* UTILERIA : ADUUMAIN                                                *00007880
//* OBJETIVO : DESCARGA DE TABLAS                                      *00007881
//**********************************************************************00007882
//PGF02P0G EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P50,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.FIX.ELE.ZMGFPD02.OPERACIC,                    00007890
//            SPACE=(CYL,(40,20),RLSE),                                 00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.FIX.ELE.DG005.CONTROLC,DISP=SHR               00007898
//*                                                                     00007899
//**********************************************************************00007899
//* OBJETIVO : ORDENA ARCHIVO                                          *00007899
//*    POR ISUCCASA  IPROM  NICUENTA                                   *00007899
//* UTILERIA : ICEMAN                                                  *00007899
//**********************************************************************00007899
//PGF02P0H EXEC PGM=ICEMAN,COND=(4,LT)                                  00007899
//SYSOUT   DD SYSOUT=*                                                  00007899
//SYSTSPRT DD SYSOUT=*                                                  00007899
//SORTIN   DD DSN=MXCP.ZM.FIX.ELE.ZMGFPD02.OPERACIA,DISP=SHR            00007899
//         DD DSN=MXCP.ZM.FIX.ELE.ZMGFPD02.OPERACIB,DISP=SHR            00007899
//         DD DSN=MXCP.ZM.FIX.ELE.ZMGFPD02.OPERACIC,DISP=SHR            00007899
//*           SE MODIFICA DE 295 A 298 POR AMPL ICONCEPT
//SORTOUT  DD DSN=MXCP.ZM.FIX.ELE.SORT.OPERACI,                         00007899
//            DISP=(NEW,CATLG,DELETE),                                  00007899
//            DCB=(DSORG=PS,RECFM=FB,LRECL=298,BLKSIZE=0),              00007899
//            SPACE=(CYL,(40,20),RLSE),UNIT=3390                        00007899
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGF02T10),DISP=SHR                   00007899
//*                                                                     00007899
//**********************************************************************00007899
//*                           --ZM4DGD01--                             *00007899
//* OBJETIVO    : GENERAR ARCHIVO CON OPERACIONES DE BANCA PATRIMONIAL *00007899
//*               ZM4DGD01                                             *00007899
//*                                                                    *00007899
//**********************************************************************00007899
//PGF02P0I EXEC PGM=IKJEFT01,COND=(4,LT)                                00007899
//*                                                                     00007899
//ZMGD01R2 DD DSN=MXCP.ZM.FIX.ELE.SORT.OPERACI,DISP=SHR                 00020500
//*
//ZMGD01R1 DD DSN=MXCP.ZM.FIX.TES.OPERABCM,                             00007899
//            DISP=(NEW,CATLG,DELETE),                                  00007899
//* AXEL VS INI NOV 2023
//*           DCB=(LRECL=456,RECFM=FB,BLKSIZE=0,DSORG=PS),              00007899
//            DCB=(LRECL=507,RECFM=FB,BLKSIZE=0,DSORG=PS),              00007899
//* AXEL VS FIN NOV 2023
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)                        00007899
//*                                                                     00007899
//SYSTSPRT DD SYSOUT=*                                                  00007899
//SYSPRINT DD SYSOUT=*                                                  00007899
//SYSOUT   DD SYSOUT=*                                                  00007899
//SYSDBOUT DD SYSOUT=*                                                  00007899
//SYSABOUT DD SYSOUT=*                                                  00007899
//SYSUDUMP DD DUMMY                                                     00007899
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF02T04),DISP=SHR                   00007899
//*
//**********************************************************************
//*                           -- DMBATCH  --                           *
//* OBJETIVO    :  PARA TRANSFERENCIA DE ARCHIVOS.                     *
//* ACTUALIZA   :                                                      *
//**********************************************************************
//*PGF02P0J EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(PGF02T01),DISP=SHR
//*
//**********************************************************************
