//ZMDDPS03 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* APLICACION       : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO  *
//*                                                                    *
//*                                                                    *
//* NOMBRE DEL PROC  : ZMDDPS03                                        *
//*                                                                    *
//* NOMBRE DEL JCL   : CBDDES03                                        *
//*                                                                    *
//* OBJETIVO         : DEPURAR LA TABLA SECART (SEMANAL)               *
//*                                                                    *
//* FECHA DE CREACION: FEBRERO 2014                                    *
//*                                                                    *
//* TIPO             : HJ1 - PROCLIB                                   *
//*                                                                    *
//* &AMB             : PREFIJO DEL ENTORNO DE EJECUCION.               *
//*                                                                    *
//* &FECHA           : FECHA DE PROCESAMIENTO DEL ENTORNO (AAMMDD).    *
//*                                                                    *
//* AUTOR            :                                                 *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E    M O D I F I C A C I O N E S             *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA   DESCRIPCION                         *
//* -----------  -------  -------  ----------------------------------- *
//* FS-1.0.0-01  XXXXXXX  DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA SECART (REGISTROS A DEPURAR)       *
//**********************************************************************
//ZMD03P09 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMD03P09,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.HSE.ZMDTHSE.SECART,
//            SPACE=(CYL,(1000,200),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=144,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHS99T10),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4HSE99                                     *
//* OBJETIVO   : GRABA EN LA TABLA ZMDTHSE LOS REGISTROS A DEPURAR     *
//**********************************************************************
//ZMD03P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZHSE99E1 DD DSN=MXCP.ZM.FIX.HSE.ZMDTHSE.SECART,DISP=SHR
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHS99T20),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMD03P05                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* OBJETIVO: BORRA ARCHIVO DE TRABAJO                                 *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZMD03P05 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMD03P05),DISP=SHR
//*
//********************************************************************
//* PASO       : ZMD03P03                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE LA TABLA SECART REGISTROS A CONSERVAR     *
//********************************************************************
//ZMD03P03  EXEC PGM=ADUUMAIN,                                          00022900
//          PARM='MXP1,ZMD03P03,NEW,,MSGLEVEL(1)',COND=(4,LT)           00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.WKF.SIE.VSECART,                              00023800
//            UNIT=3390,                                                00023900
//            SPACE=(CYL,(350,90),RLSE),DISP=(NEW,CATLG,DELETE),        00024000
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00024100
//*                                                                     00024200
//SYSCNTL  DD  DUMMY                                                    00024300
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMD03P03),DISP=SHR                   00024800
//*                                                                     00024400
//********************************************************************
//* PASO       : ZMD03P02                                              *
//* UTILERIA   : AMUUMAIN                                              *
//* ESTE PASO BAJA LA VISTA DE SECART A LA TABLA DEJANDOLA YA DEPURADA *
//* PASO NO REINICIABLE, RECUPERAR IMAGE COPY Y DESPUES REEJECUTAR     *
//* TODO EL JOB                                      ,RESTART(TERM)',  *
//**********************************************************************
//ZMD03P02 EXEC MBMCLOAD,COND=(4,LT),                                   0920002
//         UID=ZMD03P02.LOCAX,
//         CREATOR=PRODUSVP,
//*        CREATOR=PRUEBSVP,
//         NOMTAB=SECART,
//         OPTION=REPLACE,
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZMD03P02),
//         INPREC=DSN=MXCP.ZM.WKF.SIE.VSECART
//*
//**********************************************************************
//* PASO       : ZMD03P01                                              *
//* UTILERIA   : IDCAMS                                                *
//* OBJETIVO   : BORRA ARCHIVO DE TRABAJO, PASO REINICIABLE POR        *
//*              RESTART                                               *
//**********************************************************************
//ZMD03P01 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMD03P05),DISP=SHR
//*
//**********************************************************************
//*              TERMINA ZMDDPS03                                      *
//**********************************************************************
