//ZMUFPM37 PROC
//*
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : ZMUFPM37                                             *
//* OBJETIVO    : MARCAR LA INFORMACION DEL "ESTRATO" DE LA BASE DE    *
//*               DATOS DE CLIENTES MUV                                *
//* REALIZO     : FABRICA DE SOFTWARE BBVA BANCOMER (XM09403)          *
//* FECHA       : 16/NOVIEMBRE/2010.                                   *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-01  CAPGEMI 05SEP11 SE CAMBIAN LOS ARCHIV DE SALIDA A     *
//*                              SECUENCIALES PARA SU RECUPERACION     *
//**********************************************************************
//* PASO        : PJF37P03                                             *
//* PROGRAMA    : IKJEFT01/PJF37P03                                    *
//* DESCRIPCION : ELABORAR ACTUALIZACION MASIVA DE ESTRATOS Y GENERAR  *
//*               REPORTES DE REGISTROS REPORTES DE REGISTROS          *
//**********************************************************************
//PJF37P03 EXEC PGM=IKJEFT01
//*
//ZMEG34A1 DD DSN=MXCP.ZM.FIX.TES.ESTRATO.RIESGO,
//            DISP=SHR
//* FS-1.0.0-01 INI
//*ZMEG34R1 DD SYSOUT=*
//ZMEG34R1 DD DSN=MXCP.ZM.FIX.TES.ESTRATO.RIESGO.ERR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//* FS-1.0.0-01 FIN
//* FS-1.0.0-01 INI
//*ZMEG34R2 DD SYSOUT=*
//ZMEG34R2 DD DSN=MXCP.ZM.FIX.TES.ESTRATO.RIESGO.CORR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//* FS-1.0.0-01 FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF37T03),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*                           FIN DE PROCESO                           *
//*                                                                    *
//**********************************************************************
