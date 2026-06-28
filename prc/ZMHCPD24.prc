//ZMHCPD24  PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  C A P I T A L E S >>                       *
//*                                                                    *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  BCUTND12.                                        *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVOS PARA AUDITORIA INTERNA.          *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO.                                          *
//*                                                                    *
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ.                 *
//*                                                                    *
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO PARA AUDITORIA INTERNA.                  *
//*            MXCP.ZM.FIX.TES.INHIMPRE                                *
//*  A ===>    MBVP.AO.FIX.TES.INHIMPRE                                *
//**********************************************************************
//PHC34P04 EXEC PGM=ICEGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.INHIMPRE,DISP=SHR
//SYSUT2   DD DSN=MBVP.AO.FIX.TES.INHIMPRE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=270,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO PARA AUDITORIA INTERNA.                  *
//*            MXCP.ZM.FIX.TES.VACTEBCM                                *
//*  A ===>    MBVP.AO.FIX.TES.VACTEBCM                                *
//**********************************************************************
//PHC34P03 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.VACTEBCM,DISP=SHR
//SYSUT2   DD DSN=MBVP.AO.FIX.TES.VACTEBCM,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=875,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO PARA AUDITORIA INTERNA.                  *
//*            MXCP.ZM.FIX.ZM4DUA10.REPORTE                            *
//*  A ===>    MBVP.AO.FIX.ZM4DUA10.REPORTE                            *
//**********************************************************************
//PHC34P02 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ZM4DUA10.REPORTE,DISP=SHR
//SYSUT2   DD DSN=MBVP.AO.FIX.ZM4DUA10.REPORTE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=260,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                                                                    *
//**********************************************************************
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROL-M, INDICANDO QUE YA      *
//*            TERMINO DE GENERARSE LOS ARCHIVO PARA EL AEREA DE       *
//*            AUDITORIA INTERNA.                                      *
//* PROGRAMA: IOACND                                                   *
//**********************************************************************
//*PHC34P01 EXEC  PGM=IOACND,COND=(4,LT),
//*         PARM='ADD COND BCUTND22_OK1   WDATE'
//*         INCLUDE MEMBER=IOASET
//*         INCLUDE MEMBER=IOAENV
//*SYSIN    DD DUMMY
//*DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//*DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//*STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//*PRTDBG   DD  SYSOUT=*
//*SYSPRINT DD  DUMMY
//*DAPRINT  DD  SYSOUT=*
//*DACNDIN  DD  DDNAME=SYSIN
//**
//**********************************************************************
//*                                                                    *
//*     ===   F I N    D E    P R O C E S O   ===                      *
//*     ===           BCUTND22                ===                      *
//*                                                                    *
//**********************************************************************
