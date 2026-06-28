//ZMEPDV13 PROC
//*--------------------------------------------------------------------*
//* SISTEMA  : ZM - CASA DE BOLSA.                                     *00003000
//* PROCESO  : ZMEPDV13.                                               *
//* OBJETIVO : REPORTE SUITABILITY PARA PDV.                           *
//* REALIZO  : BBVA.                                                   *
//* FECHA    : OCTUBRE DE 2014.                                        *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                                                                    *
//*--------------------------------------------------------------------*
//*---------------------------------------------------------------------
//* PASO    : PDV13P01                                                 *
//* PROGRAMA: IKJEFT01/PDV                                             *
//* OBJETIVO: REPORTE DE SUITABILITY PDV                               *
//*---------------------------------------------------------------------
//PDV13P02 EXEC PGM=ICEMAN
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXB&AMB..YH.FIX.F&FECHA..MYHPPREP.INTRMUV,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.F&FECHA..MYHPPREP.INTRMUV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            RECFM=FB,LRECL=80,BLKSIZE=0,
//            SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPDV1302),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PASO    : PDV13P01                                                 *
//* PROGRAMA: IKJEFT01/PDV                                             *
//* OBJETIVO: REPORTE DE SUITABILITY PDV                               *
//*---------------------------------------------------------------------
//PDV13P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMPDV13E DD DSN=MXC&AMB..ZM.FIX.F&FECHA..MYHPPREP.INTRMUV,DISP=SHR
//*
//ZMPDV13S DD DSN=MXC&AMB..ZM.FIX.SUI.REPORTE.PDV1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=181,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPDV1301),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     FIN PRC                                        *
//*--------------------------------------------------------------------*
