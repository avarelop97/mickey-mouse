//ZMPP0357 PROC                                                         00010001
//*====================================================================*00020000
//*    NOMBRE            : ZMPP0357.                                   *00030001
//*    APLICATIVO        : ZM@.                                        *00040001
//*    PROYECTO          : HORAIZON - INGESTAS TRANSVERSAL             *00050000
//*    OBJETIVO          : FORMATEO PARA DATIO -                       *00060000
//*                        TABLA DE OPERACI- OPERACIONES MERACADO DE   *00070000
//*                        SOCIEDADES DE INVERSION (FONDOS).           *00080000
//*    AUTOR             : RUBEN J RIVERA                              *00090001
//*    FECHA DE CREACION : AGOSTO 2024.                                *00100001
//*====================================================================*00110000
//*                                                                     00120000
//*--------------------------------------------------------------------*00130000
//*           L O G    D E   M O D I F I C A C I O N E S               *00140000
//*--------------------------------------------------------------------*00150000
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *00160000
//*   ---------   -------  --------   -------------------------------  *00170000
//*--------------------------------------------------------------------*00180000
//*                                                                     00190000
//*--------------------------------------------------------------------*00200000
//* PASO    : ZMP35790.                                                *00210001
//* PROGRAMA: IEFBR14                                                  *00220000
//* OBJETIVO: VALIDA QUE EL ARCHIVO EXISTA, DE LO CONTRARIO, SE CREA   *00230000
//*--------------------------------------------------------------------*00240000
//ZMP35790 EXEC PGM=IEFBR14                                             00250001
//*                                                                     00260000
//S1000001 DD DSN=MXCP.ZM.FIX.HORIZON.SOPERASI.SAL.D&FECHA,             00270000
//            DISP=(MOD,CATLG,DELETE),                                  00280000
//            SPACE=(CYL,(500,100),RLSE),UNIT=3390,                     00290000
//            DCB=(LRECL=279,RECFM=FB,BLKSIZE=0,DSORG=PS)               00300000
//*                                                                     00310000
//SYSPRINT DD SYSOUT=*                                                  00320000
//*                                                                     00330000
//*--------------------------------------------------------------------*00340000
//* PASO    : ZMP35780.                                                *00350001
//* PROGRAMA: ZM3CG357.                                                *00360001
//* OBJETIVO: GENERACION DE ARCHIVO PARA GESTOR DE EVENTOS             *00370000
//*--------------------------------------------------------------------*00380000
//ZMP35780 EXEC PGM=ZM3CG357,COND=(4,LT)                                00390001
//*                                                                     00400000
//ENTRADA1 DD DSN=MXCP.ZM.FIX.HORIZON.SOPERASI.SAL.D&FECHA,             00410000
//            DISP=SHR                                                  00420000
//*                                                                     00430000
//SALIDA01 DD DSN=MXCP.ZM.FIX.GEVE.F&FECHA..E3571823,                   00440001
//            DISP=(NEW,CATLG,DELETE),                                  00450000
//            SPACE=(CYL,(2,5),RLSE),UNIT=3390,                         00460000
//            DCB=(RECFM=FB,LRECL=2700,BLKSIZE=0,DSORG=PS)              00470000
//*                                                                     00480000
//SYSOUT   DD SYSOUT=*                                                  00490000
//SYSPRINT DD SYSOUT=*                                                  00500000
//SYSTSPRT DD SYSOUT=*                                                  00510000
//SYSDBOUT DD SYSOUT=*                                                  00520000
//SYSABOUT DD SYSOUT=*                                                  00530000
//SYSUDUMP DD SYSOUT=*                                                  00540000
//*                                                                     00550000
//*--------------------------------------------------------------------*00560000
//* PASO    : ZMP35770.                                                *00570001
//* PROGRAMA: ICEMAN                                                   *00580000
//* OBJETIVO: SORT COPY DE INTERFAZ DE ENTRADA                         *00590000
//*--------------------------------------------------------------------*00600000
//ZMP35770 EXEC PGM=ICEMAN,COND=(4,LT)                                  00610001
//*                                                                     00620000
//SORTIN   DD DSN=MXCP.ZM.FIX.HORIZON.SOPERASI.SAL.D&FECHA,             00630000
//            DISP=SHR                                                  00640000
//*                                                                     00650000
//ARCH1    DD DSN=MXCP.ZM.FIX.SORT.SOPERASI.SAL.F&FECHA,                00660001
//            DISP=(NEW,CATLG,DELETE),                                  00670000
//            SPACE=(CYL,(1000,500),RLSE),UNIT=3390,                    00680000
//            DCB=(LRECL=279,RECFM=FB,BLKSIZE=0,DSORG=PS)               00690000
//*                                                                     00700000
//ARCH2    DD DSN=MXCP.ZM.FIX.BCJP0357.CIFRAS.F&FECHA,                  00710001
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00720000
//            SPACE=(CYL,(5,1),RLSE),                                   00730000
//            DCB=(RECFM=FB,LRECL=115,BLKSIZE=0,DSORG=PS)               00740000
//*                                                                     00750000
//SYSIN    DD DUMMY                                                     00760000
//SYSOUT   DD SYSOUT=*                                                  00770000
//SYSPRINT DD SYSOUT=*                                                  00780000
//*                                                                     00790000
//*--------------------------------------------------------------------*00800000
//* PASO    : ZMP35760.                                                *00810001
//* PROGRAMA: ZM3C0357.                                                *00820001
//* OBJETIVO: FORMATEO PARA DATIO -  SECTY TABLA ZMDT603               *00830000
//*--------------------------------------------------------------------*00840000
//ZMP35760 EXEC PGM=ZM3C0357,COND=(4,LT)                                00850001
//*                                                                     00860000
//ENTRADA1 DD DSN=MXCP.ZM.FIX.SORT.SOPERASI.SAL.F&FECHA,                00870001
//            DISP=SHR                                                  00880000
//*                                                                     00890000
//SALIDA01 DD DSN=MXCP.ZM.FIX.FORM.SOPERASI.SAL.F&FECHA,                00900001
//            DISP=(NEW,CATLG,DELETE),                                  00910000
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,                     00920000
//            DCB=(RECFM=FB,LRECL=372,BLKSIZE=0,DSORG=PS)               00930000
//*                                                                     00940000
//* CIFRAS DE CONTROL                                                   00950000
//*                                                                     00960000
//SALIDA02 DD DSN=MXCP.ZM.FIX.BCJP0357.CCTRL.F&FECHA,                   00970001
//            DISP=(NEW,CATLG,DELETE),                                  00980000
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,                     00990000
//            DCB=(RECFM=FB,LRECL=080,BLKSIZE=0,DSORG=PS)               01000000
//*                                                                     01010000
//SYSOUT   DD SYSOUT=*                                                  01020000
//SYSPRINT DD SYSOUT=*                                                  01030000
//SYSTSPRT DD SYSOUT=*                                                  01040000
//SYSDBOUT DD SYSOUT=*                                                  01050000
//SYSABOUT DD SYSOUT=*                                                  01060000
//SYSUDUMP DD SYSOUT=*                                                  01070000
//*                                                                     01080000
//*--------------------------------------------------------------------*01090000
//* PASO    : ZMP35750.                                                *01100001
//* PROGRAMA: ICEMAN.                                                  *01110000
//* OBJETIVO: LIMPIA DATOS DE CARACTERES ESPECIALES DE CONTROL DE DB2. *01120000
//*--------------------------------------------------------------------*01130000
//ZMP35750 EXEC PGM=ICEMAN,COND=(4,LT)                                  01140001
//*                                                                     01150000
//SORTIN   DD DSN=MXCP.ZM.FIX.FORM.SOPERASI.SAL.F&FECHA,                01160001
//           DISP=SHR                                                   01170000
//*                                                                     01180000
//SORTOUT  DD DSN=MXCP.ZM.FIX.HORIZON1.SOPERASI.SAL.D&FECHA,            01190001
//            DISP=(NEW,CATLG,DELETE),                                  01200000
//            SPACE=(CYL,(4000,3000),RLSE),DSNTYPE=LARGE,               01210000
//            UNIT=3390,BUFNO=30,                                       01220000
//            DCB=(RECFM=FB,LRECL=372,BLKSIZE=0,DSORG=PS)               01230000
//*                                                                     01240000
//SYSOUT   DD SYSOUT=*                                                  01250000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP35700),DISP=SHR                   01260002
//*                                                                     01270000
//*--------------------------------------------------------------------*01270100
//* PASO    : ZMP35740.                                                *01270200
//* PROGRAMA: IOACND.                                                  *01270300
//* OBJETIVO: LEVANTA CONDICION PARA DISTRIBUIDO                       *01270400
//*--------------------------------------------------------------------*01270500
//ZMP35740 EXEC  PGM=IOACND,COND=(4,LT),                                01270600
//         PARM='ADD COND MX2CRX_BCJP035700 &FEC'                       01270700
//         INCLUDE MEMBER=IOASET                                        01270800
//         INCLUDE MEMBER=IOAENV                                        01270900
//SYSIN    DD DUMMY                                                     01271000
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG                  01271100
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES                  01271200
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD                  01271300
//PRTDBG   DD  SYSOUT=*                                                 01271400
//SYSPRINT DD  DUMMY                                                    01271500
//DAPRINT  DD  SYSOUT=*                                                 01271600
//DACNDIN  DD  DDNAME=SYSIN                                             01271700
//*--------------------------------------------------------------------*01280000
//*                  F I N   D E   P R O C E S O                       *01290000
//*--------------------------------------------------------------------*01300000
