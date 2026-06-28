//ZMHCPD79  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : ZMHCPD79                                             *
//*____________________________________________________________________*
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* PROCESO DE ACTUALIZACION DE TITULOS Y COSTO PROMEDIO LIQUIDADO     *
//*                                                                    *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*                                                                    *
//*===================================================================
//* PASO     : ZMH79P02
//* PROGRAMA : ICEMAN
//* OBJETIVO : UNIR ARCHIVOS
//*===================================================================
//ZMH79P02 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.MEN.UNLOAD1,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.MEN.UNLOAD2,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.MEN.UNION.SOCINCAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=42,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMH79T02),DISP=SHR
//*===================================================================
//* PASO     : ZMH79P01
//* PROGRAMA : ZM4ISR22
//* OBJETIVO : REPROCESO DE COSTO PROMEDIO LIQUIDADO
//*===================================================================
//ZMH79P01 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//UNLOAD1  DD DSN=MXC&AMB..ZM.FIX.MEN.UNION.SOCINCAP,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMH79T01),DISP=SHR
//*===================================================================
//*                    - LOG DE MODIFICACIONES -
//*-------------------------------------------------------------------
//*    MARCA      AUTOR   FECHA   DESCRIPCION
//* -----------  ------- -------  ------------------------------------
//*===================================================================
//
