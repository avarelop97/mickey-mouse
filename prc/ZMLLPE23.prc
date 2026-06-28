//ZMLLPE23  PROC                                                        00001003
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<< MERCADO DE DINERO >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMLLPE23                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERA MATRIZ DE LA DEMANDA GENERICA (OPCION: 935-G)*
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************00003000
//*                        RECIBE PARAMETROS                            00010001
//**********************************************************************00003000
//PLL23P09 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE23,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*                                                                     00080001
//**********************************************************************00020001
//*                  -- ZM4DLE11 --                                     00030001
//* FUNCION:  ACTUALIZA EL INICIO DEL PROCESO DE MATRIZ DE LA           00030001
//*           DEMANDA (ACT EN "I" EL EVENTO PD2).                       00030001
//**********************************************************************00070001
//PLL23P08 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00100001
//*                                                                     00080001
//ZMLE11A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE23,DISP=SHR
//*                                                                     00080001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00140001
//SYSPRINT DD  SYSOUT=*                                                 00150001
//SYSOUT   DD  SYSOUT=*                                                 00160001
//SYSDBOUT DD  SYSOUT=*                                                 00170001
//SYSABOUT DD  DUMMY                                                    00180001
//SYSUDUMP DD  DUMMY                                                    00190001
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL23T01),DISP=SHR                  00200001
//*                                                                     00210001
//**********************************************************************00220001
//*                  -- ZM4DLD65 --                                     00030001
//* OBJETIVO : ACTUALIZA LAS EMISORAS DE LA TABLA DEMANDA               00240001
//*            A LA TABLA MTZDEM                                        00250001
//**********************************************************************00260001
//PLL23P07 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00290001
//*                                                                     00270001
//ZMLD65P1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE23,DISP=SHR
//*                                                                     00270001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00330001
//SYSPRINT DD  SYSOUT=*                                                 00340001
//SYSOUT   DD  SYSOUT=*                                                 00350001
//SYSDBOUT DD  SYSOUT=*                                                 00360001
//SYSABOUT DD  DUMMY                                                    00370001
//SYSUDUMP DD  DUMMY                                                    00380001
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL23T02),DISP=SHR                  00390001
//*                                                                     00400001
//**********************************************************************00401004
//*                       --- ZM4DLE15 ---                              00402004
//* OBJETIVO : GENERA ARCHIVO DE DEMANDAS GLOBALES(CASA DE BOLSA)       00403004
//* PASO REINICIABLE                                                    00404004
//**********************************************************************00405004
//PLL23P06 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00408004
//PI601765 DD  DUMMY
//ZMGE15P1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE23,DISP=SHR
//*                                                                     00406004
//ZMGE15A1 DD  DSN=SIVA.MDD.WKF.E&EMP..S&SUC..DEMANDA.CB,               00409304
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(DSORG=PS,LRECL=100,RECFM=FB,BLKSIZE=0),
//             UNIT=3390,
//             SPACE=(CYL,(10,5),RLSE)
//*                                                                     00406004
//ZMGE15R1 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00409404
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00409504
//SYSPRINT DD  SYSOUT=*                                                 00409604
//SYSOUT   DD  SYSOUT=*                                                 00409704
//SYSDBOUT DD  SYSOUT=*                                                 00409804
//SYSABOUT DD  DUMMY                                                    00409904
//SYSUDUMP DD  DUMMY                                                    00410004
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL23T03),DISP=SHR                  00410104
//*                                                                     00410204
//**********************************************************************00410304
//*                       --- ZM4DLM11 ---                              00410404
//* OBJETIVO : GENERA REPORTE DE DEMANDAS DEL DIA PARA CASA             00410504
//* PASO REINICIABLE                                                    00410604
//**********************************************************************00410704
//PLL23P05 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00411004
//PI601765 DD DUMMY
//ZMLM11P1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE23,DISP=SHR
//*                                                                     00410804
//ZMLM11R1 DD DSN=SIVA.MDD.WKF.E&EMP..S&SUC..DEMANDAS.DIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//*                                                                     00410804
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00411604
//SYSPRINT DD  SYSOUT=*                                                 00411704
//SYSOUT   DD  SYSOUT=*                                                 00411804
//SYSDBOUT DD  SYSOUT=*                                                 00411904
//SYSABOUT DD  DUMMY                                                    00412004
//SYSUDUMP DD  DUMMY                                                    00412104
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL23T04),DISP=SHR                  00412204
//*                                                                     00412304
//**********************************************************************00440005
//*                        * IEBGENER *                                 00450005
//*                                                                     00450005
//* OBJETIVO : MANDAR A SPOOL REPORTE   DE DEMANDAS                     00460005
//*                                                                     00480005
//* PASO REINICIBLE POR RESTART.                                        00480005
//**********************************************************************00490005
//PLL23P04 EXEC PGM=IEBGENER,REGION=0M,COND=(4,LT)                      00510005
//SYSUT1   DD  DSN=SIVA.MDD.WKF.E&EMP..S&SUC..DEMANDAS.DIA,DISP=SHR     00171001
//*                                                                     00500005
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD  SYSOUT=*                                                 00570005
//SYSOUT   DD  SYSOUT=*                                                 00580005
//SYSDBOUT DD  SYSOUT=*                                                 00590005
//SYSIN    DD  DUMMY                                                    00600005
//*                                                                     00630005
//**********************************************************************00413001
//*                  -- ZM4DLE11 --                                     00030001
//* FUNCION:  ACTUALIZA LA FINALIZACION DEL PROCESO DE MATRIZ DE LA     00030001
//*           DEMANDA (ACT EN "F" EL EVENTO PD2).                       00030001
//**********************************************************************00460001
//PLL23P03 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00480001
//*                                                                     00080001
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE23,DISP=SHR
//*                                                                     00080001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00530001
//SYSPRINT DD  SYSOUT=*                                                 00540001
//SYSOUT   DD  SYSOUT=*                                                 00550001
//SYSDBOUT DD  SYSOUT=*                                                 00560001
//SYSABOUT DD  DUMMY                                                    00570001
//SYSUDUMP DD  DUMMY                                                    00580001
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL23T05),DISP=SHR                  00590001
//*                                                                     00600002
//*---------------------------------------------------------------------
//*                  --- ZM4DLH92 ---
//* FUNCION:  GENERAR ARCHIVO DE DEMANDAS.
//*---------------------------------------------------------------------
//PLL23P02 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M                      00070000
//PI601765 DD DUMMY
//ZMLH92A1 DD DSN=SIVA.MDD.WKF.E&EMP..S&SUC..DEMANDAS,                  00120005
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//ZMLH92P1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE23,DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00090000
//SYSPRINT DD SYSOUT=*                                                  00100000
//SYSOUT   DD SYSOUT=*                                                  00110000
//SYSDBOUT DD SYSOUT=*                                                  00160000
//SYSABOUT DD DUMMY                                                     00170000
//SYSUDUMP DD DUMMY                                                     00180000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL23T06),DISP=SHR                   00190006
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PLL23P01 EXEC  PGM=CTMCND,PARM='ADD COND VRBD650X_IN_SEP_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
