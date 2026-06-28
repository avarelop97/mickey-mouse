//ZMULPZ22 PROC
//**********************************************************************00020000
//*                                                                    *00030000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00040000
//*                                                                    *00050000
//* PROCESO        :  ACTIVAR TRANSF. DE ARCHIVOS DE PRECIOS Y BETAS   *00060000
//*                                                                    *00070000
//* OBJETIVO       :  AGREGAR CONDICION PARA ACTIVAR TRANSFERENCIA     *00080000
//*                                                                    *00090000
//* DESPUES DE     :  VICB81O (CSP)                                    *00100000
//*                  *SIVAXVEC                                         *00110000
//* CORRE ANTES DE :  PNDVAD09 (TRANSF. DE ARCHIVOS DE SERVIDOR A HOST)*00120000
//*                                                                    *00130000
//*             SERV  \\SBBV04\PUBLIC\VECTOR\PRECIOS.CSV               *00140000
//*             SERV  \\SBBV04\PUBLIC\VECTOR\BETAS.CSV                 *00150000
//*                                                                    *00160000
//*             HOST  SIVA.VAL.FIX.VECPRE                              *00170000
//*             HOST  SIVA.VAL.FIX.VECBET                              *00180000
//*                                                                    *00190000
//*                Y  PCAVAD10 (PROCESA LOS ARCHIVOS TRANSFERIDOS)     *00200000
//*                                                                    *00210000
//* REALIZO        :  BBVA BANCOMER                                    *00220000
//*                                                                    *00230000
//* FECHA          :  24  NOVIEMBRE 2008                               *00240000
//*                                                                    *00250000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE PUEDE EJECUTAR MAS DE UNA  *00260000
//*                   VEZ DURANTE EL DIA                               *00270000
//*                                                                    *00280000
//**********************************************************************00290000
//*                                                                    *00310000
//* PASO     : PUL22P01(CTMCND)                                        *00320000
//*                                                                    *00330000
//* OBJETIVO : DAR DE ALTA CONDICION A CONTROL-M PARA QUE SE EJECUTE   *00340000
//*            EL JCL PNDVAD09 (TRANSFERENCIA DE ARCHIVOS) Y AL FINAL  *00350000
//*            EL JCL PCAVAD10 (CARGA ARCHIVOS)                        *00360000
//*                                                                    *00370000
//**********************************************************************00380000
//PUL22P01 EXEC  PGM=CTMCND,PARM='ADD COND    PNDVAD09_IN     WDATE'
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
