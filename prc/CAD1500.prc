//CAD1500   PROC
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
//* PROCESO        :  PCICAD15                                         *
//*                   CICLICO DIARIO DEL MODULO DE CAPITALES NUEVO     *
//*                                                                    *
//* OBJETIVO       :  IGUALAR OPERACIONES DEL NUEVO SISTEMA CON EL     *
//*                   SIVA                                             *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  NINGUNO                                          *
//*                                                                    *
//* REALIZO        :  RZV                                              *
//* FECHA          :  AGOSTO DE 1996                                   *
//*                                                                    *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO ES CICLICO Y SE EJECUTA       *
//*                   DIARIO CADA 2 MINUTOS                            *
//**********************************************************************
//*------------------------------------------------------------------
//*                      * VOBT05D *
//*OBJETIVO:               IGUALAR SYBASE CON SIVA
//*------------------------------------------------------------------
//CAD1501 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=SIVA.CARDS(CAD1501),DISP=SHR
