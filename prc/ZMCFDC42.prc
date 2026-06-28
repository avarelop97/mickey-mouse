//ZMCFDC42 PROC
//*--------------------------------------------------------------------*
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : VALIDA RESPUESTA DEL ARCHIVO DE CONFIRMACION DE     *
//*                LA CANCELACION DE FOLIOS FISCALES (INGRESOS)        *
//* FECHA        : JULIO 2019                                          *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDC4201                                               *
//*   OBJETIVO: VALIDA ARCHIVO DE CONFIRMACION DE CANCELACION DE       *
//*             FOLIOS FISCALES (INGRESOS)                             *
//*                     -- ZM4CFD05 --                                 *
//*--------------------------------------------------------------------*
//ZMDC4201 EXEC PGM=IKJEFT01
//*
//CONFIRM  DD DSN=MXCP.ZM.FIX.ECBP.CONFIRM.INGRESO,
//            DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.RECHAZA.INGRESO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=21,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC4201),DISP=SHR
//*
