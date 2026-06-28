//ZMUFPD47 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD47                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  OBTIENE ARCHIVO SECUENCIAL PARA UN REPORTE EN    *00090002
//*                   EN HOJA DE EXCEL.                                *00100002
//*                   ACTUALIZA LA TABLA ZMDT810 DE MENSAJES           *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NINGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  SOFTWARE FACTORY STEFANINI (PGR) 08/ENE/2010     *00160002
//*                                                                    *00170002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//**********************************************************************00240002
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-1.0.0-01  CAPGEMI 25MAR12  CAMBIO DE LONGITUD DEL ARCHIVO SALIDA*
//*                               PASO ZMUF47P1                        *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- -------------------------------------*
//* FS-1.1.0-07 CAPGEMINI 23JUL14 SE CAMBIA LONGITUD DE ARCHIVOS.      *
//* FS-1.2.0-02 CAPGEMINI 30JUN17 SE MODIFICA LA LONGITUD DE ARCHIVO.  *
//*                                                                    *
//* @JSM-01     XMY4584   14JUN18 SE MODIFICA LA LONGITUD DE ARCHIVOS  *
//*                               POR 3 NUEVOS MERCADOS: PCA, GEF Y CRE*
//*                                                                    *
//*--------------------------------------------------------------------*
//**********************************************************************
//* PROGRAMA: ZM4DUA10
//* OBJETIVO: OBIIENE ARCHIVO SECUENCIAL PARA UN REPORTE EN HOJA DE
//*           EXCEL.
//**********************************************************************
//ZMUF47P1 EXEC PGM=IKJEFT1A                                            00780700
//S1ZMMENS DD DSN=MXCP.ZM.FIX.ZM4DUA10.REPORTE,                         00006200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00006300
//            SPACE=(CYL,(200,100),RLSE),                               00006600
//*MOD-JCPD   DCB=(RECFM=FB,LRECL=249,BLKSIZE=0,DSORG=PS,BUFNO=30)
//*           DCB=(RECFM=FB,LRECL=251,BLKSIZE=0,DSORG=PS,BUFNO=30)
//*FS-1.1.0-07-INI
//*           DCB=(RECFM=FB,LRECL=260,BLKSIZE=0,DSORG=PS,BUFNO=30)
//*FS-1.2.0-02-INI
//*           DCB=(RECFM=FB,LRECL=528,BLKSIZE=0,DSORG=PS,BUFNO=30)
//*@JSM-01-I
//*           DCB=(RECFM=FB,LRECL=561,BLKSIZE=0,DSORG=PS,BUFNO=30)
//            DCB=(RECFM=FB,LRECL=660,BLKSIZE=0,DSORG=PS,BUFNO=30)
//*@JSM-01-F
//*FS-1.2.0-02-FIN
//*FS-1.1.0-07-FIN
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF04T23),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF04T23),DISP=SHR
//*                                                                    *00780300
//**********************************************************************
//* PROGRAMA: ZM4DUA11
//* OBJETIVO: ACTUALIZA LA TABLA ZMDT810 DE MENSAJES
//**********************************************************************
//ZMUF47P2 EXEC PGM=IKJEFT1A,COND=(4,LT)
//E1ZMENTX DD DSN=MXCP.ZM.FIX.MENSAJE.SUITABI,
//            DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF04T22),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF04T22),DISP=SHR
//*                                                                    *
//**********************************************************************00780600
