//ZMEPDV14 PROC
//*--------------------------------------------------------------------*
//* OBJETIVO : REPORTE SUITABILITY                                     *
//* REALIZO  : CAMACHO (ACCENTURE)                                     *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR   FECHA  DESCRIPCION                            *
//* ----------- ------- ------- -------------------------------------- *
//*   MARCA      AUTOR   FECHA     DESCRIPCION                         *
//*------------ ------- -------  ------------------------------------- *
//*CAMACHO-INI  HECTOR  30/11/18 SE AGREGA EL ARCHIVO PARA PLD PARA    *
//*CAMACHO-FIN  CAMACHO          DAR EL CAPITAL DE CADA MERCADO        *
//*---------------------------------------------------------------------
//*    RRT-INI  XM06657 04/12/18 SE MODIFICA LONG DE ARCHIVO PORQU. SE *
//*    RRT-FIN                   AGREGARON NUEVOS MERCADOS             *
//*---------------------------------------------------------------------
//PDV14P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMPDV14E DD DSN=MXC&AMB..ZM.FIX.F&FECHA..MYHPPREP.INTRMUV,DISP=SHR
//*
//ZMPDV14S DD DSN=MXC&AMB..ZM.FIX.F&FECHA..CTOSEDOS.PDVF2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=400,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//ZMPDV14I DD DSN=MXC&AMB..ZM.FIX.F&FECHA..CTOSINST.PDVF2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=50,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*CAMACHO-INI
//ZMPDPLDS DD DSN=MXCP.ZM.FIX.DATAMART.PLD1,
//            DISP=(NEW,CATLG,DELETE),
//*RRT-INI
//*RRT        DCB=(LRECL=230,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=284,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*RRT-FIN
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*CAMACHO-FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPDV1401),DISP=SHR
//*
//**********************************************************************
//*  SORT   ARCHIVO DE SUITABILITY PARA OBTENER SI ES SOFITICADO O NO  *
//**********************************************************************
//PDV14P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.F&FECHA..CTOSEDOS.PDVF2,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CTOSEDOS.PDVF2.REP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPDV1402),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     FIN PRC                                        *
//*--------------------------------------------------------------------*
