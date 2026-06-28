//ZMJFPD63 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM.                                                 *
//* PROCESO      : ZMJFPD03.                                           *
//* OBJETIVO     : CONCILIACION POR F. LIQUIDACION SIVA VS BMV/BIVA    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PDO63070 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','CBPZPR','     ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD63,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//* PASO     : PDO63049                                                *
//* OBJETIVO : GENERA ARCHIVOS DE OP. A FECHA DE OPE. DE BMV (OPERA)   *
//* PROGRAMA : ZM4DCO35                                                *
//**********************************************************************
//PDO63049 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO63049 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO35A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD63,DISP=SHR
//ZMCO35A2 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.OPEBMV1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=138,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMCO35A3 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.OPEBIV1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=138,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMCO35A4 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.OPEOTR1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=138,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO63049),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO63048                                                *
//* OBJETIVO : GENERA ARCHIVO DE OP. A FECHA DE OPE. DE BMV            *
//* PROGRAMA : ZM4DCO36                                                *
//**********************************************************************
//PDO63048 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO63048 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO36A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD63,DISP=SHR
//ZMCO36A2 DD DSN=MXCP.ZM.FIX.TES.OPBMV,DISP=SHR
//ZMCO36A3 DD DSN=MXCP.ZM.FIX.TES.OPEBMV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=63,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO63048),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO63047                                                *
//* OBJETIVO : GENERA ARCHIVO DE OP. A FECHA DE OPE. DE BIV            *
//* PROGRAMA : ZM4DCO37                                                *
//**********************************************************************
//PDO63047 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO63047 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO37A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD63,DISP=SHR
//ZMCO37A2 DD DSN=MXCP.ZM.FIX.TES.OPBIV,DISP=SHR
//ZMCO37A3 DD DSN=MXCP.ZM.FIX.TES.OPEBIV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=63,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO63047),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO63040                                                *
//* OBJETIVO : GENERA ARCHIVO DE OP. A FECHA DE LIQ. DE BMV (OPERA)    *
//* PROGRAMA : ZM4DCO38                                                *
//**********************************************************************
//PDO63040 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO63040 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO38A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD63,DISP=SHR
//ZMCO38A2 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.OPEBMV1,DISP=SHR
//ZMCO38A3 DD DSN=MXCP.ZM.FIX.TES.OPERABMV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=75,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO63040),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO63039                                                *
//* OBJETIVO : GENERA ARCHIVO DE OP. A FECHA DE LIQ. DE BIV (OPERA)    *
//* PROGRAMA : ZM4DCO38                                                *
//**********************************************************************
//PDO63039 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO63039 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO38A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD63,DISP=SHR
//ZMCO38A2 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.OPEBIV1,DISP=SHR
//ZMCO38A3 DD DSN=MXCP.ZM.FIX.TES.OPERABIV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=75,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO63039),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO63030                                                *
//* OBJETIVO : SORT ARCH. OP. BMV                                      *
//**********************************************************************
//PDO63030 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.OPEBMV,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.OPEBMV.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=63,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO63030),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO63029                                                *
//* OBJETIVO : SORT ARCH. OP. BIV                                      *
//**********************************************************************
//PDO63029 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.OPEBIV,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.OPEBIV.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=63,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO63029),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO63028                                                *
//* OBJETIVO : SORT ARCH. OP. BMV (OPERA)                              *
//**********************************************************************
//PDO63028 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.OPERABMV,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.OPERABMV.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=75,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO63028),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO63027                                                *
//* OBJETIVO : SORT ARCH. OP. BIV (OPERA)                              *
//**********************************************************************
//PDO63027 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.OPERABIV,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.OPERABIV.A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=75,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO63027),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO63020                                                *
//* OBJETIVO : CONCILIACION SIVA VS BMV A FEC. DE LIQ.                 *
//* PROGRAMA : ZM4DCO40                                                *
//**********************************************************************
//PDO63020 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO63020 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO40A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD63,DISP=SHR
//ZMCO40A2 DD DSN=MXCP.ZM.FIX.TES.OPERABMV.A1,DISP=SHR
//ZMCO40A3 DD DSN=MXCP.ZM.FIX.TES.OPEBMV.A1,DISP=SHR
//ZMCO40R1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.CONCIL1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO63020),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO63019                                                *
//* OBJETIVO : DIREFENCIAS EN CONCILIACION SIVA VS BMV A FEC. DE LIQ.  *
//* PROGRAMA : ZM4DCO41                                                *
//**********************************************************************
//PDO63019 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO63019 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO41A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD63,DISP=SHR
//ZMCO41A2 DD DSN=MXCP.ZM.FIX.TES.OPERABMV.A1,DISP=SHR
//ZMCO41A3 DD DSN=MXCP.ZM.FIX.TES.OPEBMV.A1,DISP=SHR
//ZMCO41R1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.DIF.CONCIL1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=201,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO63019),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO63018                                                *
//* OBJETIVO : CONCILIACION SIVA VS BIV A FEC. DE LIQ.                 *
//* PROGRAMA : ZM4DCO42                                                *
//**********************************************************************
//PDO63018 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO63018 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO42A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD63,DISP=SHR
//ZMCO42A2 DD DSN=MXCP.ZM.FIX.TES.OPERABIV.A1,DISP=SHR
//ZMCO42A3 DD DSN=MXCP.ZM.FIX.TES.OPEBIV.A1,DISP=SHR
//ZMCO42R1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.CONCIL2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO63018),DISP=SHR
//*
//**********************************************************************
//* PASO     : PDO63017                                                *
//* OBJETIVO : DIREFENCIAS EN CONCILIACION SIVA VS BIV A FEC. DE LIQ.  *
//* PROGRAMA : ZM4DCO43                                                *
//**********************************************************************
//PDO63017 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO63017 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO43A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD63,DISP=SHR
//ZMCO43A2 DD DSN=MXCP.ZM.FIX.TES.OPERABIV.A1,DISP=SHR
//ZMCO43A3 DD DSN=MXCP.ZM.FIX.TES.OPEBIV.A1,DISP=SHR
//ZMCO43R1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.DIF.CONCIL2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=201,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO63017),DISP=SHR
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO63020     *
//* REPORTE  : REPORTE CONCILIACION SIVA VS BMV A FEC. DE LIQ.         *
//**********************************************************************
//PDO63010 EXEC PGM=ICEGENER,COND=(0,NE,PDO63020)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.CONCIL1,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO63019     *
//* REPORTE  : REPORTE DIF. EN CONCILIACION SIVA VS BMV A FEC. DE LIQ. *
//**********************************************************************
//PDO63009 EXEC PGM=ICEGENER,COND=(0,NE,PDO63019)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.DIF.CONCIL1,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO63018     *
//* REPORTE  : REPORTE CONCILIACION SIVA VS BIV A FEC. DE LIQ.         *
//**********************************************************************
//PDO63008 EXEC PGM=ICEGENER,COND=(0,NE,PDO63018)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.CONCIL2,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PDO63017     *
//* REPORTE  : REPORTE DIF. EN CONCILIACION SIVA VS BIV A FEC. DE LIQ. *
//**********************************************************************
//PDO63007 EXEC PGM=ICEGENER,COND=(0,NE,PDO63017)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.DIF.CONCIL2,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                 F  I  N                                            *
//**********************************************************************
