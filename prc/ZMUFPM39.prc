//ZMUFPM39 PROC
//*
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
//*DYD-1.1.0    DYD       MZO2012  SE QUITA CONDICION CTRLM Y ARCHIVO  *
//*                                DE PARAMETROS                       *
//*FS-1.0.0-02  CAPGEM.   ABR2012  SE MODIFICA EL PROGRAMA IEFBR14 Y SE*
//*                                MUEVEN LOS PASOS ZMPM3903 Y 06 AL   *
//*                                FINAL, SE INHIBE EL PASO QUE BORRA  *
//*                                LOS ARCHIVOS AL FINAL ZMPM3910      *
//**********************************************************************
//**********************************************************************
//*   RECEPCION DE PARAMETROS
//**********************************************************************
//* ACJ-050312-I
//*ZMPM3901 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMUFPM39,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(2,1),RLSE),
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//*            UNIT=3390
//* ACJ-050312-F
//**********************************************************************
//* PASO     : PJF39P01                                                *
//* PROGRAMA : IKJEFT1A                                                *
//* FUNCION  : ELABORA ACTUALIZACION DE ESTRATOS Y GENERA REPORTES     *
//*            DE REGISTROS ERRONEOS Y ARCHIVO DE REGISTROS CORRECTOS  *
//**********************************************************************
//ZMPM3902 EXEC PGM=IKJEFT1A
//ZMEG36A1 DD DSN=MXCP.ZM.FIX.TES.ESTRATO.ACTUAL,                       00002200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00002500
//            SPACE=(CYL,(200,100),RLSE),                               00002600
//            DCB=(RECFM=FB,LRECL=57,BLKSIZE=0,DSORG=PS)                00002600
//ZMEG36R1 DD DSN=MXCP.ZM.FIX.TES.ESTRATO.ACTREP,                       00002200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00002500
//            SPACE=(CYL,(200,100),RLSE),                               00002600
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)               00002600
//QRLSDB2  DD SYSOUT=*                                                  00002900
//SYSTSPRT DD SYSOUT=*                                                  00003100
//SYSPRINT DD SYSOUT=*                                                  00003200
//SYSOUT   DD SYSOUT=*                                                  00003400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF39T05),DISP=SHR                   00003500
//SYSTIN   DD DUMMY                                                     00003500
//**********************************************************************
//* PASO    : PJF39P03                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* FUNCION : CLASIFICACIóN POR CLIENTE Y CONTRATO                     *
//**********************************************************************
//ZMPM3904 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.ESTRATO.ACTUAL,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.ESTRATO.CLIENTE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=57,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF39T04),DISP=SHR
//SYSOUT   DD SYSOUT=*
//**********************************************************************
//* PASO     : PJF39P04                                                *
//* PROGRAMA : IKJEFT1A                                                *
//* FUNCION  : ELABORA REPORTE POR CLIENTE                             *
//**********************************************************************
//ZMPM3905 EXEC PGM=IKJEFT1A,COND=(4,LT)
//ZMEG38A1 DD DSN=MXCP.ZM.FIX.TES.ESTRATO.CLIENTE,                      00041912
//            DISP=SHR
//ZMEG38R1 DD DSN=MXCP.ZM.FIX.TES.ESTRATO.CLIEREP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF39T03),DISP=SHR
//**********************************************************************
//* PASO    : PJF39P06                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* FUNCION : CLASIFICACION POR SUCURSAL, CLIENTE Y CONTRATO           *
//**********************************************************************
//ZMPM3907 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.ESTRATO.ACTUAL,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.ESTRATO.SUCURSA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=57,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF39T02),DISP=SHR
//SYSOUT   DD SYSOUT=*
//**********************************************************************
//* PASO     : PJF39P07                                                *
//* PROGRAMA : IKJEFT1A                                                *
//* FUNCION  : ELABORA REPORTE POR CLIENTE                             *
//**********************************************************************
//ZMPM3908 EXEC PGM=IKJEFT1A,COND=(4,LT)
//ZMEG39A1 DD DSN=MXCP.ZM.FIX.TES.ESTRATO.SUCURSA,                      00041912
//            DISP=SHR
//ZMEG39R1 DD DSN=MXCP.ZM.FIX.TES.ESTRATO.SUCUREP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF39T01),DISP=SHR
//**********************************************************************
//* PASO     : PJF39P02                                                *
//* PROGRAMA : ICEGENER                                                *
//* FUNCION  : ELABORA RESPALDO DE ACTUALIZACION DE ESTRATOS Y GENERA  *
//*   REPORTES DE REGISTROS ERRONEOS Y ARCHIVO DE REGISTROS CORRECTOS  *
//**********************************************************************
//ZMPM3903 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.ESTRATO.ACTREP,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO     : PJF39P05                                                *
//* PROGRAMA : ICEGENER                                                *
//* FUNCION  : ELABORA RESPALDO DE ACTUALIZACION DE ESTRATOS Y GENERA  *
//*   REPORTES DE REGISTROS ERRONEOS Y ARCHIVO DE REGISTROS CORRECTOS  *
//**********************************************************************
//ZMPM3906 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.ESTRATO.CLIEREP,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO     : PJF39P08                                                *
//* PROGRAMA : ICEGENER                                                *
//* FUNCION  : CLASIFICACI0N POR SUCURSAL, CLIENTE Y CONTRATO          *
//**********************************************************************
//ZMPM3909 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.ESTRATO.SUCUREP,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO     : PJF39P09                                                *
//* PROGRAMA : IEFBR14                                                 *
//* FUNCION  : BORRADO DE ARCHIVOS DE ESTRATOS                         *
//**********************************************************************
//*ZMPM3910 EXEC PGM=IDCAMS,COND=(4,LT)
//*SYSOUT   DD  SYSOUT=*
//*SYSPRINT DD  SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF39T00),DISP=SHR
//*
//****************************************************************
//* SE ADICIONA CONDICION PARA CONTROL-M PARA LIBERAR PROCESOS   *
//****************************************************************
//* ACJ-050312-I
//*ZMPM3911 EXEC  PGM=CTMCND,PARM='ADD COND ZMUFPM39_IN_OK WDATE',
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
//* ACJ-050312-F
//*
