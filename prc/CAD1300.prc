//CAD1300  PROC
//**********************************************************************
//*                                                                    *
//*     BBB  BBB  VV VV    PPPP RRRR OOOO BBB  U  U RRRR SSSS AAAA     *
//*     B BB B BB VV VV    P PP R RR O  O B BB U  U R RR S    A  A     *
//*     BBBB BBBB VV VV @@ PPPP RRRR O  O BBBB U  U RRRR SSSS AAAA     *
//*     B BB B BB  VVV     P    RR   O  O B BB U  U RR      S A  A     *
//*     BBB  BBB    V      P    R RR OOOO BBB  UUUU R RR SSSS A  A     *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                   CAPITALES                                        *
//*                                                                    *
//* PROCESO        :  PRECAD13                                         *
//*                                                                    *
//* OBJETIVO       :  GENERAR ARCHIVOS SECUENCIALES PARA EL SISTEMA    *
//*                   MERCAP EN REDES DE PC'S                          *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  PIDIDD03 Y/O PRECAS12                            *
//*                                                                    *
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *
//* FECHA          :  ENERO      1993                                  *
//*                                                                    *
//**********************************************************************
//**********  REGION DE OVERRIDES EN CASO DE CONTINGECIA   ***********
//**********************************************************************
//*                           --   QMF   --                            *
//* OBJETIVO  ESTE PROCEDIMIENTO MANDA EJECUTAR UN PROCEDIMIENTO DE    *
//*           QMF PARA LA DEPURACION DE LAS ORDENES Y HECHOS           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                         **_CAPITALES  *
//**********************************************************************
//CAD1301  EXEC PGM=IKJEFT01,COND=(5,LT),DYNAMNBR=25,REGION=4M
//STEPLIB  DD  DSN=QMFP.V330.DSNLOAD,DISP=SHR * QMF MODULES  *
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR * DB2 MODULES  *
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD  DSN=GDDM.SADMMOD,DISP=SHR       * GDDM MODULES *
//SYSPROC  DD  DSN=QMFP.V330.DSNCLSTE,DISP=SHR
//         DD  DSN=QMFP.V330.DSNEXECE,DISP=SHR
//SYSPRINT DD  TERM=TS,SYSOUT=Z
//ISPPLIB  DD  DSN=QMFP.V330.DSNPLIBE,DISP=SHR
//         DD  DSN=ISF.SISFPLIB,DISP=SHR     * ERA ISRPLIB
//         DD  DSN=ISP.SISPPENU,DISP=SHR     * ERA ISPPLIB
//         DD  DSN=LDB2MXP1.DBP1.SDSNSPFP,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNPFPE,DISP=SHR
//ISPMLIB  DD  DSN=QMFP.V330.DSNMLIBE,DISP=SHR
//         DD  DSN=ISF.SISFMLIB,DISP=SHR     * ERA ISRMLIB
//         DD  DSN=ISP.SISPMENU,DISP=SHR     * ERA ISPMLIB
//         DD  DSN=LDB2MXP1.DBP1.SDSNSPFM,DISP=SHR
//ISPSLIB  DD  DSN=QMFP.V330.DSNSLIBE,DISP=SHR
//         DD  DSN=ISP.SISPSLIB,DISP=SHR
//ISPTLIB  DD  DSN=ISF.SISFTLIB,DISP=SHR
//         DD  DSN=ISP.SISPTENU,DISP=SHR     * ERA ISPTLIB
//ISPPROF  DD  UNIT=SYSDA,SPACE=(TRK,(9,1,4)),
//         DCB=(LRECL=80,BLKSIZE=0,RECFM=FB,DSORG=PO)
//ADMGGMAP  DD  DSN=QMFP.V330.DSNMAPE,DISP=SHR
//ADMCFORM  DD  DSN=QMFP.V330.DSNCHART,DISP=SHR
//DSNPNLE   DD  DSN=QMFP.V330.DSNPNLE,DISP=SHR
//DSNPRINT  DD  SYSOUT=X,DCB=(RECFM=FBA,LRECL=133,BLKSIZE=0)
//DSNDEBUG  DD  SYSOUT=X,DCB=(RECFM=FBA,LRECL=121,BLKSIZE=0)
//DSNEDIT   DD  UNIT=VIO,DCB=(RECFM=FBA,LRECL=79,BLKSIZE=0),
//  DISP=NEW,SPACE=(CYL,(1,1))
//DSNUDUMP  DD  SYSOUT=X,DCB=(RECFM=VBA,LRECL=125,BLKSIZE=0)
//SYSUDUMP DD DUMMY
//DSNSPILL  DD  DSN=&&SPILL,DISP=(NEW,DELETE),
//  UNIT=VIO,SPACE=(CYL,(1,1),RLSE),
//  DCB=(RECFM=F,LRECL=4096,BLKSIZE=0)
//SYSTSPRT  DD  SYSOUT=X
//SYSTSIN  DD DSN=SIVA.CARDS(CAD1301),DISP=SHR
