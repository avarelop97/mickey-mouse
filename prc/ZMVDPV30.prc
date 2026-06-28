//ZMVDPV30 PROC
//**********************************************************************
//* SISTEMA        :  MODULO UNICO DE VALORES  ( M U V )               *
//* OBJETIVO       :  GENERA ARCHIVOS WALIDACION CON EMISORA, SERIE Y  *
//*                   CUPON INEXISTENTES.                              *
//* PERIODICIDAD   :  DIARIO                                           *
//* REALIZO        :  SALVADOR PLASCENCIA H.                           *
//* FECHA          :  AGOSTO 2005                                      *
//* MODIFICO       :                                                   *
//* FECHA          :                                                   *
//**********************************************************************
//* PASO                      -- ZM4VVW55 --                           *
//* OBJETIVO    :  CAMBIA EMISORAS INVALIDAS EN MUV DE ARCHIVO DE CAPAS*
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD30P10 EXEC PGM=IKJEFT01
//ZMVW55A1 DD DSN=MXCP.ZM.FIX.MIG.CAPAS.F&FECHA,DISP=SHR
//ZMVW55A2 DD DSN=MXCP.ZM.FIX.MIG.CAPAS.CEMISO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//            DCB=(DSORG=PS,LRECL=130,RECFM=FB,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD30T10),DISP=SHR
//**********************************************************************
//* PASO                      --  SORT    --                           *
//* OBJETIVO    :  ORDENA ARCHIVO DE POSICION AL DIA DE MIGRACION POR  *
//*                EMISORA SERIE CUPON                                 *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD30P09 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG.CAPAS.CEMISO,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.MIG.CAPAS.SORT1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//            DCB=(DSORG=PS,LRECL=130,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZVD30T09),DISP=SHR
//*
//**********************************************************************
//* PASO                      -- ZM4VVW56 --                           *
//* OBJETIVO    :  GENERA ARCHIVO DE MOVTOS HISTORICOS DE VALIDACION   *
//*                CON E-S-C INEXISTENTES                              *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD30P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMVW56A1 DD DSN=MXCP.ZM.TMP.MIG.CAPAS.SORT1,DISP=SHR
//ZMVW56A2 DD DSN=MXCP.ZM.FIX.MIG.CAPAS.VALIDA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=130,BLKSIZE=0)
//ZMVW56A3 DD DSN=MXCP.ZM.FIX.MIG.CAPAS.ERRCAP1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=130,BLKSIZE=0)
//ZMVW56A4 DD DSN=MXCP.ZM.FIX.MIG.CAPAS.ERREMI1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=150,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD30T08),DISP=SHR
//*
//**********************************************************************
//* PASO                      --  SORT    --                           *
//* OBJETIVO    :  ORDENA ARCHIVO DE POSICION AL DIA DE MIGRACION POR  *
//*                EMISORA SERIE CUPON                                 *
//* ARCHIVO     :  MXCP.ZM.TMP.MIG.POSMUV                              *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD30P07 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG.POSMUV.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.MIG.POSMUV.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=371,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZVD30T07),DISP=SHR
//*
//**********************************************************************
//* PASO                      -- ZM4VVW81 --                           *
//* OBJETIVO    :  GENERA ARCHIVO POSICION DIA MIGRACION DE WALIDACION *
//*                CON E-S-C INEXISTENTES                              *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD30P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMVW81A1 DD DSN=MXCP.ZM.TMP.MIG.POSMUV.SORT,DISP=SHR
//ZMVW81A2 DD DSN=MXCP.ZM.FIX.MIG.POSMUV.VALIDA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=376,RECFM=FB,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD30T06),DISP=SHR
//*
//**********************************************************************
//* PASO                      --  SORT    --                           *
//* OBJETIVO    :  ORDENA ARCHIVO DE POSICION FIN DE MES POR EMISORA,  *
//*                SERIE Y CUPON                                       *
//* ARCHIVO     :  MXCP.ZM.FIX.MIG.POSBP                               *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD30P05 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG.POSBP.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.MIG.POSBP.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=136,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZVD30T05),DISP=SHR
//*
//**********************************************************************
//* PASO                      -- ZM4VVW80 --                           *
//* OBJETIVO    :  GENERA ARCHIVO DE POSICION FIN MES DE WALIDACION    *
//*                CON E-S-C INEXISTENTES                              *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD30P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMVW80A1 DD DSN=MXCP.ZM.TMP.MIG.POSBP.SORT,DISP=SHR
//ZMVW80A2 DD DSN=MXCP.ZM.FIX.MIG.POSBP.VALIDA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=080,RECFM=FB,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD30T04),DISP=SHR
//*
//**********************************************************************
//* PASO                      -- ZM4VVW54 --                           *
//* OBJETIVO    :  ACTUALIZA EMISORAS SERIE CUPON INEXISTENTES         *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD30P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMVW54A1 DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.F&FECHA,DISP=SHR
//ZMVW54A2 DD DSN=MXCP.ZM.TMP.MIG.MOVHIS.VALIDA0,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=500,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD30T03),DISP=SHR
//*
//**********************************************************************
//* PASO                      --  SORT    --                           *
//* OBJETIVO    :  ORDENA ARCHIVO DE MOVTOS HISTORICOS POR EMISORA,    *
//*                SERIE Y CUPON                                       *
//* ARCHIVO     :  MXCP.ZM.FIX.MIG.MOVHIS                              *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD30P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.MIG.MOVHIS.VALIDA0,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.MIG.MOVHIS.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//            DCB=(DSORG=PS,LRECL=500,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZVD30T02),DISP=SHR
//*
//**********************************************************************
//* PASO                      -- ZM4VVW50 --                           *
//* OBJETIVO    :  GENERA ARCHIVO DE MOVTOS HISTORICOS DE WALIDACION   *
//*                CON E-S-C INEXISTENTES                              *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD30P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMVW50A1 DD DSN=MXCP.ZM.TMP.MIG.MOVHIS.SORT,DISP=SHR
//ZMVW50A2 DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.VALIDA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=500,BLKSIZE=0)
//ZMVW50A3 DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.ERRHIS1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=500,BLKSIZE=0)
//ZMVW50A4 DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.ERREMI1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=150,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD30T01),DISP=SHR
//*
