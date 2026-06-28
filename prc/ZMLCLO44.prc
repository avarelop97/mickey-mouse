//ZMLCLO44 PROC
//*--------------------------------------------------------------------*
//* SISTEMA      : ZM -                                                *
//* PROCESO      : ZMLCLO44                                            *
//* PERIODICIDAD : DIARIA                                              *
//* OBJETIVO     : PROCESO DE MATCH FORMATO IV                         *
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
//* PASO     : ZMLO4450                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO DE SETRIB                                *
//**********************************************************************
//ZMLO4450  EXEC PGM=ICEMAN                                             00022900
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.CBJCLO40.FORMATO.IV,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.CBJCLO44.FORMATO.IV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDUMP  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLO4450),DISP=SHR                   00024800
//*
//**********************************************************************
//* PASO     : ZMLO4445                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO DE MULTICAST                             *
//**********************************************************************
//ZMLO4445 EXEC PGM=ICEMAN,COND=(4,LT)                                  0920002
//SORTIN   DD DSN=MXCP.ZM.FIX.BCM.CBJCLO41.FORMATO.IV,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCM.CBJCLO44.FORMATO.IV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDUMP  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLO4450),DISP=SHR
//*
//**********************************************************************
//* PASO     : ZMLO4440                                                *
//* UTILERIA : ZM3BIV03                                                *
//* OBJETIVO : REALIZA MATCH ENTRE ARCHIVO DE SETRIB CONTRA ARCHIVO DE *
//*            MULTICAST                                               *
//**********************************************************************
//ZMLO4440  EXEC PGM=ZM3BIV03,COND=(4,LT)
//E1PRINCI DD DSN=MXCP.ZM.FIX.CBP.CBJCLO44.FORMATO.IV,
//            DISP=SHR
//*
//E2PRINCI DD DSN=MXCP.ZM.FIX.BCM.CBJCLO44.FORMATO.IV,
//            DISP=SHR
//*
//S1SALIDA DD DSN=MXCP.ZM.FIX.CBJCLO44.SETRIB,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//S2SALIDA DD DSN=MXCP.ZM.FIX.CBJCLO44.MULTI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//S3SALIDA DD DSN=MXCP.ZM.FIX.CBJCLO44.MATCH.NOK,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=350,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//S4SALIDA DD DSN=MXCP.ZM.FIX.CBJCLO44.MATCH.OK,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(LRECL=255,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//S5SALIDA DD DSN=MXCP.ZM.FIX.CBJCLO44.CIFRAS.CONTROL,
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
