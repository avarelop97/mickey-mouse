//ZMJFPD64 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM.                                                 *
//* PROCESO      : ZMJFPD64.                                           *
//* OBJETIVO     :                                                     *
//* REALIZO      : FSW-DGCM(SMA).                                      *
//* FECHA        : 24 DE ABRIL DE 2017.                                *
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
//PDO64060 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD64,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*====================================================================*
//* PASO     : PDO64050.                                               *
//* OBJETIVO : GENERA REPORTE OPER. CAPITALES VS LIQUIDACION           *
//* PROGRAMA : ZM4DCO16                                                *
//**********************************************************************
//PDO64050 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62050 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD64,DISP=SHR
//PEN1PEN2 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1PENA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO64050),DISP=SHR
//*
//*====================================================================*
//* PASO     : PDO64040.                                               *
//* OBJETIVO : GENERA REPORTE PARA CONCILIACION SOC. INV.              *
//* PROGRAMA : ZM4DCO17                                                *
//**********************************************************************
//PDO64040 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62040 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD64,DISP=SHR
//PEN1PEN2 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1PENB,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO64040),DISP=SHR
//*
//*====================================================================*
//* PASO     : PDO64030.                                               *
//* OBJETIVO : GENERA REPORTE INDEVAL VS LIQUIDACION                   *
//* PROGRAMA : ZM4DCO18                                                *
//**********************************************************************
//PDO64030 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62030 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD64,DISP=SHR
//PEN1PEN2 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1PENC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO64030),DISP=SHR
//*
//*====================================================================*
//* PASO     : PDO64025.                                               *
//* OBJETIVO : GENERA REPORTE Y PROCESA CONCILIACION DE EFECTIVO       *
//* PROGRAMA : ZM4DCO02                                                *
//**********************************************************************
//PDO64025 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62025 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD64,DISP=SHR
//PEN1PEN2 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1PEND,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=401,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF49T02),DISP=SHR
//*
//*====================================================================*
//* PASO     : PDO64020.                                               *
//* OBJETIVO : GENERA REPORTE CONCILIACION SOLO SUCURSALES
//* PROGRAMA : ZM4DCO19                                                *
//**********************************************************************
//PDO64020 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62020 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD64,DISP=SHR
//REPSURBG DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..REPSURBG,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF49T19),DISP=SHR
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO64050
//* REPORTE  : REPORTE OPER. CAPITALES VS LIQUIDACION
//**********************************************************************
//PDO64019 EXEC PGM=ICEGENER,COND=(0,NE,PDO64050)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1PENA,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO64040
//* REPORTE  : REPORTE OPER. CAPITALES VS LIQUIDACION
//**********************************************************************
//PDO64018 EXEC PGM=ICEGENER,COND=(0,NE,PDO64040)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1PENB,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO64030
//* REPORTE  : REPORTE OPER. CAPITALES VS LIQUIDACION
//**********************************************************************
//PDO64017 EXEC PGM=ICEGENER,COND=(0,NE,PDO64030)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1PENC,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO64025
//* REPORTE  : REPORTE OPER. CAPITALES VS LIQUIDACION
//**********************************************************************
//PDO64016 EXEC PGM=ICEGENER,COND=(0,NE,PDO64025)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..PEN1PEND,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO64020
//* REPORTE  : REPORTE OPER. CAPITALES VS LIQUIDACION
//**********************************************************************
//PDO64015 EXEC PGM=ICEGENER,COND=(0,NE,PDO64020)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..REPSURBG,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//
//**********************************************************************
//*                 F  I  N                                            *
//**********************************************************************
