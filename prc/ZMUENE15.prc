//ZMUENE15 PROC
//*--------------------------------------------------------------------*
//* PROCESO      : BCUENE07                                            *
//* PERIODICIDAD : PROCESO DIARIO                                      *
//* OBJETIVO     : CREA LOS ARCHIVOS PARA CONCILIAR TABLAS DE EGRESOS. *
//* FECHA        : OCTUBRE 2018                                        *
//*                                                                    *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1550                                               *
//* PROGRAMA :  ICEGENER                                               *
//* OBJETIVO :  CREA ARCHIVO DE CONCILIACION EN VACIO                  *
//*             PARA TABLA ZMDT884 DE EGRESOS.                         *
//*--------------------------------------------------------------------*
//ZMNE1550 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=77)
//SYSUT2   DD DSN=MXCP.ZM.FIX.REC.EBCM.CONCI84,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=77,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1545                                               *
//* PROGRAMA :  ICEGENER                                               *
//* OBJETIVO :  CREA ARCHIVO DE CONCILIACION EN VACIO                  *
//*             PARA TABLA ZMDT885 DE EGRESOS.                         *
//*--------------------------------------------------------------------*
//ZMNE1545 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=87)
//SYSUT2   DD DSN=MXCP.ZM.FIX.REC.EBCM.CONCI85,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=87,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1540                                               *
//* PROGRAMA :  ICEGENER                                               *
//* OBJETIVO :  CREA ARCHIVO DE CONCILIACION EN VACIO                  *
//*             PARA TABLA ZMDT883 DE EGRESOS.                         *
//*--------------------------------------------------------------------*
//ZMNE1540 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=74)
//SYSUT2   DD DSN=MXCP.ZM.FIX.REC.EBCM.CONCI83,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=74,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1538                                               *
//* PROGRAMA :  ICEGENER                                               *
//* OBJETIVO :  CREA ARCHIVO DE CONCILIACION EN VACIO                  *
//*             PARA TABLA ZMDT886 DE EGRESOS.                         *
//*--------------------------------------------------------------------*
//ZMNE1538 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=79)
//SYSUT2   DD DSN=MXCP.ZM.FIX.REC.EBCM.CONCI86,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=79,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1537                                               *
//* PROGRAMA :  ICEGENER                                               *
//* OBJETIVO :  CREA ARCHIVO DE CONCILIACION EN VACIO                  *
//*             PARA TABLA ZMDT884 DE EGRESOS.                         *
//*--------------------------------------------------------------------*
//ZMNE1537 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=25)
//SYSUT2   DD DSN=MXCP.ZM.FIX.REC.EBCM.ACTUA84,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=25,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1529                                               *
//* PROGRAMA :  ICEGENER                                               *
//* OBJETIVO :  CREA ARCHIVO DE BANCA PATRIMONIAL SIIMPR REPRO         *
//*--------------------------------------------------------------------*
//ZMNE1529 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=427)
//SYSUT2   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.REPRO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1528                                               *
//* PROGRAMA :  ICEGENER                                               *
//* OBJETIVO :  CREA ARCHIVO DE BANCA PATRIMONIAL NOIMPR REPRO         *
//*--------------------------------------------------------------------*
//ZMNE1528 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=427)
//SYSUT2   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.REPRO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1527                                               *
//* PROGRAMA :  ICEGENER                                               *
//* OBJETIVO :  CREA ARCHIVO DE BANCA PRIVADA SIIMPR REPRO             *
//*--------------------------------------------------------------------*
//ZMNE1527 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=427)
//SYSUT2   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.REPRO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1526                                               *
//* PROGRAMA :  ICEGENER                                               *
//* OBJETIVO :  CREA ARCHIVO DE BANCA PRIVADA NOIMPR REPRO             *
//*--------------------------------------------------------------------*
//ZMNE1526 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=427)
//SYSUT2   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.REPRO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1525                                               *
//* PROGRAMA :  ICEGENER                                               *
//* OBJETIVO :  CREA ARCHIVO DE BANCA UHN SIIMPR REPRO                 *
//*--------------------------------------------------------------------*
//ZMNE1525 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=427)
//SYSUT2   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.REPRO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1524                                               *
//* PROGRAMA :  ICEGENER                                               *
//* OBJETIVO :  CREA ARCHIVO DE BANCA UHN NOIMPR REPRO                 *
//*--------------------------------------------------------------------*
//ZMNE1524 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=427)
//SYSUT2   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.REPRO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(DSORG=PS,LRECL=427,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*********************************************************************
//*   PASO    : ZMNE1523                                              *
//*   OBJETIVO: CREA CASCARON ARCHIVO DE PIPES CASA DE BOLSA          *
//*********************************************************************
//ZMNE1523 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=458)
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEDC.REPRO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=458,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMUENE15                          *
//*--------------------------------------------------------------------*
