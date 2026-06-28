//ZMJFPD62 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM.                                                 *
//* PROCESO      : ZMJFPD05.                                           *
//* OBJETIVO     :                                                     *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PROCESO CONCILIACION CASA DE BOLSA                                 *
//*                                                                    *
//*--------------------------------------------------------------------*
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PDO62060 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD62,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//* PASO     : PDO62050                                                *
//* OBJETIVO : GENERA REPORTE OPERACIONES IVA                          *
//* PROGRAMA : ZM4DCO10                                                *
//**********************************************************************
//PDO62050 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62050 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD62,DISP=SHR
//CONCIIVA DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..CONCIIVA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62050),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62040                                                *
//* OBJETIVO : GENERA REPORTE DE COMISIONES                            *
//* PROGRAMA : ZM4DCO11                                                *
//**********************************************************************
//PDO62040 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62040 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD62,DISP=SHR
//CONCCOMI DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..CONCCOMI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62040),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62030                                                *
//* OBJETIVO : GENERA REPORTE DE ISR                                   *
//* PROGRAMA : ZM4DCO12                                                *
//**********************************************************************
//PDO62030 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62030 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD62,DISP=SHR
//CONCISRS DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..CONCISRS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62030),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62029                                                *
//* OBJETIVO : GENERA ARCHIVOS DE OPERACIONES POR FEC. LIQ.            *
//* PROGRAMA : ZM4DCO30                                                *
//**********************************************************************
//PDO62029 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62029 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD62,DISP=SHR
//ZMDCO30A DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQSIC1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=138,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//ZMDCO30B DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQNAC1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=138,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//ZMDCO30C DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQSIC2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=138,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//ZMDCO30D DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQNAC2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=138,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//ZMDCO30E DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQSIC3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=138,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//ZMDCO30F DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQNAC3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=138,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62029),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62028                                                *
//* OBJETIVO : SORT OPERSIC BMV                                        *
//**********************************************************************
//PDO62028 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQSIC1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQSIC1.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=138,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62028),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62027                                                *
//* OBJETIVO : SORT OPERNAC BMV                                        *
//**********************************************************************
//PDO62027 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQNAC1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQNAC1.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=138,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62027),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62026                                                *
//* OBJETIVO : SORT OPERSIC BIV                                        *
//**********************************************************************
//PDO62026 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQSIC2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQSIC2.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=138,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62026),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62025                                                *
//* OBJETIVO : SORT OPERNAC BIV                                        *
//**********************************************************************
//PDO62025 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQNAC2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQNAC2.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=138,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62025),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62024                                                *
//* OBJETIVO : SORT OPERSIC OTR                                        *
//**********************************************************************
//PDO62024 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQSIC3,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQSIC3.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=138,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62024),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62023                                                *
//* OBJETIVO : SORT OPERNAC OTR                                        *
//**********************************************************************
//PDO62023 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQNAC3,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQNAC3.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=138,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62023),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62022                                                *
//* OBJETIVO : GENERA REPORTE DE COMPRAS / VENTAS CAP. FECHA LIQUIDACIO*
//* PROGRAMA : ZM4DCO13 BMV                                            *
//**********************************************************************
//PDO62022 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62022 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD62,DISP=SHR
//ZMDCO13A DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQSIC1.A1,DISP=SHR
//ZMDCO13B DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQNAC1.A1,DISP=SHR
//PEN1PEN2 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1BMVA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=401,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMDCO13T DD DSN=ZIVA.ZME.CONTROL(ZJO62051),DISP=SHR
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62022),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62021                                                *
//* OBJETIVO : GENERA REPORTE DE COMPRAS / VENTAS CAP. FECHA LIQUIDACIO*
//* PROGRAMA : ZM4DCO13 BIV                                            *
//**********************************************************************
//PDO62021 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62021 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD62,DISP=SHR
//ZMDCO13A DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQSIC2.A1,DISP=SHR
//ZMDCO13B DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQNAC2.A1,DISP=SHR
//PEN1PEN2 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1BIVA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=401,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMDCO13T DD DSN=ZIVA.ZME.CONTROL(ZJO62052),DISP=SHR
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62021),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62020                                                *
//* OBJETIVO : GENERA REPORTE DE COMPRAS / VENTAS CAP. FECHA LIQUIDACIO*
//* PROGRAMA : ZM4DCO13 OTR                                            *
//**********************************************************************
//PDO62020 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62020 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD62,DISP=SHR
//ZMDCO13A DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQSIC3.A1,DISP=SHR
//ZMDCO13B DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..LIQNAC3.A1,DISP=SHR
//PEN1PEN2 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1OTRA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=401,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMDCO13T DD DSN=ZIVA.ZME.CONTROL(ZJO62053),DISP=SHR
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62020),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62019                                                *
//* OBJETIVO : GENERA ARCHIVOS DE OPERACIONES POR FEC. OPE.            *
//* PROGRAMA : ZM4DCO31                                                *
//**********************************************************************
//PDO62019 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62019 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD62,DISP=SHR
//ZMDCO31A DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPESIC1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=138,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//ZMDCO31B DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPENAC1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=138,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//ZMDCO31C DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPESIC2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=138,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//ZMDCO31D DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPENAC2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=138,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//ZMDCO31E DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPESIC3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=138,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//ZMDCO31F DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPENAC3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=138,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62019),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62018                                                *
//* OBJETIVO : SORT OPERSIC BMV                                        *
//**********************************************************************
//PDO62018 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPESIC1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPESIC1.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=138,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62018),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62017                                                *
//* OBJETIVO : SORT OPERNAC BMV                                        *
//**********************************************************************
//PDO62017 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPENAC1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPENAC1.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=138,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62017),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62016                                                *
//* OBJETIVO : SORT OPERSIC BIV                                        *
//**********************************************************************
//PDO62016 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPESIC2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPESIC2.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=138,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62016),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62015                                                *
//* OBJETIVO : SORT OPERNAC BIV                                        *
//**********************************************************************
//PDO62015 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPENAC2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPENAC2.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=138,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62015),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62014                                                *
//* OBJETIVO : SORT OPERSIC OTR                                        *
//**********************************************************************
//PDO62014 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPESIC3,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPESIC3.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=138,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62014),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62013                                                *
//* OBJETIVO : SORT OPERNAC OTR                                        *
//**********************************************************************
//PDO62013 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPENAC3,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPENAC3.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=138,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62013),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62012                                                *
//* OBJETIVO : GENERA REPORTE COMPRAS/VENTAS CAPITALES FECHA OPERACION *
//* PROGRAMA : ZM4DCO14 BMV                                            *
//**********************************************************************
//PDO62012 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62012 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD62,DISP=SHR
//ZMDCO14A DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPESIC1.A1,DISP=SHR
//ZMDCO14B DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPENAC1.A1,DISP=SHR
//PEN1PEN2 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1BMVB,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=401,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMDCO14T DD DSN=ZIVA.ZME.CONTROL(ZJO62051),DISP=SHR
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62012),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62011                                                *
//* OBJETIVO : GENERA REPORTE COMPRAS/VENTAS CAPITALES FECHA OPERACION *
//* PROGRAMA : ZM4DCO14 BIV                                            *
//**********************************************************************
//PDO62011 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62011 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD62,DISP=SHR
//ZMDCO14A DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPESIC2.A1,DISP=SHR
//ZMDCO14B DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPENAC2.A1,DISP=SHR
//PEN1PEN2 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1BIVB,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=401,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMDCO14T DD DSN=ZIVA.ZME.CONTROL(ZJO62052),DISP=SHR
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62011),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62010                                                *
//* OBJETIVO : GENERA REPORTE COMPRAS/VENTAS CAPITALES FECHA OPERACION *
//* PROGRAMA : ZM4DCO14 OTR                                            *
//**********************************************************************
//PDO62010 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62010 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD62,DISP=SHR
//ZMDCO14A DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPESIC3.A1,DISP=SHR
//ZMDCO14B DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..OPENAC3.A1,DISP=SHR
//PEN1PEN2 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1OTRB,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=401,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMDCO14T DD DSN=ZIVA.ZME.CONTROL(ZJO62053),DISP=SHR
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62010),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO62009                                                *
//* OBJETIVO : GENERA REP. DE CONCEPTOS GNERADOS EN LA OPC. 621 Y 622  *
//* PROGRAMA : ZM4DCO20                                                *
//**********************************************************************
//PDO62009 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62009 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD62,DISP=SHR
//C621622R DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..C621622R,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO62009),DISP=SHR
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO62050     *
//* REPORTE  : REPORTE OPERACIONES IVA                                 *
//**********************************************************************
//PDO62008 EXEC PGM=ICEGENER,COND=(0,NE,PDO62050)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..CONCIIVA,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO62040     *
//* REPORTE  : REPORTE DE COMISIONES                                   *
//**********************************************************************
//PDO62007 EXEC PGM=ICEGENER,COND=(0,NE,PDO62040)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..CONCCOMI,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO62030     *
//* REPORTE  : REPORTE DE ISR                                          *
//**********************************************************************
//PDO62006 EXEC PGM=ICEGENER,COND=(0,NE,PDO62030)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..CONCISRS,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO62022     *
//* REPORTE  : REPORTE COMPRAS / VENTAS CAPITALES FECHA DE LIQ BMV     *
//**********************************************************************
//PDO62005 EXEC PGM=ICEGENER,COND=(0,NE,PDO62022)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1BMVA,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO62012     *
//* REPORTE  : REPORTE COMPRAS/VENTAS CAPITALES FECHA OPERACION BMV    *
//**********************************************************************
//PDO62004 EXEC PGM=ICEGENER,COND=(0,NE,PDO62012)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1BMVB,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO62009     *
//* REPORTE  : REP. DE CONCEPTOS GNERADOS EN LA OPC. 621 Y 622         *
//**********************************************************************
//PDO62003 EXEC PGM=ICEGENER,COND=(0,NE,PDO62009)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..C621622R,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO62021     *
//* REPORTE  : REPORTE COMPRAS / VENTAS CAPITALES FECHA DE LIQ BIVA    *
//**********************************************************************
//PDO62002 EXEC PGM=ICEGENER,COND=(0,NE,PDO62021)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1BIVA,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO62020     *
//* REPORTE  : REPORTE COMPRAS / VENTAS CAPITALES FECHA DE LIQ OTR     *
//**********************************************************************
//PDO62001 EXEC PGM=ICEGENER,COND=(0,NE,PDO62020)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1OTRA,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO62011     *
//* REPORTE  : REPORTE COMPRAS/VENTAS CAPITALES FECHA OPERACION BIVA   *
//**********************************************************************
//PDO62000 EXEC PGM=ICEGENER,COND=(0,NE,PDO62011)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1BIVB,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO62010     *
//* REPORTE  : REPORTE COMPRAS/VENTAS CAPITALES FECHA OPERACION OTR    *
//**********************************************************************
//PDO6200A EXEC PGM=ICEGENER,COND=(0,NE,PDO62010)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1OTRB,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                 F  I  N                                            *
//**********************************************************************
