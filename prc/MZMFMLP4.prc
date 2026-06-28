//MZMFMLP4 PROC
//*--------------------------------------------------------------------*
//* PASO     : NZML2203                                                *
//* PROGRAMA : ICEGENER                                                *
//* FUNCION  : COPIADO DE ARCHIVO DE POS                               *
//*                     DE FAMILY OFFICE DE MASTTRO                    *
//*--------------------------------------------------------------------*
//NZML2202 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.DIA.F,
//            DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.FAM.MASTTRO.POS.DIA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=314,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO     : NZML2202                                                *
//* PROGRAMA : ICEGENER                                                *
//* FUNCION  : COPIADO DE ARCHIVO DE TRX DE UN DOMINIO MXCP.ZM A       *
//*            MBVP.AJ  DE FAMILY OFFICE PARA EXTRANET DE MASTTRO.     *
//*--------------------------------------------------------------------*
//NZML2201 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.DIA.F,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.FAM.MASTTRO.TXS.DIA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(MZMFMLC4),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//*   PASO    :    NZML2201                                            *
//*   PROGRAMA:    IOACND                                              *
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR DATAX    *
//*--------------------------------------------------------------------*
//NZML2200 EXEC PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND CBXCRX_MZMFMLF400 WDATE'
//*
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
