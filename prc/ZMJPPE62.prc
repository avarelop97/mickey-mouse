//ZMJPPE62 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA : ZM@ CASA DE BOLSA                                        *
//*                                                                    *
//* PROCESO : ZMJPPE62                                                 *
//*                                                                    *
//* OBJETIVO: ESTE JOB GENERA 5 ARCHIVOS DE DETALLE DEL QUERY DE       *
//*           POSICION DE MERCADOS, EFECTIVO, PRLV , REPORTOS Y        *
//*           PAPEL BANCARIO                                           *
//*           ESTE JOB ES PARTE DEL SIVAX CREADO PARA LA NUEVA OPCION  *
//*           DEL MENU DEL MIDDLE OFFICE F62                           *
//*                                                                    *
//* REALIZO : FABRICA DE SOFTWARE ACCENTURE                            *
//*                                                                    *
//* FECHA   : OCTUBRE 2011                                             *
//*                                                                    *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*   MARCA      AUTOR   FECHA       DESCRIPCION                       *
//* ----------  ------- ------- ---------------------------------------*
//*                                                                    *
//**********************************************************************
//* PASO    : PJL62P06                                                 *
//* PROGRAMA: IKJEFT01 / ZM4EJF65                                      *
//* FUNCION : EJECUTA EL PROGRAMA ZM4EJF65 PARA VALIDAR PARAMETRO      *
//*           DE MESA ASSET O MESA PRECIOS                             *
//**********************************************************************
//PJL62P06 EXEC PGM=IKJEFT01
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL62T03),DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//**********************************************************************
// IF (PJL62P06.RC<4) THEN
//**********************************************************************
//**********************************************************************
//*PASO        : PJL62P05                                              *
//*PROGRAMA    : IKJEFT01 / ZM4EJF62                                   *
//*DESCRIPCION : GENERA ARCHIVOS DE DETALLE DE POSICION DE CONTRATOS   *
//*              DE FIDEICOMISOS  MESA ASSET                           *
//**********************************************************************
//PJL62P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//SALMERC  DD DSN=MXCP.ZM.FIX.ECT.EBCM.MERCDET.FIDE62,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=226,BLKSIZE=0)
//SALEFEC  DD DSN=MXCP.ZM.FIX.ECT.EBCM.EFECDET.FIDE62,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=226,BLKSIZE=0)
//SALPRLV  DD DSN=MXCP.ZM.FIX.ECT.EBCM.PRLVDET.FIDE62,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=212,BLKSIZE=0)
//SALREPO  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPODET.FIDE62,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=177,BLKSIZE=0)
//SALIBAN  DD DSN=MXCP.ZM.FIX.ECT.EBCM.IBANDET.FIDE62,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=212,BLKSIZE=0)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL62T01),DISP=SHR
//*
//****************************************************************      00200002
//*                SE ADICIONA CONDICION                         *      00210002
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00220002
//****************************************************************      00230002
//PJL62P07 EXEC PGM=CTMCND,PARM='ADD COND BCJLNE62_A_OK WDATE',         00240003
//         COND=(4,LT)                                                  00250002
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00260002
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00270002
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00280002
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00290002
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00300002
//PRTDBG   DD SYSOUT=*                                                  00310002
//SYSPRINT DD DUMMY                                                     00320002
//SYSUDUMP DD DUMMY                                                     00330002
//DAPRINT  DD SYSOUT=*                                                  00340002
//DACNDIN  DD DDNAME=SYSIN                                              00350002
//*                                                                     00360002
//*--------------------------------------------------------------------*
// ENDIF
//*--------------------------------------------------------------------*
//**********************************************************************
// IF (PJL62P06.RC=4) THEN
//**********************************************************************
//**********************************************************************
//*PASO        : PJL62P04                                              *
//*PROGRAMA    : IKJEFT01 / ZM4EJF62                                   *
//*DESCRIPCION : GENERA ARCHIVOS DE DETALLE DE POSICION DE CONTRATOS   *
//*              DE FIDEICOMISOS  MESA PRECIOS                         *
//**********************************************************************
//PJL62P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//SALMERC  DD DSN=MXCP.ZM.FIX.ECT.EBCM.MERCFI2.FIDE62P,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=226,BLKSIZE=0)
//SALEFEC  DD DSN=MXCP.ZM.FIX.ECT.EBCM.EFECFI2.FIDE62P,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=226,BLKSIZE=0)
//SALPRLV  DD DSN=MXCP.ZM.FIX.ECT.EBCM.PRLVFI2.FIDE62P,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=212,BLKSIZE=0)
//SALREPO  DD DSN=MXCP.ZM.FIX.ECT.EBCM.REPOFI2.FIDE62P,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=177,BLKSIZE=0)
//SALIBAN  DD DSN=MXCP.ZM.FIX.ECT.EBCM.IBANFI2.FIDE62P,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=212,BLKSIZE=0)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL62T01),DISP=SHR
//*
//****************************************************************      00200002
//*                SE ADICIONA CONDICION                         *      00210002
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00220002
//****************************************************************      00230002
//PJL62P08 EXEC PGM=CTMCND,PARM='ADD COND BCJLNE62_P_OK WDATE',         00240003
//         COND=(4,LT)                                                  00250002
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00260002
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00270002
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00280002
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00290002
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00300002
//PRTDBG   DD SYSOUT=*                                                  00310002
//SYSPRINT DD DUMMY                                                     00320002
//SYSUDUMP DD DUMMY                                                     00330002
//DAPRINT  DD SYSOUT=*                                                  00340002
//DACNDIN  DD DDNAME=SYSIN                                              00350002
//*                                                                     00360002
//*--------------------------------------------------------------------*
// ENDIF
//*--------------------------------------------------------------------*
//**********************************************************************
//*        TERMINA ZMJPPE62
//**********************************************************************
