//ZMLLPC04 PROC
//*
//**********************************************************************
//*                                                                    *
//* APLICACION     :  CASA DE BOLSA -- MERCADO DE DINERO               *
//*                                                                    *
//* PROCESO        :  ESPACIOS DEL PERFIL DE MIDDLE OFFICE             *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :                                                   *
//*                                                                    *
//* AUTOR          :  FSW HILDEBRANDO (DVR)                            *
//*                                                                    *
//* FECHA          :  JULIO 2011                                       *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//* FUNCION: RECIBE LOS PARAMETROS Y LOS CARGA EN ARCHIVO PARA SIGUIEN-*
//*          TES PASOS.                                                *
//*--------------------------------------------------------------------*
//PLC04P50 EXEC PGM=ZM3DG001,PARM=('&EMP','  ','  ','  ',)
//*
//ZMLF04A0 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZMLLPC04,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* FUNCION: REALIZA SORT DE ARCHIVO BUC                               *
//*                                                                    *
//*--------------------------------------------------------------------*
//PLC04P40 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXB&AMB..BUC.FIX.BUQM3901.BUCMUVFO,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.BUQM39.BUCMUVFO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC04T40),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* FUNCION: GENERA ARCHIVO DE REGISTROS MUV                           *
//*                                                                    *
//*--------------------------------------------------------------------*
//PLC04P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLF04A2 DD DSN=MXC&AMB..ZM.FIX.SIVAMUV.ULTEJEC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390
//*
//ZMLF04A3 DD DSN=MXC&AMB..ZM.FIX.SIVAMUV.BUCMUVFO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC04T30),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* FUNCION: REALIZA SORT DE ARCHIVO BUC                               *
//*                                                                    *
//*--------------------------------------------------------------------*
//PLC04P20 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.SIVAMUV.BUCMUVFO,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.SIVAMUV.MUVBUCFO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC04T20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* FUNCION: GENERA ARCHIVO DE REGISTROS ENTRE MUV Y BUC               *
//*                                                                    *
//*--------------------------------------------------------------------*
//PLC04P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLF04A2 DD DSN=MXC&AMB..ZM.FIX.SIVAMUV.ULTEJEC,DISP=SHR
//ZMLF04A3 DD DSN=MXC&AMB..ZM.FIX.SIVAMUV.MUVBUCFO,DISP=SHR
//ZMLF04A4 DD DSN=MXC&AMB..ZM.FIX.BUQM39.BUCMUVFO,DISP=SHR
//*
//ZMLF04A1 DD DSN=MXC&AMB..ZM.FIX.SIVAMUV.BUCMUV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=90,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC04T10),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*TECNOCOM-I
//*--------------------------------------------------------------------*
//*   PASO    : PLC04P05                                               *
//*   OBJETIVO: DEAJAR EN CLARO ARCHIVO ENVIADO POR CALYPSO            *
//*             MXCP.ZM.FIX.BUQM3901.BUCMUVFO  UNA VEZ PROCESADO       *
//*--------------------------------------------------------------------*
//PLC04P05 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=80)
//SYSUT2   DD DSN=MXCP.ZM.FIX.BUQM3901.BUCMUVFO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*TECNOCOM-F
