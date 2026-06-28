//ZXLLPM01 PROC
//**********************************************************************
//* PROCESO        : ZXLLPM01                                          *
//* DESCRIPCION    : CARGA DE PROMOTORES                               *
//* REALIZO        : JARQ                                              *
//* FECHA          : AGOSOTO 2012                                      *
//**********************************************************************
//* PASO     : PLT01P20                                                *
//* OBJETIVO :                                                         *
//* PROGRAMA : ZM4OLL38                                                *
//**********************************************************************
//PLT01P20 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.SIVA.MUV.ZXLLPM01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//**********************************************************************
//* PASO     : PLT01P10                                                *
//* OBJETIVO :                                                         *
//* PROGRAMA : ZM4OLL38                                                *
//**********************************************************************
//PLT01P10 EXEC PGM=CTMCND,
//         PARM='ADD COND MZMP9D01_IN_SIVA_OK WDATE',COND=(4,LT)
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
