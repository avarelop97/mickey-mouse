//CAD1600   PROC
//**********************************************************************00000100
//*                                                                    *00000200
//*     BBB  BBB  VV VV    PPPP RRRR OOOO BBB  U  U RRRR SSSS AAAA     *00000300
//*     B BB B BB VV VV    P PP R RR O  O B BB U  U R RR S    A  A     *00000400
//*     BBBB BBBB VV VV @@ PPPP RRRR O  O BBBB U  U RRRR SSSS AAAA     *00000500
//*     B BB B BB  VVV     P    RR   O  O B BB U  U RR      S A  A     *00000600
//*     BBB  BBB    V      P    R RR OOOO BBB  UUUU R RR SSSS A  A     *00000700
//*                                                                    *00000800
//**********************************************************************00000900
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PIMCAD16                                         *
//*                                                                    *
//* OBJETIVO       :  GENERAR REPORTE DE CANCELACION DE CREDITOS       *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  POR HORARIO A LAS 1430 HRS                       *
//*                                                                    *
//* REALIZO        :  RAFAEL ZULETA                                    *
//* FECHA          :  ABRIL DE 1997                                    *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//*                        * VIBT52D *                                 *
//*                                                                    *
//* OBJETIVO : EMITE REPORTE DE CANCELACION DE CREDITOS                *
//*                                                                    *
//*   PASO REINICIABLE                                                 *
//**********************************************************************
//*
//CAD1601 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4096K,COND=(4,LT)        00002300
//SYSTSPRT DD SYSOUT=D,DCB=BLKSIZE=133                                  00020001
//*VIBT52R1 DD SYSOUT=(O,,TV45)                                         00020701
//VIBT52R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=D                                                  00030001
//SYSOUT   DD SYSOUT=D                                                  00040001
//SYSDBOUT DD SYSOUT=D                                                  00050001
//SYSABOUT DD DUMMY                                                     00060000
//SYSUDUMP DD DUMMY                                                     00070000
//*                                                                     00080000
//SYSTSIN  DD DSN=SIVA.CARDS(CAD1601),DISP=SHR                          00090000
