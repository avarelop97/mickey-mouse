//ZMLCLO43 PROC
//*--------------------------------------------------------------------*
//* SISTEMA      : ZM -                                                *
//* PROCESO      : ZMLCLO43                                            *
//* PERIODICIDAD : DIARIA                                              *
//* OBJETIVO     : PROCESO DE MATCH FORMATO K                          *
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
//* PASO     : ZMLO4350                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO DE SETRIB                                *
//**********************************************************************
//ZMLO4350  EXEC PGM=ICEMAN,COND=(4,LT)                                 00022900
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.CBJCLO40.FORMATO.K,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.CBJCLO43.FORMATO.K,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDUMP  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLO4349),DISP=SHR                   00024800
//*
//**********************************************************************
//* PASO     : ZMLO4345                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO DE MULTICAST                             *
//**********************************************************************
//ZMLO4345 EXEC PGM=ICEMAN,COND=(4,LT)                                  0920002
//SORTIN   DD DSN=MXCP.ZM.FIX.BCM.CBJCLO41.FORMATO.K,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCM.CBJCLO43.FORMATO.K,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDUMP  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLO4350),DISP=SHR
//**********************************************************************
//* PASO     : ZMLO4340                                                *
//* UTILERIA : ZM3BIV03                                                *
//* OBJETIVO : REALIZA MATCH ENTRE ARCHIVO DE SETRIB CONTRA ARCHIVO DE *
//*            MULTICAST                                               *
//**********************************************************************
//ZMLO4340  EXEC PGM=ZM3BIV02,COND=(4,LT)
//*
//E1PRINCI DD DSN=MXCP.ZM.FIX.CBP.CBJCLO43.FORMATO.K,
//            DISP=SHR
//*
//E2PRINCI DD DSN=MXCP.ZM.FIX.BCM.CBJCLO43.FORMATO.K,
//            DISP=SHR
//*
//S1SALIDA DD DSN=MXCP.ZM.FIX.CBJCLO43.SETRIB,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//S2SALIDA DD DSN=MXCP.ZM.FIX.CBJCLO43.MULTI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//S3SALIDA DD DSN=MXCP.ZM.FIX.CBJCLO43.MATCH.NOK,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=225,RECFM=FB,BLKSIZE=0,DSORG=PS)
//S4SALIDA DD DSN=MXCP.ZM.FIX.CBJCLO43.MATCH.OK,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//S5SALIDA DD DSN=MXCP.ZM.FIX.CBJCLO43.CIFRAS.CONTROL,
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
