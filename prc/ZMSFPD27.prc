//ZMSFPD27 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBSFCD27                                         *
//*                   TENENCIA ESTADISTICA                             *
//*                                                                    *
//* OBJETIVO       :  RESPALDAR INFORMACION DE TABLAS ESTADISTICAS     *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBJFND02  -  ZMJFPD02                            *
//*                                                                    *
//* DESPUES DE     :  CBSFCD25  -  ZMSFPD25                            *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == IMAGE COPY ==                          *
//*  OBJETIVO :   REALIZA BACKUP DE TABLAS A DEPURAR EN ESTE PROCESO   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF27P17 EXEC PGM=DSNUTILB,PARM='MXP1,CBSFCD2701,'
//PI601765 DD DUMMY
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO0001   DD DISP=(,KEEP),
//            DSN=MXCP.ZM.FIX.SIE.SSEAPBRT.ANTES,
//            UNIT=VTSS02,
//            LABEL=(,SL,EXPDT=99000)
//CO0002   DD DISP=(,KEEP),
//            DSN=MXCP.ZM.FIX.SIE.SSEBAJBS.ANTES,
//            UNIT=VTSS02,
//            LABEL=(,SL,EXPDT=99000)
//CO0003   DD DISP=(,KEEP),
//            DSN=MXCP.ZM.FIX.SIE.SSEINBC.ANTES,
//            UNIT=VTSS02,
//            LABEL=(,SL,EXPDT=99000)
//CO0004   DD DISP=(,KEEP),
//            DSN=MXCP.ZM.FIX.SIE.SSEOPBRA.ANTES,
//            UNIT=VTSS02,
//            LABEL=(,SL,EXPDT=99000)
//CO0005   DD DISP=(,KEEP),
//            DSN=MXCP.ZM.FIX.SIE.SSETEBC.ANTES,
//            UNIT=VTSS02,
//            LABEL=(,SL,EXPDT=99000)
//CO0006   DD DISP=(,KEEP),
//            DSN=MXCP.ZM.FIX.SIE.SSETEBMI.ANTES,
//            UNIT=VTSS02,
//            LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZSF27T17)
//**********************************************************************
//*                          ==  IDCAMS  ==                            *
//* OBJETIVO    : BORRAR ARCHIVOS DE TRABAJO                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF27P16 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZSF27T16)
//**********************************************************************
//*                          == ZM4ESG17 ==                            *
//* OBJETIVO    :  CREAR ARCHIVOS TEMPORALES PARA DEPURACION DE TABLAS *
//*                SETEBC, SEOPBRA, SEINBC, SEAPBRT, SEBAJBS, SETEBMI  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF27P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMSG17A1 DD DSN=MXCP.ZM.FIX.SIE.SETEBC.DEPURA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=98,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMSG17A2 DD DSN=MXCP.ZM.FIX.SIE.SEOPBRA.DEPURA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=98,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMSG17A3 DD DSN=MXCP.ZM.FIX.SIE.SEINBC.DEPURA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=94,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMSG17A4 DD DSN=MXCP.ZM.FIX.SIE.SEAPBRT.DEPURA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=109,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMSG17A5 DD DSN=MXCP.ZM.FIX.SIE.SEBAJBS.DEPURA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=93,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMSG17A6 DD DSN=MXCP.ZM.FIX.SIE.SETEBMI.DEPURA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=101,BLKSIZE=0,DSORG=PS,RECFM=FBA),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZSF27T15)
//**********************************************************************
//*                          == DSNUTILB ==                            *
//* OBJETIVO    :  BAJAR TABLA(VISTA) DE "SETEBC" DEPURADA             *
//*                                                                    *
//* PASO      NO REINICIABLE                                           *
//**********************************************************************
//PSF27P14 EXEC PGM=DSNUTILB,COND=(4,LT),PARM='MXP1,CBSFCD2702'
//PI601765 DD DUMMY
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSREC00 DD DSN=MXCP.ZM.FIX.SIE.SETEBC.DEPURA,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SORTWK01 DD DSN=MXCP.ZM.WKF.SETEBC.SORTWK01,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK02 DD DSN=MXCP.ZM.WKF.SETEBC.SORTWK02,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK03 DD DSN=MXCP.ZM.WKF.SETEBC.SORTWK03,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK04 DD DSN=MXCP.ZM.WKF.SETEBC.SORTWK04,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK05 DD DSN=MXCP.ZM.WKF.SETEBC.SORTWK05,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK06 DD DSN=MXCP.ZM.WKF.SETEBC.SORTWK06,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.SETEBC.SYSUT1,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390
//SORTOUT  DD DSN=MXCP.ZM.FIX.SIE.SETEBC.SORTOUT,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=SIVA.PUNCH(FDD2714),DISP=SHR
//**********************************************************************
//*                          == DSNUTILB ==                            *
//* OBJETIVO    :  BAJAR TABLA(VISTA) DE "SEOPBRA" DEPURADA            *
//*                                                                    *
//* PASO      NO REINICIABLE                                           *
//**********************************************************************
//PSF27P13 EXEC PGM=DSNUTILB,COND=(4,LT),PARM='MXP1,CBSFCD2703'
//PI601765 DD DUMMY
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSREC00 DD DSN=MXCP.ZM.FIX.SIE.SEOPBRA.DEPURA,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SORTWK01 DD DSN=MXCP.ZM.WKF.SEOPBRA.SORTWK01,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK02 DD DSN=MXCP.ZM.WKF.SEOPBRA.SORTWK02,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK03 DD DSN=MXCP.ZM.WKF.SEOPBRA.SORTWK03,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK04 DD DSN=MXCP.ZM.WKF.SEOPBRA.SORTWK04,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK05 DD DSN=MXCP.ZM.WKF.SEOPBRA.SORTWK05,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK06 DD DSN=MXCP.ZM.WKF.SEOPBRA.SORTWK06,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.SEOPBRA.SYSUT1,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390
//SORTOUT  DD DSN=MXCP.ZM.FIX.SIE.SEOPBRA.SORTOUT,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=SIVA.PUNCH(FDD2713),DISP=SHR
//**********************************************************************
//*                          == DSNUTILB ==                            *
//* OBJETIVO    :  BAJAR TABLA(VISTA) DE "SEINBC" DEPURADA             *
//*                                                                    *
//* PASO      NO REINICIABLE                                           *
//**********************************************************************
//PSF27P12 EXEC PGM=DSNUTILB,COND=(4,LT),PARM='MXP1,CBSFCD2704'
//PI601765 DD DUMMY
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSREC00 DD DSN=MXCP.ZM.FIX.SIE.SEINBC.DEPURA,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SORTWK01 DD DSN=MXCP.ZM.WKF.SEINBC.SORTWK01,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK02 DD DSN=MXCP.ZM.WKF.SEINBC.SORTWK02,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK03 DD DSN=MXCP.ZM.WKF.SEINBC.SORTWK03,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK04 DD DSN=MXCP.ZM.WKF.SEINBC.SORTWK04,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK05 DD DSN=MXCP.ZM.WKF.SEINBC.SORTWK05,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK06 DD DSN=MXCP.ZM.WKF.SEINBC.SORTWK06,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.SEINBC.SYSUT1,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390
//SORTOUT  DD DSN=MXCP.ZM.FIX.SIE.SEINBC.SORTOUT,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=SIVA.PUNCH(FDD2712),DISP=SHR
//**********************************************************************
//*                          == DSNUTILB ==                            *
//* OBJETIVO    :  BAJAR TABLA(VISTA) DE "SEAPBRT" DEPURADA            *
//*                                                                    *
//* PASO      NO REINICIABLE                                           *
//**********************************************************************
//PSF27P11 EXEC PGM=DSNUTILB,COND=(4,LT),PARM='MXP1,CBSFCD2705'
//PI601765 DD DUMMY
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSREC00 DD DSN=MXCP.ZM.FIX.SIE.SEAPBRT.DEPURA,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SORTWK01 DD DSN=MXCP.ZM.WKF.SEAPBRT.SORTWK01,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK02 DD DSN=MXCP.ZM.WKF.SEAPBRT.SORTWK02,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK03 DD DSN=MXCP.ZM.WKF.SEAPBRT.SORTWK03,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK04 DD DSN=MXCP.ZM.WKF.SEAPBRT.SORTWK04,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK05 DD DSN=MXCP.ZM.WKF.SEAPBRT.SORTWK05,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK06 DD DSN=MXCP.ZM.WKF.SEAPBRT.SORTWK06,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.SEAPBRT.SYSUT1,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390
//SORTOUT  DD DSN=MXCP.ZM.FIX.SIE.SEAPBRT.SORTOUT,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=SIVA.PUNCH(FDD2711),DISP=SHR
//**********************************************************************
//*                          == DSNUTILB ==                            *
//* OBJETIVO    :  BAJAR TABLA(VISTA) DE "SEBAJBS" DEPURADA            *
//*                                                                    *
//* PASO      NO REINICIABLE                                           *
//**********************************************************************
//PSF27P10 EXEC PGM=DSNUTILB,COND=(4,LT),PARM='MXP1,CBSFCD2706'
//PI601765 DD DUMMY
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSREC00 DD DSN=MXCP.ZM.FIX.SIE.SEBAJBS.DEPURA,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SORTWK01 DD DSN=MXCP.ZM.WKF.SEBAJBS.SORTWK01,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK02 DD DSN=MXCP.ZM.WKF.SEBAJBS.SORTWK02,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK03 DD DSN=MXCP.ZM.WKF.SEBAJBS.SORTWK03,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK04 DD DSN=MXCP.ZM.WKF.SEBAJBS.SORTWK04,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK05 DD DSN=MXCP.ZM.WKF.SEBAJBS.SORTWK05,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK06 DD DSN=MXCP.ZM.WKF.SEBAJBS.SORTWK06,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.SEBAJBS.SYSUT1,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390
//SORTOUT  DD DSN=MXCP.ZM.FIX.SIE.SEBAJBS.SORTOUT,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=SIVA.PUNCH(FDD2710),DISP=SHR
//**********************************************************************
//*                          == DSNUTILB ==                            *
//* OBJETIVO    :  BAJAR TABLA(VISTA) DE "SETEBMI" DEPURADA            *
//*                                                                    *
//* PASO      NO REINICIABLE                                           *
//**********************************************************************
//PSF27P09 EXEC PGM=DSNUTILB,COND=(4,LT),PARM='MXP1,CBSFCD2707'
//PI601765 DD DUMMY
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSREC00 DD DSN=MXCP.ZM.FIX.SIE.SETEBMI.DEPURA,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SORTWK01 DD DSN=MXCP.ZM.WKF.SETEBMI.SORTWK01,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK02 DD DSN=MXCP.ZM.WKF.SETEBMI.SORTWK02,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK03 DD DSN=MXCP.ZM.WKF.SETEBMI.SORTWK03,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK04 DD DSN=MXCP.ZM.WKF.SETEBMI.SORTWK04,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK05 DD DSN=MXCP.ZM.WKF.SETEBMI.SORTWK05,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK06 DD DSN=MXCP.ZM.WKF.SETEBMI.SORTWK06,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.SETEBMI.SYSUT1,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390
//SORTOUT  DD DSN=MXCP.ZM.FIX.SIE.SETEBMI.SORTOUT,
//            DISP=(NEW,DELETE,CATLG),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=SIVA.PUNCH(FDD2709),DISP=SHR
//**********************************************************************
//*                          == IMAGE COPY ==                          *
//*  OBJETIVO :   REALIZA BACKUP DE TABLAS A DEPURAR EN ESTE PROCESO   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF27P08 EXEC PGM=DSNUTILB,COND=(4,LT),PARM='MXP1,CBSFCD2708,'
//PI601765 DD DUMMY
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO0001   DD DISP=(,KEEP),
//            DSN=MXCP.ZM.FIX.SIE.SSEAPBRT.DESPUES,
//            UNIT=VTSS02,
//            LABEL=(,SL,EXPDT=99000)
//CO0002   DD DISP=(,KEEP),
//            DSN=MXCP.ZM.FIX.SIE.SSEBAJBS.DESPUES,
//            UNIT=VTSS02,
//            LABEL=(,SL,EXPDT=99000)
//CO0003   DD DISP=(,KEEP),
//            DSN=MXCP.ZM.FIX.SIE.SSEINBC.DESPUES,
//            UNIT=VTSS02,
//            LABEL=(,SL,EXPDT=99000)
//CO0004   DD DISP=(,KEEP),
//            DSN=MXCP.ZM.FIX.SIE.SSEOPBRA.DESPUES,
//            UNIT=VTSS02,
//            LABEL=(,SL,EXPDT=99000)
//CO0005   DD DISP=(,KEEP),
//            DSN=MXCP.ZM.FIX.SIE.SSETEBC.DESPUES,
//            UNIT=VTSS02,
//            LABEL=(,SL,EXPDT=99000)
//CO0006   DD DISP=(,KEEP),
//            DSN=MXCP.ZM.FIX.SIE.SSETEBMI.DESPUES,
//            UNIT=VTSS02,
//            LABEL=(,SL,EXPDT=99000)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZSF27T08)
//**********************************************************************
//*                          == ZM4DSG02 ==                            *
//* OBJETIVO    :  COPIAR LA INFORMACION DE LA TABLA SETENC A SETEBC   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF27P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK05  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK06  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZSF27T07)
//**********************************************************************
//*                           -- ZM4DSG03 --                           *
//* OBJETIVO    :  COPIAR LA INFORMACION DE LA TABLA SEINGC A SEINBC   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF27P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK05  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK06  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZSF27T06)
//**********************************************************************
//*                          == ZM4DSG04 ==                            *
//* OBJETIVO    :  COPIAR LA INFORMACION DE LA TABLA SEBAJAS A SEBAJBS *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF27P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK05  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK06  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZSF27T05)
//**********************************************************************
//*                          == ZM4DSG05 ==                            *
//* OBJETIVO    :  COPIAR LA INFORMACION DE LA TABLA SEAPERT A SEAPBRT *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 *** PROC. ESTADISTICO *
//**********************************************************************
//PSF27P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK05  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK06  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZSF27T04)
//**********************************************************************
//*                          == ZM4DSG06 ==                            *
//* OBJETIVO    :  COPIAR LA INFORMACION DE LA TABLA SEOPERA A SEOPBRT *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  *** PROC. ESTADISTICO*
//**********************************************************************
//PSF27P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK05  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK06  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZSF27T03)
//**********************************************************************
//*                          == ZM4DSG08 ==                            *
//* OBJETIVO    :  COPIAR LA INFORMACION DE LA TABLA SETEEMI A SETEBMI *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  *** PROC. ESTADISTICO*
//**********************************************************************
//PSF27P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK05  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK06  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZSF27T02)
//**********************************************************************
//*                          ==  IDCAMS  ==                            *
//* OBJETIVO    : BORRAR ARCHIVOS DE TRABAJO                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF27P01 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZSF27T01)
