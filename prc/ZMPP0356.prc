//ZMPP0356 PROC
//*====================================================================*
//*    NOMBRE            : ZMPP0356.                                   *
//*    APLICATIVO        : ZM@.                                        *
//*    PROYECTO          : HORIZON ITASD.                              *
//*    OBJETIVO          : OBTENER INTERFAS SECTY TABLA OPERDIN        *
//*    AUTOR             : RUBEN J RIVERA                              *
//*    FECHA DE CREACION : AGOSTO 2024                                 *
//*====================================================================*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMP35690.                                                *
//* PROGRAMA: IEFBR14                                                  *
//* OBJETIVO: VALIDA QUE EL ARCHIVO EXISTA, DE LO CONTRARIO, SE CREA   *
//*--------------------------------------------------------------------*
//ZMP35690 EXEC PGM=IEFBR14
//*
//S1000001 DD DSN=MXCP.ZM.FIX.HORIZON.SOPERDIN.SAL.D&FECHA,
//            DISP=(MOD,CATLG,DELETE),
//            SPACE=(CYL,(500,100),RLSE),UNIT=3390,
//            DCB=(LRECL=401,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMP35680.                                                *
//* PROGRAMA: ZM3CG356.                                                *
//* OBJETIVO: GENERACION DE ARCHIVO PARA GESTOR DE EVENTOS             *
//*--------------------------------------------------------------------*
//ZMP35680 EXEC PGM=ZM3CG356,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.HORIZON.SOPERDIN.SAL.D&FECHA,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.GEVE.F&FECHA..E3561823,
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
//* PASO    : ZMP35670.                                                *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT COPY DE INTERFAZ DE ENTRADA                         *
//*--------------------------------------------------------------------*
//ZMP35670 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.HORIZON.SOPERDIN.SAL.D&FECHA,
//            DISP=SHR
//*
//ARCH1    DD DSN=MXCP.ZM.FIX.SORT.SOPERDIN.SAL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1000,500),RLSE),UNIT=3390,
//            DCB=(LRECL=401,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ARCH2    DD DSN=MXCP.ZM.FIX.BCJP0356.CIFRAS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(RECFM=FB,LRECL=115,BLKSIZE=0,DSORG=PS)
//*
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMP35660.                                                *
//* PROGRAMA: ZM3C0356.                                                *
//* OBJETIVO: FORMATEO PARA DATIO -  SECTY TABLA ZMDT603               *
//*--------------------------------------------------------------------*
//ZMP35660 EXEC PGM=ZM3C0356,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.SORT.SOPERDIN.SAL.F&FECHA,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.FORM.SOPERDIN.SAL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=539,BLKSIZE=0,DSORG=PS)
//*
//* CIFRAS DE CONTROL
//*
//SALIDA02 DD DSN=MXCP.ZM.FIX.BCJP0356.CCTRL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
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
//* PASO    : ZMP35650.                                                *
//* PROGRAMA: ICEMAN.                                                  *
//* OBJETIVO: LIMPIA DATOS DE CARACTERES ESPECIALES DE CONTROL DE DB2. *
//*--------------------------------------------------------------------*
//ZMP35650 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FORM.SOPERDIN.SAL.F&FECHA,
//           DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.HORIZON1.SOPERDIN.SAL.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4000,3000),RLSE),DSNTYPE=LARGE,
//            UNIT=3390,BUFNO=30,
//            DCB=(RECFM=FB,LRECL=539,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP35600),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMP35640.                                                *
//* PROGRAMA: IOACND.                                                  *
//* OBJETIVO: LEVANTA CONDICION PARA DISTRIBUIDO                       *
//*--------------------------------------------------------------------*
//ZMP35640 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND MX2CRX_BCJP035600 &FEC'
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
