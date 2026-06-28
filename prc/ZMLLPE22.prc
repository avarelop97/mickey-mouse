//ZMLLPE22 PROC
//*********************************************************************
//*
//*  PROGRAMA :  DURA1MIN
//*  FUNCION  :  DELAY DE 1 MINUTO PARA QUE NO SE PIERDAN LAS CONFIRMA_
//*              CIONES POR LO LENTO DE CONTROL D
//*
//*********************************************************************
//PLL22P06 EXEC  PGM=DURA1MIN
//STEPLIB  DD    DSN=ZIVA.ZME.LOADLIB.BATCH,DISP=SHR
//SYSOUT   DD    SYSOUT=*
//SYSPRINT DD    SYSOUT=*
//*
//*********************************************************************
//*
//*  PROGRAMA :  DURA1MIN
//*  FUNCION  :  DELAY DE 1 MINUTO PARA QUE NO SE PIERDAN LAS CONFIRMA_
//*              CIONES POR LO LENTO DE CONTROL D
//*
//*********************************************************************
//PLL22P05 EXEC  PGM=DURA1MIN
//STEPLIB  DD    DSN=ZIVA.ZME.LOADLIB.BATCH,DISP=SHR
//SYSOUT   DD    SYSOUT=*
//SYSPRINT DD    SYSOUT=*
//*
//*********************************************************************
//*
//*  PROGRAMA :  DURA1MIN
//*  FUNCION  :  DELAY DE 1 MINUTO PARA QUE NO SE PIERDAN LAS CONFIRMA_
//*              CIONES POR LO LENTO DE CONTROL D
//*
//*********************************************************************
//PLL22P04 EXEC  PGM=DURA1MIN
//STEPLIB  DD    DSN=ZIVA.ZME.LOADLIB.BATCH,DISP=SHR
//SYSOUT   DD    SYSOUT=*
//SYSPRINT DD    SYSOUT=*
//*
//*********************************************************************
//*
//*  RECIBE PARAMETROS DESDE LA LINEA
//*
//*********************************************************************
//PLL22P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE22,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*********************************************************************
//*  GENERA INFORMACION PARA CONFIRMACION DE OPERACIONES   BANCO
//*********************************************************************
//PLL22P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLN55A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE22,DISP=SHR
//ZMLN55R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL22T02),DISP=SHR
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR TRANSFER              *
//****************************************************************
//PLL22P01 EXEC  PGM=CTMCND,PARM='ADD COND CONFIRMA_IN_SEP_OK WDATE',
//         COND=(4,LT)
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
