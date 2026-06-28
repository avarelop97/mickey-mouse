//ZMPP0355 PROC
//**===================================================================*
//*    NOMBRE            : ZMPP0355.                                   *
//*    APLICATIVO        : ZM@.                                        *
//*    PROYECTO          : HORIZON ITASD.                              *
//*    OBJETIVO          : OBTENER INTERFAS SECTY OPERA                *
//*    AUTOR             : RUBEN J RIVERA                              *
//*    FECHA DE CREACION : AGOSTO 2024                                 *
//*====================================================================*
//* *
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*   XXXXXXXXX   XXXXXXX  DDMMMAA    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMP35590.                                                *
//* PROGRAMA: IEFBR14                                                  *
//* OBJETIVO: VALIDA QUE EL ARCHIVO EXISTA, DE LO CONTRARIO SE CREA    *
//*--------------------------------------------------------------------*
//ZMP35590 EXEC PGM=IEFBR14
//*
//S1000001 DD DSN=MXCP.ZM.FIX.HORIZON.SOPERA.SAL.D&FECHA,
//            DISP=(MOD,CATLG,DELETE),
//            SPACE=(CYL,(500,200),RLSE),UNIT=3390,
//            DCB=(LRECL=335,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMP35580.
//* PROGRAMA: ZM3CG355.                                                *
//* OBJETIVO: GENERACION DE ARCHIVO PARA GESTOR DE EVENTOS             *
//*--------------------------------------------------------------------*
//ZMP35580 EXEC PGM=ZM3CG355,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.HORIZON.SOPERA.SAL.D&FECHA,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.GEVE.F&FECHA..E3551823,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,5),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=2700,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMP35570.                                                *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT COPY DE INTERFAZ DE ENTRADA                         *
//*           GENERAR ARCHIVO DE CIFRAS CONTROL                        *
//*--------------------------------------------------------------------*
//ZMP35570 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.HORIZON.SOPERA.SAL.D&FECHA,
//            DISP=SHR
//*
//ARCH1    DD DSN=MXCP.ZM.FIX.SORT.BCJP0355.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4000,3000),RLSE),DSNTYPE=LARGE,
//            UNIT=3390,BUFNO=30,
//            DCB=(LRECL=335,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ARCH2    DD DSN=MXCP.ZM.FIX.BCJP0355.CIFRAS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(RECFM=FB,LRECL=115,BLKSIZE=0,DSORG=PS)
//*
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMP35560.                                                *
//* PROGRAMA: ZM3C0355.                                                *
//* OBJETIVO: FORMATEO PARA DATIO - INTERFAZ                           *
//*--------------------------------------------------------------------*
//ZMP35560 EXEC PGM=ZM3C0355,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.SORT.BCJP0355.F&FECHA,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.SORT01.SOPERA.SAL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4000,3000),RLSE),DSNTYPE=LARGE,
//            UNIT=3390,BUFNO=30,
//            DCB=(RECFM=FB,LRECL=443,BLKSIZE=0,DSORG=PS)
//*
//SALIDA02 DD DSN=MXCP.ZM.FIX.BCJP0355.CCTRL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1,1),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=080,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMP35550.                                                *
//* PROGRAMA: ICEMAN.                                                  *
//* OBJETIVO: LIMPIA DATOS DE CARACTERES ESPECIALES DE CONTROL DE DB2. *
//*--------------------------------------------------------------------*
//ZMP35550 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.SORT01.SOPERA.SAL.F&FECHA,
//            DISP=SHR
//*@MEX001-I
//SORTOUT  DD DSN=MXCP.ZM.TMP.HORIZON1.SOPERA.ORD.D&FECHA,
//*SORTOUT  DD DSN=MXCP.ZM.FIX.HORIZON1.SOPERA.SAL.D&FECHA,
//*@MEX001-F
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4000,3000),RLSE),DSNTYPE=LARGE,
//            UNIT=3390,BUFNO=30,
//            DCB=(RECFM=FB,LRECL=443,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP35500),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMP35549.                                                *
//* PROGRAMA: ZM3C1355.                                                *
//* OBJETIVO: FORMATEO PARA DATIO - INTERFAZ                           *
//*--------------------------------------------------------------------*
//ZMP35549 EXEC PGM=ZM3C1355,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.TMP.HORIZON1.SOPERA.ORD.D&FECHA,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.HORIZON1.SOPERA.SAL.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4000,3000),RLSE),DSNTYPE=LARGE,
//            UNIT=3390,BUFNO=30,
//            DCB=(RECFM=FB,LRECL=443,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMP35540.                                                *
//* PROGRAMA: IOACND.                                                  *
//* OBJETIVO: LEVANTA CONDICION PARA DISTRIBUIDO                       *
//*--------------------------------------------------------------------*
//ZMP35540 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND MX2CRX_BCJP035500 &FEC'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*--------------------------------------------------------------------*
//*                  F I N   D E   P R O C E S O                       *
//*--------------------------------------------------------------------*
