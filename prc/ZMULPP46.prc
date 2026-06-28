//ZMULPP46 PROC
//**********************************************************************
//*                                                                    *
//*                  SISTEMA ENLACE CONTABLE                           *
//*                  MARZO  2007                                       *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//*  RECEPCION DE PARAMETROS DE EJECUCION DE CSP DE REP CTA CONCENTRA. *
//**********************************************************************
//PUL46P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMULPE46,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(LRECL=96,RECFM=FB,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PUL46P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXRP2_IN_OK WDATE',
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
//*
//****************************************************************
//*        TERMINA PROCESO ZMULPP46 SIVA MULTIEMPRESA            *
//****************************************************************
