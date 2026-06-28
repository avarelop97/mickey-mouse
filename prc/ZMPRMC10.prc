//ZMPRMC10 PROC
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*                   C A S A   D E  B O L S A                         *00050001
//*                   ========================                         *00060001
//*        <<  M E R C A D O   D E   C A P I T A L E S  >>             *00070001
//*                                                                    *00070001
//* PROYECTO     : SDATOOL-35155 SRA MERCADO DE CAPITALES.             *
//*                                                                    *00070001
//* PROCESO      : ZMPRMC10.                                           *
//*                                                                    *00070001
//* PERIODICIDAD : DIARIO.                                             *
//*                                                                    *00070001
//* OBJETIVO     : GENERAR REPORTE DE TODAS LAS ORDENES DE CAPITALES   *
//*                PENDIENTES POR ASIGNAR CON FECHA DE LIQUIDACION     *
//*                MAYOR A 1 DIA.                                      *
//* REALIZO      : MI03469.                                            *
//*                                                                    *00070001
//* FECHA        : 21 DE FEBRERO DE 2024.                              *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZMPDUP10.                                             *
//* UTILERIA   : IKJEFT01/ZM4UMC10.                                    *
//* OBJETIVO   : GENERAR ARCHIVO CON TODAS LAS ORDENES DEGISTRADAS EN  *
//*              MUV(BCM).                                             *
//*--------------------------------------------------------------------*
//ZMPDUP10 EXEC PGM=IKJEFT01
//*
//S1ZMCS1  DD DSN=MXC&AMB..ZM.FIX.ZMPRMC10.PENASIG.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=481,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPPMC03),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMPDUP11                                                 *
//* PROGRAMA: ICETOOL                                                  *
//* ORDENA REGISTROS POR FOLIO DE ORDEN,  FOLIO DE HECHOS Y CONSERVA   *
//* CABERA DE REPORTE.                                                 *
//**********************************************************************
//ZMPDUP11 EXEC  PGM=ICETOOL,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//TOOLMSG  DD SYSOUT=*
//DFSMSG   DD SYSOUT=*
//ENTRADA  DD DSN=MXC&AMB..ZM.FIX.ZMPRMC10.PENASIG.F&FECHA,DISP=SHR
//SALIDA   DD DSN=MXC&AMB..ZM.FIX.ZMPRMC10.PENASIG,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=481,BLKSIZE=0,DSORG=PS)
//TOOLIN   DD DSN=ZIVA.ZME.CONTROL(ZMPPMC04),DISP=SHR
//CTL1CNTL DD DSN=ZIVA.ZME.CONTROL(ZMPPMC05),DISP=SHR
