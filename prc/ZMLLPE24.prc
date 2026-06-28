//ZMLLPE24  PROC                                                        00001003
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<< MERCADO DE DINERO >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMLLPE24                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERA MATRIZ DE LA DEMANA ESPECIFICA (OPCION 935-E)*
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//********************************************************************* 00010100
//*    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA EN ARCHIVO   00010200
//********************************************************************* 00010300
//PLL24P09 EXEC PGM=ZM3DG001,REGION=0M,                                 00011000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00012000
//PI601765 DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE24,               00019200
//            DISP=(NEW,CATLG,DELETE),                                  00019300
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00019400
//            UNIT=3390,                                                00019500
//            SPACE=(CYL,(2,1),RLSE)                                    00019600
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00014000
//SYSPRINT DD SYSOUT=*                                                  00015000
//SYSOUT   DD SYSOUT=*                                                  00016000
//SYSDBOUT DD SYSOUT=*                                                  00017000
//SYSABOUT DD DUMMY                                                     00018000
//SYSUDUMP DD DUMMY                                                     00019000
//*                                                                     00019100
//**********************************************************************00070001
//*                  -- ZM4DLE11 --                                     00040001
//* FUNCION:  ACTUALIZA EL INICIO DEL PROCESO DE MATRIZ DE LA           00050001
//*           DEMANDA (ACT EN "I" EL EVENTO PD2).                       00050001
//**********************************************************************00070001
//PLL24P08 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00100001
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE24,DISP=SHR       00019200
//*
//ZMLE11P1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE24,DISP=SHR       00019200
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00140001
//SYSPRINT DD  SYSOUT=*                                                 00150001
//SYSOUT   DD  SYSOUT=*                                                 00160001
//SYSDBOUT DD  SYSOUT=*                                                 00170001
//SYSABOUT DD  DUMMY                                                    00180001
//SYSUDUMP DD  DUMMY                                                    00190001
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL24T08),DISP=SHR                  00200001
//*                                                                     00210001
//**********************************************************************00220001
//*                 -- ZM4DLD65 --                                      00230001
//*OBJETIVO : ACTUALIZA LAS EMISORAS DE LA TABLA DEMANDA                00240001
//*           A LA TABLA MTZDEM                                         00250001
//**********************************************************************00260001
//PLL24P07 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00290001
//*
//ZMLD65P1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE24,DISP=SHR       00019200
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00330001
//SYSPRINT DD  SYSOUT=*                                                 00340001
//SYSOUT   DD  SYSOUT=*                                                 00350001
//SYSDBOUT DD  SYSOUT=*                                                 00360001
//SYSABOUT DD  DUMMY                                                    00370001
//SYSUDUMP DD  DUMMY                                                    00380001
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL24T07),DISP=SHR                  00390001
//*                                                                     00400001
//**********************************************************************00401004
//*                       --- ZM4DLN87 ---                              00402004
//* OBJETIVO : GENERA ARCHIVO DE DEMANDA ESPECIFICA (CASA DE BOLSA)     00403004
//* PASO REINICIABLE                                                    00404004
//**********************************************************************00405004
//PLL24P06 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00408004
//PI601765 DD DUMMY
//ZMLN87A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..DEMANDA.ESPCB,          00409304
//            DISP=(NEW,CATLG,DELETE),                                  00409304
//            DCB=(DSORG=PS,LRECL=100,RECFM=FB,BLKSIZE=0),              00409304
//            UNIT=3390,                                                00409304
//            SPACE=(CYL,(2,1),RLSE)                                    00409304
//ZMLN87P1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE24,DISP=SHR       00019200
//*
//ZMLN87R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00409404
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00409504
//SYSPRINT DD SYSOUT=*                                                  00409604
//SYSOUT   DD SYSOUT=*                                                  00409704
//SYSDBOUT DD SYSOUT=*                                                  00409804
//SYSABOUT DD DUMMY                                                     00409904
//SYSUDUMP DD DUMMY                                                     00410004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL24T06),DISP=SHR                   00410104
//*                                                                     00410204
//**********************************************************************00410304
//*                       --- ZM4DLM13 ---                              00410404
//* OBJETIVO : GENERA REPORTE DE DEMANDAS ESPECIFICAS PARA CASA         00410504
//* PASO REINICIABLE                                                    00410604
//**********************************************************************00410704
//PLL24P05 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00410904
//PI601765 DD DUMMY
//ZMLM11P1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE24,DISP=SHR       00019200
//*                                                                     00019200
//ZMLM11R1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..DEMANDAS.DIAESP,        00409304
//            DISP=(NEW,CATLG,DELETE),                                  00409304
//            DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0),              00409304
//            UNIT=3390,                                                00409304
//            SPACE=(CYL,(2,1),RLSE)                                    00409304
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00411604
//SYSPRINT DD SYSOUT=*                                                  00411704
//SYSOUT   DD SYSOUT=*                                                  00411804
//SYSDBOUT DD SYSOUT=*                                                  00411904
//SYSABOUT DD DUMMY                                                     00412004
//SYSUDUMP DD DUMMY                                                     00412104
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL24T05),DISP=SHR                   00412204
//*                                                                     00412304
//**********************************************************************
//*                        * IEBGENER *
//*
//* OBJETIVO : MANDAR A SPOOL REPORTE   DE DEMANDAS
//*
//*
//* PASO REINICIBLE POR RESTART.
//**********************************************************************
//PLL24P04 EXEC PGM=IEBGENER,REGION=0M,COND=(4,LT)
//*
//SYSUT1   DD  DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..DEMANDAS.DIAESP,
//             DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//**********************************************************************00413001
//*                  -- ZM4DLE11 --                                     00040001
//* FUNCION:  ACTUALIZA LA FINALIZACION DEL PROCESO DE MATRIZ DE LA     00050001
//*           DEMANDA (ACT EN "F" EL EVENTO PD2).                       00050001
//**********************************************************************00460001
//PLL24P03 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00480001
//*                                                                     00019200
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE24,DISP=SHR       00019200
//*                                                                     00019200
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00530001
//SYSPRINT DD  SYSOUT=*                                                 00540001
//SYSOUT   DD  SYSOUT=*                                                 00550001
//SYSDBOUT DD  SYSOUT=*                                                 00560001
//SYSABOUT DD  DUMMY                                                    00570001
//SYSUDUMP DD  DUMMY                                                    00580001
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL24T03),DISP=SHR                  00590001
//*                                                                     00600002
//*---------------------------------------------------------------------
//*                  --- ZM4DLN04 ---
//* FUNCION:  GENERAR ARCHIVO DE DEMANDAS ESPECIFICAS.
//*---------------------------------------------------------------------
//PLL24P02 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M                      00070000
//PI601765 DD DUMMY
//ZMLN04P1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE24,DISP=SHR       00019200
//*
//ZMLN04A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..DEMANDAS.ESPC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00090000
//SYSPRINT DD SYSOUT=*                                                  00100000
//SYSOUT   DD SYSOUT=*                                                  00110000
//SYSDBOUT DD SYSOUT=*                                                  00160000
//SYSABOUT DD DUMMY                                                     00170000
//SYSUDUMP DD DUMMY                                                     00180000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL24T02),DISP=SHR                   00190006
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PLL24P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXMTE_IN_SEP_OK WDATE',
//         COND=(4,LT)
//*
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
