//ZMGFPM01 PROC                                                         00010000
//**********************************************************************
//*                        M U V   Y   S I V A                         *
//*                     =========================                      *
//*                     <<      AUDITORIA       >>                     *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE AUDITORIA BANCA PATRIMONIAL     *
//*                                                                    *
//*   PROCEDIM. :  ZMGFPM01                                            *
//*                                                                    *
//*   OBJETIVO  :  ARCHIVOS DE CONTRATOS PARA MUV-SIVA                 *
//*                (AUDITORIA INTERNA).                                *
//*                                                                    *
//*   CORRE ANTES DE  : NINGUNO                                        *
//*                                                                    *
//*   CORRE DESPUES DE: NINGUNO                                        *
//*                                                                    *
//*   PERIODICIDAD    : MENSUAL.                                       *
//*                                                                    *
//*   ELABORADO POR   : ARACELI SALAZAR PEREZ  (AZERTIA)               *
//*                                                                    *
//*   FECHA           : JUNIO    DEL 2007                              *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO | PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |        |       |                                 *
//**********************************************************************
//*                           --ZM4MGA10--                             *
//* OBJETIVO    : GENERA EL ARCHIVO CON LOS MOVIMIENTOS DE ADMO,POSIC  *
//*               Y MOVIMIENTOS.                                       *
//*                                                                    *
//**********************************************************************
//*
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-1.1.0-01  XM01871 20ENE10  SE MODIFICA LA LONGITUD DE LOS PASOS *
//*                               PGF01M05,PGF01M03, PGF01M02 Y        *
//*                               PGF01M01                             *
//* FS-1.1.0-02  XTCDACI 26ENE12  SE MODIFICA LONGITUD DE ARCHIVOS DE  *
//*                               LOS PASOS PGF01M05 PGF01M03 PGF01M02 *
//*                               Y PGF01M01.                          *
//*--------------------------------------------------------------------*
//*
//PGF01M05 EXEC PGM=IKJEFT01
//*
//ZMGA10A1 DD DSN=MXCP.ZM.FIX.AUD.ADMOBCM,
//            DISP=(NEW,CATLG,DELETE),
//*FS-1.1.0-01-INI
//*           DCB=(LRECL=1810,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*FS-1.1.0-02-INI
//*           DCB=(LRECL=1830,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=1839,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*FS-1.1.0-02-FIN
//*FS-1.1.0-01-FIN
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//*
//ZMGA10A2 DD DSN=MXCP.ZM.FIX.AUD.POSIBCM,
//            DISP=(NEW,CATLG,DELETE),
//*FS-1.1.0-01-INI
//*           DCB=(LRECL=470,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*FS-1.1.0-02-INI
//*           DCB=(LRECL=490,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=550,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*FS-1.1.0-02-FIN
//*FS-1.1.0-01-FIN
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//*
//ZMGA10A3 DD DSN=MXCP.ZM.FIX.AUD.MOVIBCM,
//            DISP=(NEW,CATLG,DELETE),
//*FS-1.1.0-01-INI
//*           DCB=(LRECL=430,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*FS-1.1.0-02-INI
//*           DCB=(LRECL=450,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=510,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*FS-1.1.0-02-FIN
//*FS-1.1.0-01-FIN
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGFM1T02),DISP=SHR
//*
//**********************************************************************
//*                           --ZM4MGA01--                             *
//* OBJETIVO    : GENERA ARCHIVOS DE CONTRATOS PARA CASA DE BOLSA Y MUV*
//*                                                                    *
//*                                                                    *
//**********************************************************************
//PGF01M04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGA01A1 DD DSN=MXCP.ZM.FIX.AUD.ARCTACBP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=270,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//*
//ZMGA01A2 DD DSN=MXCP.ZM.FIX.AUD.ARCTABCM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=390,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGFM1T01),DISP=SHR
//*
//**********************************************************************
//*                           --ICEGENER--                             *
//* OBJETIVO    : COPIAR ARCHIVO CON LOS MOVIMIENTOS DE ADMO           *
//*               MXCP.ZM.FIX.AUD.ADMOBCM                              *
//*     A ===>    MBVP.AM.FIX.AUD.ADMOBCM                              *
//**********************************************************************
//PGF01M03 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.AUD.ADMOBCM,DISP=SHR
//SYSUT2   DD DSN=MBVP.AM.FIX.AUD.ADMOBCM,
//            DISP=(NEW,CATLG,DELETE),
//*FS-1.1.0-01-INI
//*           DCB=(LRECL=1810,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*FS-1.1.0-02-INI
//*           DCB=(LRECL=1830,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=1838,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*FS-1.1.0-02-FIN
//*FS-1.1.0-01-FIN
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                           --ICEGENER--                             *
//* OBJETIVO    : COPIAR ARCHIVO CON LOS MOVIMIENTOS DE POSIC          *
//*               MXCP.ZM.FIX.AUD.POSIBCM                              *
//*     A ===>    MBVP.AM.FIX.AUD.POSIBCM                              *
//**********************************************************************
//PGF01M02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.AUD.POSIBCM,DISP=SHR
//SYSUT2   DD DSN=MBVP.AM.FIX.AUD.POSIBCM,
//            DISP=(NEW,CATLG,DELETE),
//*FS-1.1.0-01-INI
//*           DCB=(LRECL=470,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*FS-1.1.0-02-INI
//*           DCB=(LRECL=490,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=548,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*FS-1.1.0-02-FIN
//*FS-1.1.0-01-FIN
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                           --ICEGENER--                             *
//* OBJETIVO    : COPIAR ARCHIVO CON LOS MOVIMIENTOS                   *
//*               MXCP.ZM.FIX.AUD.MOVIBCM                              *
//*     A ===>    MBVP.AM.FIX.AUD.MOVIBCM                              *
//**********************************************************************
//PGF01M01 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.AUD.MOVIBCM,DISP=SHR
//SYSUT2   DD DSN=MBVP.AM.FIX.AUD.MOVIBCM,
//            DISP=(NEW,CATLG,DELETE),
//*FS-1.1.0-01-INI
//*           DCB=(LRECL=430,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*FS-1.1.0-02-INI
//*           DCB=(LRECL=450,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=508,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*FS-1.1.0-02-FIN
//*FS-1.1.0-01-INI
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                      F I N   Z M G F P M 0 1                       *
//**********************************************************************
