//MZMPP135 PROC
//**********************************************************************
//* PROCESO        : MZMPP135                                          *
//* APLICATIVO     : SINCRONIZACION DE UG'S                            *
//* DESCRIPCION    : RUTEADOR1 DE PROCESOS DE SINCRO A SUITABILITY     *
//* REALIZO        : DYD CASA DE BOLSA PATRIMONIAL                     *
//* FECHA          : 15 DE JULIO DE 2012                               *
//* CTRL-M         : CONDICIONES DE ARRANQUE AJJCC150_OK               *
//* OBJETIVO       : GENERA LOS ARCHIVOS PARA LOS PROCESOS RUTEADORES  *
//*                  DE PROCESOS DE SINCRONIZACION                     *
//* PERIODICIDAD   : DIARIO                                            *
//**********************************************************************
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA              DESCRIPCION              *
//* ----------- --------- ------- ------------------------------------ *
//* DYD1.0.0-01 DYD PATRI  150712 RUTEADOR DE PROCESOS DE ZINCRO A SUIT*
//*            *         *       *                                     *
//**********************************************************************
//*
//**********************************************************************
//* PASO    : MZP13502                                                 *
//* OBJETIVO: GENERA EL FICHERO PARA AVISAR QUE CORRE SINCRONIZACION   *
//* PROGRAMA: ICEGENER / UTILITY                                       *
//**********************************************************************
//MZP13502 EXEC PGM=ICEGENER
//SYSUT1   DD DSN=ZIVA.ZME.CONTROL(ZUF03T35),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.RUTEADOR.SINCRO1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,LRECL=17,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//**********************************************************************
//* PASO    : MZP13501                                                 *
//* OBJETIVO: GENERA FICHERO DE AVISO PROCESOS SINCORNIZACION          *
//* PROGRAMA: ICEMAN / UTILITY                                         *
//**********************************************************************
//MZP13501 EXEC PGM=ICEMAN,COND=(4,LT)
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
