//ZMPRCC30 PROC
//*
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : ZMPRCC30                                             *
//* OBJETIVO    : GENERAR DE REPORTE DE COMISIONES DE ARBITRAJE INT.   *
//* REALIZO     : ROG.                                                 *
//* FECHA       : 04/OCTUBRE/2021.                                     *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*                                                                    *
//**********************************************************************
//* PASO        : PHCN0201.                                            *
//* PROGRAMA    : IKJEFT01/ZM4MH030                                    *
//* DESCRIPCION : GENERA REPORTE CON COMISIONES DE CONTRATO OPERADOR DE*
//*               ARBITRAJE INTERNACIONAL.                             *
//**********************************************************************
//PHCN0201 EXEC PGM=IKJEFT01
//*
//ZMFS0201 DD DSN=MXCP.ZM.FIX.COMISION.ARBINT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZRCC1T01),DISP=SHR
//*
//**********************************************************************
//* PASO        : PHCN0200.                                            *
//* PROGRAMA    : IKJEFT01/ZM4RCC02                                    *
//* DESCRIPCION : GENERA ARCHIVO CON MOVIMIENTOS DE CONTRATOS DE       *
//* OUF.          ARBITRAJE INTERNACIONAL PROMOTOR 216.                *
//**********************************************************************
//PHCN0200 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//MOVARB01 DD DSN=MXCP.ZM.FIX.MOVTOS.ARBINT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=216,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZRCC1T00),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*                           FIN DE PROCESO                           *
//*                                                                    *
//**********************************************************************
