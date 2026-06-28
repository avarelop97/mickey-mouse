//**********************************************************************
//ZMJFPD06 PROC                                                         00001000
//*                                                                     00002000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  ARCHIVOS DEL CAM  >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBJFCD06                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERAR ARCHIVOS PARA INTERFAZ DE CAM Y DECALOG     *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  CBJFCD05                                      *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR: DYD CASE DE BOLSA                                 *
//*                                                                    *
//*   FECHA:  SEPTIEMBRE 2010                                          *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*@MOD01|27-03-2013|XMCH068|PLD06P03| SE AGREGA NUEVO PASO.           *
//*@MOD02|14-04-2014|XMCH068|PLD06P02| SE AGREGAN DOS NUEVOS PASOS.    *
//*                         |PLD06P01|                                 *
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO: 95     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00030000
//*  PLD06P95     GRABA EN ARCHIVO SECUENCIAL.                         *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PLD06P95 EXEC PGM=ZM3DG001,COND=(4,LT),
//        PARM=('&EMP','&AMB','     ','     ',)
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZMJFPD06,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//**********************************************************************00010000
//*  PASO: 93     PROGRAMA QUE GENERA ARCHIVO MOVIMIENTOS DE EDOS CTAS *00030000
//*  PLD06P93                                               ZM4DJA42   *00020000
//**********************************************************************00060000
//**********************************************************************00060000
//PLD06P93 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA42A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..MOVS.EDO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=400,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T93),DISP=SHR                   00140000
//**********************************************************************
//**********************************************************************
//*  PASO: 92     PROGRAMA QUE GENERA ARCHIVO MOVIMIENTOS DE PORVENIR  *
//*  PLD06P92                                               ZM4DJA91   *
//**********************************************************************
//**********************************************************************
//PLD06P92 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDJ91A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..FVAL.PVN,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=600,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T92),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO: 90     PROGRAMA QUE GENERA ARCHIVO MOVIMIENTOS PARA EL CAM  *00030000
//*  PLD06P90                                               ZM4DJA61   *00020000
//**********************************************************************00060000
//PLD06P90 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA61A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..MOVS.CAM,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=1200,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T90),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 85     PROGRAMA QUE GENERA  LOS INGRESOS PARA EL CAM        *00030000
//*  PLD06P85                                               ZM4DJA40   *00020000
//**********************************************************************00060000
//PLD06P85 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA40A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..INGRESOS,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=213,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T85),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 80     PROGRAMA QUE GENERA LOS INSTRUMENTOS PARA DECALOG    *00030000
//*  PLD06P80                                               ZM4DJA41   *00020000
//**********************************************************************00060000
//PLD06P80 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA41A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..INSTRUME,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=189,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T80),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 75     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PLD06P75                                               ZM4DJA34   *00020000
//**********************************************************************00060000
//PLD06P75 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA34A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ENVDECA1,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=155,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T75),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 70     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PLD06P70                                               ZM4DJA33   *00020000
//**********************************************************************00060000
//PLD06P70 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA33A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ENVDECA2,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=200,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T70),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 65     PROGRAMA QUE GENERA ARCHIVO DINERO FRESCO PARA CAM   *00030000
//*  PLD06P65                                               ZM4DJA50   *00020000
//**********************************************************************00060000
//PLD06P65 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA50A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..FRESCO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=1200,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T65),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 60     PROGRAMA QUE GENERA ARCHIVO DINERO FRESCO PARA CAM   *00030000
//*  PLD06P60     BANCA PATRIMONIAL                         ZM4DJA51   *00020000
//**********************************************************************00060000
//PLD06P60 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA51A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..FRESCOBP,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=1200,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T60),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 55     PROGRAMA QUE GENERA ARCHIVO DINERO FRESCO PARA CAM   *00030000
//*  PLD06P55     FIDEICOMISOS                              ZM4DJA52   *00020000
//**********************************************************************00060000
//PLD06P55 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA52A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..FRESCOFD,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=1200,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T55),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 50     PROGRAMA QUE GENERA ARCHIVO DINERO FRESCO PARA CAM   *00030000
//*  PLD06P50     MANEJO DE CUENTA                          ZM4DJA53   *00020000
//**********************************************************************00060000
//PLD06P50 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA53A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..FRESCOMC,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=1200,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T50),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 45     PROGRAMA QUE GENERA ARCHIVO DE LA POSICION PARA CAM  *00030000
//*  PLD06P45                                               ZM4DJA54   *00020000
//**********************************************************************00060000
//PLD06P45 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA54A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..POSICION,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=1200,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T45),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 40     PROGRAMA QUE GENERA ARCHIVO DE LA POSICION PARA CAM  *00030000
//*  PLD06P40     PARA REPORTOS                             ZM4DJA55   *00020000
//**********************************************************************00060000
//PLD06P40 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA55A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..REPORTOS,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=1200,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T40),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 35     PROGRAMA QUE GENERA ARCHIVO DE LA POSICION PARA CAM  *00030000
//*  PLD06P35     PARA PLAZOS                               ZM4DJA56   *00020000
//**********************************************************************00060000
//PLD06P35 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA56A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..PLAZOS,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=1200,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T35),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 30     PROGRAMA QUE GENERA ARCHIVO DE LA POSICION PARA CAM  *00030000
//*  PLD06P30     PARA DEPOSITOS Y RETIROS                  ZM4DJA57   *00020000
//**********************************************************************00060000
//PLD06P30 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA57A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..DEPRET,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=1200,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T30),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 25     PROGRAMA QUE GENERA ARCHIVO DE LA POSICION PARA CAM  *00030000
//*  PLD06P25     PARA CORTE DE CUPON                       ZM4DJA58   *00020000
//**********************************************************************00060000
//PLD06P25 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA58A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CCUPON,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=1200,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T25),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 20     PROGRAMA QUE GENERA ARCHIVO DE LA POSICION PARA CAM  *00030000
//*  PLD06P20     PARA AMORTIZACIONES                       ZM4DJA59   *00020000
//**********************************************************************00060000
//PLD06P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA59A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..AMORTIZA,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=1200,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T20),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 15     PROGRAMA QUE GENERA ARCHIVO DE LA POSICION PARA CAM  *00030000
//*  PLD06P15     PARA COMISIONES                           ZM4DJA60   *00020000
//**********************************************************************00060000
//PLD06P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJA60A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..COMISION,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=1200,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T15),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 05     FUSION DE ARCHIVOS PARA ENVIAR AL CAM                *00030000
//*  PLD06P05                                                          *00020000
//**********************************************************************00060000
//PLD06P05 EXEC PGM=ICEMAN,COND=(0,NE)                                  00040000
//*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..FRESCO,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..FRESCOBP,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..FRESCOFD,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..FRESCOMC,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..POSICION,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..REPORTOS,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..PLAZOS,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..DEPRET,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CCUPON,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..AMORTIZA,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..COMISION,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CONCILN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=1200,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJF06T05),DISP=SHR
//*
//*@MOD01-I
//**********************************************************************00010000
//*  PASO: 03     FUSION DE ARCHIVOS PARA ENVIAR AL CAM                *00030000
//*  PLD06P03                                               ZM4DJB35   *00020000
//**********************************************************************00060000
//PLD06P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMDJ35A1 DD DSN=MXC&AMB..ZM.FIX.SIE.OPERA.COMPENSA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(LRECL=700,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF06T03),DISP=SHR                   00140000
//*@MOD01-F
//*
//*@MOD02-I
//**********************************************************************00010000
//*  PASO: 02    GENERA LOS REGISTROS DE POSICION PARA ENVIO A DECALOG *00030000
//*  PLD06P02                                               ZM4DJB07   *00020000
//**********************************************************************00060000
//PLD06P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB07A1 DD DSN=MXC&AMB..ZM.FIX.SIE.POSICION.FINDIA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(LRECL=206,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T65),DISP=SHR                   00140000
//*
//**********************************************************************00010000
//*  PASO: 01    GENERA LOS REGISTROS DE MOVIMIENTOS PARA ENVIO A      *00030000
//*              DECALOG.                                              *00020000
//*  PLD06P01                                               ZM4DJB13   *00020000
//**********************************************************************00060000
//PLD06P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB13A1 DD DSN=MXC&AMB..ZM.FIX.SIE.MOVTOS.FINDIA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(LRECL=384,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T30),DISP=SHR                   00140000
//*@MOD02-F
//**********************************************************************
//*          F I N      Z M J F P D 0 6                                *
//**********************************************************************
