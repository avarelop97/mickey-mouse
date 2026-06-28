//ZMPRCJE0 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - VALORES                                        *
//* PROCESO      : ZMPRCJE0                                            *
//* PERIODICIDAD : EVENTUAL                                            *
//* OBJETIVO     : REPORTE DE MONITOREO GENERAL DE INVERSINOES         *
//* REALIZO      : INDRA XM02721                                       *
//* FECHA        : JUNIO 2019                                          *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//**********************************************************************
//* PASO       : ZMCJE010                                              *
//* PROGRAMA   : ZM3DG001                                              *
//**********************************************************************
//ZMCJE010 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.ZMPRCJE0,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//* PASO       : ZMCJE005                                              *
//* UTILERIA   : IKJEFT01/ZM4CCJE0                                     *
//* OBJETIVO   : ALTA MASIVA DE EMISORAS DE FONDOS DE INVERSION        *
//**********************************************************************
//ZMCJE005 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1ZMFDOS DD DSN=MXCP.ZM.FIX.ZMPRCJE0.FONDOS,DISP=SHR
//*
//S1ZMFDOS DD DSN=MXCP.ZM.FIX.ZMPRCJE0.ALTAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCJE0T1),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                      FIN PROCESO ZMPRCJE0                          *
//*--------------------------------------------------------------------*
