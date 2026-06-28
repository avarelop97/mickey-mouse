//ZMHCPD75  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : ZMHCPD75                                             *
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
//* PASO     : ZMHC7503                                                *
//* PROGRAMA : IKJEFT01/ZM4ISR15                                       *
//* OBJETIVO : REPROCSO DE COSTO PROMEDIO/ISR                          *
//*====================================================================*
//ZMHC7503 EXEC PGM=IKJEFT01
//*
//UNLOAD1  DD DSN=MXC&AMB..ZM.FIX.ANL.UNLOAD1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=42,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMH75T01),DISP=SHR                   01230041
//*
//**********************************************************************
//* PASO    : ZMHC7502                                                 *
//* PROGRAMA: IKJEFT01/ZM4ISR09 (ANTES ZM4ISR16)                       *
//* OBJETIVO: LEE LOS ARCHIVOS DE ANTES Y DESPUES DEL REPROCESO ORDENA *
//*           LAS SALIDAS DE TAL MANERA QUE LAS SALIDAS QUEDEN JUNTAS  *
//**********************************************************************
//ZMHC7502 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*
//UNLOAD2  DD DSN=MXC&AMB..ZM.FIX.ANL.UNLOAD1,DISP=SHR
//*                                                                     01153001
//ZMISR9R1 DD DSN=MXC&AMB..ZM.FIX.ANL.CUEREP.COSPROM.CBP.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//*                                                                     01155001
//ZMISR9R2 DD DSN=MXC&AMB..ZM.FIX.ANL.CUEREP.COSPROM.BCM.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//*                                                                     01155001
//ZMISR9A1 DD DSN=MXC&AMB..ZM.FIX.ANL.CUEREP.TRASPAS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=080,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//*                                                                     01155001
//ZMISR9A2 DD DSN=MXC&AMB..ZM.FIX.ANL.CUEREP.ARCH.ORI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=311,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*                                                                     01155001
//ZMISR9A3 DD DSN=MXC&AMB..ZM.FIX.ANL.CUEREP.ARCH.NVO,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMH75T02),DISP=SHR                   01230041
//*
//**********************************************************************
//* PASO    : ZMHC7501                                                 *
//* PROGRAMA: ZM4MAT01                                                 *
//* OBJETIVO: LEE LOS ARCHIVOS DE ANTES Y DESPUES DEL REPROCESO ORDENA *
//*           LAS SALIDAS DE TAL MANERA QUE LAS SALIDAS QUEDEN JUNTAS  *
//**********************************************************************
//ZMHC7501 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMMATCA1 DD DSN=MXC&AMB..ZM.FIX.ANL.CUEREP.ARCH.ORI,
//            DISP=SHR
//ZMMATCA2 DD DSN=MXC&AMB..ZM.FIX.ANL.CUEREP.ARCH.NVO,
//            DISP=SHR
//*
//ZMMATCA3 DD DSN=MXC&AMB..ZM.FIX.ANL.CUEREP.INICIAL.ARCHIVO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=311,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC37T37),DISP=SHR
//*
//*====================================================================*
//*         F I N    D E L    P R O C E S O    Z M H C P D 7 5         *
//*====================================================================*
