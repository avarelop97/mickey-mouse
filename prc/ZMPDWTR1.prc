//ZMPDWTR1 PROC
//*====================================================================*
//*    NOMBRE            :ZMPDWTR1                                     *
//*    APLICATIVO        :ZM@                                          *
//*    PROYECTO          :WEB TRADER(BCOM)                             *
//*    PERIODICIDAD      :DIARIO                                       *
//*    AUTOR             :J&B                                          *
//*    FECHA DE CREACION :25 DE MAYO DE 2017.                          *
//*====================================================================*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*    XXXXXXX    XXXXXXX  DDMMMAA    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  *
//*--------------------------------------------------------------------*
//*                                                                    *
//*====================================================================*
//* PASO     : ZMWTR001                                                *
//* PROGRAMA : ZM4WTR04                                                *
//* OBJETIVO : GENERA REPORTES CON ALTAS PATRIMONIALES                 *
//*            BANCOMER.COM                                            *
//*====================================================================*
//ZMWTR001 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//S1DQREP1 DD DSN=MXC&AMB..ZM.WKF.BCJDWTR1.ALTASPAT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=46,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMWTR004),DISP=SHR
//*
//**********************************************************************
//*                   F I N     D E    J C L                           *
//**********************************************************************
