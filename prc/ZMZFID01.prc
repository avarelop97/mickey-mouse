//ZMZFID01 PROC
//*--------------------------------------------------------------------*
//* PROCESO      : BCZFID01                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : CARGA FIDEICOMISOS Y FIDEICOMITENTES EN TABLA       *
//*                ZMDTFID.
//* FECHA        : JUNIO 2022.                                         *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//* PROGRAMA: IEFBR14                                                  *
//* OBJETIVO: CATALOGA ARCHIVO  VACIO  SI NO EXISTE                    *
//*--------------------------------------------------------------------*
//ZMNE0330 EXEC PGM=IEFBR14
//PASFD01  DD DSN=MXCP.ZM.FIX.RELACION.FIDEICOM,
//            DISP=(MOD,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=218,RECFM=FB,BLKSIZE=0)
//*
//**********************************************************************
//*        PASO:  ZMNE0340                                             *
//*    PROGRAMA:  ICEMAN                                               *
//* DESCRIPCION:  REALIZA UN INCLUDE DE LOS FIDEICOMITENTES EXCLUYENDO *
//*               LOS FIDEICOMISARIOS.                                 *
//**********************************************************************
//ZMNE0340 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.RELACION.FIDEICOM,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.RELACION.FIDEICOM.INCFTE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(DSORG=PS,LRECL=218,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMFIDT02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMNE0350                                              *
//* UTILERIA   : ZM4FID01                                              *
//* OBJETIVO   : REALIZA CARGA DE FIDEICOMITENTES Y FIDEICOMISARIOS    *
//*              EN TABLA ZMDTFID.                                     *
//*--------------------------------------------------------------------*
//ZMNE0350 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFID1E1 DD DSN=MXCP.ZM.FIX.RELACION.FIDEICOM.INCFTE,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMFIDT01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMZFID01                          *
//*--------------------------------------------------------------------*
//*
