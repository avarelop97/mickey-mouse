//**********************************************************************
//*   PROGRAMA: ICEMAN                                                 *
//*   OBJETIVO: COPIAR ARCHIVO DE CLIENTES PARA DATIO                  *
//**********************************************************************
//ZMDTI020 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.GDGD.SIE.EBCM.CLIENTES(0),DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPRDTI0.CLIENTES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDTI001),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMDTI020.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO DE DATIO        *
//*--------------------------------------------------------------------*
//ZMDTI020 EXEC PGM=IOACND,PARM='ADD COND MX2CRX_BCJCDTI000 &FEC',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
