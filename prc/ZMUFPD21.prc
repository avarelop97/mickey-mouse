//ZMUFPD21 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  SIVA.                                            *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD21                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  GENERACION DE MOVIMIENTOS CONTABLES  SEGUNDA     *00090002
//*                   PARTE ENLACE CONTABLE.                           *00090002
//* CORRE                                                              *00110002
//* ANTES DE       :  N/A                                              *00120002
//*                                                                    *00130002
//* DESPUES DE     :  N/A                                              *00140002
//*                                                                    *00150002
//* REALIZACION    :  SOFTTEK (DASR)                  22/ABR/2010      *00160002
//*                                                                    *00170002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//**********************************************************************
//* PASO    : PUF21P50                                                 *
//* PROGRAMA: ZM4DL11D                                                 *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4DL11D                          *
//**********************************************************************
//PUF21P50 EXEC PGM=IKJEFT01
//SZMDL11D DD DSN=SIVA.ENC.FIX.GLMV303.VCVMNT.G30029.CTASAUX,           00781000
//            DISP=MOD,
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF21T01),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF21P45                                                 *
//* PROGRAMA: ZM4DL14D                                                 *
//* OBJETIVO: CONSOLIDACION DE ASIENTOS CONTABLES.                     *
//**********************************************************************
//PUF21P45 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SZMDL14H DD DSN=SIVA.ENC.FIX.GLMV303.ENCON.HEADER,                    00781000
//            DISP=MOD,
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//SZMDL14D DD DSN=SIVA.IFA.FIX.GLMV303.ENCON.DETAIL,                    00781000
//            DISP=MOD,
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF21T02),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF21P40                                                 *
//* PROGRAMA: ZM4DL15D                                                 *
//* OBJETIVO: REPORTE POLIZA AUTOMATICA.                               *
//**********************************************************************
//PUF21P40 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SZMDL15D DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF21T03),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF21P35                                                 *
//* PROGRAMA: ZM4DL29D                                                 *
//* OBJETIVO: OBTENCION DE MOVIMIENTOS CLIENTES BANCO.                 *
//**********************************************************************
//PUF21P35 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZM4DL29D DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF21T04),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF21P30                                                 *
//* PROGRAMA: ZM4DL17D                                                 *
//* OBJETIVO: REPORTE DE CONCILIACION TESORERIA POLIZA.                *
//**********************************************************************
//PUF21P30 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SZMDL17D DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF21T05),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF21P25                                                 *
//* PROGRAMA: ZM4DL17D                                                 *
//* OBJETIVO: REPORTE DE CONTROL DE MOVIMIENTOS.                       *
//**********************************************************************
//PUF21P25 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SZMDL27D DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF21T06),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF21P20                                                 *
//* PROGRAMA: ZM4DL20D                                                 *
//* OBJETIVO: ACTUALIZACION DE NUMERO DE POLIZA Y FECHA.               *
//**********************************************************************
//PUF21P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF21T07),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF21P15                                                 *
//* PROGRAMA: ZM4DL48D                                                 *
//* OBJETIVO: GENERACION DE ARCHIVO CON AUXILIARES.                    *
//**********************************************************************
//PUF21P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZM4DL48D DD DSN=SIVA.ENC.FIX.GLMV303.VCVMNT.G30029.CTASAUX,
//            DISP=MOD,
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF21T08),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF21P10                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* OBJETIVO: BORRA ARCHIVO DEL PASO PUF21P10.                         *
//**********************************************************************
//PUF21P10 EXEC PGM=IDCAMS,COND=(4,LT)                                  00780700
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF21T09),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF21P05                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: GENERA ARCHIVO.                                          *
//**********************************************************************
//PUF21P05 EXEC PGM=ICEGENER,REGION=4096K,COND=(4,LT)
//*
//SYSUT1   DD DUMMY,DCB=(RECFM=FB,BLKSIZE=23400,LRECL=156)              00781000
//SYSUT2   DD DSN=SIVA.ENC.FIX.GLMV303.VCVMNT.G30029.CTASAUX,           00781100
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(TRK,(5,1),RLSE),                         00781200
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=156)                        00781300
//SYSIN    DD DUMMY                                                     00781400
//SYSOUT   DD SYSOUT=*                                                  00780900
//SYSPRINT DD SYSOUT=*
//*
