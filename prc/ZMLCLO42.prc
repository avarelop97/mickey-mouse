//ZMLCLO42 PROC
//*--------------------------------------------------------------------*
//* SISTEMA      : ZM -                                                *
//* PROCESO      : ZMLCLO42                                            *
//* PERIODICIDAD : DIARIA                                              *
//* OBJETIVO     : PROCESO DE MATCH FORMATO P                          *
//* REALIZO      : GONET                                               *
//* FECHA        : 10 OCT 2017                                         *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO     : ZMLO4250                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO DE SETRIB                                *
//**********************************************************************
//ZMLO4250  EXEC PGM=ICEMAN,COND=(4,LT)                                 00022900
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.CBJCLO40.FORMATO.P,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.CBJCLO42.FORMATO.P,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDUMP  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLO4249),DISP=SHR                   00024800
//*
//**********************************************************************
//* PASO     : ZMLO4245                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO DE MULTICAST                             *
//**********************************************************************
//ZMLO4245 EXEC PGM=ICEMAN,COND=(4,LT)                                  0920002
//SORTIN   DD DSN=MXCP.ZM.FIX.BCM.CBJCLO41.FORMATO.P,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCM.CBJCLO42.FORMATO.P,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDUMP  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLO4250),DISP=SHR
//*
//**********************************************************************
//* PASO     : ZMLO4240                                                *
//* UTILERIA : ZM3COMPA                                                *
//* OBJETIVO : REALIZA MATCH ENTRE EL ARCHIVO DE SETRIB CONTRA ARCHIVO *
//*            DE MULTICAST                                            *
//**********************************************************************
//ZMLO4240  EXEC PGM=ZM3BIV01,COND=(4,LT)
//E1PRINCI DD DSN=MXCP.ZM.FIX.CBP.CBJCLO42.FORMATO.P,
//            DISP=SHR
//*
//E2PRINCI DD DSN=MXCP.ZM.FIX.BCM.CBJCLO42.FORMATO.P,
//            DISP=SHR
//*
//S1SALIDA DD DSN=MXCP.ZM.FIX.CBJCLO42.SETRIB,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//S2SALIDA DD DSN=MXCP.ZM.FIX.CBJCLO42.MULTI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//S3SALIDA DD DSN=MXCP.ZM.FIX.CBJCLO42.MATCH.NOK,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=225,RECFM=FB,BLKSIZE=0,DSORG=PS)
//S4SALIDA DD DSN=MXCP.ZM.FIX.CBJCLO42.MATCH.OK,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//S5SALIDA DD DSN=MXCP.ZM.FIX.CBJCLO42.MATCH.DUP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=270,RECFM=FB,BLKSIZE=0,DSORG=PS)
//S6SALIDA DD DSN=MXCP.ZM.FIX.CBJCLO42.CIFRAS.CONTROL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*                                                  0920002
//SYSOUT   DD SYSOUT=*
//SYSDUMP  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO     : ZMLO4235                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO DE DUPLICADOS                            *
//**********************************************************************
//ZMLO4235 EXEC PGM=ICEMAN,COND=(4,LT)                                  0920002
//SORTIN   DD DSN=MXCP.ZM.FIX.CBJCLO42.MATCH.DUP,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBJCLO42.MATCH.DUP.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=270,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDUMP  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLO4X35),DISP=SHR
//*
