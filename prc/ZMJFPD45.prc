//ZMJFPD45 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  BANCA PATROMONIAL  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA CARGOS VARIOS BANCA PATRIMONIAL             *
//*                                                                    *
//*   PROCEDIMI.:  ZMJFPD45                                            *
//*                                                                    *
//*   OBJETIVO  :  COMISION, SUPERVISION E IVA COMO CARGOS VARIOS      *
//*                                                                    *
//*   CORRE ANTES DE  :  CBJFCD05                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  CBJFCD18                                      *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   FECHA  :  DICIEMBRE 2005                                         *
//*                                                                    *
//*   AUTOR  :  GETRONICS                                              *
//*                                                                    *
//*   MODIFICACIONES : 22-SEP-06 GRUPO CII, SA DE CV                   *
//*                                                                    *
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PJL45P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD45,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//* PROGRAMA: ZM4EJ796   -  CARGOS VARIOS                              *
//* FUNCION:  GENERACION DE REGISTROS INDICATIVOS Y GENERACION DE REG. *
//*           PARA CONTABILIDAD ( PROVISION ).                         *
//**********************************************************************
//PJL45P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ796A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD45,
//            DISP=SHR
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMJ796R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMJ796R1 DD DSN=MXCP.ZM.FIX.ZMJFPD45.REPORTE1,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=131,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390
//*
//ZMJ796R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL45T02),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4EJ780   -  CARGOS VARIOS                              *
//* FUNCION:  GENERACION DEL IVA PARA CONTABILIDAD ( PROVISION ).      *
//**********************************************************************
//PJL45P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ780A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD45,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL45T01),DISP=SHR
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*        PARA QUE SEA TOMADA POR CTL-D DE CASA DE BOLSA        *
//****************************************************************
//PJL45P00 EXEC  PGM=CTMCND,PARM='ADD COND CBJFCD45_IN_OK WDATE',
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
//*JOSP INI
//****************************************************************
//*                                                              *
//*                                                              *
//****************************************************************
// IF  PJL45P02.RC EQ 02 THEN
//PJL45P0A EXEC PGM=CTMCND,PARM='ADD COND CBJFCD45_CV_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
// ENDIF
//****************************************************************
//*                                                              *
//*                                                              *
//****************************************************************
// IF  PJL45P02.RC EQ 00 THEN
//PJL45P0B EXEC PGM=CTMCND,PARM='ADD COND CBJEPD51_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
// ENDIF
//*
//*JOSP FIN
//**********************************************************************
//*        TERMINA PROCESO ZMJFPD45 SIVA MULTIEMPRESA                  *
//**********************************************************************
