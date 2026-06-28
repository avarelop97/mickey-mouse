//ZMUDND39 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE INFORMACION ESTADISTICA      *
//*                               (S. I. I. E.)                        *
//* PROCESO        :  ZMUDND39                                         *
//*                   TENENCIA ESTADISTICA                             *
//* OBJETIVO       :  MODULO DE OPERATIVIDAD                           *
//* REALIZO        :  CDA INFORMATICA                                  *
//* FECHA          :  MAYO DE 2010                                     *
//* OBJETIVO       :  GENERACION DE ARCHIVO DE CAPTACION NETA POR      *
//*                   CONTRATO                                         *
//**********************************************************************
//*
//**********************************************************************
//*                         === ZM4DL16B ===                           *
//* OBJETIVO : GENERACION DE ARCHIVO DE CAPTACION NETA POR CONTRATO    *
//**********************************************************************
//ZLF39P35 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//Z4DL16A1 DD DSN=SIVA.SIE.FIX.CONTRATO.DIARIO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,20),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=105,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT  DD SYSOUT=*
//*SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSABOUT  DD DUMMY
//SYSUDUMP  DD DUMMY
//SYSPRINT  DD SYSOUT=*
//QRLSDB2   DD SYSOUT=*
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZLF39T35),DISP=SHR
//**********************************************************************
//*                          === ZM4DL95D ===                          *
//* OBJETIVO :  DEPURACION TABLAS DE MODULO SIVATIVIDAD SIIE           *
//*             PROGRAMA REINICIABLE                                   *
//* DEPURA LAS TABLAS AGPOOPE Y SESIVA                                 *
//**********************************************************************
//ZLF39P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//*SYSTSPRT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF39T30),DISP=SHR
//**********************************************************************
//*                         === ZM4DL94D ===                           *
//* OBJETIVO :  REGISTRAR OPERACION  DEL DIA                           *
//*             PROGRAMA REINICIABLE                                   *
//* ACTUALIZA LA TABLA SESIVA A PARTIR DE LAS TABLAS ECMOVDI, GPOOPE   *
//*           Y AGPOOPE                                                *
//**********************************************************************
//ZLF39P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*Z4DL94R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*Z4DL94R1 DD DSN=MXCP.ZM.FIX.ZMUDND39.REPORTE1,
//*        DISP=(NEW,CATLG,DELETE),
//*        DCB=(LRECL=133,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*        UNIT=3390,
//*        SPACE=(CYL,(5,10),RLSE)
//*
//Z4DL94R1 DD DUMMY
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF39T25),DISP=SHR
//**********************************************************************
//*                         === ZM4DL89D ===                           *
//* OBJETIVO :  REALIZA EL REPROCESO DE REGISTROS CORREGIDOS           *
//*             PROGRAMA REINICIABLE                                   *
//* ACTUALIZA LA TABLA SESIVA A PARTIR DE LAS TABLAS SEREPRO, GPOOPE   *
//*           Y AGPOOPE                                                *
//**********************************************************************
//ZLF39P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF39T20),DISP=SHR
//*
//**********************************************************************
//*                         === ZM4DL23D ===                           *
//* OBJETIVO :  INVERSION MAXIMA CLIENTE.                              *
//*             PROGRAMA REINICIABLE                                   *
//* ACTUALIZA LA TABLA SEHIPRO, CTLPROC, CUENTA PARAM                  *
//**********************************************************************
//ZLF39P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF39T15),DISP=SHR
//**********************************************************************
//*                          -- ZM4DL24M --                            *
//* OBJETIVO    : TABLA DE SIVATIVIDAD MENSUAL                         *
//* ACTUALIZA   : GENERA UNICAMENTE 1 ARCHIVO                          *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF39P10 EXEC PGM=IKJEFT01,COND=(4,LT),PARM='/DEBUG'
//SYSTSPRT DD SYSOUT=*
//IDOPMES  DD DSN=SIVA.SIE.FIX.IDOPMES,DISP=SHR
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF39T10),DISP=SHR
//**********************************************************************
//*                         === ZM4DL08M ===                           *
//* OBJETIVO    : VOLUMEN OPERADO POR PROMOTOR MERCADO                 *
//* MODULO      : MERCADO DE DINERO                                    *
//* ACTUALIZA   : GENERA UNICAMENTE 1 REPORTE                          *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF39P05 EXEC PGM=IKJEFT01,COND=(7,LT),PARM='/DEBUG'
//SYSTSPRT DD SYSOUT=*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*Z4DL08R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*Z4DL08R1 DD DSN=MXCP.ZM.FIX.ZMUDND39.REPORTE2,
//*        DISP=(NEW,CATLG,DELETE),
//*        DCB=(LRECL=133,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*        UNIT=3390,
//*        SPACE=(CYL,(5,10),RLSE)
//*
//Z4DL08R1 DD DUMMY
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF39T05),DISP=SHR
//**********************************************************************
