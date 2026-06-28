//ZMUVPE01 PROC                                                         00010002
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V.)                *
//*                                                                    *
//* PROCESO        :  CBUVNE01                                         *
//*                   PROC.EVENTUAL QUE ADICIONA DIAS ANTERIORES.      *
//*                                                                    *
//* OBJETIVO       :  COMPLEMENTAR LA INTERFAZ CONTABLE MV1 PARA 1 O   *
//*                   MAS DIAS Y EL DIA VALOR HOY, Y SUSTITUYE PARA    *
//*                   ESE DIA EL PROCESO CBUFND01.                     *
//*                                                                    *
//* REALIZACION    :  OSCAR SAUL CONTRERAS TELLEZ                      *
//*                                                                    *
//* OBSERVACION    :  ESTE JOB CORRE BAJO LAS MISMAS CONDICIONES DEL   *
//*                   CBUFND01                                         *
//*                                                                    *
//**********************************************************************
//*                                                                    *00030002
//**********************************************************************00020002
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PUF01P10 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TMP.E&EMP..ZMJFPV01,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************00779900
//*                          === ZM4DU800 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA ARCHIVO INTERFAZ PARA CONTABILIDAD               *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PUF01P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SYSTSPRT DD SYSOUT=*                                                  00780900
//ZMU800T1 DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.F&FECHA,                       00006200
//        DISP=(NEW,CATLG,DELETE),                                      00006300
//        DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//        SPACE=(CYL,(100,50),RLSE),                                    00006600
//        UNIT=3390                                                     00006500
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T03),DISP=SHR
//**********************************************************************00779900
//*                          === ZM4DU810 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA ARCHIVO CON LA   VALUACION DE CARTERA            *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PUF01P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMU810T1 DD DSN=MXCP.ZM.TMP.ECO.VALUAC.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//ZMU810T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.CONCILIA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T05),DISP=SHR
//**********************************************************************00779900
//*                          ===   SORT   ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA ARCHIVO CON INTERFAZ CONTABLE                    *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PUF01P07 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECO.VALUAC.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECO.INTMV1.EVENTUAL,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF01T04),DISP=SHR
//*
//*ADE-INI-JULIO-08                                                    *
//**********************************************************************
//*  PROGRAMA: ICEMAN                                                  *
//*  OBJETIVO: SORT AL ARCHIVO DE INTERFAZ CONTABLE MV1 ORDENADO POR   *
//*            CUENTA DE INVERSION PATRIMONIAL                         *
//**********************************************************************
//PUF01P06 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV1,
//             DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.ECO.INTFAZ.ACECMV1,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(700,350),RLSE),UNIT=3390,
//             DCB=(LRECL=400,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUF01T1B),
//             DISP=SHR
//*
//**********************************************************************
//*  PROGRAMA: ZM3DU833                                                *
//*  OBJETIVO: INTEGRA EL CENTRO DE APERTURA EN EL CONTRATO PU AL      *
//*            LAYOUT DEL ARCHIVO DE INTERFAZ MV1                      *
//**********************************************************************
//PUF01P05 EXEC PGM=ZM3DU833,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDUMP  DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//AIC001   DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.ACECMV1,
//            DISP=SHR
//AMCP001  DD DSN=MXCP.ZM.FIX.CON.AMCP,
//            DISP=SHR
//ARCHSAL  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0,DSORG=PS)
//*
//*ADE-FIN-JULIO-08
//**********************************************************************00779900
//*                          === ZM4DU845 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA ARCHIVO INTERFAZ PARA MIS                        *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PUF01P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SYSTSPRT DD SYSOUT=*                                                  00780900
//ZMU845T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.U845VALU,                      00006200
//        DISP=(NEW,CATLG,DELETE),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//        SPACE=(CYL,(100,50),RLSE),
//        UNIT=3390
//ZMU845T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.U845CONC,                      00006200
//        DISP=(NEW,CATLG,DELETE),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//        SPACE=(CYL,(100,50),RLSE),
//        UNIT=3390
//ZMU845T3 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MIS,                           00006200
//        DISP=(NEW,CATLG,DELETE),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//        SPACE=(CYL,(100,50),RLSE),
//        UNIT=3390
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T07),DISP=SHR
//*                                                                    *00780300
//*COD-INI-ABRIL-08                                                    *00780300
//**********************************************************************
//*  PROGRAMA: ICEMAN                                                  *
//*  OBJETIVO: SORT DE ARCHIVO DE INTERFAZ MIS ORDENADO POR CUENTA     *
//*            DE INVERSION PATRIMONIAL                                *
//**********************************************************************
//PUF01P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.FIX.ECO.INTFAZ.MIS,
//             DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.ECO.INTFAZ.COMMIS,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(700,350),RLSE),UNIT=3390,
//             DCB=(LRECL=1050,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUF01T1B),
//             DISP=SHR
//*
//**********************************************************************
//*  PROGRAMA: ZM3DU832                                                *
//*  OBJETIVO: INTEGRA EL CENTRO DE APERTURA EN EL COñNTRATO PU AL     *
//*            LAYOUT  DEL ARCHIVO DE INTERFAZ MIS   ñ                 *
//**********************************************************************
//PUF01P02 EXEC PGM=ZM3DU832,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDUMP  DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//AIM001   DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.COMMIS,
//            DISP=SHR
//AMCP001  DD DSN=MXCP.ZM.FIX.CON.AMCP,
//            DISP=SHR
//ARCHSAL  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MIS,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=1050,BLKSIZE=0,DSORG=PS)
//*
//*COD-FIN-ABRIL-08
//**********************************************************************00780600
//* PROGRAMA: IOACND
//* OBJETIVO: ADICIONA CONDICION PARA QUE SEA TOMADA POR PU Y SE
//*           SE CONSIDERE EN PROCESO HAJD25MV DE CONTABILIDAD.
//*           CON ESTA CONDICION CONTABILIDAD ESPERA A ESTE PROCESO
//*********************************************************************
//PUF01P01 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND CBUFND01_OK_PR &DIA.&MES'
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
//*********************************************************************
