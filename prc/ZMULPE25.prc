//ZMULPE25 PROC EMP=,
//            SUC=,
//            INT1=,
//            INT2=
//**********************************************************************
//**                                                                   *
//*                  SISTEMA ENLACE CONTABLE                           *
//*                  ENERO 1993                                        *
//*                                                                    *
//**********************************************************************
//*
//*******************************************************************
//*   RECEPCION DE PARAMETROS
//*******************************************************************
//PHI45P01 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECO.E&EMP..ZMULPE25,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*******************************************************************
//*   REPORTE DE POLIZA A DETALLE
//*******************************************************************
//PJL25P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUM26A1 DD DSN=MXCP.ZM.TMP.ECO.E&EMP..ZMULPE25,DISP=SHR
//*
//ZMUM26A2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL25T01),DISP=SHR
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJL25P01 EXEC  PGM=CTMCND,PARM='ADD COND ZMULPE25_SEP_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//*
