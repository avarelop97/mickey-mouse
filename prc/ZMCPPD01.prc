//ZMCPPD01 PROC
//**********************************************************************
//**                    C A S A   D E   B O L S A                      *
//**                    =========================                      *
//**                    <<< MERCADO DE DINERO >>>                      *
//**                                                                   *
//**  APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//**                                                                   *
//**  PROCEDIM. :  ZMCPPD01-SIVAMUV                                    *
//**                                                                   *
//**  OBJETIVO  :  INTERFAZ DE PREPAIDS PARA CALYPSO KRFN              *
//**                                                                   *
//**  CORRE ANTES DE  :  NINGUNO                                       *
//**                                                                   *
//**  CORRE DESPUES DE:  NINGUNO                                       *
//**                                                                   *
//**  PERIODICIDAD    : 19:00                                          *
//**                                                                   *
//**********************************************************************
//**********************************************************************
//*         B I T A C O R A  D E  M O D I F I C A C I O N E S          *
//*         -------------------------------------------------          *
//*                                                                    *
//* N O M B R E                 D E S C R I P C I O N                  *
//* --------------------- -------------------------------------------  *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                     * UNLOAD *
//* PASO     : PS090PD1
//* OBJETIVO : DESCARGA LAS ESTRATEGIAS  CLAVES PP2, PP3, PP4
//* PROGRAMA : ADUUMAIN
//**********************************************************************
//*
//PS090PD1 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMCPPD01,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCPPD.TAB780.OA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=150,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCPD901),DISP=SHR
//*
//**********************************************************************
//* PASO     : PS080PD1
//* OBJETIVO : PROCESA LAS ESTRATEGIAS DE LAS CLAVES (PP2, PP3, PP4)
//*            LAS PP2 CORRESPONDEN A LAS OPC. 712, 769 Y 718 DE CICS
//*            LAS PP3 CORRESPONDEN A LAS OPC. 66 DE CICS
//*            LAS PP4 CORRESPONDEN A LAS OPC. 977 DE CICS
//* PROGRAMA : ZM4CPPD1
//*********************************************************************
//PS080PD1 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO68010 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//E1ZMFINW DD DSN=MXCP.ZM.FIX.DESCPPD.TAB780.OA,DISP=SHR
//S1SALIDA DD DSN=MXCP.ZM.FIX.INTERF.CALYPSO.KRFA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=128,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE)
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCPD801),DISP=SHR
//*
//**********************************************************************
//*                     * UNLOAD *
//* PASO     : PS070PD1
//* OBJETIVO : DESCARGA LOS PREPAIDS DE LAS ESTRATEGIAS (PPR, PPT, PPP)
//*            LAS PPR CORRESPONDEN A LAS OPC. 712, 769 Y 718 DE CICS
//*            LAS PPT CORRESPONDEN A LAS OPC. 66 DE CICS
//*            LAS PPP CORRESPONDEN A LAS OPC. 977 DE CICS
//* PROGRAMA : ADUUMAIN
//**********************************************************************
//PS070PD1 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMCPPD01,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCPPD.TAB780.ST,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=150,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCPD701),DISP=SHR
//*
//**********************************************************************
//* PASO     : PS060PD1
//* OBJETIVO : PROCESA LOS PREPAIDS DE LAS OPCIONES PPR, PPP Y PPT
//* PROGRAMA : ZM4CPPD2
//*********************************************************************
//PS060PD1 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO68010 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//E1ZMFINW DD DSN=MXCP.ZM.FIX.DESCPPD.TAB780.ST,DISP=SHR
//S1SALIDA DD DSN=MXCP.ZM.FIX.INTERF.CALYPSO.KRFI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=128,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE)
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCPD601),DISP=SHR
//*
//**********************************************************************
//* PASO     : PS060PD1
//* OBJETIVO : SORTEA ENCABEZADO DEL ARCHIVO DE PREPAID
//* PROGRAMA : ZM4DHT87
//**********************************************************************
//PS050PD1 EXEC  PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.INTERF.CALYPSO.KRFI,
//            DISP=SHR
//*
//SORTOUT DD  DSN=MXCP.ZM.FIX.INTERF.CALYPSO.KRFI.TIT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(RECFM=FB,LRECL=128,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCPD501),DISP=SHR
//*
//**********************************************************************
//* PASO     : PS040PD1
//* OBJETIVO : SORTEA DETALLE DEL ARCHIVO DE PREPAID
//* PROGRAMA : ICEMAN
//**********************************************************************
//PS040PD1 EXEC  PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.INTERF.CALYPSO.KRFI,
//            DISP=SHR
//*
//SORTOUT DD  DSN=MXCP.ZM.FIX.INTERF.CALYPSO.KRFI.DET,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=128,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCPD401),DISP=SHR
//*
//**********************************************************************
//* PASO     : PS030PD1
//* OBJETIVO : SUMA POR ESTRATEGIA E ISIIN
//* PROGRAMA : ICEMAN
//**********************************************************************
//PS030PD1 EXEC  PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.INTERF.CALYPSO.KRFI.DET,
//            DISP=SHR
//*
//SORTOUT DD  DSN=MXCP.ZM.FIX.INTERF.CALYPSO.KRFI.SUM,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=128,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCPD301),DISP=SHR
//*
//**********************************************************************
//* PASO     : PS020PD1
//* OBJETIVO : EDITA CAMPO DE SUMA
//* PROGRAMA : ICEMAN
//**********************************************************************
//PS020PD1 EXEC  PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.INTERF.CALYPSO.KRFI.SUM,
//            DISP=SHR
//*
//SORTOUT DD  DSN=MXCP.ZM.FIX.INTERF.CALYPSO.KRFI.EDI,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=128,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCPD201),DISP=SHR
//*
//**********************************************************************
//* PASO     : PS010PD1
//* OBJETIVO : GENERA INTERFAZ PARA CALYPSO
//* PROGRAMA : ICEMAN
//**********************************************************************
//PS010PD1 EXEC  PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.INTERF.CALYPSO.KRFI.TIT,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.INTERF.CALYPSO.KRFI.EDI,
//            DISP=SHR
//*
//SORTOUT DD  DSN=MXCP.ZM.FIX.PREPAID.CALYPSO.KRFN1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=128,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCPD101),DISP=SHR
//*
//**********************************************************************
//* PASO     : PS010PDB
//* OBJETIVO : PROGRAMA QUE VALIDA SI LEVANTA CONDICION
//* PROGRAMA : ZM4CPPD2
//*********************************************************************
//* OBJETIVO: VALIDA PARAMETRO PARA CONDICION                          *
//*-------------------------------------------------------------------
//PS010PDB EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO68010 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCPD10B),DISP=SHR
//*
// IF (PS010PDB.RC=00) THEN
//*
//**********************************************************************
//* PASO     : PS010PD1
//* OBJETIVO : GENERA CONFICION A DISTRIBUIDO
//* PROGRAMA : IOACND
//**********************************************************************
//* OBJETIVO: LEVANTA CONDICION PARA DISTRIBUIDO                       *
//*-------------------------------------------------------------------
//PS010PDA EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND MX2CRX_BCHCPPD100 &FEC'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
// ENDIF
//*
