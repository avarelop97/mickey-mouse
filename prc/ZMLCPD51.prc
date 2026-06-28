//ZMLCPD51 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO.     *
//* PROCESO      : ZMLCPD51.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : GENERAR EL ARCHIVO DE OPERACIONES DEL DIA  PARA EL  *
//*                GESTOR DE BONOS.                                    *
//*                                                                    *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 20 DE OCTUBRE DE 2014.                              *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO     : PLC51P01                                                *
//* PROGRAMA : IKJEFT01/ZM4DL022                                       *
//* OBJETIVO : EJECUTA PROGRAMA ZM4DL021.                              *
//*--------------------------------------------------------------------*
//PLC51P01 EXEC PGM=IKJEFT01
//*
//ZML022A1 DD DSN=MXCP.ZM.FIX.MDD.OPERA.GDB,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=099,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC51T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLCPD51                        *
//*--------------------------------------------------------------------*
