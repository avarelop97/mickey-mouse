//ZMJIPD14 PROC                                                         00001000
//*                                                                     00002000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  ARCHIVOS DE  SIVA >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMJIPD14.                                           *
//*                                                                    *
//*   OBJETIVO  :  GENERAR ARCHIVOS PARA INTERFAZ DE SIVA Y DIFO PARA  *
//*                DECALOG.                                            *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  CBJFCD06                                      *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR: DYD CASA DE BOLSA                                 *
//*                                                                    *
//*   FECHA:  SEPTIEMBRE 2012                                          *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |NOV 2012  |XM020LB|PJI14P70| SE INSERTO EL PASO PJI14P70     *
//*      |          |       |        | SE POBLA LA TABLA TZMDT800      *
//*      |          |       |        |                                 *
//*      |NOV 2012  |XM020LB|PJI14P55| CAMBIA LONGITUD DEL PASO        *
//*      |          |       |        | PJI14P55 CAMBIA A 600           *
//*      |          |       |        |                                 *
//*      |NOV 2012  |XM020LB|PJI14P50| SE EXTRAE INFORMACION DE LA     *
//*      |          |       |        | TABLA CATOPER PARA ENVIR A      *
//*      |          |       |        | DECALOG                         *
//*      |          |       |        |                                 *
//*      |NOV 2012  |XM020LB|PJI14P45| SE BORRA EL PASO 45 QUE EXTRAE  *
//*      |          |       |        | LA TABLA TZMDT615               *
//*      |          |       |        |                                 *
//*      |ENE 2013  |XM020LB|PJI14P75| SE INSERTA EL PASO 75 QUE EXTRAE*
//*      |          |       |        | LA TABLA CONCEPT.               *
//*ITS01 |OCT 2013  |XMBJ067|PJI14P50| SE MODIFICA LONGITUD DEL ARCHIVO*
//*      |          |       |        | DE SALIDA.                      *
//**********************************************************************00010000
//*  PASO: 75     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJI14P75     PGM ZM4DJB33                        TABLA CONCEPT    *00020000
//**********************************************************************00060000
//PJI14P75 EXEC PGM=IKJEFT01                                            00040000
//*
//ZMJB33A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CONCEPT.PRCINI,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=358,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T75),DISP=SHR                   00140000
//**********************************************************************
//*  PASO: 70     PROGRAMA QUE POBLA LA TABLA ZMDT800                  *
//*  PJI14P70     PGM ZM4DJB17                                         *
//**********************************************************************
//PJI14P70 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T45),DISP=SHR
//**********************************************************************00010000
//*  PASO: 65     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJI14P65     PGM ZM4DJB07                        TABLA CARTERA    *00020000
//**********************************************************************00060000
//PJI14P65 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB07A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CARTERA.PRCINI,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=206,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T65),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 60     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJI14P60     PGM ZM4DJB14                        TABLA ZMDT703    *00020000
//**********************************************************************00060000
//PJI14P60 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB14A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZMDT703.PRCINI,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=159,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T60),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 55     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJI14P55     PGM ZM4DJB15        TABLAS ZMDT612, ZMDT614, ZMDT615 *00020000
//**********************************************************************00060000
//PJI14P55 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB15A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CONS612.PRCINI,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=600,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T55),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 50     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJI14P50     PGM ZM4DJB16                        TABLA CATOPER    *00020000
//**********************************************************************00060000
//PJI14P50 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB16A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CATOPER.PRCINI,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//*ITS01-INI
//*            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS)
//             DCB=(LRECL=149,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*ITS01-FIN
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T50),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 40     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJI14P40     PGM ZM4DJB18                        TABLA DEMANDA    *00020000
//**********************************************************************00060000
//PJI14P40 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB18A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..DEMANDA.PRCINI,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=236,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T40),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 35     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJI14P35     PGM ZM4DJB20                        TABLA ZMDT800    *00020000
//**********************************************************************00060000
//PJI14P35 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB20A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZMDT800.PRCINI,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=162,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T35),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 30     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJI14P30     PGM ZM4DJB13                        TABLA OPERA      *00020000
//**********************************************************************00060000
//PJI14P30 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB13A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERA.PRCINI,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=384,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T30),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 25     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJI14P25     PGM ZM4DJB12                        TABLA OPERAVA    *00020000
//**********************************************************************00060000
//PJI14P25 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB12A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERAVA.PRCINI,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=384,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T25),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 20     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJI14P20     PGM ZM4DJB11                        TABLA OPERATE    *00020000
//**********************************************************************00060000
//PJI14P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB11A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERATE.PRCINI,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=384,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T20),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 15     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJI14P15     PGM ZM4DJB09                        TABLA OPERASI    *00020000
//**********************************************************************00060000
//PJI14P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB09A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERASI.PRCINI,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=384,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T15),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 10     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJI14P10     PGM ZM4DJB08                        TABLA OPERDIN    *00020000
//**********************************************************************00060000
//PJI14P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB08A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERDIN.PRCINI,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=384,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T10),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 05     FUSION DE ARCHIVOS PARA ENVIAR AL CAM                *00030000
//*  PJI14P05                                                          *00020000
//**********************************************************************00060000
//PJI14P05 EXEC PGM=ICEGENER,COND=(0,NE)                                00040000
//*
//SYSOUT   DD SYSOUT=*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERA.PRCINI,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERAVA.PRCINI,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERATE.PRCINI,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERASI.PRCINI,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERDIN.PRCINI,
//            DISP=SHR
//*
//SYSUT2   DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CONCOPER.PRCINI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=384,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*          F I N      Z M J I P D 1 4                                *
//**********************************************************************
