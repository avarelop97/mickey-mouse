//ZMRNDP01 PROC
//**********************************************************************
//*                B A N C A  P A T R I M O N I A L                    *
//*                ================================                    *
//*                     <<<   RENDIMIENTOS    >>>                      *
//*                                                                    *
//*   APLICACION:  MODULO UNICO DE VALORES (MUV)                       *
//*                                                                    *
//*   PROCEDIM. :  ZMRNDP01 LO LLAMA BCJRND01.
//*                                                                    *
//*   OBJETIVO  :  REPORTE DE RENDIMIENTOS
//*                                                                    *
//*   DESPUES DE   :  BCJFCD10                                         *
//*                                                                    *
//*   PERIODICIDAD :  DIARIA INIDIA
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//* PROGRAMA: ZM4RS001                                                 *
//* FUNCION:  CARGA DE TABLA DE RENDIMIENTOS DIARIOS                   *
//* INSERTA  ZMDT872                                                   *
//*--------------------------------------------------------------------*
//PRN01P02 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZRS01T01),DISP=SHR
//**********************************************************************
//* PROGRAMA: ZM4RS003                                                 *
//* FUNCION:  ACTUALIZA RENDIMIENTO ANUAL ANIO ANTERIOR                *
//* INSERTA  ZMDT872                                                   *
//*--------------------------------------------------------------------*
//PRN01P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZRS01T03),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4RS002                                                 *
//* FUNCION:  GENERAR REPORTE DE RENDIMIENTOS PAT                      *
//*--------------------------------------------------------------------*
//PRN01P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//ZMS002A1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..RENDIM.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=1114,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZRS01T02),DISP=SHR
//*
//*-------------------------------------------------------------------*
//*                    TERMINA ZMRNDP01                               *
//*-------------------------------------------------------------------*
