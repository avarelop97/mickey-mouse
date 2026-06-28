//ZMUFPM11 PROC                                                         00010006
//**********************************************************************00010006
//*                                                                    *00010006
//* SISTEMA        :  MODULO DE RENDIMIENTOS  ( M.U.V)                 *00010006
//* PROCESO        :  ZMUFPM11                                         *00010006
//*                                                                    *00010006
//* OBJETIVO       :  ACTUALIZA TABLAS DE INGRESOS Y RENDIMIENTOS      *00010006
//*                   PARA LA CONSULTA DE INGRESOAS AJD3               *00010006
//* CORRE                                                              *00010006
//* ANTES DE       :  IMARDIA                                          *00010006
//* DESPUES DE     :  BCSFCD12  -  ZMSFPD12                            *00010006
//* REALIZO        :  ASP (HECTOR ROMERO)                              *00010006
//* FECHA          :  OCTUBRE 20, 2009                                 *00010006
//* OBSERVACION    :  ESTE PROCESO CORRE MENSUALMENTE                  *00010006
//**********************************************************************00010006
//PSF13P28 EXEC PGM=ZM3DG001,                                           00300009
//         PARM=('&EMP','   ','   ','   ',)                             00310006
//SYSTSPRT DD SYSOUT=*                                                  00312006
//SYSPRINT DD SYSOUT=*                                                  00313006
//SYSOUT   DD SYSOUT=*                                                  00314006
//SYSDBOUT DD SYSOUT=*                                                  00315006
//SYSABOUT DD DUMMY                                                     00316006
//SYSUDUMP DD DUMMY                                                     00317006
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZMUFPM11.AJD3,             00319006
//            DISP=(NEW,CATLG,DELETE),                                  00320006
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00330006
//            UNIT=3390,                                                00340006
//            SPACE=(CYL,(2,1),RLSE)                                    00350008
//*--------------------------------------------------------------------*
//*   EJECUCION DEL PROGRAMA:  IDCAMS                                  *
//*        BORRADO DE ARCHIVOS                                         *
//*--------------------------------------------------------------------*
//PMUFPM28  EXEC PGM=IDCAMS,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZUF02T06),DISP=SHR
//*
//*
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS034                                *00910006
//*   CARGA SALDOS INICIALES                                           *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P27 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS034A2 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..SALDINI.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=300,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T26),DISP=SHR                   00939506
//*                                                                     00950210
//**********************************************************************
//* PROGRAMA: ICEMAN                SORT
//* OBJETIVO: SORTEA INGRESOS DEL MUV
//**********************************************************************
//PSF10P26 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.GDGD.SIE.E&EMP..ACUINGRE(0),DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.SIE.ACUINGRE.SORTMUV.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF13T25),DISP=SHR
//*
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS026                                *00910006
//*    CARGA INGRESOS DEL MUV                                          *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P25 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS026A1 DD DSN=MXC&AMB..ZM.TMP.SIE.ACUINGRE.SORTMUV.AJD3,
//            DISP=SHR
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T24),DISP=SHR                   00939506
//*                                                                     00950210
//**********************************************************************
//* PROGRAMA: ICEMAN                SORT
//* OBJETIVO: SORTEA LA TENENCIA ACUMULADA DEL MUV
//**********************************************************************
//PSF10P24 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.GDGD.SIE.E&EMP..ACUTENV2(0),DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.SIE.SALDOS.SORTMUV.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=340,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF13T22),DISP=SHR
//*
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS027                                *00910006
//*    CARGA SALDOS PROMEDIO DEL MUV.                                  *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P23 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS027A1 DD DSN=MXC&AMB..ZM.TMP.SIE.SALDOS.SORTMUV.AJD3,
//            DISP=SHR
//ZMS027A2 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..PROMSAL.MUV.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=220,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//ZMS027A3 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..EMISO.MUV.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T21),DISP=SHR                   00939506
//*                                                                     00950210
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS028                                *00910006
//*    CALCULA DESVIACIONES A NIVEL CUENTA                             *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P22 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T18),DISP=SHR                   00939506
//*
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS062                                *00910006
//*    CALCULA CRITERIOS, IND-ROTACION                                 *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P21 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T17),DISP=SHR                   00939506
//*
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS063                                *00910006
//*    CALCULA CRITERIOS (DESVIACION DE REFERENCIA)                    *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T16),DISP=SHR                   00939506
//*
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS064                                *00910006
//*    DESVIACION BANCO.                                               *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P19 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS064A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CRITERC.CTA.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=850,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T15),DISP=SHR                   00939506
//*                                                                     00950210
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS065                                *00910006
//*    IMPRIME REPORTE.                                                *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P18 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS065A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..MONCTA.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=230,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T14),DISP=SHR                   00939506
//*                                                                     00950210
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS070                                *00910006
//*    IMPRIME REPORTE.                                                *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P16 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS070A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..LISTCTES.ACTUA.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T12),DISP=SHR                   00939506
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS032                                *00910006
//*    LLENA TABLA A NIVEL DE CLIENTE.                                 *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T11),DISP=SHR                   00939506
//*                                                                     00950210
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS067                                *00910006
//*    CALCULA CRITERIOS, IND-ROTACION                                 *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P14 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T10),DISP=SHR                   00939506
//*
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS068                                *00910006
//*    CALCULA CRITERIOS (DESVIACION DE REFERENCIA)                    *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P13 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T09),DISP=SHR                   00939506
//*
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS069                                *00910006
//*    DESVIACION BANCO.                                               *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P12 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS069A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CRITERC.CTE.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=850,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T08),DISP=SHR                   00939506
//*                                                                     00950210
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS066                                *00910006
//*    LLENA TABLA A NIVEL DE CLIENTE.                                 *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P11 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T07),DISP=SHR                   00939506
//*                                                                     00950210
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS071                                *00910006
//*    OBTIENE INDICADOR DE ROTACION A NIVEL DE GESTOR                 *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T06),DISP=SHR                   00939506
//*                                                                     00950210
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS072                                *00910006
//*    OBTIENE DESVIACION DE REFERENCIA A NIVEL DE GESTOR              *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T05),DISP=SHR                   00939506
//*                                                                     00950210
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS073                                *00910006
//*    OBTIENE DESVIACION DEL BANCO A NIVEL DE GESTOR                  *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//ZMS073A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CRITERC.GES.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=850,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSTSPRT DD SYSOUT=*                                                  00933006
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T04),DISP=SHR                   00939506
//*                                                                     00950210
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS074                                *00910006
//*    OBTIENE LAS ALERTAS A NIVEL DE CUENTA                           *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS074A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ALESCTA.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=850,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T03),DISP=SHR                   00939506
//*                                                                     00950210
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS075                                *00910006
//*    OBTIENE ALERTAS A NIVEL DE CLIENTE                              *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS075A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ALESCTE.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=850,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T02),DISP=SHR                   00939506
//*                                                                     00950210
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS076                                *00910006
//*    OBTIENE ALERTAS A NIVEL DE GESTOR                               *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS076A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ALESGES.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=850,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T01),DISP=SHR                   00939506
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS113                                *00910006
//*    OBTIENE ALERTAS A NIVEL DE GESTOR                               *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS113A2 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZM4DS113.MOVTSCTA.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=180,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T27),DISP=SHR                   00939506
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS114                                *00910006
//*    OBTIENE ALERTAS A NIVEL DE GESTOR                               *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS114A2 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZM4DS114.MOVTSGES.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=180,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T28),DISP=SHR                   00939506
//*                                                                     00950210
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS115                                *00910006
//*    OBTIENE ALERTAS A NIVEL DE GESTOR                               *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS115A2 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZM4DS115.MOVTSCTA.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=180,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T29),DISP=SHR                   00939506
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS116                                *00910006
//*    OBTIENE ALERTAS A NIVEL DE GESTOR                               *00920006
//*--------------------------------------------------------------------*00900006
//PSF13P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS116A2 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZM4DS116.MOVTSGES.AJD3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=180,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF13T30),DISP=SHR                   00939506
//*                                                                     00950210
//**********************************************************************00900006
//*                    F I N   Z M S F P D 1 3                         *00900006
//**********************************************************************00900006
