//CAD1400   PROC
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
//*                   CAPITALES                                        *
//*                                                                    *
//* PROCESO        :  PCICAD14                                         *
//*                                                                    *
//* OBJETIVO       :  RESPALDA TABLAS AHECHOR,HECHOS,ORDENES, PREVIO   *
//*                   AL CIERRE DE CAPITALES.                          *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PCICAD01                                         *
//*                                                                    *
//* DESPUES DE     :  CIERRE DEL USUARIO DE CAPITALES                  *
//*                                                                    *
//* REALIZO        :  RICARDO ARGUETA TEPEPA                           *
//* FECHA          :  OCTUBRE    1994                                  *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.AHECHOR          *
//*               POR TABLESPACE                                       *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//CAD1403 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,COPY07,',
//        COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD  DISP=(,KEEP),
//             UNIT=FJVTP,
//             DSN=BKPP.DIA.IMAGCOPY.AHECHOR.D&DATE,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN DD DSN=SIVA.CARDS(CAD1403),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.HECHOS           *
//*               POR TABLESPACE                                       *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//CAD1402 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,COPY08,',
//        COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD  DISP=(,KEEP),
//             UNIT=FJVTP,
//             DSN=BKPP.DIA.IMAGCOPY.HECHOS.D&DATE,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN DD DSN=SIVA.CARDS(CAD1402),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVN.ORDENES          *
//*               POR TABLESPACE                                       *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//CAD1401 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,COPY09,',
//        COND=(4,LT)
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD  DISP=(,KEEP),
//             UNIT=FJVTP,
//             DSN=BKPP.DIA.IMAGCOPY.ORDENES.D&DATE,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN DD DSN=SIVA.CARDS(CAD1401),DISP=SHR
//*
