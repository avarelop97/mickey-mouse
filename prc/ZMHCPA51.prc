//ZMHCPA51 PROC
//*--------------------------------------------------------------------*
//* PROYECTO    :  ZM - MODIFICACION DE ORDENES                        *
//* PROCESO     :  ZMHCPA51                                            *
//* PERIODICIDAD:  DIARIO                                              *
//* OBJETIVO    :  GENERA REPORTE DE ORDENES MODIFICADAS DE BANCA PAT  *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//*
//**********************************************************************
//* PASO    : PHPA5110                                                 *
//* OBJETIVO: SEPARA REPORTE DEJANDO SOLO MODIFICACIONES DE BANCA PAT  *
//**********************************************************************
//PHPA5110 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.ORDENES.DIARIO.MODIF,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.ORDENES.MODIF.PAT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=272,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHPA5110),DISP=SHR
//*                                                                     02330106
//**********************************************************************
//* PASO    : PHPA5109                                                 *
//* OBJETIVO: ORDENA ARCHIVO POR SUCURSAL                              *
//**********************************************************************
//PHPA5109 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.ORDENES.MODIF.PAT,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.ORDENES.MODIF.PAT.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=272,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHPA5109),DISP=SHR
//*                                                                     02330106
//**********************************************************************
//* PASO    : PHPA5108                                                 *
//* OBJETIVO: SEPARA ENCABEZADO DE REPORTE DE MODIFICACIONES           *
//**********************************************************************
//PHPA5108 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.ORDENES.DIARIO.MODIF,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.ORDENES.MODIF.ENCA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=272,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHPA5108),DISP=SHR
//*                                                                     02330106
//**********************************************************************
//* PASO    : PHPA5107                                                 *
//* OBJETIVO: PONE ENCABEZADO A REPORTE DE MODIFICACIONES PAT          *
//**********************************************************************
//PHPA5107 EXEC PGM=ICEMAN,COND=(0,NE)
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.ORDENES.MODIF.ENCA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.EBCM.ORDENES.MODIF.PAT.ORD,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.ORDENES.F&FECHA..UNION,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=272,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP83030),DISP=SHR
//*                                                                     02330106
//**********************************************************************02322306
//* OBJETIVO : GENERA REPORTE DE ORDENES MODIFICADAS PARA SER ENVIADO  *02322406
//*            POR CONTROL D                                           *02323006
//*          -- ZM4DOR03 --                                            *02323006
//**********************************************************************02324006
//PHPA5106 EXEC PGM=IKJEFT01,COND=(4,LT)                                02325006
//*                                                                     02327006
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBCM.ORDENES.F&FECHA..UNION,DISP=SHR
//*
//ZMPA51R1 DD DSN=MXCP.ZM.FIX.EBCM.ORDENES.F&FECHA..SALID,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=131,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHPA5106),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        COPIA EL ARCHIVO HACIA EL SISTEMA DE CTL-D                  *
//**********************************************************************
//PHPA5105 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.EBCM.ORDENES.F&FECHA..SALID,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    TERMINA PROC
//**********************************************************************
