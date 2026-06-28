//ZMUFPD20 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  SIVA.                                            *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD20                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  PROCESO DE ENLACE CONTABLE.                      *00090002
//* CORRE                                                              *00110002
//* ANTES DE       :  N/A                                              *00120002
//*                                                                    *00130002
//* DESPUES DE     :  N/A                                              *00140002
//*                                                                    *00150002
//* REALIZACION    :  SOFTTEK (DASR)                  21/ABR/2010      *00160002
//*                                                                    *00170002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//**********************************************************************
//* PASO    : PUF20P25                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* OBJETIVO: BORRA LOS ARCHIVOS DE TRABAJO                            *
//**********************************************************************
//PUF20P25 EXEC PGM=IDCAMS
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF20T01),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF20P20                                                 *
//* PROGRAMA: ZM4DL24D                                                 *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4DL24D.                         *
//**********************************************************************
//PUF20P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF20T02),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF20P15                                                 *
//* PROGRAMA: ZM4DL16D                                                 *
//* OBJETIVO: DEPURACION DE ARCHIVOS.                                  *
//**********************************************************************
//PUF20P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF20T03),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF20P10                                                 *
//* PROGRAMA: ZM4DL09D                                                 *
//* OBJETIVO: OBTENCION DE OPERACION.                                  *
//**********************************************************************
//PUF20P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF20T04),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF20P05                                                 *
//* PROGRAMA: ZM4DL41D                                                 *
//* OBJETIVO: OBTENCION DE MOVIMIENTOS CLIENTES BANCO.                 *
//**********************************************************************
//PUF20P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF20T05),DISP=SHR
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : PUF20P04                                                 *00240002
//* UTIL/PGM: ZM4DLD0A                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//PUF20P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZUF20T0B),DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM4DLD0A.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF20T0A),DISP=SHR
//*====================================================================*
//* PASO     : PUF20P03                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA OPERA.                             *
//*====================================================================*
//PUF20P03 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PLQ01P01,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZM4DLD0A.FPBA.ENTRADA1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(5,10),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZM4DLD0A.CTC,DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : PUF20P02                                                 *00240002
//* UTIL/PGM: ZM4BTR06                                                 *00240002
//* OBJETIVO: ACTUALIZA OPERACIONES DE BTRADER BCOM  .                 *00240002
//*--------------------------------------------------------------------*
//PUF20P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//E1DQ0002 DD DSN=MXCP.ZM.FIX.ZM4DLD0A.FPBA.ENTRADA1,DISP=SHR
//*
//S1DQ0002 DD DSN=MXCP.ZM.FIX.ZM4BTR06.FPBA.SALIDA1,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF20T0C),DISP=SHR
