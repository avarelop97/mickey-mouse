//ZMASPD02 PROC                                                         00010000
//*--------------------------------------------------------------------*00020000
//*                                                                    *00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =========================                      *00050000
//*                     <<  MERCADO DE DINERO  >>                      *00060000
//*                     <<     Y CAPITALES     >>                      *00070000
//*                                                                    *00071000
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00080000
//*                                                                    *00090000
//*   PROCEDIMIENTO    : ZMASPD02                                      *00100000
//*                                                                    *00100100
//*   LO EJECUTA       : OPCION R51 (2).                               *00101000
//*                                                                    *00110000
//*   OBJETIVO         : ACTUALIZACION DE PRECIOS DE MERCADO DE DINERO *00120000
//*                      Y MERCADO DE CAPITALES (OPC R51,2).           *00130000
//*                                                                    *00140000
//*   FECHA            : 26/MARZO/09.                                  *00145400
//*                                                                    *00146000
//*   CORRE DESPUES DE : OPCION R51 (1), SIVAXAC1                      *00170000
//*                                                                    *00180000
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *00190000
//*                                                                    *00200000
//*   AUTOR            : CAPITALES                                     *00230000
//*                                                                    *00240000
//*   OBSERVACION      : ESTE PROCEDIMIENTO SE PUEDE EJECUATAR MAS DE  *00250000
//*                      UNA VEZ DURANTE EL DIA.                       *00260000
//*   MODIFICACIONES   :                                               *00260100
//*                                                                    *00260200
//*--------------------------------------------------------------------*00270000
//*--------------------------------------------------------------------*00280000
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *00290000
//*--------------------------------------------------------------------*00300000
//PHL02P02 EXEC PGM=ZM3DG001,                                           00310000
//         PARM=('&EMP','&SUC','&INT1','&INT2')                         00320000
//PI601765 DD DUMMY                                                     00330000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00331000
//SYSPRINT DD SYSOUT=*                                                  00332000
//SYSOUT   DD SYSOUT=*                                                  00333000
//SYSDBOUT DD SYSOUT=*                                                  00334000
//SYSABOUT DD DUMMY                                                     00335000
//SYSUDUMP DD DUMMY                                                     00336000
//*                                                                     00337000
//ZMG001A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMASPD02,                   00340000
//            DISP=(NEW,CATLG,DELETE),                                  00350000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00360000
//            UNIT=3390,                                                00370000
//            SPACE=(CYL,(4,2),RLSE)                                    00380000
//*                                                                     00450000
//*-------------------------------------------------------------------- 00460000
//* ARCHIVO DE ASSET 400 POS.                                           00461000
//* PROGRAMA: ZM4EHB88                                                  00470000
//* FUNCION:  ACTUALIZACION DE PRECIOS DE MERCADO DE DINERO             00480000
//*           DESDE ASSET CONTROL.                                      00490000
//*-------------------------------------------------------------------- 00500000
//PHL02P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00510000
//PI601765  DD DUMMY                                                    00520000
//*                                                                     00530000
//ZMHB88P1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMASPD02,DISP=SHR           00540000
//ZMHB88A1 DD DSN=MXCP.ZM.FIX.ECBP.SZPR.VECPRE,DISP=SHR                 00550000
//ZMHB88A2 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..REGNEDIN,                   00560000
//            DISP=(NEW,CATLG,DELETE),                                  00570000
//            DCB=(LRECL=50,RECFM=FB,BLKSIZE=0,DSORG=PS),               00580000
//            UNIT=3390,                                                00590000
//            SPACE=(CYL,(4,2),RLSE)                                    00600000
//*                                                                     00610000
//SYSIN    DD DUMMY                                                     00611000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00620000
//SYSPRINT DD SYSOUT=*                                                  00630000
//SYSOUT   DD SYSOUT=*                                                  00640000
//SYSDBOUT DD SYSOUT=*                                                  00650000
//SYSABOUT DD SYSOUT=*                                                  00660000
//SYSUDUMP DD DUMMY                                                     00670000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHA02T01),DISP=SHR                   00680000
//*                                                                     00690000
//*-------------------------------------------------------------------- 00691000
//* ARCHIVO DE ASSET 400 POS.                                           00692000
//* PROGRAMA: ZM4EHB89                                                  00692100
//* FUNCION:  ACTUALIZACION DE PRECIOS DE MERCADO DE CAPITALES          00693000
//*           DESDE ASSET CONTROL.                                      00694000
//*-------------------------------------------------------------------- 00695000
//PHL02P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                00696000
//PI601765  DD DUMMY                                                    00697000
//*                                                                     00698000
//ZMHB89P1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMASPD02,DISP=SHR           00699000
//ZMHB89A1 DD DSN=MXCP.ZM.FIX.ECBP.SZPR.VECPRE,DISP=SHR                 00699200
//ZMHB89A2 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..REGNECAP,                   00699300
//            DISP=(NEW,CATLG,DELETE),                                  00699400
//            DCB=(LRECL=50,RECFM=FB,BLKSIZE=0,DSORG=PS),               00699500
//            UNIT=3390,                                                00699600
//            SPACE=(CYL,(4,2),RLSE)                                    00699700
//*                                                                     00699800
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00699900
//SYSPRINT DD SYSOUT=*                                                  00700000
//SYSOUT   DD SYSOUT=*                                                  00700100
//SYSDBOUT DD SYSOUT=*                                                  00700200
//SYSABOUT DD SYSOUT=*                                                  00700300
//SYSUDUMP DD DUMMY                                                     00700400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHA02T00),DISP=SHR                   00700600
