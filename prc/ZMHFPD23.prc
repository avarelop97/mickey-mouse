//ZMHFPD23 PROC
//*
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : ZMHFPD23                                             *
//* OBJETIVO    : GENERARACION DE ARCHIVO QUE CONTENDRA INFORMACION DE *
//*               LOS CLIENTES QUE SUPERARON DE ACUERDO A SU PERFIL EL *
//*               MONTO MAXIMO DE SU PARTICIPACION EN EL MERCADO DE    *
//*               CAPITALES.                                           *
//* REALIZO     : FABRICA DE SOFTWARE BBVA BANCOMER (XM09287)          *
//* FECHA       : 05/NOVIEMBRE/2010.                                   *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-03  CDRXXX  DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX       *
//*                                                                    *
//**********************************************************************
//* PASO        : PHF23P01                                             *
//* PROGRAMA    : IKJEFT01/ZM4DH103                                    *
//* DESCRIPCION : GENERA EL ARCHIVO SRALOG CON LOS CONTRATOS QUE       *
//*               SUPERARON EL MONTO MAXIMO DE SU PARTICIPACION EN     *
//*               MERCADO DE CAPITALES.                                *
//**********************************************************************
//PHF23P01 EXEC PGM=IKJEFT01
//*
//ZMFH1031 DD DSN=MXCP.ZM.FIX.MDC.EBCM.SRALOG.M&MES.,
//            DISP=(MOD,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=165,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF23T01),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*                           FIN DE PROCESO                           *
//*                                                                    *
//**********************************************************************
