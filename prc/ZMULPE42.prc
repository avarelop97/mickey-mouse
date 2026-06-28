//ZMULPE42 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMCDPI42   PROCEDIMIENTO                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  DAR DE ALTA LA CONDICION PARA ARRANCAR PROCESO   *
//*                   DE ENLACE CONTABLE POR CICS                      *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  NINGUNO                                          *
//*                                                                    *
//* REALIZO        :  CDR MEXICO (CDRUHH)                             *
//* FECHA          :  ABRIL DE 2008                                    *
//**********************************************************************
//ZMPI4205 EXEC  PGM=CTMCND,
//         PARM='ADD COND PCFECD01_IN_&EMP_SIVA_OK WDATE'
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENVV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
