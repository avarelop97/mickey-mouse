//CAD1700  PROC                                                         00010002
//*                                                                     00020000
//**********************************************************************00030000
//*                                                                    *00040000
//*     BBB  BBB  VV VV    PPPP RRRR OOOO BBB  U  U RRRR SSSS AAAA     *00050000
//*     B BB B BB VV VV    P PP R RR O  O B BB U  U R RR S    A  A     *00060000
//*     BBBB BBBB VV VV @@ PPPP RRRR O  O BBBB U  U RRRR SSSS AAAA     *00070000
//*     B BB B BB  VVV     P    RR   O  O B BB U  U RR      S A  A     *00080000
//*     BBB  BBB    V      P    R RR OOOO BBB  UUUU R RR SSSS A  A     *00090000
//*                                                                    *00100000
//**********************************************************************00110000
//**********************************************************************00120000
//*                                                                    *00130000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00140000
//*                   CAPITALES                                        *00150000
//*                                                                    *00160000
//* PROCESO        :  CAD1700                                          *00170002
//*                                                                    *00180000
//* OBJETIVO       :  GENERA ARCHIVOS PARA LA CNBV DE ASIGNACIONES Y   *00190001
//*                   ORDENES DE CAPITALES.                            *00200000
//* CORRE                                                              *00210000
//* ANTES DE       :  XXXXXXXX                                         *00220000
//*                                                                    *00230000
//* A PARTIR DE    : XX:XX HRS.                                        *00240000
//* HASTA          : XX:XX HSR.                                        *00250000
//*                                                                    *00260000
//* REALIZO        :  J. JAIME FLORES ESTRADA     -   ASATECK   -      *00270001
//* FECHA          :  AGOSTO 2002.                                     *00280001
//*                                                                    *00290000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EXPORADICAMENTE    *00300000
//*                                                                    *00310000
//**********************************************************************00360000
//*                                                                     00370000
//**********************************************************************00380000
//*                        -- VOBU80E --                               *00390001
//*                                                                    *00400000
//* OBJETIVO       :  GENERA ARCHIVOS PARA LA CNBV DE OPERACIONES Y    *00410000
//*                   ORDENES DE CAPITALES.                            *00420000
//*                                                                    *00430000
//*                                                                    *00440000
//**********************************************************************00450000
//CAD1701  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00460002
//PI601765 DD DUMMY                                                     00502002
//VOBU80A1 DD DSN=SIVA.MDC.FIX.ASIGN.CNBV,                              00510002
//           DISP=(NEW,CATLG,DELETE),                                   00520002
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=300,BLKSIZE=0),              00530002
//           UNIT=3390,                                                 00540002
//           SPACE=(CYL,(10,5),RLSE)                                    00550002
//VOBU80A2 DD DSN=SIVA.MDC.FIX.ORDEN.CNBV,                              00560002
//           DISP=(NEW,CATLG,DELETE),                                   00570002
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=310,BLKSIZE=0),              00580002
//           UNIT=3390,                                                 00590002
//           SPACE=(CYL,(10,5),RLSE)                                    00600002
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0                                   00601002
//SYSPRINT DD  SYSOUT=X                                                 00602002
//SYSOUT   DD  SYSOUT=X                                                 00603002
//SYSDBOUT DD  SYSOUT=X                                                 00604002
//SYSABOUT DD  DUMMY                                                    00610002
//SYSUDUMP DD  DUMMY                                                    00620002
//SYSTSIN  DD DSN=SIVA.CARDS(CAD1701),DISP=SHR                          00630002
