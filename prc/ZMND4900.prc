//ZMND4900 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMUDND49                                         *
//*                                                                    *
//* OBJETIVO       :  DAR DE ALTA LA CONDICION CUANDO YA SE HAN COPIA- *
//*                   DO LOS ARCHIVOS DE BANCO/ALTAMIRA A C BOLSA      *
//*                                                                    *
//**********************************************************************
//* PASO    : ZLF49P10                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: RESPALDO DE ARCHIVO                                      *
//**********************************************************************
//ZLF49P10 EXEC PGM=ICEGENER
//PI601765 DD  DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=GFPP.CB.FIX.FAHORRO.CHEQUES,DISP=SHR
//SYSUT2   DD DSN=SIVA.TES.FIX.ECBP.FAHORRO.CHEQUES,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=085,BLKSIZE=0,DSORG=PS,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : ZLF49P05                                                 *
//* PROGRAMA: IOACND                                                   *
//* OBJETIVO: ACTIVACION DE LA BANDERA DE CONTROL-M CBUDND49_OK        *
//**********************************************************************
//ZLF49P05 EXEC  PGM=IOACND,PARM='ADD COND CBUDND49_OK WDATE',
//       COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//SYSIN    DD DUMMY
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
