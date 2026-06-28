//ZMJPCP12 PROC EMP=,SUC=,INT1=,INT2=
//**********************************************************************
//* SISTEMA  : ZM MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO            *
//* PROCESO  : ZMJPCP12                                                *
//* OBJETIVO : GENERA REPORTE DE CONTRATOS PERTENECIENTES AL GRUPO DE  *
//*            LIQUIDACION PROPORCIONADO ENVIADO POR EL USUARIO        *
//* PERIODICIDAD: DIARIA                                               *
//* REALIZO     : FSW-DGCM                                             *
//* FECHA       : 06 SEPTIEMBRE 2013                                   *
//**********************************************************************
//*                  LOG DE MODIFICACIONES                             *
//**********************************************************************
//* MARCA        AUTOR   FECHA     DESCRIPCION                         *
//*-----------  ------- -------    ------------------------------------*
//*@**********  ******* *******    *************************************
//**********************************************************************
//* PASO       : PCP12P02                                              *
//* PROGRAMA   : ZM3DG001                                              *
//* DESCRIPCION: RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA EN*
//*              ARCHIVO PARA LA VALUACION DEFINITIVA CASA DE BOLSA.   *
//**********************************************************************
//PCP12P02 EXEC PGM=ZM3DG001,                                           00650400
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*                                                                     01100000
//ZMG001A1 DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMJPCP12,                        00320070
//            DISP=(NEW,CATLG,DELETE),                                  00830001
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00211001
//            UNIT=3390,                                                00840001
//            SPACE=(CYL,(6,3),RLSE)                                    00310001
//*                                                                     01100000
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* PASO       : PCP12P01                                              *
//* PROGRAMA   : CTMCND                                                *
//* DESCRIPCION: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-M.  *
//**********************************************************************
//PCP12P01 EXEC PGM=CTMCND,COND=(04,LT),                                00650400
//         PARM='ADD COND SIVAXVRL_IN_OK WDATE'
//*                                                                     01100000
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
