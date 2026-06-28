//ZMHHPE58 PROC                                                         00010000
//*--------------------------------------------------------------------*00020000
//*                                                                    *00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =========================                      *00050000
//*                     <<  MERCADO DE DINERO  >>                      *00060000
//*                     <<     Y CAPITALES     >>                      *00070000
//*                                                                    *00071000
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00080000
//*                                                                    *00090000
//*   PROCEDIMIENTO    : ZMHHPE58                                      *00100000
//*                                                                    *00100100
//*   LO EJECUTA       : OPCION H57 (2).                               *00101000
//*                                                                    *00110000
//*   OBJETIVO         : CARGA DE ARCHIVO DE CAPITAL SOCIAL EN EMISCAP.*00120002
//*                                                                    *00140000
//*   FECHA            : 03/AGOSTO/10.                                 *00145400
//*                                                                    *00146000
//*   CORRE DESPUES DE : OPCION H57 (1), SIVAXCS1.                     *00170000
//*                                                                    *00180000
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *00190000
//*                                                                    *00200000
//*   AUTOR            : DAMIAN LUNA PE¦A.                             *00230000
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
//ZMG001A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHHPE58,                   00340000
//            DISP=(NEW,CATLG,DELETE),                                  00350000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00360000
//            UNIT=3390,                                                00370000
//            SPACE=(CYL,(4,2),RLSE)                                    00380000
//*                                                                     00450000
//*-------------------------------------------------------------------- 00460000
//* ARCHIVO DE CAPITAL SOCIAL 000 POSC.                                 00461000
//* PROGRAMA: ZM4EHB58                                                  00470001
//* FUNCION:  CARGA EMISCAP DESDE EL ARCHIVO DE CAPITAL SOCIAL.         00480001
//*-------------------------------------------------------------------- 00500000
//PHL02P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00510000
//PI601765  DD DUMMY                                                    00520000
//*                                                                     00530000
//ZMHB58P1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHHPE58,DISP=SHR           00540001
//ZMHB58A1 DD DSN=MXCP.ZM.FIX.ECBP.SZPR.CAPSOC,DISP=SHR                 00550001
//*                                                                     00610000
//SYSIN    DD DUMMY                                                     00611000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00620000
//SYSPRINT DD SYSOUT=*                                                  00630000
//SYSOUT   DD SYSOUT=*                                                  00640000
//SYSDBOUT DD SYSOUT=*                                                  00650000
//SYSABOUT DD SYSOUT=*                                                  00660000
//SYSUDUMP DD DUMMY                                                     00670000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHH58T01),DISP=SHR                   00680000
//*                                                                     00690000
