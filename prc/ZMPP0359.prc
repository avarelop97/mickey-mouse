//ZMPP0359 PROC
//*====================================================================*
//*    NOMBRE            : ZMPP0359.                                   *
//*    APLICATIVO        : ZM@.                                        *
//*    PROYECTO          : HORAIZON - INGESTAS TRANSVERSAL             *
//*    OBJETIVO          : FORMATEO PARA DATIO - SECTY TABLA CUENTA    *
//*                        TABLA DE CONTRATOS MUV - DATOS DEL CLIENTE  *
//*    AUTOR             : RUBEN J RIVERA                              *
//*    FECHA DE CREACION : AGOSTO 2024                                 *
//*====================================================================*
//*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMP35990.                                                *
//* PROGRAMA: IEFBR14                                                  *
//* OBJETIVO: VALIDA QUE EL ARCHIVO EXISTA, DE LO CONTRARIO, SE CREA   *
//*--------------------------------------------------------------------*
//ZMP35990 EXEC PGM=IEFBR14
//*
//S1000001 DD DSN=MXCP.ZM.FIX.HORIZON.SCUENTA.SAL.D&FECHA,
//            DISP=(MOD,CATLG,DELETE),
//            SPACE=(CYL,(500,100),RLSE),UNIT=3390,
//            DCB=(LRECL=751,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMP35980.                                                *
//* PROGRAMA: ZM3CG359.                                                *
//* OBJETIVO: GENERACION DE ARCHIVO PARA GESTOR DE EVENTOS             *
//*--------------------------------------------------------------------*
//ZMP35980 EXEC PGM=ZM3CG359,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.HORIZON.SCUENTA.SAL.D&FECHA,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.GEVE.F&FECHA..E3591823,
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
//* PASO    : ZMP35970.                                                *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT COPY DE INTERFAZ DE ENTRADA                         *
//*--------------------------------------------------------------------*
//ZMP35970 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.HORIZON.SCUENTA.SAL.D&FECHA,
//            DISP=SHR
//*
//ARCH1    DD DSN=MXCP.ZM.FIX.SORT.SCUENTA.SAL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1000,500),RLSE),UNIT=3390,
//            DCB=(LRECL=751,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ARCH2    DD DSN=MXCP.ZM.FIX.BCJP0359.CIFRAS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(RECFM=FB,LRECL=115,BLKSIZE=0,DSORG=PS)
//*
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMP35960.                                                *
//* PROGRAMA: ZM3C0359.                                                *
//* OBJETIVO: FORMATEO PARA DATIO -  SECTY TABLA ZMDT603               *
//*--------------------------------------------------------------------*
//ZMP35960 EXEC PGM=ZM3C0359,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.SORT.SCUENTA.SAL.F&FECHA,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.FORM.SCUENTA.SAL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=1012,BLKSIZE=0,DSORG=PS)
//*
//* CIFRAS DE CONTROL
//*
//SALIDA02 DD DSN=MXCP.ZM.FIX.BCJP0359.CCTRL.F&FECHA,
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
//* PASO    : ZMP35950.                                                *
//* PROGRAMA: ICEMAN.                                                  *
//* OBJETIVO: LIMPIA DATOS DE CARACTERES ESPECIALES DE CONTROL DE DB2. *
//*--------------------------------------------------------------------*
//ZMP35950 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FORM.SCUENTA.SAL.F&FECHA,
//           DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.HORIZON1.SCUENTA.SAL.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4000,3000),RLSE),DSNTYPE=LARGE,
//            UNIT=3390,BUFNO=30,
//            DCB=(RECFM=FB,LRECL=1012,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP35900),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMP35940.                                                *
//* PROGRAMA: IOACND.                                                  *
//* OBJETIVO: LEVANTA CONDICION PARA DISTRIBUIDO                       *
//*--------------------------------------------------------------------*
//ZMP35940 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND MX2CRX_BCJP035900 &FEC'
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
