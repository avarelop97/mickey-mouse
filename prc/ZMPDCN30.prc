//ZMPDCN30 PROC
//*
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : ZMPDCN30                                             *
//* OBJETIVO    : GENERAR DE REPORTE CRUCES MISMO CLIENTE.             *
//* REALIZO     : ROG.                                                 *
//* FECHA       : 20/ENERO/2021.                                       *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*                                                                    *
//**********************************************************************
//* PASO        : PHCN0301.                                            *
//* PROGRAMA    : IKJEFT01/ZM4MH030                                    *
//* DESCRIPCION : GENERA REPORTE DE INTENTO DE CRUCE ORD. DE CAPITALES *
//**********************************************************************
//PHCN0301 EXEC PGM=IKJEFT01
//*
//ZMFH0301 DD DSN=MXCP.ZM.FIX.ROG.CRUCES,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=542,BLKSIZE=0),
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHFC3T01),DISP=SHR
//*
//*
//**********************************************************************
//*                                                                    *
//*                           FIN DE PROCESO                           *
//*                                                                    *
//**********************************************************************
