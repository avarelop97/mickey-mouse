//ZMLLPC96 PROC
//**********************************************************************
//*   APLICACION:  ZM - DISTRIBUCION DE INGRESOS A LAS BANCAS.         *
//*                                                                    *
//*   PROCEDIM. :  ZMLLPC96                                            *
//*                                                                    *
//*   OBJETIVO  :  EJECUTA PROGRAMAS QUE REALIZAN LA CONCILIACION      *
//*                DE DISTRIBUCION DE INGRESOS A LAS BANCAS.           *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIA                                        *
//*                                                                    *
//*   ELABORADO POR   : DGCM                                           *
//*                                                                    *
//*   FECHA           : SEPTIEMBRE DE 2015                             *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//**********************************************************************
//*  PASO: PHL96P50                                                    *00030000
//*  PROGRAMA: ZM3DH83C                                                *00040000
//*  FUNCION: GENERA ARCHIVO DE ENTRADA POR PARTE DE MUV CON TODOS LOS *00020000
//*           REG ENVIADOS O NO A LA CONTA, PARA LA CONCILIACION       *00020000
//**********************************************************************
//PHL96P50 EXEC PGM=ZM3DH83C
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBP.TOTFONDO.F&FECHA.,DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.CBP.TOTFONDO.F&FECHA..MUV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=137,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*                                                                    *
//**********************************************************************
//*  PASO: PHL96P45                                                    *00030000
//*  PROGRAMA: ICEMAN                                                  *00040000
//*  FUNCION: ORDENA EL ARCHIVO DE CONTA POR FONDO-SERIE PARA LA       *00020000
//*           CONCILIACION                                             *00020000
//**********************************************************************
//PHL96P45 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.TOTFONDO.F&FECHA..MUV,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.TOTFONDO.F&FECHA..MUVORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=137,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZML96P45),DISP=SHR
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*  PASO: PHL96P40                                                    *00030000
//*  PROGRAMA: ICEMAN                                                  *00040000
//*  FUNCION: ORDENA EL ARCHIVO DE FORMATEO PARA REALIZAR LA           *00020000
//*           CONCILIACION                                             *00020000
//**********************************************************************
//PHL96P40 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.DISEMISE.F&FECHA.,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.DISEMISE.F&FECHA..ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=120,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZML96P40),DISP=SHR
//*                                                                    *
//**********************************************************************
//*  PASO: PHL96P30                                                    *00030000
//*  PROGRAMA: ZM3DH83C                                                *00040000
//*  FUNCION: REALIZA CONCILIACION MUV Y CONTA                         *00020000
//**********************************************************************
//PHL96P30 EXEC PGM=ZM3DH84C,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBP.DISEMISE.F&FECHA..ORD,DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CBP.TOTFONDO.F&FECHA..MUVORD,DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.CBP.CONCIL.MUV1.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=180,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*                                                                    *
//**********************************************************************
//* PASO    : PHL96P20                                                 *
//* OBJETIVO: PONE ENCABEZADO AL ARCHIVO DE CONCILIACION               *
//**********************************************************************
//PHL96P20 EXEC PGM=ICEMAN,COND=(0,NE)
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.CONCIL.MUV1.F&FECHA.,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.CONCIL.MUV.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=180,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZML96P20),DISP=SHR
//**********************************************************************
//*                          FIN   DE   PROC                          *
//**********************************************************************
