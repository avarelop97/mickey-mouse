//ZMGIPD12 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA   : ZM (BANCA PATRIMONIAL)                                 *
//*                                                                    *
//* PROCESO   : ZMGIPD12                                               *
//*                                                                    *
//* OBJETIVO  : GENERACION DE ARCHIVO DIARIO CON LOS MOVIMIENTOS DE    *
//*             INHIBICION O DESINHIBICION DEL NOMBRE EN LOS ESTADOS   *
//*             DE CUENTA.                                             *
//*             ASI COMO LA TRANSFERENCIA DEL ARCHIVO GENERADO AL      *
//*             SERVIDOR SBBV04.                                       *
//* REALIZO   : SOFTTEK (OHBA)                                         *
//* FECHA     : 10 DE JUNIO 2011                                       *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* @STK-01      SOFTTEK 14JUL11  SE CAMBIA LA LONGITUD DEL ARCHIVO EN *
//*                               EL PASO PJI12P01.                    *
//*--------------------------------------------------------------------*
//* PASO    : PJI12P01                                                 *
//* UTILERIA: ZM4COMI1/ IKJEFT01                                       *
//* OBJETIVO: GENERACION DE ARCHIVO DIARIO CON INHIBICION O            *
//*           DESINHIBICION DEL NOMBRE EN LOS ESTADOS DE CUENTA        *
//*--------------------------------------------------------------------*
//PJI12P01 EXEC PGM=IKJEFT01
//*
//ZMJ804A1 DD DSN=MXCP.ZM.FIX.INHIBICI,
//            DISP=(NEW,CATLG,DELETE),
//*@STK-01-I
//*           DCB=(LRECL=239,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=300,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*@STK-01-F
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF12T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                  FIN DEL PROCESO ZMGIPD12                          *
//*--------------------------------------------------------------------*
