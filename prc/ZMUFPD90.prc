//ZMUFPD90 PROC
//**********************************************************************
//*  SISTEMA    : SISTEMA INTEGRAL DE VALORES (S.I.V.A.)               *
//*  PROCESO    : ZMUFPD90                                             *
//*  OBJETIVO   : ENVIA FICHERO ILP A PROCESO A PU.                    *
//*  FECHA      : OCTUBRE 2011                                         *
//**********************************************************************
//*                  LOG DE MODIFICACIONES                             *
//**********************************************************************
//* MODIFI       AUTOR     FECHA    DESCRIPCION                        *
//**********************************************************************
//* PASO    : ZMUF9000                                                 *
//* PROGRAMA: CTMCND                                                   *
//* OBJETIVO: ADICIONA PARA QUE SEA TOMADA POR PU                      *
//**********************************************************************
//ZMUF9000 EXEC PGM=CTMCND,PARM='ADD COND BCUFND90_OK WDATE'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
