//ZMLLPE10 PROC                                                         00002000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE10                                            *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  GENERA REPORTE DE LOS MEDIOS DE COBRANZAS           *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*                                                                     00003000
//********************************************************************* 00090000
//* PASO: PLL10P02                                                    * 00090000
//* RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO      * 00100000
//********************************************************************* 00110000
//PLL10P02 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00140000
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*                                                 00200000
//SYSOUT   DD  SYSOUT=*                                                 00210000
//SYSDBOUT DD  SYSOUT=*                                                 00220000
//SYSABOUT DD  SYSOUT=*                                                 00230000
//SYSUDUMP DD  SYSOUT=*                                                 00240000
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE10,              00260000
//             DISP=(NEW,CATLG,DELETE),                                 00270000
//             DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),              00280000
//             UNIT=3390,                                               00290000
//             SPACE=(CYL,(2,1),RLSE)                                   00300000
//*                                                                     00310000
//********************************************************************* 00040000
//* PASO:     PLL10P01                                                *
//* PROGRAMA: ZM4DLN75                                                *
//* OBJETIVO: GENERA REPORTE DE LOS MEDIOS DE COBRANZAS               * 00050000
//********************************************************************* 00060000
//PLL10P01 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT),
//         PARM='/DEBUG'                                                00090000
//ZMLN75R1 DD  SYSOUT=*                                                 00140027
//SYSTSPRT DD  SYSOUT=*                                                 00230000
//SYSPRINT DD  SYSOUT=*                                                 00240000
//SYSOUT   DD  SYSOUT=*                                                 00250000
//SYSDBOUT DD  SYSOUT=*                                                 00270000
//SYSABOUT DD  DUMMY                                                    00280000
//SYSUDUMP DD  DUMMY                                                    00290000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL10T01),
//             DISP=SHR
//*                                                                     00290000
