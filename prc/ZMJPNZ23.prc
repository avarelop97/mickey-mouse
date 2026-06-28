//ZMJPNZ23 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  SOCIEDADES DE INVERSION  <<<<              *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  CBJPCZ23                                            *
//*                                                                    *
//*   PROCEDIM. :  ZMJPNZ23                                            *
//*                                                                    *
//*   OBJETIVO  :  ACTUALIZACION DE ESTRATOS A CUENTAS UDIS.           *
//*                                                                    *
//*   CORRE ANTES DE  : A PETICION DEL USUARIO                         *
//*                                                                    *
//*   CORRE DESPUES DE: A PETICION DEL USUARIO                         *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA         DESCRIPCION                   *
//* ----------- --------- -------  ------------------------------------*
//*   @XXXXXX    XXXXXXX  DDMMMAA  ................................... *
//*    MARP      XMY6669  27JUL18  SE AJUSTA LONGITUD DE ARCHIVOS:     *
//*                                -MXCP.ZM.FIX.SDI.CBJPCZ23.CTASEST   *
//*                                -MXCP.ZM.FIX.SDI.CBJPCZ23.RCTASAPL  *
//**********************************************************************
//*--------------------------------------------------------------------*
//* PASO       : PJP23P90                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE TABLAS ZMDT815                            *
//*--------------------------------------------------------------------*
//PJP23P90 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PJP23P90,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.ZM815,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSPUNCH DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCNTL  DD DUMMY
//SYSCNTL1 DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP23P85                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE TABLAS: TIPCAMB                           *
//*--------------------------------------------------------------------*
//PJP23P85 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PJP23P85,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.TIPCAMB,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSPUNCH DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCNTL  DD DUMMY
//SYSCNTL1 DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP23P80                                              *
//* UTILERIA   : IKJEFT1A/ZM4MJ181                                     *
//* OBJETIVO   : GENERA REPORTES DE LAS CUENTAS CON UDI A LO LARGO DE  *
//*              UN ANIO.                                              *
//*--------------------------------------------------------------------*
//PJP23P80 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.ZM815,
//            DISP=SHR
//*
//E2DQENT2 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.TIPCAMB,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.CTASUDI,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=799,BLKSIZE=0)
//*
//S2DQSAL2 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.CTASEST,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=025,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP20T10),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP23P75                                              *
//* UTILERIA   : IKJEFT1A/ZM4MJ182                                     *
//* OBJETIVO   : ACTUALIZA ESTRATOS DE CUENTAS CON UDI MENOR O MAYOR   *
//*--------------------------------------------------------------------*
//PJP23P75 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.CTASEST,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.CTASAPL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=048,BLKSIZE=0)
//*
//S2DQSAL2 DD DSN=MXCP.ZM.FIX.SDI.CBJPCZ23.RCTASAPL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=066,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP20T11),
//            DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJPNZ23 SIVA MULTIEMPRESA                  *
//**********************************************************************
