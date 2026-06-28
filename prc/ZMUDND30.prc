//ZMUDND30 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SIVA.                                            *
//**                                                                   *
//* PROCESO        :  ZMUDND30                                         *
//*                                                                    *
//* OBJETIVO       :  TENENCIA ESTADISTICA                             *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  N/A                                              *
//**                                                                   *
//* DESPUES DE     :  N/A                                              *
//*                                                                    *
//* REALIZACION    :  SOFTTEK (DASR)                  03/MAY/2010      *
//*                                                                    *
//* OBSERVACION    :  NINGUNA                                          *
//*                                                                    *
//**********************************************************************
//* PASO    : ZLF30P85                                                 *
//* PROGRAMA: DSNUTILB                                                 *
//* OBJETIVO: REALIZA BACKUP DE LAS TABLAS A DEPURAR EN ESTE PROCESO   *
//**********************************************************************
//ZLF30P85 EXEC PGM=DSNUTILB,PARM='MXP1,ZMUDND8501,',
//         COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO0001   DD  DISP=(,KEEP),
//             DSN=BKPP.DEP.SSEAPBRT.ANTES,
//             UNIT=FJVTP,
//             LABEL=(1,SL,,,EXPDT=99000)
//CO0002  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSEBAJBS.ANTES,
//           UNIT=FJVTP,
//           LABEL=(1,SL,EXPDT=99000)
//CO0003  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSEINBC.ANTES,
//           UNIT=FJVTP,
//           LABEL=(1,SL,EXPDT=99000)
//CO0004  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSEOPBRA.ANTES,
//           UNIT=FJVTP,
//           LABEL=(1,SL,EXPDT=99000)
//CO0005  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSETEBC.ANTES,
//           UNIT=FJVTP,
//           LABEL=(1,SL,EXPDT=99000)
//CO0006  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSETEBMI.ANTES,
//           UNIT=FJVTP,
//           LABEL=(1,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF30T85),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF30P80                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* OBJETIVO: BORRA LOS ARCHIVOS SECUENCIALES UTILIZADOS EN SIG.PASO   *
//**********************************************************************
//ZLF30P80 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF30T80),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF30P75                                                 *
//* PROGRAMA: ZM4DLG17                                                 *
//* OBJETIVO: CREAR LOS ARCHIVOS TEMPORALES PARA LA DEPURACION DE LAS  *
//*           TABLAS: SETEBC, SEOPBRA, SEINBC, SEAPBRT, SEBAJBS Y      *
//*           SETEBMI                                                  *
//**********************************************************************
//ZLF30P75 EXEC PGM=IKJEFT01,COND=(4,LT),PARM='/DEBUG'
//ZM4D17T1 DD DSN=SIVA.SIE.WKF.SETEBC.DEPURA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=98,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//ZM4D17T2 DD DSN=SIVA.SIE.WKF.SEOPBRA.DEPURA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=98,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//ZM4D17T3 DD DSN=SIVA.SIE.WKF.SEINBC.DEPURA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=94,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//ZM4D17T4 DD DSN=SIVA.SIE.WKF.SEAPBRT.DEPURA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=109,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//ZM4D17T5 DD DSN=SIVA.SIE.WKF.SEBAJBS.DEPURA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=93,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//ZM4D17T6 DD DSN=SIVA.SIE.WKF.SETEBMI.DEPURA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=104,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF30T75),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF30P70                                                 *
//* PROGRAMA: DSNUTILB                                                 *
//* OBJETIVO: BAJA LA VISTA DE SETEBC A LA TABLA DEJANDOLA YA DEPURADA *
//**********************************************************************
//ZLF30P70 EXEC PGM=DSNUTILB,COND=(4,LT),PARM='MXP1,SETEBC'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSREC00 DD DSN=SIVA.SIE.WKF.SETEBC.DEPURA,
//            DISP=SHR
//SORTWK01 DD DSN=SIVA.SIE.WKF.SETEBC.SORTWK01,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK02 DD DSN=SIVA.SIE.WKF.SETEBC.SORTWK02,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK03 DD DSN=SIVA.SIE.WKF.SETEBC.SORTWK03,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK04 DD DSN=SIVA.SIE.WKF.SETEBC.SORTWK04,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK05 DD DSN=SIVA.SIE.WKF.SETEBC.SORTWK05,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK06 DD DSN=SIVA.SIE.WKF.SETEBC.SORTWK06,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SYSUT1   DD DSN=SIVA.SIE.WKF.SETEBC.SYSUT1,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTOUT  DD DSN=SIVA.SIE.WKF.SETEBC.SORTOUT,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF30T70),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF30P65                                                 *
//* PROGRAMA: DSNUTILB                                                 *
//* OBJETIVO: BAJA LA VISTA DE SEOPBRA A LA TABLA DEJANDOLA YA DEPURADA*
//**********************************************************************
//ZLF30P65 EXEC PGM=DSNUTILB,COND=(4,LT),PARM='MXP1,SEOPBRA'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSREC00 DD DSN=SIVA.SIE.WKF.SEOPBRA.DEPURA,
//            DISP=SHR
//SORTWK01 DD DSN=SIVA.SIE.WKF.SEOPBRA.SORTWK01,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK02 DD DSN=SIVA.SIE.WKF.SEOPBRA.SORTWK02,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK03 DD DSN=SIVA.SIE.WKF.SEOPBRA.SORTWK03,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK04 DD DSN=SIVA.SIE.WKF.SEOPBRA.SORTWK04,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK05 DD DSN=SIVA.SIE.WKF.SEOPBRA.SORTWK05,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK06 DD DSN=SIVA.SIE.WKF.SEOPBRA.SORTWK06,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SYSUT1   DD DSN=SIVA.SIE.WKF.SEOPBRA.SYSUT1,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTOUT  DD DSN=SIVA.SIE.WKF.SEOPBRA.SORTOUT,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF30T65),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF30P60                                                 *
//* PROGRAMA: DSNUTILB                                                 *
//* OBJETIVO: BAJA LA VISTA DE SEINBC A LA TABLA DEJANDOLA YA DEPURADA *
//**********************************************************************
//ZLF30P60 EXEC PGM=DSNUTILB,COND=(4,LT),PARM='MXP1,SEINBC'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSREC00 DD DSN=SIVA.SIE.WKF.SEINBC.DEPURA,
//            DISP=SHR
//SORTWK01 DD DSN=SIVA.SIE.WKF.SEINBC.SORTWK01,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK02 DD DSN=SIVA.SIE.WKF.SEINBC.SORTWK02,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK03 DD DSN=SIVA.SIE.WKF.SEINBC.SORTWK03,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK04 DD DSN=SIVA.SIE.WKF.SEINBC.SORTWK04,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK05 DD DSN=SIVA.SIE.WKF.SEINBC.SORTWK05,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK06 DD DSN=SIVA.SIE.WKF.SEINBC.SORTWK06,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SYSUT1   DD DSN=SIVA.SIE.WKF.SEINBC.SYSUT1,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTOUT  DD DSN=SIVA.SIE.WKF.SEINBC.SORTOUT,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF30T60),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF30P55                                                 *
//* PROGRAMA: DSNUTILB                                                 *
//* OBJETIVO: BAJA LA VISTA DE SEAPBRT A LA TABLA DEJANDOLA YA DEPURADA*
//**********************************************************************
//ZLF30P55 EXEC PGM=DSNUTILB,COND=(4,LT),PARM='MXP1,SEAPBRT'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSREC00 DD DSN=SIVA.SIE.WKF.SEAPBRT.DEPURA,
//            DISP=SHR
//SORTWK01 DD DSN=SIVA.SIE.WKF.SEAPBRT.SORTWK01,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK02 DD DSN=SIVA.SIE.WKF.SEAPBRT.SORTWK02,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK03 DD DSN=SIVA.SIE.WKF.SEAPBRT.SORTWK03,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK04 DD DSN=SIVA.SIE.WKF.SEAPBRT.SORTWK04,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK05 DD DSN=SIVA.SIE.WKF.SEAPBRT.SORTWK05,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK06 DD DSN=SIVA.SIE.WKF.SEAPBRT.SORTWK06,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SYSUT1   DD DSN=SIVA.SIE.WKF.SEAPBRT.SYSUT1,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTOUT  DD DSN=SIVA.SIE.WKF.SEAPBRT.SORTOUT,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF30T55),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF30P50                                                 *
//* PROGRAMA: DSNUTILB                                                 *
//* OBJETIVO: BAJA LA VISTA DE SEBAJBS A LA TABLA DEJANDOLA YA DEPURADA*
//**********************************************************************
//ZLF30P50 EXEC PGM=DSNUTILB,COND=(4,LT),PARM='MXP1,SEBAJBS'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSREC00 DD DSN=SIVA.SIE.WKF.SEBAJBS.DEPURA,
//            DISP=SHR
//SORTWK01 DD DSN=SIVA.SIE.WKF.SEBAJBS.SORTWK01,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK02 DD DSN=SIVA.SIE.WKF.SEBAJBS.SORTWK02,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK03 DD DSN=SIVA.SIE.WKF.SEBAJBS.SORTWK03,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK04 DD DSN=SIVA.SIE.WKF.SEBAJBS.SORTWK04,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK05 DD DSN=SIVA.SIE.WKF.SEBAJBS.SORTWK05,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK06 DD DSN=SIVA.SIE.WKF.SEBAJBS.SORTWK06,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SYSUT1   DD DSN=SIVA.SIE.WKF.SEBAJBS.SYSUT1,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTOUT  DD DSN=SIVA.SIE.WKF.SEBAJBS.SORTOUT,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF30T50),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF30P45                                                 *
//* PROGRAMA: DSNUTILB                                                 *
//* OBJETIVO: BAJA LA VISTA DE SETEBMI A LA TABLA DEJANDOLA YA DEPURADA*
//**********************************************************************
//ZLF30P45 EXEC PGM=DSNUTILB,COND=(4,LT),PARM='MXP1,SETEBMI'
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSREC00 DD DSN=SIVA.SIE.WKF.SETEBMI.DEPURA,
//            DISP=SHR
//SORTWK01 DD DSN=SIVA.SIE.WKF.SETEBMI.SORTWK01,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK02 DD DSN=SIVA.SIE.WKF.SETEBMI.SORTWK02,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK03 DD DSN=SIVA.SIE.WKF.SETEBMI.SORTWK03,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK04 DD DSN=SIVA.SIE.WKF.SETEBMI.SORTWK04,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK05 DD DSN=SIVA.SIE.WKF.SETEBMI.SORTWK05,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTWK06 DD DSN=SIVA.SIE.WKF.SETEBMI.SORTWK06,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SYSUT1   DD DSN=SIVA.SIE.WKF.SETEBMI.SYSUT1,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SORTOUT  DD DSN=SIVA.SIE.WKF.SETEBMI.SORTOUT,
//            DISP=(NEW,DELETE,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF30T45),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF30P40                                                 *
//* PROGRAMA: DSNUTILB                                                 *
//* OBJETIVO: REALIZA BACKUP DE LAS TABLAS A DEPURAR EN ESTE PROCESO   *
//**********************************************************************
//ZLF30P40 EXEC PGM=DSNUTILB,PARM='MXP1,ZMUDND4008,',
//         COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO0001   DD  DISP=(,KEEP),
//             DSN=BKPP.DEP.SSEAPBRT.DESPUES,
//             UNIT=FJVTP,
//             LABEL=(1,SL,,,EXPDT=99000)
//CO0002  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSEBAJBS.DESPUES,
//           UNIT=FJVTP,
//           LABEL=(1,SL,EXPDT=99000)
//CO0003  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSEINBC.DESPUES,
//           UNIT=FJVTP,
//           LABEL=(1,SL,EXPDT=99000)
//CO0004  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSEOPBRA.DESPUES,
//           UNIT=FJVTP,
//           LABEL=(1,SL,EXPDT=99000)
//CO0005  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSETEBC.DESPUES,
//           UNIT=FJVTP,
//           LABEL=(1,SL,EXPDT=99000)
//CO0006  DD DISP=(,KEEP),
//           DSN=BKPP.DEP.SSETEBMI.DESPUES,
//           UNIT=FJVTP,
//           LABEL=(1,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF30T40),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF30P35                                                 *
//* PROGRAMA: ZM4DLG02                                                 *
//* OBJETIVO: COPIAR LA INFORMACION DE LA TABLA SETENC A SETEBC        *
//**********************************************************************
//ZLF30P35 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF30T35),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF30P30                                                 *
//* PROGRAMA: ZM4DLG03                                                 *
//* OBJETIVO: COPIAR LA INFORMACION DE LA TABLA SEINGC A SEINBC        *
//**********************************************************************
//ZLF30P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF30T30),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF30P25                                                 *
//* PROGRAMA: ZM4DLG04                                                 *
//* OBJETIVO: COPIAR LA INFORMACION DE LA TABLA SEBAJAS A SEBAJBS      *
//**********************************************************************
//ZLF30P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF30T25),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF30P20                                                 *
//* PROGRAMA: ZM4DLG05                                                 *
//* OBJETIVO: COPIAR LA INFORMACION DE LA TABLA SEAPERT A SEAPBRT      *
//**********************************************************************
//ZLF30P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF30T20),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF30P15                                                 *
//* PROGRAMA: ZM4DLG06                                                 *
//* OBJETIVO: COPIAR LA INFORMACION DE LA TABLA SEOPERA A SEOPBRT      *
//**********************************************************************
//ZLF30P15 EXEC PGM=IKJEFT01,COND=(4,LT),PARM='/DEBUG'
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF30T15),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF30P10                                                 *
//* PROGRAMA: ZM4DLG08                                                 *
//* OBJETIVO: COPIAR LA INFORMACION DE LA TABLA SETEEMI A SETEBMI      *
//**********************************************************************
//ZLF30P10 EXEC PGM=IKJEFT01,COND=(4,LT),PARM='/DEBUG'
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF30T10),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF30P05                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* OBJETIVO: BORRA LOS ARCHIVOS SECUENCIALES UTILIZADOS               *
//**********************************************************************
//ZLF30P05 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF30T04),DISP=SHR
//*
//********************** FIN DE PROCESO ZMUDND30 ***********************
