//ZMUEPR25 PROC
//**********************************************************************
//**                    C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPR25                                            *
//*                                                                    *
//*   OBJETIVO  :  RESPALDO DE ARCHIVOS DE BPIGO PARA ESTADOS DE       *
//*                CUENTA DE BANCA PATRIMONIAL Y GENERACION DE         *
//*                ARCHIVO DE RENDIMIENTOS MENSUAL DE EDOS. CTA.       *
//*                                                                    *
//**********************************************************************
//*
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*                                                                     00007824
//*--------------------------------------------------------------------*
//*                                                                     00007824
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//PUE16P70 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.FCT.DG005.PARMS.CTL,                      00007833
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
//PUE16P60 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.FCT.DG005.PARMS.CTL,DISP=SHR              00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZFS20T05),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.FCT.DG005.CONTROL,                        00007869
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
//PUE16P50 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PUE16P50,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.FCT.ZMUEPR25.RENDI,                       00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.FCT.DG005.CONTROL,DISP=SHR                00007898
//*                                                                     00007899
//**********************************************************************00007900
//* UTILERIA   : IKJEFT01/ZM4FSL30                                     *00007901
//* OBJETIVO   : GENERA ARCHIVO DE RENDIMIENTOS MENSUALES DE EDOS.CTA. *00007902
//**********************************************************************00007903
//PUE16P40 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007904
//*                                                                     00007905
//ZMUL30E1 DD DSN=MXCP.ZM.TMP.FCT.ZMUEPR25.RENDI,DISP=SHR               00007906
//*                                                                     00007907
//ZMUL30S1 DD DSN=MXCP.ZM.FIX.FCT.ZMUEPR25.REND.MEN,                    00007908
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
//*                                                                     00009900
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        RESPALDA ARCHIVO 'MXCP.ZM.FIX.REC.EBCM.BPIGO.PF01.ACT'      *
//*        EN EL GDGR       'MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF01(+1)'     *
//**********************************************************************
//PUE16P30 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF01.ACT,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF01(+1),
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             DCB=(BKUP.MODEL,DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(200,100),RLSE)
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        RESPALDA ARCHIVO 'MXCP.ZM.FIX.REC.EBCM.BPIGO.PF02.ACT'      *
//*        EN EL GDGR       'MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF02(+1)'     *
//**********************************************************************
//PUE16P20 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF02.ACT,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF02(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=446,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        RESPALDA ARCHIVO 'MXCP.ZM.FIX.REC.EBCM.BPIGO.PF03.ACT'      *
//*        EN EL GDGD       'MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF03(+1)'     *
//**********************************************************************
//PUE16P10 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF03.ACT,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF03(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=297,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//**********************************************************************
//*                   FIN PROCESO ZMUEPR25                             *
//**********************************************************************
