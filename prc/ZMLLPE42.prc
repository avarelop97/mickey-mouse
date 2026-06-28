//ZMLLPE42 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  SIVAXPED-ZMLLPE41                                   *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  REPORTE DE LA POSICION DE EMISORAS DE MDD           *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*   ZM4DLC41
//*   GENERA ARCHIVOS DE POSICION POR EMISORA
//*   AREA: MERCADO DE DINERO
//*********************************************************************
//PLL42P20 EXEC PGM=IKJEFT01
//ZMLM41A1 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.CARTERA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0)
//*
//ZMLM41A2 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.MDDCST,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0)
//*
//ZMLM41P1 DD DSN=MXCP.ZM.TMP.MDD.ECBP.SZPR.ZMLLPE41,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL42T20),DISP=SHR
//*********************************************************************
//*   SORT
//*   ORDENAR LOS REGISTROS POR EMPRESA, SUCURSAL, E-S-C E IDIACAR
//*   DE CARTERA
//*   NO ACTUALIZA TABLAS.
//*********************************************************************
//PLL42P15 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.CARTERA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.CARTERA.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLL42T15),DISP=SHR
//*********************************************************************
//*   SORT
//*   ORDENAR LOS REGISTROS POR EMPRESA Y SUCURSAL DE MDDCST
//*   NO ACTUALIZA TABLAS.
//*********************************************************************
//PLL42P10 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.MDDCST,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.MDDCST.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLL42T10),DISP=SHR
//*********************************************************************
//*   ZM4DLC42
//*   GENERA REPORTES DE POSICION Y CAPAS POR EMISORA
//*   AREA: MERCADO DE DINERO
//*********************************************************************
//PLL42P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLM42A1 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.CARTERA.SORT,
//            DISP=SHR
//ZMLM42R1 DD SYSOUT=*
//ZMLM42A2 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.MDDCST.SORT,
//            DISP=SHR
//ZMLM42R2 DD SYSOUT=*
//ZMLM42A3 DD DSN=MXCP.ZM.TMP.MDD.ECBP.SZPR.ZMLLPE41,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL42T05),DISP=SHR
//*********************************************************************
//*   ZM4DLC42
//*   GENERA REPORTES DE POSICION Y CAPAS POR EMISORA
//*   AREA: MERCADO DE DINERO
//*********************************************************************
//PLL42P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLM42A1 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.CARTERA.SORT,
//            DISP=SHR
//ZMLM42R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLM42A2 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.MDDCST.SORT,
//            DISP=SHR
//ZMLM42R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLM42A3 DD DSN=MXCP.ZM.TMP.MDD.ECBP.SZPR.ZMLLPE41,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL42T05),DISP=SHR
//*****************************************************************
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *
//*****************************************************************
//PLL42P01 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND SIVAXPED_IN_SEP_OK WDATE'
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
//*
