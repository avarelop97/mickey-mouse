//ZMCONF90 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CONFIRMACION                                   *
//* PROCESO      : ZMCONF72.                                           *
//* PERIODICIDAD : A 24,48 Y 72 HORAS                                  *
//* OBJETIVO     : REPORTES DE CONFIRMACION  CANCELACION               *
//* FECHA        : JUNIO 2016.                                         *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*
//**********************************************************************
//*  GENERA UN SOLO ARCHIVO DE CANCELACIONES NACIONALES                *
//**********************************************************************
//ZCO90T01 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CON.ZM3CO210.NAC24,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.CON.ZM3CO210.NAC48,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.CON.ZM3CO210.NAC72,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CON.CANCELA.NAC,
//            DISP=(NEW,CATLG,DELETE),
//*HITSS-I
//*           DCB=(DSORG=PS,LRECL=542,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=556,RECFM=FB,BLKSIZE=0),
//*HITSS-F
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCO90T01),DISP=SHR
//*
//**********************************************************************
//*  GENERA UN SOLO ARCHIVO DE CANCELACIONES INTERNACIONAL             *
//**********************************************************************
//ZCO90T90 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CON.ZM3CO210.INT24,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.CON.ZM3CO210.INT48,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.CON.ZM3CO210.INT72,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CON.CANCELA.INT,
//            DISP=(NEW,CATLG,DELETE),
//*HITSS-I
//*           DCB=(DSORG=PS,LRECL=563,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=577,RECFM=FB,BLKSIZE=0),
//*HITSS-F
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCO90T01),DISP=SHR
//*
