//ZMMFPD46 PROC                                                         00000010
//**********************************************************************00000020
//*                                                                    *00000030
//* SISTEMA        :  MUV MODULO UNICO DE VALORES ANTES SIVA.          *00000040
//*                                                                    *00000050
//* PROCESO        :  ZMMFPD46                                         *00000060
//*                                                                    *00000070
//*                                                                    *00000080
//* OBJETIVO       :  GENERACION DE INTERFASES PARA FIDEICOMISOS       *00000090
//*                   DE MDC Y MDD                                     *00000100
//*                                                                    *00000250
//* CORRE                                                              *00000270
//* ANTES DE       :  PFDFDD01, PFDFDD02                               *00000280
//*                                                                    *00000300
//* DESPUES DE     :  BCHFND09,                                        *00000310
//*                                                                    *00000310
//* REALIZACION    :  GESFOR XM07729                 06/SEP/2018       *00000290
//**********************************************************************00000320
//*--------------------------------------------------------------------*00000320
//*        L O G    D E   M O D I F I C A C I O N E S                  *00000320
//*--------------------------------------------------------------------*00000320
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *00000320
//* -----------  ------- ------- ------------------------------------- *00000320
//* FS-1.0.0-00  XM07729 31AGO18 SE GENERA PROCESO DE BLINDAJE E2E     *00000320
//*                              PARA DEJAR PASAR TODOS LOS IOPERAS    *00000320
//*                              DE FIDUCIARIO AL NUEVO ARCHIVO        *00000320
//*
//*--------------------------------------------------------------------*
//*   EJECUCION DEL PROGRAMA:  ICEMAN                                  *
//*   DESEMPACA LOS CAMPOS DE TITULOS, PRECIO, COMISION, INTERESES,    *
//*                           IMPUESTO Y TASA PACTADA                  *
//*--------------------------------------------------------------------*
//ZMFPD410 EXEC PGM=ICEMAN
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.MUVOPERA.MDEC.MDC,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MUVOPERA.MDED.MDD,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.F&FECHA..MUVOPERA.CONCAT2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=338,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHM46T01),DISP=SHR
//SYSPRINT DD SYSOUT=*
//*                                                                     00026120
//*--------------------------------------------------------------------*
//*   EJECUCION DEL PROGRAMA:  ICEMAN                                  *
//*   CLASIFICACION DE MOVIMIENTOS DE FIDEICOMISOS.                    *
//*--------------------------------------------------------------------*
//ZMFPD405 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.F&FECHA..MUVOPERA.CONCAT2,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.F&FECHA..MUVOPERA.CLASIF,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=338,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHM46T02),DISP=SHR
//SYSPRINT DD SYSOUT=*
//*
//********************************************************************* 00031450
//*            FIN DEL PROCEDIMIENTO ZMMFPD46                         * 00031460
//********************************************************************* 00031470
