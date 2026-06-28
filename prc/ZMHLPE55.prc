//ZMHLPE55 PROC                                                         00010000
//*--------------------------------------------------------------------*00020000
//*                                                                    *00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =========================                      *00050000
//*                     <<  MERCADO DE DINERO  >>                      *00060000
//*                                                                    *00070000
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00080000
//*                                                                    *00090000
//*   PROCEDIMIENTO    : ZMHLPE55                                      *00100000
//*                                                                    *00110000
//*   OBJETIVO         : ACTUALIZACION DE PRECIOS DE MERCADO DE DINERO *00120000
//*                      ( OPCION 851 )                                *00130000
//*                                                                    *00140000
//*   CORRE ANTES DE   : SIVAXVEG                                      *00150000
//*                                                                    *00160000
//*   CORRE DESPUES DE : SIVAXVEV                                      *00170000
//*                                                                    *00180000
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *00190000
//*                                                                    *00200000
//*   FECHA            : OCTUBRE, 2007                                 *00210000
//*                                                                    *00220000
//*   AUTOR            : GETRONICS                                     *00230000
//*                                                                    *00240000
//*   OBSERVACION      : ESTE PROCEDIMIENTO SE PUEDE EJECUATAR MAS DE  *00250000
//*                      UNA VEZ DURANTE EL DIA.                       *00260000
//*--------------------------------------------------------------------*00270000
//*--------------------------------------------------------------------*00280000
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *00290000
//*--------------------------------------------------------------------*00300000
//PHL54P03 EXEC PGM=ZM3DG001,                                           00310002
//         PARM=('&EMP','&SUC','&INT1','&INT2')                         00320002
//PI601765 DD DUMMY                                                     00330000
//ZMG001A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE55,                   00340001
//            DISP=(NEW,CATLG,DELETE),                                  00350000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00360000
//            UNIT=3390,                                                00370000
//            SPACE=(CYL,(16,8),RLSE)                                   00380000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00390000
//SYSPRINT DD SYSOUT=*                                                  00400000
//SYSOUT   DD SYSOUT=*                                                  00410000
//SYSDBOUT DD SYSOUT=*                                                  00420000
//SYSABOUT DD DUMMY                                                     00430000
//SYSUDUMP DD DUMMY                                                     00440000
//*                                                                     00450000
//*-------------------------------------------------------------------- 00460000
//* PROGRAMA: ZM4EHB89                                                  00470001
//* FUNCION:  CARGA PRECIOS DE CAPITALES EN TABLAS VECPRE Y PRECIO      00480001
//*           DESDE ASSET CONTROL.                                      00490000
//*-------------------------------------------------------------------- 00500000
//PHL54P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00510000
//PI601765  DD DUMMY                                                    00520000
//*                                                                     00530000
//ZMHB89P1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE55,DISP=SHR           00540001
//ZMHB89A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..VECPRE,DISP=SHR             00550001
//ZMHB89A2 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..EMISPR,                     00560001
//            DISP=(NEW,CATLG,DELETE),                                  00570000
//            DCB=(LRECL=050,RECFM=FB,BLKSIZE=0,DSORG=PS),              00580000
//            UNIT=3390,                                                00590000
//            SPACE=(CYL,(4,2),RLSE)                                    00600000
//*                                                                     00610000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00620000
//SYSPRINT DD SYSOUT=*                                                  00630000
//SYSOUT   DD SYSOUT=*                                                  00640000
//SYSDBOUT DD SYSOUT=*                                                  00650000
//SYSABOUT DD SYSOUT=*                                                  00660000
//SYSUDUMP DD DUMMY                                                     00670000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL55T01),DISP=SHR                   00680001
//*                                                                     00690000
//*-------------------------------------------------------------------- 00700000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00710000
//*-------------------------------------------------------------------- 00720000
//*PHL55P01 EXEC PGM=MAILOPER,COND=(4,GE,PHL55P02),                     00730000
//*         PARM=('/AVISAR A PRODUCCION QUE PROCESO',                   00740000
//*             ' SIVAXVED (ZMHLPE55)TERMINO MAL.CONTESTAR SI',         00750000
//*             'PARA TERMINAR')                                        00760000
