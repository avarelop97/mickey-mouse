//ZMPDWTR0 PROC
//*====================================================================*
//*    NOMBRE            :ZMPDWTR0                                     *
//*    APLICATIVO        :ZM@                                          *
//*    PROYECTO          :WEBTRADER(BCOM)                              *
//*    PERIODICIDAD      :DIARIO                                       *
//*    AUTOR             :FABRICA DE SOFTWARE DGCM.                    *
//*    FECHA DE CREACION :03 DE FEBRERO DE 2016.                       *
//*====================================================================*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*    XXXXXXX    XXXXXXX  DDMMMAA    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  *
//*--------------------------------------------------------------------*
//*      JB       XMZ1672  24FEB16    SE AGREGA CONCILIACION CON BG@.  *
//*====================================================================*
//* PASO     : ZMWTR003                                                *
//* PROGRAMA : ICEGENER                                                *
//* OBJETIVO : RESPALDA ARCHIVO DE ENTRADA                             *
//*====================================================================*
//ZMWTR003 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=MBVP.PB.FIX.PBJINVWT.ALTAS.F&FECHA,
//            DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.PBJINVWT.ALTAS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=54,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*====================================================================*
//* PASO     : ZMWTR002                                                *
//* PROGRAMA : ICEMAN                                                  *
//* OBJETIVO : ORDENA EL ARCHIVO POR N.CLIENTE Y CONTRATO              *
//*====================================================================*
//ZMWTR002 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PBJINVWT.ALTAS.F&FECHA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PBJINVWT.ALTASORD.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=54,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMWTR002),DISP=SHR
//*====================================================================*
//* PASO     : ZMWTR001                                                *
//* PROGRAMA : ZM4WTR01                                                *
//* OBJETIVO : REPORTE DE CONCILIACION. CONTRATACION DE PRODUCTO 21 POR*
//*            BANCOMER.COM                                            *
//*====================================================================*
//ZMWTR001 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQENT0 DD DSN=MXCP.ZM.FIX.PBJINVWT.ALTASORD.F&FECHA,
//            DISP=SHR
//*
//*- SOLO EXISTEN EN CURSOR
//S1DQREP1 DD DSN=MXCP.ZM.FIX.BCJDWTR0.REP1CONC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=93,BLKSIZE=0),
//            UNIT=3390
//*
//*- SOLO EXISTEN EN ARCHIVO
//S1DQREP2 DD DSN=MXCP.ZM.FIX.BCJDWTR0.REP2CONC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=93,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMWTR001),DISP=SHR
//*
//*JB-INI
//*====================================================================*
//* PASO     : ZMWTR00A                                                *
//* PROGRAMA : ICEGENER                                                *
//* OBJETIVO : RESPALDA ARCHIVO DE ENTRADA CON LAS CTAS. PROD.13       *
//*====================================================================*
//ZMWTR00A EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MBVP.BG.FIX.F&FECHA..SORTCTA.BGDTNOT,
//            DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.TMP.BGJCNOT1.NOTOCAR,
//            DISP=(NEW,PASS,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=10,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*====================================================================*
//* PASO     : ZMWTR00B                                                *
//* PROGRAMA : ICEMAN                                                  *
//* OBJETIVO : ORDENA EL ARCHIVO POR CTA. PROD.13                      *
//*====================================================================*
//ZMWTR00B EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.BGJCNOT1.NOTOCAR,
//            DISP=OLD
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.BGJCNOT1.NOTOCAR.ALTASORD,
//            DISP=(NEW,PASS,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=10,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMWTR00B),DISP=SHR
//*====================================================================*
//* PASO     : ZMWTR00C                                                *
//* PROGRAMA : ZM4WTR02                                                *
//* OBJETIVO : REPORTE DE CONCILIACION DE LAS ALTAS EN LA TABLA DE NO  *
//*            TOCAR(BG@) VS. ALTAS POR BCOM(ZM@).                     *
//*====================================================================*
//ZMWTR00C EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQENT  DD DSN=MXCP.ZM.TMP.BGJCNOT1.NOTOCAR.ALTASORD,
//            DISP=OLD
//*
//S1DQREP  DD DSN=MXCP.ZM.FIX.BCJDWTR0.NOTOCAR.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=73,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMWTR00C),DISP=SHR
//*JB-FIN
