//ZMPMCN02 PROC
//*
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : ZMPMCN02                                             *
//* OBJETIVO    : TRANSFERIR ARCHIVOS MENSUALES A SERVIDOR             *
//*               \\sbbv04\Public.                                     *
//* REALIZO     : FABRICA DE SOFTWARE BBVA BANCOMER (XM09287)          *
//* FECHA       : 20/OCTUBRE/2010.                                     *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*                                                                    *
//**********************************************************************
//* PASO        : PHC02P11                                             *
//* PROGRAMA    : DMBATCH                                              *
//* DESCRIPCION : ENVIO DEL ARCHIVO DE MOVIMIENTOS DE TESORERIA AL     *
//*               SERVIDOR, (paso no ejecutable).                      *
//**********************************************************************
//PHC02P11 EXEC PGM=DMBATCH
//*
//STEPLIB  DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT80T01),DISP=SHR
//*
//*************************** FIN DE PROCESO ***************************
