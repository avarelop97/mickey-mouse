//ZMPCCN64 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM.                                                 *
//* PROCESO      : ZMPCCN64.                                           *
//* OBJETIVO     :                                                     *
//* REALIZO      : BEX                                                 *
//* FECHA        : JUNIO  2021                                         *
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
//* PROGRAMA: ZM3DG001.                                                *
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO                 *
//*           PARA SIGUIENTES PASOS.                                   *
//**********************************************************************
//PCC64060 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMPCCN64,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*====================================================================*
//* PASO     : PCC64050.                                               *
//* OBJETIVO : GENERA REPORTE OPER. CAPITALES VS LIQUIDACION           *
//* PROGRAMA : ZM4DCO16                                                *
//**********************************************************************
//PCC64050 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62050 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMPCCN64,DISP=SHR
//PEN1PEN2 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1PENA.EVE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCTEV16),DISP=SHR
//*
//*====================================================================*
//* PASO     : PCC64040.                                               *
//* OBJETIVO : GENERA REPORTE PARA CONCILIACION SOC. INV.              *
//* PROGRAMA : ZM4DCO17                                                *
//**********************************************************************
//PCC64040 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62040 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMPCCN64,DISP=SHR
//PEN1PEN2 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1PENB.EVE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCTEV40),DISP=SHR
//*
//*====================================================================*
//* PASO     : PCC64030.                                               *
//* OBJETIVO : GENERA REPORTE INDEVAL VS LIQUIDACION                   *
//* PROGRAMA : ZM4DCO18                                                *
//**********************************************************************
//PCC64030 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62030 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMPCCN64,DISP=SHR
//PEN1PEN2 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1PENC.EVE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCTEV30),DISP=SHR
//*
//*====================================================================*
//* PASO     : PCC64025.                                               *
//* OBJETIVO : GENERA REPORTE Y PROCESA CONCILIACION DE EFECTIVO       *
//* PROGRAMA : ZM4DCO02                                                *
//**********************************************************************
//PCC64025 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62025 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMPCCN64,DISP=SHR
//PEN1PEN2 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1PEND.EVE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=401,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCTEV02),DISP=SHR
//*
//*====================================================================*
//* PASO     : PCC64020.                                               *
//* OBJETIVO : GENERA REPORTE CONCILIACION SOLO SUCURSALES
//* PROGRAMA : ZM4DCO19                                                *
//**********************************************************************
//PCC64020 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62020 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMPCCN64,DISP=SHR
//REPSURBG DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..REPSURBG.EVE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCTEV19),DISP=SHR
//**********************************************************************
//*                 F  I  N                                            *
//**********************************************************************
