//ZMLFPD54 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA      : ZM / MODULO DE SIVA MILTIEMPRESA ALTAMIRIZADO       *
//*                                                                    *
//* PROCESO      : ZMLFPD54                                            *
//*                                                                    *
//* OBJETIVO     : PROCESO QUE SE EJECUTARA TRIMESTRALMENTE PARA       *
//*                GENERAR LOS NUEVOS ARCHIVOS PARA R24E DE LOS        *
//*                CLIENTES DE CASA DE BOLSA Y BCM.                    *
//*                                                                    *
//* REALIZO      : SOFTTEK(VOLP)                                       *
//*                                                                    *
//* FECHA        : 09-04-2014                                          *
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-0.0.0-00  XXXXXXX DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO        : PLF54P10                                             *
//* PROGRAMA    : IKJEFT01/ZM4ILL25                                    *
//* DESCRIPCION : GENERA ARCHIVOS 24E CON EL FORMATO SOLICITADO Y      *
//*               ARCHIVO DE CIFRAS DE CONTROL.                        *
//*--------------------------------------------------------------------*
//PLF54P10 EXEC PGM=IKJEFT01
//*
//ZMLL25S1 DD DSN=MXCP.ZM.FIX.EBCM.REPORT24.DETR24E1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,LRECL=111,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//ZMLL25S2 DD DSN=MXCP.ZM.FIX.EBCM.REPORT24.CIFR24E2,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,LRECL=95,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSCOUNT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF54T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLFPD54                        *
//*--------------------------------------------------------------------*
