//ZMJCPE05 PROC                                                         00010001
//**********************************************************************00030000
//*                     C A S A   D E  B O L S A                       *00040000
//*                     ========================                       *00050000
//*                                                                    *00070000
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00080002
//*                                                                    *00090000
//*   PROCEDIM.        : ZMJCPE05                                      *00100002
//*                                                                    *00120000
//*   OBJETIVO         : CARGA MOVIMIENTOS DE BPIGO AL SIVA.           *00130002
//*                                                                    *00150000
//*   CORRE DESPUES DE :                                               *00160002
//*                                                                    *00170000
//*   PERIODICIDAD     : EVENTUAL.                                     *00180002
//*                                                                    *00190000
//*   ELABORADO POR    : ERNESTO MANUEL CUAUTLE MARTINEZ.              *00200002
//*                                                                    *00210000
//*   FECHA            : JUNIO DE 2004.                                *00220002
//*                                                                    *00230000
//**********************************************************************00240000
//*  PASO:  3     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00320000
//*  PJC05P03     GRABA EN ARCHIVO SECUENCIAL.                         *00330000
//*                                                         ZM3DG001   *00340000
//**********************************************************************00350000
//PJC05P03 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','     ','     ',)      00360000
//PI601765   DD DUMMY                                                   00380000
//ZMG001A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMJCPE05,                  00400002
//             DISP=(NEW,CATLG,DELETE),                                 00410000
//             DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),             00420000
//             UNIT=3390,SPACE=(CYL,(6,3),RLSE)                         00430000
//SYSPRINT DD SYSOUT=*                                                  00470000
//SYSOUT   DD SYSOUT=*                                                  00480000
//SYSDBOUT DD SYSOUT=*                                                  00490000
//SYSABOUT DD DUMMY                                                     00500000
//SYSUDUMP DD DUMMY                                                     00510000
//**********************************************************************00530000
//*  PASO:  2     EJECUTA PROGRAMA ZM4DJE05                            *00550003
//*                                                                    *00560000
//*  PJC05P02                                                          *00570000
//*       NOTA :  CARGA OPERA A PARTIR DE BPIGO             ZM4DDGC1   *00580000
//**********************************************************************00590000
//PJC05P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00601000
//ZMDGC1A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMJCPE05,DISP=SHR          00620000
//ZMDGC1A2 DD DSN=C385141.MDC.FIX.BPIGO.MOVTOS1,DISP=SHR                00730400
//SYSTSPRT DD  SYSOUT=*                                                 00740000
//SYSPRINT DD  SYSOUT=*                                                 00750000
//SYSOUT   DD  SYSOUT=*                                                 00760000
//SYSDBOUT DD  SYSOUT=*                                                 00770000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZJE05T02),DISP=SHR                  00820004
//**********************************************************************00870000
//*  PASO:  1     EJECUTA PROGRAMA ZM4DJE06                            *00880003
//*                                                                    *00890000
//*  PJC05P01                                                          *00900000
//*       NOTA :  CARGA CARTERA DE OPERA CON MOVS BPIGO     ZM4DDGC2   *00910000
//**********************************************************************00920000
//PJC05P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00930000
//ZMDGC2A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMJCPE05,DISP=SHR          00950000
//SYSTSPRT DD  SYSOUT=*                                                 01080000
//SYSPRINT DD  SYSOUT=*                                                 01090000
//SYSOUT   DD  SYSOUT=*                                                 01100000
//SYSDBOUT DD  SYSOUT=*                                                 01110000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZJE05T01),DISP=SHR                  01130004
