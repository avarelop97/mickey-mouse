//ZMUEPM98 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  FONDOS DE RESPONSABILIDAD SOCIAL                 *
//*                                                                    *
//* PROCESO        :  ZMUEPM98                                         *
//*                                                                    *
//* OBJETIVO       :  GENERA EL PROCESO PARA LA OBTENCION DE LOS       *
//*                   ARCHIVOS, LOS CUALES GENERARAN LISTADOS          *
//* CORRE                                                              *
//* ANTES DE       :  A PETICION DEL USUARIO                           *
//*                                                                    *
//* A PARTIR DE    : XX:XX HRS.                                        *
//* HASTA          : XX:XX HSR.                                        *
//*                                                                    *
//* REALIZO        :  CAPGEMINI                                        *
//* FECHA          :  JULIO   2009                                     *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA MENSUALMENTE       *
//*                   AUTOMATICAMENTE                                  *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*   @STK-01    SOFTTEK 15062011  SE CAMBIARA LA LONGUTUD DEL ARCHIVO *
//*              (CEEB)            DE LA SALIDA 4                      *
//*--------------------------------------------------------------------*
//**********************************************************************
//*                  BITACORA DE MODIFICACIONES.                       *
//**********************************************************************
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*  PASO: ZMFRS003   EJECUCION DEL PROGRAMA ZM4MU015                  *
//*                   GENERA ARCHIVO PARA GENERAR LISTADO DE DIVIDENDOS*
//*                   DE SOCIEDADES DE INVERSION                       *
//**********************************************************************
//ZMFRS003 EXEC PGM=IKJEFT1A
//*
//SALIDA   DD DSN=MXC&AMB..ZM.FIX.SDI.DVDENDOS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=221,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMFRS003),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*  PASO: ZMFRS002   EJECUCION DEL PROGRAMA ZM4MU016                  *
//*                   GENERA ARCHIVO PARA GENERAR LISTADO DE CLIENTES  *
//*                   EXTRANJEROS                                      *
//**********************************************************************
//ZMFRS002 EXEC PGM=IKJEFT1A,COND=(0,NE)
//*
//SALIDA   DD DSN=MXC&AMB..ZM.FIX.SDI.CTES.EXTR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=168,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMFRS002),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*  PASO: ZMFRS001   EJECUCION DEL PROGRAMA ZM4MU017                  *
//*                   GENERA ARCHIVO PARA GENERAR LISTADO DE CLIENTES  *
//*                   A LOS CUALES NO SE LES IMPRIME ESTADOS DE CUENTA *
//**********************************************************************
//ZMFRS001 EXEC PGM=IKJEFT1A,COND=(0,NE)
//*
//SALIDA1  DD DSN=MXC&AMB..ZM.FIX.ECT.ECPZA900,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=437,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SALIDA2  DD DSN=MXC&AMB..ZM.FIX.ECT.ECPZA000,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=437,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SALIDA3  DD DSN=MXC&AMB..ZM.FIX.ECT.ECMEN10M,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=437,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SALIDA4  DD DSN=MXC&AMB..ZM.FIX.ECT.ECMAY10M,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//*@STK-01-I
//*           DCB=(LRECL=437,RECFM=FB,BLKSIZE=0,DSORG=PS)
//            DCB=(LRECL=457,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*@STK-01-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMFRS001),DISP=SHR
//*                                                                    *
//**********************************************************************
//*                          == ZM4MU340 ==                            *
//* OBJETIVO : CARGA LA TABLA EDCUENTA DESDE CUENTA                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PUE45P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE45T01),DISP=SHR
//*
