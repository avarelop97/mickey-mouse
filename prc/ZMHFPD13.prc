//ZMHFPD13 PROC
//**********************************************************************
//* SISTEMA        :  ZM - RIESGO DE LIQUIDEZ                          *
//*                                                                    *
//* PROCESO        :  CBHFND13 (SUBMITIDOR)                            *
//*                   ZMHFPD13 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVOS CON LOS MOVIMIENTOS Y POSICION   *
//*                   PROPIA DE MERCADO CAPITALES PARA SU ENVIO AL SIRE*
//*                                                                    *
//* PERIODICIDAD   :  REPROCESO EVENTUAL                               *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*  MARCA      AUTOR     FECHA  DESCRIPCION                           *
//* ----------- --------- ------ --------------------------------------*
//* FS-9.9.9-99 XXXXXXXXX DDMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO CON LOS MOVIMIENTOS  Y  POSICION PROPIA  *
//*            DE MERCADO DE CAPITALES  PARA SU ENVIO AL SIRE.         *
//**********************************************************************
//PHF13P01 EXEC PGM=IKJEFT01
//*
//ZMFH0961 DD DSN=MXCP.ZM.FIX.MDC.ECBP.REPR.RENVAR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMFH0962 DD DSN=MXCP.ZM.FIX.MDC.ECBP.REPR.CIFCTRL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHF29P02),DISP=SHR
//**********************************************************************
//**              FIN DEL PROCEDIMIENTO ZMHFPD13                       *
//**********************************************************************
