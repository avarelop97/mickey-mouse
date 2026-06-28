//FDD2700 PROC
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//*                                                                    *
//*                  OOOOOO     JJJ   OOOOOO                           *
//*                  OO  OO     JJJ   OO  OO                           *
//*                  OOOOOO   JJJJJ   OOOOOO                           *
//*                                                                    *
//*      ESTE PROCESO SE PUEDE OMITIR SIEMPRE Y CUANDO SE AVISE A      *
//*      DOLORES CASTRO ES IMPORTANTE QUE ELLA SE ENTERE PARA QUE      *
//*      PUEDA SER PROCESADO EN DESARROLLO 02-FEB-95.                  *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE INFORMACION ESTADISTICA      *
//*                               (S. I. I. E.)                        *
//*                                                                    *
//* PROCESO        :  PFDFDD27                                         *
//*                   TENENCIA ESTADISTICA                             *
//*                                                                    *
//* OBJETIVO       :  DEPURAR   INFORMACION DE TABLAS ESTADISTICAS     *
//*                   SETENC    A    SETEBC                            *
//*                   SEINGC    A    SEINBC                            *
//*                   SEBAJAS   A    SEBAJBS                           *
//*                   SEAPERT   A    SEAPBRT                           *
//*                   SEOPERA   A    SEOPBRT                           *
//*                   SETEEMI   A    SETEBMI                           *
//*                   COPIAR    INFORMACION DE TABLAS ESTADISTICAS     *
//*                   SETENC    A    SETEBC                            *
//*                   SEINGC    A    SEINBC                            *
//*                   SEBAJAS   A    SEBAJBS                           *
//*                   SEAPERT   A    SEAPBRT                           *
//*                   SEOPERA   A    SEOPBRT                           *
//*                   SETEEMI   A    SETEBMI                           *
//* CORRE                                                              *
//* ANTES DE       :  PFDCPD02                                         *
//*                                                                    *
//* DESPUES DE     :  PFDFDD25,DA ALTA CONDICION EN PASO FDD2511A      *
//*                                                                    *
//* REALIZO        :  ROSARIO RAMIREZ T.                               *
//* FECHA          :  MARZO DE 1994                                    *
//* MODIFICACION   :  ROSARIO RAMIREZ T. (SE MODIFICA A PETICION  DE   *
//*                :  MARZO DE 1994       ROSARIO RAMIREZ 12-04-94.)   *
//*                   JUNIO DE 1994 POR PETICION DE ROSARIO RAMIREZ.   *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LAS TABLAS A DEPURAR EN ESTE PROCE *
//*               SO                                                   *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//FDD2717 EXEC PGM=DSNUTILB,PARM='MXP1,PFDFDD2701,',
//        COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO0001   DD  DISP=(,KEEP),
//             DSN=BKPP.DEP.SSEAPBRT.ANTES,
//             UNIT=FJVTP,
//             LABEL=(1,SL,,,EXPDT=99000)
//CO0002  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSEBAJBS.ANTES,
//           UNIT=AFF=CO0001,
//           LABEL=(1,SL,EXPDT=99000)
//CO0003  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSEINBC.ANTES,
//           UNIT=AFF=CO0001,
//           LABEL=(1,SL,EXPDT=99000)
//CO0004  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSEOPBRA.ANTES,
//           UNIT=AFF=CO0001,
//           LABEL=(1,SL,EXPDT=99000)
//CO0005  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSETEBC.ANTES,
//           UNIT=AFF=CO0001,
//           LABEL=(1,SL,EXPDT=99000)
//CO0006  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSETEBMI.ANTES,
//           UNIT=AFF=CO0001,
//           LABEL=(1,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD2717),DISP=SHR
//*-------------------------------------------------------------------
//*    BORRA LOS ARCHIVOS SECUENCIALES UTILIZADOS EN SIG.PASO
//*-------------------------------------------------------------------
//FDD2716 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=SIVA.CARDS(FDD2716),DISP=SHR
//******************************************************************
//*                       SOBG17X                                  *
//*    OBJETIVO :                                                  *
//*               CREAR LOS ARCHIVOS TEMPORALES PARA LA            *
//*               DEPURACION DE LAS TABLAS                         *
//*               SETEBC, SEOPBRA, SEINBC, SEAPBRT, SEBAJBS,       *
//*               SETEBMI                                          *
//*                                                                *
//*     NOTA:   ESTE PASO SE INCLUYO PARA LA OPTIMIZACION DE LA    *
//*             DEPURACION PROC.ESTADISTICO                        *
//*             16-FEB-95                                          *
//*                                            *** PROC. ESTADISTICO *
//******************************************************************
//FDD2715 EXEC PGM=IKJEFT01,COND=(4,LT),
//        PARM='/DEBUG'
//PI601765 DD DUMMY
//SOBG17T1 DD DSN=SIVA.SIE.WKF.SETEBC.DEPURA,DISP=(NEW,CATLG,DELETE),
//     DCB=(LRECL=98,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//     UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SOBG17T2 DD DSN=SIVA.SIE.WKF.SEOPBRA.DEPURA,DISP=(NEW,CATLG,DELETE),
//     DCB=(LRECL=98,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//     UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SOBG17T3 DD DSN=SIVA.SIE.WKF.SEINBC.DEPURA,DISP=(NEW,CATLG,DELETE),
//     DCB=(LRECL=94,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//     UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SOBG17T4 DD DSN=SIVA.SIE.WKF.SEAPBRT.DEPURA,DISP=(NEW,CATLG,DELETE),
//     DCB=(LRECL=109,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//     UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SOBG17T5 DD DSN=SIVA.SIE.WKF.SEBAJBS.DEPURA,DISP=(NEW,CATLG,DELETE),
//     DCB=(LRECL=93,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//     UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SOBG17T6 DD DSN=SIVA.SIE.WKF.SETEBMI.DEPURA,DISP=(NEW,CATLG,DELETE),
//     DCB=(LRECL=101,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//     UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2715),DISP=SHR
//**********************************************************************
//* ESTE PASO BAJA LA VISTA DE SETEBC A LA TABLA DEJANDOLA YA DEPURADA
//* PASO NO REINICIABLE, RECUPERAR IMAGE COPY Y DESPUES REEJECUTAR
//**********************************************************************
//FDD2714  EXEC PGM=DSNUTILB,COND=(4,LT),                               00005000
//             PARM='MXP1,PFDFDD2702'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSREC00 DD DSN=SIVA.SIE.WKF.SETEBC.DEPURA,DISP=SHR                   00009900
//SYSIN    DD DSN=SIVA.PUNCH(FDD2714),DISP=SHR                          00019300
//SYSTSPRT DD  SYSOUT=*
//UTPRINT  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SORTWK01 DD  DSN=SIVA.SIE.WKF.SETEBC.SORTWK01,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK02 DD  DSN=SIVA.SIE.WKF.SETEBC.SORTWK02,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK03 DD  DSN=SIVA.SIE.WKF.SETEBC.SORTWK03,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK04 DD  DSN=SIVA.SIE.WKF.SETEBC.SORTWK04,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK05 DD  DSN=SIVA.SIE.WKF.SETEBC.SORTWK05,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK06 DD  DSN=SIVA.SIE.WKF.SETEBC.SORTWK06,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SYSUT1   DD  DSN=SIVA.SIE.WKF.SETEBC.SYSUT1,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTOUT  DD  DSN=SIVA.SIE.WKF.SETEBC.SORTOUT,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//**********************************************************************
//* ESTE PASO BAJA LA VISTA DE SEOPBRA A LA TABLA DEJANDOLA YA DEPURADA
//* PASO NO REINICIABLE, RECUPERAR IMAGE COPY Y DESPUES REEJECUTAR
//**********************************************************************
//FDD2713  EXEC PGM=DSNUTILB,COND=(4,LT),                               00005000
//             PARM='MXP1,PFDFDD2703'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSREC00 DD DSN=SIVA.SIE.WKF.SEOPBRA.DEPURA,DISP=SHR                  00009900
//SYSIN    DD DSN=SIVA.PUNCH(FDD2713),DISP=SHR                          00019300
//SYSTSPRT DD  SYSOUT=*
//UTPRINT  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SORTWK01 DD  DSN=SIVA.SIE.WKF.SEOPBRA.SORTWK01,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK02 DD  DSN=SIVA.SIE.WKF.SEOPBRA.SORTWK02,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK03 DD  DSN=SIVA.SIE.WKF.SEOPBRA.SORTWK03,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK04 DD  DSN=SIVA.SIE.WKF.SEOPBRA.SORTWK04,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK05 DD  DSN=SIVA.SIE.WKF.SEOPBRA.SORTWK05,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK06 DD  DSN=SIVA.SIE.WKF.SEOPBRA.SORTWK06,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SYSUT1   DD  DSN=SIVA.SIE.WKF.SEOPBRA.SYSUT1,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTOUT  DD  DSN=SIVA.SIE.WKF.SEOPBRA.SORTOUT,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//**********************************************************************
//* ESTE PASO BAJA LA VISTA DE SEINBC A LA TABLA DEJANDOLA YA DEPURADA
//* PASO NO REINICIABLE, RECUPERAR IMAGE COPY Y DESPUES REEJECUTAR
//**********************************************************************
//FDD2712  EXEC PGM=DSNUTILB,COND=(4,LT),                               00005000
//             PARM='MXP1,PFDFDD2704'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSREC00 DD DSN=SIVA.SIE.WKF.SEINBC.DEPURA,DISP=SHR                   00009900
//SYSIN    DD DSN=SIVA.PUNCH(FDD2712),DISP=SHR                          00019300
//SYSTSPRT DD  SYSOUT=*
//UTPRINT  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SORTWK01 DD  DSN=SIVA.SIE.WKF.SEINBC.SORTWK01,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK02 DD  DSN=SIVA.SIE.WKF.SEINBC.SORTWK02,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK03 DD  DSN=SIVA.SIE.WKF.SEINBC.SORTWK03,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK04 DD  DSN=SIVA.SIE.WKF.SEINBC.SORTWK04,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK05 DD  DSN=SIVA.SIE.WKF.SEINBC.SORTWK05,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK06 DD  DSN=SIVA.SIE.WKF.SEINBC.SORTWK06,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SYSUT1   DD  DSN=SIVA.SIE.WKF.SEINBC.SYSUT1,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTOUT  DD  DSN=SIVA.SIE.WKF.SEINBC.SORTOUT,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//**********************************************************************
//* ESTE PASO BAJA LA VISTA DE SEAPBRT A LA TABLA DEJANDOLA YA DEPURADA
//* PASO NO REINICIABLE, RECUPERAR IMAGE COPY Y DESPUES REEJECUTAR
//**********************************************************************
//FDD2711  EXEC PGM=DSNUTILB,COND=(4,LT),                               00005000
//             PARM='MXP1,PFDFDD2705'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSREC00 DD DSN=SIVA.SIE.WKF.SEAPBRT.DEPURA,DISP=SHR                  00009900
//SYSIN    DD DSN=SIVA.PUNCH(FDD2711),DISP=SHR                          00019300
//SYSTSPRT DD  SYSOUT=*
//UTPRINT  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SORTWK01 DD  DSN=SIVA.SIE.WKF.SEAPBRT.SORTWK01,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK02 DD  DSN=SIVA.SIE.WKF.SEAPBRT.SORTWK02,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK03 DD  DSN=SIVA.SIE.WKF.SEAPBRT.SORTWK03,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK04 DD  DSN=SIVA.SIE.WKF.SEAPBRT.SORTWK04,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK05 DD  DSN=SIVA.SIE.WKF.SEAPBRT.SORTWK05,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK06 DD  DSN=SIVA.SIE.WKF.SEAPBRT.SORTWK06,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SYSUT1   DD  DSN=SIVA.SIE.WKF.SEAPBRT.SYSUT1,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTOUT  DD  DSN=SIVA.SIE.WKF.SEAPBRT.SORTOUT,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//**********************************************************************
//* ESTE PASO BAJA LA VISTA DE SEBAJBS A LA TABLA DEJANDOLA YA DEPURADA
//* PASO NO REINICIABLE, RECUPERAR IMAGE COPY Y DESPUES REEJECUTAR
//**********************************************************************
//FDD2710  EXEC PGM=DSNUTILB,COND=(4,LT),                               00005000
//             PARM='MXP1,PFDFDD2706'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSREC00 DD DSN=SIVA.SIE.WKF.SEBAJBS.DEPURA,DISP=SHR                  00009900
//SYSIN    DD DSN=SIVA.PUNCH(FDD2710),DISP=SHR                          00019300
//SYSTSPRT DD  SYSOUT=*
//UTPRINT  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SORTWK01 DD  DSN=SIVA.SIE.WKF.SEBAJBS.SORTWK01,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK02 DD  DSN=SIVA.SIE.WKF.SEBAJBS.SORTWK02,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK03 DD  DSN=SIVA.SIE.WKF.SEBAJBS.SORTWK03,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK04 DD  DSN=SIVA.SIE.WKF.SEBAJBS.SORTWK04,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK05 DD  DSN=SIVA.SIE.WKF.SEBAJBS.SORTWK05,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK06 DD  DSN=SIVA.SIE.WKF.SEBAJBS.SORTWK06,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SYSUT1   DD  DSN=SIVA.SIE.WKF.SEBAJBS.SYSUT1,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTOUT  DD  DSN=SIVA.SIE.WKF.SEBAJBS.SORTOUT,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//**********************************************************************
//* ESTE PASO BAJA LA VISTA DE SETEBMI A LA TABLA DEJANDOLA YA DEPURADA
//* PASO NO REINICIABLE, RECUPERAR IMAGE COPY Y DESPUES REEJECUTAR
//**********************************************************************
//FDD2709  EXEC PGM=DSNUTILB,COND=(4,LT),                               00005000
//             PARM='MXP1,PFDFDD2707'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSREC00 DD DSN=SIVA.SIE.WKF.SETEBMI.DEPURA,DISP=SHR                  00009900
//SYSIN    DD DSN=SIVA.PUNCH(FDD2709),DISP=SHR                          00019300
//SYSTSPRT DD  SYSOUT=*
//UTPRINT  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SORTWK01 DD  DSN=SIVA.SIE.WKF.SETEBMI.SORTWK01,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK02 DD  DSN=SIVA.SIE.WKF.SETEBMI.SORTWK02,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK03 DD  DSN=SIVA.SIE.WKF.SETEBMI.SORTWK03,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK04 DD  DSN=SIVA.SIE.WKF.SETEBMI.SORTWK04,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK05 DD  DSN=SIVA.SIE.WKF.SETEBMI.SORTWK05,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTWK06 DD  DSN=SIVA.SIE.WKF.SETEBMI.SORTWK06,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SYSUT1   DD  DSN=SIVA.SIE.WKF.SETEBMI.SYSUT1,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//SORTOUT  DD  DSN=SIVA.SIE.WKF.SETEBMI.SORTOUT,
//             DISP=(NEW,DELETE,CATLG),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE)
//**********************************************************************
//*                       -- IMAGE COPY --                             *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE LAS TABLAS A DEPURAR EN ESTE PROCE *
//*               SO                                                   *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//FDD2708 EXEC PGM=DSNUTILB,PARM='MXP1,PFDFDD2708,',
//        COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO0001   DD  DISP=(,KEEP),
//             DSN=BKPP.DEP.SSEAPBRT.DESPUES,
//             UNIT=FJVTP,
//             LABEL=(1,SL,,,EXPDT=99000)
//CO0002  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSEBAJBS.DESPUES,
//           UNIT=AFF=CO0001,
//           LABEL=(1,SL,EXPDT=99000)
//CO0003  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSEINBC.DESPUES,
//           UNIT=AFF=CO0001,
//           LABEL=(1,SL,EXPDT=99000)
//CO0004  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSEOPBRA.DESPUES,
//           UNIT=AFF=CO0001,
//           LABEL=(1,SL,EXPDT=99000)
//CO0005  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSETEBC.DESPUES,
//           UNIT=AFF=CO0001,
//           LABEL=(1,SL,EXPDT=99000)
//CO0006  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSETEBMI.DESPUES,
//           UNIT=AFF=CO0001,
//           LABEL=(1,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=SIVA.CARDS(FDD2717),DISP=SHR
//**********************************************************************
//*                           -- SOBG02D --                            *
//* OBJETIVO    :  COPIAR LA INFORMACION DE LA TABLA                   *
//*                SETENC A SETEBC                                     *
//*                                                                    *
//* ACTUALIZA   :  SETEBC                                              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                *** PROC. ESTADISTICO  *
//**********************************************************************
//FDD2707 EXEC PGM=IKJEFT01,
//        PARM='/DEBUG',COND=(4,LT)
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK05  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2707),DISP=SHR
//*
//**********************************************************************
//*                           -- SOBG03D --                            *
//* OBJETIVO    :  COPIAR LA INFORMACION DE LA TABLA                   *
//*                SEINGC A SEINBC                                     *
//*                                                                    *
//* ACTUALIZA   :  SEINBC                                              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 *** PROC. ESTADISTICO *
//**********************************************************************
//FDD2706 EXEC PGM=IKJEFT01,
//        PARM='/DEBUG',COND=(4,LT)
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK05  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2706),DISP=SHR
//*
//**********************************************************************
//*                           -- SOBG04D --                            *
//* OBJETIVO    :  COPIAR LA INFORMACION DE LA TABLA                   *
//*                SEBAJAS A SEBAJBS                                   *
//*                                                                    *
//* ACTUALIZA   :  SEBAJBS                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART               *** PROC. ESTADISTICO   *
//**********************************************************************
//FDD2705 EXEC PGM=IKJEFT01,
//        PARM='/DEBUG',COND=(4,LT)
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK05  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2705),DISP=SHR
//*
//**********************************************************************
//*                           -- SOBG05D --                            *
//* OBJETIVO    :  COPIAR LA INFORMACION DE LA TABLA                   *
//*                SEAPERT A SEAPBRT                                   *
//*                                                                    *
//* ACTUALIZA   :  SEAPBRT                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 *** PROC. ESTADISTICO *
//**********************************************************************
//FDD2704 EXEC PGM=IKJEFT01,
//        PARM='/DEBUG',COND=(4,LT)
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK05  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2704),DISP=SHR
//**********************************************************************
//*                           -- SOBG06D --                            *
//* OBJETIVO    :  COPIAR LA INFORMACION DE LA TABLA                   *
//*                SEOPERA A SEOPBRT                                   *
//*                                                                    *
//* ACTUALIZA   :  SEOPBRT                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  *** PROC. ESTADISTICO*
//**********************************************************************
//FDD2703 EXEC PGM=IKJEFT01,
//        PARM='/DEBUG',COND=(4,LT)
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK05  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2703),DISP=SHR
//**********************************************************************
//*                           -- SOBG08D --                            *
//* OBJETIVO    :  COPIAR LA INFORMACION DE LA TABLA                   *
//*                SETEEMI A SETEBMI                                   *
//*                                                                    *
//* ACTUALIZA   :  SETEBMI                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  *** PROC. ESTADISTICO*
//**********************************************************************
//FDD2702 EXEC PGM=IKJEFT01,
//        PARM='/DEBUG',COND=(4,LT)
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK05  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2702),DISP=SHR
//*-------------------------------------------------------------------
//*    BORRA LOS ARCHIVOS SECUENCIALES UTILIZADOS EN SIG.PASO
//*-------------------------------------------------------------------
//FDD2701 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=SIVA.CARDS(FDD2716),DISP=SHR
