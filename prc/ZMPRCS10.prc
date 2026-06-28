//ZMPRCS10 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  ZMJRCS10                                         *
//*                   PROCESO GENERAL - REORGANIZACION PARTE 10 DE 10  *
//*                                                                    *
//* OBJETIVO       :  REORGANIZACION SEMANAL DE BASE DE DATOS MUV Y    *
//*                   RUNSTATS A LAS TABLAS YA REORGANIZADAS           *
//* CORRE                                                              *
//* ANTES DE       :  IMARDIA                                          *
//*                                                                    *
//* DESPUES DE     :  IMAGDIA                                          *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  SEPTIEMBRE 2004                                  *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE CADA SEMANA EL DIA SABADO     *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == DSNUTILB ==                            *
//* OBJETIVO: REORGANIZA LAS TABLAS DE BASE DE DATOS DEL MUV           *
//*           Y                                                        *
//*           RUNSTATS A LAS TABLAS YA REORGANIZADAS                   *
//**********************************************************************
//PGR10P01 EXEC PGM=DSNUTILB,PARM='MXP1,ZMJRCS1001'
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//*
//SYSPRINT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SORTWK01 DD DSN=MXCP.ZM.WKF.PARTE10.SORTWK01,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK02 DD DSN=MXCP.ZM.WKF.PARTE10.SORTWK02,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK03 DD DSN=MXCP.ZM.WKF.PARTE10.SORTWK03,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK04 DD DSN=MXCP.ZM.WKF.PARTE10.SORTWK04,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK05 DD DSN=MXCP.ZM.WKF.PARTE10.SORTWK05,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK06 DD DSN=MXCP.ZM.WKF.PARTE10.SORTWK06,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK07 DD DSN=MXCP.ZM.WKF.PARTE10.SORTWK07,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK08 DD DSN=MXCP.ZM.WKF.PARTE10.SORTWK08,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK09 DD DSN=MXCP.ZM.WKF.PARTE10.SORTWK09,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSREC   DD DSN=MXCP.ZM.WKF.OTR.PARTE10.REORGA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390
//SYSUT1   DD DSN=MXCP.ZM.WKF.OTR.PARTE10.SYSUT1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390
//SORTOUT  DD DSN=MXCP.ZM.WKF.OTR.PARTE10.SORTOUT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGR10T01),DISP=SHR
