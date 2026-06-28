//ZMPEND04 PROC
//*
//*--------------------------------------------------------------------*
//*   PASO    :    ZMND0401                                            *
//*   PROGRAMA:    IOACND                                              *
//*   OBJETIVO:    ADICIONA CONDICION PARA ENTRADA DE ARCHIVO DE       *
//*                NUEVAS CONSTANCIAS PARA LA PLATAFORMA FISCAL        *
//*--------------------------------------------------------------------*
//ZMND0401 EXEC PGM=IOACND,
//         PARM='ADD COND MXPCRP_CBTEND25_CO &DIA.&MES'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//*
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*                         TERMINA ZMPEND04                           *
//*--------------------------------------------------------------------*
