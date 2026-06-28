//BCPCNOWA PROC
//********************   OBJETIVO   *****************************
//*
//* PROCESO QUE REALIZA EL ARCHIVO FINAL DE MOVIMIENTO DE NOTA Y
//* WARRANTS
//* NUEVOS REPORTES
//**********************************************************************
//*                                                                    *
//* SISTEMA  : ZM / CASA DE BOLSA                                      *
//*                                                                    *
//* PROCESO  : BCPCNOWA                                                *
//*                                                                    *
//* OBJETIVO : MODULO DE MIGRACION MATCH DE INVERSION DM VS ART6       *
//*                                                                    *
//* REALIZO  : FSW-EVERIS                                              *
//*                                                                    *
//* FECHA    : 27 DE FEBRERO DEL 2017                                  *
//**********************************************************************
//*                    - LOG DE MODIFICACIONES -
//*--------------------------------------------------------------
//*    MARCA      AUTOR   FECHA   DESCRIPCION
//* -----------  ------- -------  -------------------------------
//* FS.01-001.1  EVERIS  27ABR17  SE MODIFICA PROCESO
//***************************************************************
//* PASO     : PHC00001
//* PROGRAMA : IKJEFT01
//**********************************************************************
//* OBJETIVO : ORDENA ARCHIVO DE OPERACIONES NOTA Y WARRANTS           *
//* EL ORDENAMIENTO LO HACE POR NUMERO DE CONTRATO A 18                *
//**********************************************************************
//PHC00001 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.REPWANOT.F&FECHA,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.REPWARNT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=233,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCNOWA1),DISP=SHR
//*FS.01-001.1-I
//***************************************************************
//* OBJETIVO : REALIZA LA COPIA DEL ARCHIVO DE SUITABILITY
//*                       YH ------ZM
//***************************************************************
//PHC00002 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXB&AMB..YH.FIX.F&FECHA..MYHPPREP.INTRMUV,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.F&FECHA..NOWASUI,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            RECFM=FB,LRECL=80,BLKSIZE=0,
//            SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCSUI03),DISP=SHR
//*
//***************************************************************
//* OBJETIVO : ORDENA ARCHIVO DE SUITABILITY
//* EL ORDENAMIENTO LO HACE POR NUMERO DE CONTRATO A 18
//***************************************************************
//PHC00003 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.F&FECHA..NOWASUI,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.F&FECHA..NOWASUI1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCSUI01),DISP=SHR
//*FS.01-001.1-F
//***************************************************************
//* PASO    : PHC00003
//* OBJETIVO: LEE ARCHIVO DE PDV CON LA CLASIFICACION DEL CLIENTE
//*           GENERA ARCHIVO FINAL
//***************************************************************
//PHC00004 EXEC PGM=ZM3NOTWA,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXC&AMB..ZM.FIX.REPWARNT.F&FECHA,
//            DISP=SHR
//*
//*FS.01-001.1-I
//ENTRADA2 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..NOWASUI1,
//*           DSN=MXC&AMB..ZM.FIX.REPNEWAR.MATCH.F&FECHA
//*FS.01-001.1-F
//            DISP=SHR
//*
//SALIDA1  DD DSN=MXC&AMB..ZM.FIX.REPNEWA.MATCHFN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=235,BLKSIZE=0,RECFM=FB)
//*
//SALIDA2  DD DSN=MXC&AMB..ZM.FIX.INC.REPWANOT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=127,BLKSIZE=0,RECFM=FB)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//***************************************************************
//**                      FIN DEL PRC BCPCNOWA
//***************************************************************
