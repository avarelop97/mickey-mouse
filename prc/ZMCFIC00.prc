//ZMCFIC00  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : SIVA - MULTIEMPRESA                                  *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : ZMCFIC00                                             *
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
//* PASO     : ZHIC0010                                                *
//* PROGRAMA : IKJEFT01/ZM4CFI06
//* OBJETIVO : VALIDA FECHA DE ARCHIVO DE CONTROL                      *
//*====================================================================*
//ZHIC0010 EXEC PGM=IKJEFT01
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.CONTROL,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHIC0002),DISP=SHR                   01230041
//*
// IF (ZHIC0010.RC = 0) THEN
//*====================================================================*
//* PASO     : ZHIC0008                                                *
//* OBJETIVO : BORRA ARCHIVOS DE CONTANCIAS                            *
//*====================================================================*
//ZHIC0008 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZHIC0008)
//*
//*====================================================================*
//* PASO     : ZHIC0006                                                *
//* OBJETIVO : GENERA CONDICION PARA DAR INICIO CON LA CADENA DE       *
//*            CONSTANCIAS Y KARDEX                                    *
//*====================================================================*
//ZHIC0006 EXEC PGM=CTMCND,PARM='ADD COND CBCFDI00_IN_OK WDATE',
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
