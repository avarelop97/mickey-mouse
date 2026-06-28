//ZMHCPE34 PROC
//*
//**********************************************************************
//* PROCESO : SIVAXTSH                                                 *
//* OBJETIVO: DAR DE ALTA LA CONDICION PARA QUE SE EJECUTE POR CONTROL-M
//*           LA TRANSFERENCIA DEL ARCHIVO DE SIBOLSA(HECHOS)
//* AUTOR   : INTERNACIONAL DE SISTEMAS                                *
//* FECHA   : AGOSTO, 2013                                             *
//**********************************************************************
//*
//**********************************************************************
//* PASO       : PHC34P02                                              *
//* PROGRAMA   : ZM3DG001                                             *
//* DESCRIPCION: GENERAR ARCHIVO DE PARAMETROS
//**********************************************************************
//PHC34P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..ZMHCPE34,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* PASO       : PHC34P01                                              *
//* PROGRAMA   : CTMCND                                                *
//* DESCRIPCION: ACTIVA LA CONDICION EN CONTROL-M SIVAXCN1             *
//**********************************************************************
//PHC34P01 EXEC  PGM=CTMCND,PARM='ADD COND     SIVAXTSH_OK    WDATE',
//         COND=(4,LT)
//*
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
//*
