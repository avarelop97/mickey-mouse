//ZMPPGD35 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - PPG.                                           *
//* PROCESO      : ZMPPGD35.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : DEPURACION DE CREDITOS UG.                          *
//* REALIZO      : FSW INDRA                                           *
//* FECHA        : 04 DE DICIEMBRE DEL 2018.                           *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : ZPP11T01.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG31                                     *
//* OBJETIVO   : DEPURACION DE CREDITOS UG.                            *
//*--------------------------------------------------------------------*
//*
//ZPP11T01 EXEC PGM=IKJEFT01
//*
//ZM11PPE1 DD DSN=MBV&AMB..YH.FVD07.F&FECHA..UGPEDEP1.SENDMUV,DISP=SHR
//*
//ZM11PPS1 DD DSN=MXCP.ZM.FIX.PPG.ZMPPGD35.DETALLE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=70,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP11T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     FIN PROCESO ZMPPGD35                           *
//*--------------------------------------------------------------------*
