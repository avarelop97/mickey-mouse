//ZMJFPD14 PROC                                                         00001000
//*                                                                     00002000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  ARCHIVOS DE  SIVA >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMJFPD14                                            *
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
//* 001  | NOV 2012 |XM020LB|PJF14P70| SE INSERTO EL PASO PJF14P70     *
//*      |          |       |        | SE POBLA LA TABLA TZMDT800      *
//*      |          |       |        |                                 *
//*      | NOV 2012 |XM020LB|PJF14P55| CAMBIA LONGITUD DEL PASO        *
//*      |          |       |        | PJI14P55 CAMBIA A 600           *
//*      |          |       |        |                                 *
//*      | NOV 2012 |XM020LB|PJF14P50| SE EXTRAE INFORMACION DE LA     *
//*      |          |       |        | TABLA CATOPER PARA ENVIR A      *
//*      |          |       |        | DECALOG                         *
//*      |          |       |        |                                 *
//*      | NOV 2012 |XM020LB|PJF14P45| SE BORRA EL PASO 45 QUE EXTRAE  *
//*      |          |       |        | LA TABLA TZMDT615               *
//*      |          |       |        | LOS DE LA TABLA ZMDT614         *
//*      |          |       |        |                                 *
//*DGCM01| SEP 2013 |XM26224|PJF14P04| SE AGREGA EL PASO AL CUERPO DEL *
//*      |          |       |        | PROCESO                         *
//*      |          |       |        |                                 *
//* ITS01| OCT 2013 |XMBJ067|PJF14P75| SE AGREGA EL PASO AL CUERPO DEL *
//*      |          |       |        | PROCESO                         *
//*      |          |       |PJF14P50| SE MODIFICA LONGITUD DEL ARCHIVO*
//*      |          |       |        | DE SALIDA.                      *
//**********************************************************************00010000
//*ITS01-INI
//**********************************************************************00010000
//*  PASO: 75  REALIZA CONCENTRADO DE INFORMACION DE LA TABLA CONCEPT  *00030000
//*  PJF14P75     PGM ZM4DJB33                                         *00020000
//**********************************************************************00060000
//PJF14P75 EXEC PGM=IKJEFT01                                            00040000
//*
//ZMJB33A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CONCEPT.INTRADIA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(LRECL=358,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T75),DISP=SHR                   00140000
//*ITS01-FIN
//**********************************************************************00010000
//*  PASO: 70     PROGRAMA QUE POBLA LA TABLA ZMDT800                  *00030000
//*  PJF14P70     PGM ZM4DJB17                                         *00020000
//**********************************************************************00060000
//PJF14P70 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T45),DISP=SHR                   00140000
//**********************************************************************00060000
//*  PASO: 65     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJF14P65     PGM ZM4DJB07                        TABLA CARTERA    *00020000
//**********************************************************************00060000
//PJF14P65 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB07A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CARTERA.INTRADIA,
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
//*  PJF14P60     PGM ZM4DJB14                        TABLA ZMDT703    *00020000
//**********************************************************************00060000
//PJF14P60 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB14A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZMDT703.INTRADIA,
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
//*  PASO: 55     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *
//*  PJF14P55     PGM ZM4DJB15        TABLAS ZMDT612, ZMDT614, ZMDT615 *
//**********************************************************************
//PJF14P55 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJB15A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CONS612.INTRADIA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(LRECL=600,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T55),DISP=SHR
//**********************************************************************00010000
//*  PASO: 50     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJF14P50     PGM ZM4DJB16                        TABLA CATOPER    *00020000
//**********************************************************************00060000
//PJF14P50 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB16A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CATOPER.INTRADIA,
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
//*  PJF14P40     PGM ZM4DJB18                        TABLA DEMANDA    *00020000
//**********************************************************************00060000
//PJF14P40 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB18A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..DEMANDA.INTRADIA,
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
//*  PJF14P35     PGM ZM4DJB20                        TABLA ZMDT800    *00020000
//**********************************************************************00060000
//PJF14P35 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB20A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZMDT800.INTRADIA,
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
//*  PJF14P30     PGM ZM4DJB13                        TABLA OPERA      *00020000
//**********************************************************************00060000
//PJF14P30 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB13A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERA.INTRADIA,
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
//*  PJF14P25     PGM ZM4DJB12                        TABLA OPERAVA    *00020000
//**********************************************************************00060000
//PJF14P25 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB12A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERAVA.INTRADIA,
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
//*  PJF14P20     PGM ZM4DJB11                        TABLA OPERATE    *00020000
//**********************************************************************00060000
//PJF14P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB11A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERATE.INTRADIA,
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
//*  PJF14P15     PGM ZM4DJB09                        TABLA OPERASI    *00020000
//**********************************************************************00060000
//PJF14P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB09A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERASI.INTRADIA,
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
//*  PJF14P10     PGM ZM4DJB08                        TABLA OPERDIN    *00020000
//**********************************************************************00060000
//PJF14P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB08A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERDIN.INTRADIA,
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
//*  PJF14P05                                                          *00020000
//**********************************************************************00060000
//PJF14P05 EXEC PGM=ICEGENER,COND=(0,NE)                                00040000
//*
//SYSOUT   DD SYSOUT=*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERA.INTRADIA,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERAVA.INTRADIA,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERATE.INTRADIA,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERASI.INTRADIA,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERDIN.INTRADIA,
//            DISP=SHR
//*
//SYSUT2   DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CONCOPER.INTRADIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=384,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DUMMY
//*
//*DGCM01-I
//**********************************************************************00010000
//*  PASO: 04     PROGRAMA QUE GENERA ARCHIVO MAESTRO DE EMISORAS      *00030000
//*  PJF14P04     PGM ZM4DJB36                                         *00020000
//**********************************************************************00060000
//PJF14P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB35A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..MEMISORA.INTRADIA,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//             DCB=(LRECL=972,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF14T04),DISP=SHR                   00140000
//*DGCM01-F
//**********************************************************************
//*          F I N      Z M J F P D 1 4                                *
//**********************************************************************
