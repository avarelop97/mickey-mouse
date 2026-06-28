//FDD1500 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PFDFDD15                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *
//*                   - INTERFASES BATCH (TSO)                         *
//*                                                                    *
//*   7MA. PARTE   :  TERMINAR LA CORRIDA DEL FINDIA                   *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PROCESOS POSTERIORES AL FIN DE DIA               *
//*                                                                    *
//* DESPUES DE     :  PFDFDD12                                         *
//*                                                                    *
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *
//* FECHA          :  MAYO 1991                                        *
//*                                                                    *
//*                                    A.T.T.E. J.G.M. 23/MAYO/91      *
//*                                    SOPORTE A PRODUCCION            *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                       -- IMAGE COPY --                 ANTES       *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.SCARTERA         *
//*               POR TABLESPACE                                       *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//FDD1503  EXEC PGM=ACPMAIN,
//         PARM='MXP1,PFDFDD1501,NEW/RESET,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSPRINT DD SYSOUT=*
//ACPGDG   DD DSN=SIVA.CARDS(FDD153A),DISP=SHR
//SYSIN    DD DSN=SIVA.CARDS(FDD1503),DISP=SHR
//**********************************************************************
//*                          === VOBF37D  ===                          *
//*                                                                    *
//* OBJETIVO : CORRIMIENTO DE EFECTIVOS                                *
//* ACTUALIZA: CARTERA, FOLCTRL, CUENTA.                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                     *** TESORERIA    *
//**********************************************************************
//FDD1502 EXEC PGM=IKJEFT01,COND=(4,LT)
//VOBF37R1 DD SYSOUT=(V,,STD)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1501A),DISP=SHR
//*
//**********************************************************************
//*                       -- IMAGE COPY --                  DESPUES    *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.SCARTERA         *
//*               POR TABLESPACE                                       *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//FDD1501  EXEC PGM=ACPMAIN,
//         PARM='MXP1,PFDFDD1502,NEW/RESET,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSPRINT DD SYSOUT=*
//ACPGDG   DD DSN=SIVA.CARDS(FDD151A),DISP=SHR
//SYSIN    DD DSN=SIVA.CARDS(FDD1501),DISP=SHR
