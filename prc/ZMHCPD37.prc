//ZMHCPD37 PROC                                                         00040000
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBHCND36 (PRC-ZMHCPD37).                         *
//*                                                                    *
//* OBJETIVO       :  REALIZA CARGA DE OPERACIONES A LA TABLA HISTORICA*
//*                   DE OPERACIONES.                                  *
//*                                                                    *
//* PERIODICIDAD   :  MENSUAL                                          *
//*                                                                    *
//* ELABORADO POR  :  CDA-INFORMATICA(FOU).                            *
//*                                                                    *
//**********************************************************************
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//* PASO    : PHC36P03                                                 *
//* PROGRAMA: ZM4HHO11                                                 *
//* OBJETIVO: PROGRAMA QUE GENERA ARCHIVOS DE DESCARGA DE LAS TABLAS   *
//*           DE SECART Y LA HISTORICA DE CARTERA(ZMDTHSE) DEL MES     *
//*           RECIEN TERMINADO                                         *
//*---------------------------------------------------------------------
//PHC36P03 EXEC PGM=IKJEFT01
//*
//SECART   DD DSN=MXCP.ZM.FIX.SECART.SALIDA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(LRECL=141,RECFM=FB,BLKSIZE=0,DSORG=PS)
//HISTORI  DD DSN=MXCP.ZM.FIX.ZMDTHSE.SALIDA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(LRECL=141,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC36T03),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO    : PHC36P02                                                 *
//* PROGRAMA: ZM3HHO12                                                 *
//* OBJETIVO: PROGRAMA QUE REALIZA MATCH ENTRE ARCHIVOS DE DESCARGA    *
//*           PARA VALIDAR EXISTENCIA EN TABLA HISTORICA DE CARTERA    *
//*           (ZMDTHSE).                                               *
//*---------------------------------------------------------------------
//PHC36P02 EXEC PGM=ZM3HHO12,COND=(4,LT)
//ENTRADA  DD DSN=MXCP.ZM.FIX.SECART.SALIDA,DISP=SHR
//*
//ENTRAD2  DD DSN=MXCP.ZM.FIX.ZMDTHSE.SALIDA,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ARCHIVO.MENSUAL.HIS,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,750),RLSE),
//            DCB=(LRECL=142,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*--------------------------------------------------------------------*
//* PASO    : PHC36P01                                                 *
//* PROGRAMA: ZM4HHO01                                                 *
//* OBJETIVO: PROGRAMA QUE INGRESA OPERACIONES REALIZADAS DURANTE EL   *
//*           MES EN CURSO EN LA TABLA HISTORICA DE CARTERA            *
//*           (ZMDTHSE).                                               *
//*---------------------------------------------------------------------
//PHC36P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ARCHIVO.MENSUAL.HIS,DISP=SHR
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC36T01),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00003000
//*                          FINAL DEL PROCESO
//**********************************************************************00003000
