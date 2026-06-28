//**********************************************************************
//* ZM - CASA DE BOLSA, BANCA PATRIMONIAL                              *
//* PROCESO  :ZMPCCAT1                                                 *
//* OBJETIVO :CREAR CATALOGO DE IOPERA Y OPCION CONTABLE PARA KPI'S    *
//*           ESTRATEGICOS MEXICO.                                     *
//**********************************************************************
//ZMPCCAT1 PROC                                                         00010002
//*
//*-------------------------------------------------------------------*
//* PASO    : NMPD020A.                                               *
//* OBJETIVO: TOMA ARCHIVO PREVIO DE INTERFAZ CONTABLE DE MOVIMIENTOS *
//*           'MXCP.ZM.FIX.INTERFAZ.ACECMV1.PREV1.SORT' PARA CREAR EL *
//*           CATALOGO DE IOPERA Y OPCONT PARA KPIS ESTRATEGICOS MEX. *
//*-------------------------------------------------------------------*
//*
//NMPD020A EXEC PGM=IKJEFT01,COND=(4,LT)
//E1DQENT1 DD DSN=MXCP.ZM.FIX.INTERFAZ.ACECMV1.PREV1.SORT,DISP=SHR
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.KPISMEX.CAT.PREV,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(400,200),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=57,BLKSIZE=0),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCTCAT1),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PASO    : NMPD020B.                                               *
//* OBJETIVO: SORT PARA ELIMINAR DUPLICADOS EN ARCHIVO:               *
//*           'MXCP.ZM.FIX.KPISMEX.CAT.PREV'                          *
//*-------------------------------------------------------------------*
//NMPD020B EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.KPISMEX.CAT.PREV,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.KPISMEX.CAT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=57,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(400,200),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCTD003),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : NMPD020C                                                 *
//* OBJETIVO: ADICIONA CONDICION PARA QUE PROCESO PUEDA SER TOMADO POR *
//*           LAR.                                                     *
//*--------------------------------------------------------------------*
//NMPD020C EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND BCJCCAT1_OK WDATE'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN   DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
