//MZMPP140 PROC
//**********************************************************************
//* PROCESO        : MZMPP140                                          *
//* APLICATIVO     : SINCRONIZACION DE UG'S                            *
//* DESCRIPCION    : RUTEADOR1 DE PROCESOS DE SINCRO A SUITABILITY     *
//* REALIZO        : DYD CASA DE BOLSA PATRIMONIAL                     *
//* FECHA          : 12 DE JULIO DE 2012                               *
//* CTRL-M         : CONDICIONES DE ARRANQUE AJJCCB34_OK Y CBUENM11_OK *
//*                  NO CORRE CUANDO SE ACTIVA CICSSIVA                *
//* OBJETIVO       : CREA EL AVISO AL RUTEADOR-2 QUE SI CORRE SINCRONIZ*
//*                  ACION CUANDO SE LEVANTA CICSSIVA                  *
//* PERIODICIDAD   : DIARIO, NO PROCESA SI YA LEVANTO CICSSIVA         *
//**********************************************************************
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA              DESCRIPCION              *
//* ----------- --------- ------- ------------------------------------ *
//* DYD1.0.0-01 DYD PATRI  120712 RUTEADOR DE PROCESOS DE ZINCRO A SUIT*
//*            *         *       *                                     *
//**********************************************************************
//*
//**********************************************************************
//* PASO    : MZP14001                                                 *
//* OBJETIVO: GENERA EL FICHERO PARA AVISAR QUE CORRE SINCRONIZACION   *
//* PROGRAMA: ICEMAN / UTILITY                                         *
//**********************************************************************
//MZP14001 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.RUTEADOR.SINCRO1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.RUTEADOR.SINCRO2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,LRECL=17,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//**********************************************************************
//*    FINAL DEL PROCEDIMIENTO                                         *
//**********************************************************************
