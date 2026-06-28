//ZMHCND37  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : ZMHCND37                                             *
//*____________________________________________________________________*
//*                                                                    *
//* AUTOR       : FSW-DGCM                                             *
//* FECHA       : 05 DE FEBRERO DEL 2015                               *
//*____________________________________________________________________*
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* REPROCESO DE CALCULO DE COSTO PROMEDIO PARA LA EJECUCION DESDE UN  *
//* DIA EN ESPECIFICO PARA UNA CUENTA Y CONCEPT CAPTURADOS.            *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*====================================================================*
//* PASO     : PHC37P00                                                *
//* PROGRAMA : IKJEFT01/ZM4ISR29                                       *
//* OBJETIVO : REPROCSO COSTO PROMEDIO PONDERADO (COMERCIAL)(CAPITALES)*
//*====================================================================*
//PHC37P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*
//UNLOAD2  DD DUMMY
//*                                                                     01153001
//ZMISR9R1 DD DSN=MXC&AMB..ZM.FIX.CPPCOM.CUEREP.CBP.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//*                                                                     01155001
//ZMISR9R2 DD DSN=MXC&AMB..ZM.FIX.CPPCOM.CUEREP.BCM.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//*                                                                     01155001
//ZMISR9A1 DD DSN=MXC&AMB..ZM.FIX.CPPCOM.CUEREP.TRS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=080,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//ZMISR9A2 DD DSN=MXC&AMB..ZM.FIX.CPPCOM.CUEREP.ARCH.ORI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=311,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//ZMISR9A3 DD DSN=MXC&AMB..ZM.FIX.CPPCOM.CUEREP.ARCH.NVO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=311,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*                                                                     01155001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC37T29),DISP=SHR                   01230041
//*                                                                     01155001
//*====================================================================*
//* PASO     : PHC37P01                                                *
//* PROGRAMA : IKJEFT01/ZM4ISR09                                       *
//* OBJETIVO : REPROCSO DE COSTO PROMEDIO/ISR (FISCAL) (CAPITALES)     *
//*====================================================================*
//PHC37P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*
//UNLOAD2  DD DUMMY
//*                                                                     01153001
//ZMISR9R1 DD DSN=MXC&AMB..ZM.FIX.CUEREP.COSPROM.CBP.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//*                                                                     01155001
//ZMISR9R2 DD DSN=MXC&AMB..ZM.FIX.CUEREP.COSPROM.BCM.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//*                                                                     01155001
//ZMISR9A1 DD DSN=MXC&AMB..ZM.FIX.CUEREP.TRASPAS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=080,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//ZMISR9A2 DD DSN=MXC&AMB..ZM.FIX.CUEREP.ARCH.ORI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=311,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//ZMISR9A3 DD DSN=MXC&AMB..ZM.FIX.CUEREP.ARCH.NVO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=311,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*                                                                     01155001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC37T01),DISP=SHR                   01230041
//*                                                                     01155001
//*--------------------------------------------------------------------*
//* PASO    : PHISR899                                                 *
//* PROGRAMA: ZM4MAT01                                                 *
//* OBJETIVO: LEE LOS ARCHIVOS DE ANTES Y DESPUES DEL REPROCESO ORDENA *
//*           LAS SALIDAS DE TAL MANERA QUE LAS SALIDAS QUEDEN JUNTAS  *
//*---------------------------------------------------------------------
//PHISR899 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMMATCA1 DD DSN=MXC&AMB..ZM.FIX.CUEREP.ARCH.ORI,
//            DISP=SHR
//*
//ZMMATCA2 DD DSN=MXC&AMB..ZM.FIX.CUEREP.ARCH.NVO,
//            DISP=SHR
//*
//ZMMATCA3 DD DSN=MXC&AMB..ZM.FIX.CUEREP.INICIAL.ARCHIVO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE),
//            DCB=(LRECL=311,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC37T37),DISP=SHR
//**********************************************************************
//* OBJETIVO : JUNTA LOS ARCHIVOS DE SALIDA                            *
//**********************************************************************
//*PHISR900 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//*SORTIN   DD DSN=MXC&AMB..ZM.FIX.CUEREP.ARCH.ORI,DISP=SHR
//*         DD DSN=MXC&AMB..ZM.FIX.CUEREP.ARCH.NVO,DISP=SHR
//*
//*SORTOUT  DD DSN=MXC&AMB..ZM.FIX.CUEREP.INICIAL.ARCHIVO,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=311,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//*SYSOUT   DD SYSOUT=*
//*
//*SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC37T00),DISP=SHR
//*
//*====================================================================*
//*         F I N    D E L    P R O C E S O    Z M H C P D 2 5         *
//*====================================================================*
