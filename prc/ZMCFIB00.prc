//ZMCFIB00  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : SIVA - MULTIEMPRESA                                  *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMCFIB00                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* VALIDA LA FECHA DEL ARCHIVO DE CONTROL PARA DETERMINAR SI DA INICIO*
//* CON LA CADENA DE CONSTANCIAS Y KARDEX PARA LA PLATAFORMA FISCAL    *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*                                                                    *
//*====================================================================*
//* PASO     : ZHIB0010                                                *
//* PROGRAMA : IKJEFT01/ZM4CFI06
//* OBJETIVO : VALIDA FECHA DE ARCHIVO DE CONTROL                      *
//*====================================================================*
//ZHIB0010 EXEC PGM=IKJEFT01
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBCM.CONTROL,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHIB0002),DISP=SHR                   01230041
//*
// IF (ZHIB0010.RC = 0) THEN
//*====================================================================*
//* PASO     : ZHIB0008                                                *
//* OBJETIVO : BORRA ARCHIVOS DE CONTANCIAS                            *
//*====================================================================*
//ZHIB0008 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZHIB0008)
//*
//*====================================================================*
//* PASO     : ZHIB0006                                                *
//* OBJETIVO : GENERA CONDICION PARA DAR INICIO CON LA CADENA DE       *
//*            CONSTANCIAS Y KARDEX                                    *
//*====================================================================*
//ZHIB0006 EXEC PGM=CTMCND,PARM='ADD COND BCCFDI00_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
// ENDIF
//*
//*====================================================================*
//* PASO     : ZHIB0005                                                *
//* PROGRAMA : IKJEFT01/ZM4CFI06
//* OBJETIVO : VALIDA FECHA DE ARCHIVO DE CONTROL                      *
//*====================================================================*
//ZHIB0005 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBTR.CONTROL,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHIB0005),DISP=SHR                   01230041
//*
// IF (ZHIB0005.RC = 0) THEN
//*====================================================================*
//* PASO     : ZHIB0004                                                *
//* OBJETIVO : BORRA ARCHIVOS DE CONTANCIAS                            *
//*====================================================================*
//ZHIB0004 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZHIB0004)
//*
//*====================================================================*
//* PASO     : ZHIB0006                                                *
//* OBJETIVO : GENERA CONDICION PARA DAR INICIO CON LA CADENA DE       *
//*            CONSTANCIAS Y KARDEX                                    *
//*====================================================================*
//ZHIB0002 EXEC PGM=CTMCND,PARM='ADD COND BCCWTR00_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
// ENDIF
//*
//*MAN2018-I
//*--------------------------------------------------------------------*
//*   PASO    : ZHIB0001                                               *
//*   OBJETIVO: SI EL CODIGO DE RETORNO DEL PASO ZHIB0010 TERMINA EN   *
//*             03, SE GENERA EL SIGUIENTE ARCHIVO EN VACIO.           *
//*--------------------------------------------------------------------*
// IF (ZHIB0010.RC = 3) THEN
//ZHIB0001 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=NULLFILE,
//            DCB=(RECFM=FB,LRECL=1000)
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.CFDI.PIPMEDC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(LRECL=1000,RECFM=FB,BLKSIZE=0)
// ENDIF
//*MAN2017-F
