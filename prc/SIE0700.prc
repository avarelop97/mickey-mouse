//SIE0700 PROC                                                          00010012
//*                                                                     00020012
//**********************************************************************00030012
//*     G R U P O - F I N A N C I E R O - P R O B U R S A   B B V.     *00040012
//*                                                                    *00050012
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00060012
//*                                                                    *00070012
//* PROCESO        :  PIDSIE07                                         *00080012
//*                                                                    *00090012
//* OBJETIVO       :  REALIZAR LOS RESPALDOS DE IMAGE COPY DE LAS      *00100012
//*                   TABLAS DEL SOCIEDADES DE INVERSION.              *00110012
//*                                                                    *00120012
//* CORRE                                                              *00130012
//* ANTES DE       :  CUADRE A VALOR HOY S.I. EJECUCION MANUAL         *00140012
//*                                                                    *00150012
//* DESPUES DE     :  EJECUCION MANUAL                                 *00160012
//*                                                                    *00170012
//* REALIZO        :  MFB - ASATECK.                                   *00180012
//* FECHA          :  JULIO DE 1999.                                   *00190012
//*                                                                    *00200012
//* OBSERVACION    :  ESTE JOB RESPALDA LAS SIGUIENTES TABLAS :        *00210012
//*                                                                    *00220012
//*                   AGPOCON, OPERATE, OPERA,   OPERASI,              *00230012
//*                   SVLINEA, SVCTOCB, CARTERA, CUENTA.               *00240012
//*                                                                    *00250012
//****M*M*M*************************************************************00260012
//*                                                                     00270012
//**********************************************************************00280012
//*                       -- IMAGE COPY --                             *00290012
//*                                                                    *00300012
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.AGPOCON          *00310012
//*               POR TABLESPACE                                       *00320012
//* PASO REINICIABLE POR RESTART                                       *00330012
//**********************************************************************00340012
//SIE0708 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,COPI01,'               00350012
//*                                                                     00360012
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD  DISP=(,KEEP),
//             UNIT=FJVTP,
//             DSN=BKPP.DIA.INIDIA.EX.AGPOCON.D&DATE,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSPRINT DD SYSOUT=*                                                  00410012
//VTPRINT  DD SYSOUT=*                                                  00420012
//SYSUDUMP DD DUMMY                                                     00430012
//SYSIN DD DSN=SIVA.CARDS(SIE0708),DISP=SHR                             00440012
//*                                                                     00450012
//**********************************************************************00460012
//*                       -- IMAGE COPY --                             *00470012
//*                                                                    *00480012
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.OPERATE          *00490012
//*               POR TABLESPACE                                       *00500012
//* PASO REINICIABLE POR RESTART                                       *00510012
//**********************************************************************00520012
//SIE0707 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,COPI01,'               00530012
//*                                                                     00540012
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD  DISP=(,KEEP),
//             UNIT=FJVTP,
//             DSN=BKPP.DIA.INIDIA.EX.OPERATE.D&DATE,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSPRINT DD SYSOUT=*                                                  00590012
//VTPRINT  DD SYSOUT=*                                                  00600012
//SYSUDUMP DD DUMMY                                                     00610012
//SYSIN DD DSN=SIVA.CARDS(SIE0707),DISP=SHR                             00620012
//*                                                                     00630012
//**********************************************************************00640012
//*                       -- IMAGE COPY --                             *00650012
//*                                                                    *00660012
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.OPERA            *00670012
//*               POR TABLESPACE                                       *00680012
//* PASO REINICIABLE POR RESTART                                       *00690012
//**********************************************************************00700012
//SIE0706 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,COPI01,'               00710012
//*                                                                     00720012
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD  DISP=(,KEEP),
//             UNIT=FJVTP,
//             DSN=BKPP.DIA.INIDIA.EX.OPERA.D&DATE,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSPRINT DD SYSOUT=*                                                  00770012
//VTPRINT  DD SYSOUT=*                                                  00780012
//SYSUDUMP DD DUMMY                                                     00790012
//SYSIN DD DSN=SIVA.CARDS(SIE0706),DISP=SHR                             00800012
//*                                                                     00810012
//**********************************************************************00820012
//*                       -- IMAGE COPY --                             *00830012
//*                                                                    *00840012
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.OPERASI          *00850012
//*               POR TABLESPACE                                       *00860012
//* PASO REINICIABLE POR RESTART                                       *00870012
//**********************************************************************00880012
//SIE0705 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,COPI01,'               00890012
//*                                                                     00900012
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD  DISP=(,KEEP),
//             UNIT=FJVTP,
//             DSN=BKPP.DIA.INIDIA.EX.OPERASI.D&DATE,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSPRINT DD SYSOUT=*                                                  00950012
//VTPRINT  DD SYSOUT=*                                                  00960012
//SYSUDUMP DD DUMMY                                                     00970012
//SYSIN DD DSN=SIVA.CARDS(SIE0705),DISP=SHR                             00980012
//*                                                                     00990012
//**********************************************************************01000012
//*                       -- IMAGE COPY --                             *01010012
//*                                                                    *01020012
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.SVLINEA          *01030012
//*               POR TABLESPACE                                       *01040012
//* PASO REINICIABLE POR RESTART                                       *01050012
//**********************************************************************01060012
//SIE0704 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,COPI01,'               01070012
//*                                                                     01080012
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD  DISP=(,KEEP),
//             UNIT=FJVTP,
//             DSN=BKPP.DIA.INIDIA.EX.SVLINEA.D&DATE,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSPRINT DD SYSOUT=*                                                  01130012
//VTPRINT  DD SYSOUT=*                                                  01140012
//SYSUDUMP DD DUMMY                                                     01150012
//SYSIN DD DSN=SIVA.CARDS(SIE0704),DISP=SHR                             01160012
//*                                                                     01170012
//**********************************************************************01180012
//*                       -- IMAGE COPY --                             *01190012
//*                                                                    *01200012
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.SVCTOCB          *01210012
//*               POR TABLESPACE                                       *01220012
//* PASO REINICIABLE POR RESTART                                       *01230012
//**********************************************************************01240012
//SIE0703 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,COPI01,'               01250012
//*                                                                     01260012
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD  DISP=(,KEEP),
//             UNIT=FJVTP,
//             DSN=BKPP.DIA.INIDIA.EX.SVCTOCB.D&DATE,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSPRINT DD SYSOUT=*                                                  01310012
//VTPRINT  DD SYSOUT=*                                                  01320012
//SYSUDUMP DD DUMMY                                                     01330012
//SYSIN DD DSN=SIVA.CARDS(SIE0703),DISP=SHR                             01340012
//*                                                                     01350012
//**********************************************************************01360012
//*                       -- IMAGE COPY --                             *01370012
//*                                                                    *01380012
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.CARTERA          *01390012
//*               POR TABLESPACE                                       *01400012
//* PASO REINICIABLE POR RESTART                                       *01410012
//**********************************************************************01420012
//SIE0702 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,COPI01,'               01430012
//*                                                                     01440012
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD  DISP=(,KEEP),
//             UNIT=FJVTP,
//             DSN=BKPP.DIA.INIDIA.EX.CARTERA.D&DATE,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSPRINT DD SYSOUT=*                                                  01490012
//VTPRINT  DD SYSOUT=*                                                  01500012
//SYSUDUMP DD DUMMY                                                     01510012
//SYSIN DD DSN=SIVA.CARDS(SIE0702),DISP=SHR                             01520012
//*                                                                     01530012
//**********************************************************************01540012
//*                       -- IMAGE COPY --                             *01550012
//*                                                                    *01560012
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.CUENTA           *01570012
//*               POR TABLESPACE                                       *01580012
//* PASO REINICIABLE POR RESTART                                       *01590012
//**********************************************************************01600012
//SIE0701 EXEC PGM=DSNUTILB,REGION=0M,PARM='MXP1,COPI01,'               01610012
//*                                                                     01620012
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD  DISP=(,KEEP),
//             UNIT=FJVTP,
//             DSN=BKPP.DIA.INIDIA.EX.CUENTA.D&DATE,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSPRINT DD SYSOUT=*                                                  01670012
//VTPRINT  DD SYSOUT=*                                                  01680012
//SYSUDUMP DD DUMMY                                                     01690012
//SYSIN DD DSN=SIVA.CARDS(SIE0701),DISP=SHR                             01700012
//*                                                                     01710012
