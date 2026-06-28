//ZMJTNE18 PROC
//**********************************************************************
//*   APLICACION : MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO           *
//*                                                                    *
//*   REALIZACION : CAPGEMINI                                          *
//*                                                                    *
//*   FECHA:  ENERO 2011                                               *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*--------------------------------------------------------------------*
//* MARCA        AUTOR    FECHA            DESCRIPCION                 *
//*-----------  --------  -------  ------------------------------------*
//*FS-1.0.0-01  CAPGEM.   ENE2010  SE INCORPORAN CAMBIOS SOLICITADOS   *
//*                                POR DYD                             *
//*DYD-1.1.0    DYD       MZO2012  MODIFICAR LA CONDICION SIVAXES1     *
//**********************************************************************
//**********************************************************************
//*   RECEPCION DE PARAMETROS
//**********************************************************************
//ZMNE1801 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMJTNE18,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//* PASO     : PJT18021                                                *
//* PROGRAMA : IEFBR14                                                 *
//* FUNCION  : SE CREA UN ARCHIVO                                      *
//**********************************************************************
//ZMNE1802 EXEC PGM=IEFBR14,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.ESTRATO.RIESGO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=17,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//****************************************************************
//* SE ADICIONA CONDICION PARA CONTROL-M PARA LIBERAR PROCESOS   *
//****************************************************************
//* ACJ 020312-I
//ZMNE1803 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXES1_OK WDATE',
//         COND=(4,LT)
//* ACJ 020312-F
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
