//ZXLLPD23 PROC
//**********************************************************************
//* PROCESO        : ZXLLPD23                                          *
//* DESCRIPCION    : PREPARACION DE REGISTROS PARA AMORTIZACION        *
//*                  ANTICPADA                                         *
//* REALIZO        : CAPGEMINI                                         *
//* FECHA          : MAYO 2012                                         *
//**********************************************************************
//* PASO     : PLT23P20                                                *
//* OBJETIVO :                                                         *
//* PROGRAMA : ZM4OLL41                                                *
//**********************************************************************
//PLT23P20 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.SIVA.MUV.ZXLLPD23,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//**********************************************************************
//* PASO     : PLT23P10                                                *
//* OBJETIVO : ADICIONA CONDICION PARA EJECUTAR PRORRATEO NOTA ESTRUCT.*
//* PROGRAMA : ZM4OLL41                                                *
//**********************************************************************
//PLT23P10 EXEC PGM=CTMCND,
//         PARM='ADD COND BCLLND23_IN_SIVA_OK WDATE',COND=(4,LT)
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
