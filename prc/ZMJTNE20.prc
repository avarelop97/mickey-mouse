//ZMJTNE20 PROC
//**********************************************************************
//*   APLICACION : MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO           *
//*                                                                    *
//*   REALIZACION : CAPGEMINI                                          *
//*                                                                    *
//*   FECHA:  14/ENERO/2011                                            *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*--------------------------------------------------------------------*
//* MARCA        AUTOR    FECHA            DESCRIPCION                 *
//*-----------  --------  -------  ------------------------------------*
//*FS-1.0.0-01  CAPGEM.   ENE2010  SE INCORPORAN CAMBIOS SOLICITADOS   *
//*                                POR DYD                             *
//*DYD-1.1.0    DYD       MZO2012  QUITA PROCESO AGREGA CONDICION      *
//**********************************************************************
//*   RECEPCION DE PARAMETROS
//**********************************************************************
//PJT2003  EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMJTNE20,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//**********************************************************************
//* PASO     : PJT2002                                                 *
//* PROGRAMA : IEFBR14A,COND=(4,LT)                                    *
//* FUNCION  : SE CREA UN ARCHIVO                                      *
//**********************************************************************
//* ACJ-020312-I
//*PJT2002  EXEC PGM=IKJEFT1A,COND=(4,LT)
//*ZMEG37A1 DD DSN=MXCP.ZM.FIX.TES.ESTRATO.VALIDA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(200,100),RLSE),
//*            DCB=(RECFM=FB,LRECL=83,BLKSIZE=0,DSORG=PS)
//*SYSOUT   DD SYSOUT=*
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSUDUMP DD SYSOUT=*
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJT20T03),DISP=SHR
//* ACJ-020312-F
//*
//**********************************************************************
//* SE ADICIONA CONDICION PARA CONTROL-M Y LIBERAR PROCESOS            *
//**********************************************************************
//* ACJ-280212-I
//PJT2001  EXEC PGM=CTMCND,PARM='ADD COND SIVAXES3_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//*
//* ACJ-280212-F
