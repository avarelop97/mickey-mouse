//ZMPPGD21 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - BCPPGD21.                                      *
//* PROCESO      : ZMPPGD21                                            *
//* PERIODICIDAD : QUINCENAL                                           *
//* OBJETIVO     : CARGA DE TIPOS VALOR CON NUEVA CANASTA DE INVERSION *
//* REALIZO      : XM020MQ                                             *
//* FECHA        : AGOSTO DE 2018.                                     *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//* PASO       : ZPP21T01.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG44                                     *
//* OBJETIVO   : CARGA DE TIPOS VALOR CON NUEVA CANASTA DE INVERSION   *
//*--------------------------------------------------------------------*
//*
//ZPP21T01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMPPG4E1 DD DSN=MXCP.ZM.FIX.PPG.DOLA.ZM4PPG44.TRAN,
//            DISP=SHR
//*
//ZMPPG4S1 DD DSN=MXCP.ZM.FIX.PPG.DOLA.ZM4PPG44.INCI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=172,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//ZMPPG4S2 DD DSN=MXCP.ZM.FIX.PPG.DOLA.ZM4PPG44.CFC,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=120,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP21T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                       FIN PROCESO ZMPPGD21                         *
//*--------------------------------------------------------------------*
