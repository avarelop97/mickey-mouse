//ZMUFPM38 PROC
//**********************************************************************
//*---------------------------------------------------------------------
//*        L O G    D E   M O D I F I C A C I O N E S                  -
//*---------------------------------------------------------------------
//* MARCA        AUTOR    FECHA            DESCRIPCION                 *
//*-----------  --------  -------  ------------------------------------*
//*FS-1.0.0-01  CAPGEM.   ENE2010  SE INCORPORAN CAMBIOS SOLICITADOS   *
//*                                POR DYD                             *
//*DYD-1.1.0    DYD       MZO2012  SE QUITA CONDICION CTRL-M Y PARAMETR*
//**********************************************************************
//**********************************************************************
//*   RECEPCION DE PARAMETROS
//**********************************************************************
//* ACJ-020312-I
//*ZMPM3801 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMUFPM38,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(2,1),RLSE),
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//*            UNIT=3390
//* ACJ-020312-F
//*
//**********************************************************************
//* PASO    : PJF38P03.                                                *
//* PROGRAMA: IKJEFT1A.                                                *
//* OBJETIVO: CARGA DE ACTUALIZACION DE ESTRATOS A BASE DE DATOS PARAM *
//**********************************************************************
//ZMPM3802 EXEC PGM=IKJEFT1A
//ZMEG35A1 DD  DSN=MXCP.ZM.FIX.TES.ESTRATO.RIESGO,
//             DISP=SHR
//*
//QRLSDB2  DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF38T03),DISP=SHR
//*
//**********************************************************************
//* PASO    : PFJ38P02.                                                *
//* PROGRAMA: IEFBR14.                                                 *
//* OBJETIVO: BORRADO DE ARCHIVOS DE ESTRATOS                          *
//**********************************************************************
//ZMPM3803 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF38T02),DISP=SHR
//*
//****************************************************************
//* SE ADICIONA CONDICION PARA CONTROL-M PARA LIBERAR PROCESOS   *
//****************************************************************
//* ACJ-020312-I
//*ZMPM3804 EXEC  PGM=CTMCND,PARM='ADD COND ZMUFPM38_IN_OK WDATE',
//*         COND=(4,LT)
//*STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//*DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//*         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//*DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//*DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*PRTDBG   DD  SYSOUT=*
//*SYSPRINT DD  DUMMY
//*SYSUDUMP DD  DUMMY
//*DAPRINT  DD  SYSOUT=*
//* ACJ-020312-F
//*
