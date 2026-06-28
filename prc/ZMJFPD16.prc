//ZMJFPD16 PROC                                                         00001000
//*                                                                     00002000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  ARCHIVOS DE  SIVA >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMJFPD99                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERAR ARCHIVOS PARA INTERFAZ DE SIVA PARA         *
//*                DECALOG.                                            *
//*                                                                    *
//*   CORRE ANTES DE  :  ???????                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  ????????                                      *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR: DYD CASA DE BOLSA                                 *
//*                                                                    *
//*   FECHA: OCTUBRE 2012                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************00010000
//*  PASO: 45     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJF16P45     PGM ZM4DJB29        TABLAS ZMDT612, ZMDT614, ZMDT615 *00020000
//**********************************************************************00060000
//PJF16P45 EXEC PGM=IKJEFT01                                            00040000
//*
//ZMJB29A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZM61245.CTOSPORV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(LRECL=600,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF16T45),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 40     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJF16P40     PGM ZM4DJB22                        TABLA CARTERA    *00020000
//**********************************************************************00060000
//PJF16P40 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB22A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..CARTERA.CTOSPORV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(LRECL=206,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF16T40),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 35     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJF16P35     PGM ZM4DJB23                        TABLA OPERDIN    *00020000
//**********************************************************************00060000
//PJF16P35 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB23A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERDIN.CTOSPORV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(LRECL=384,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF16T35),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 30     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJF16P30     PGM ZM4DJB24                        TABLA OPERASI    *00020000
//**********************************************************************00060000
//PJF16P30 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB24A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERASI.CTOSPORV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(LRECL=384,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF16T30),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 25     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJF16P25     PGM ZM4DJB25                        TABLA OPERATE    *00020000
//**********************************************************************00060000
//PJF16P25 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB25A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERATE.CTOSPORV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(LRECL=384,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF16T25),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 20     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJF16P20     PGM ZM4DJB26                        TABLA OPERAVA    *00020000
//**********************************************************************00060000
//PJF16P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB26A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERAVA.CTOSPORV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(LRECL=384,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF16T20),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 15     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJF16P15     PGM ZM4DJB27                        TABLA OPERA      *00020000
//**********************************************************************00060000
//PJF16P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB27A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERA.CTOSPORV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(LRECL=384,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF16T05),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 10     PROGRAMA QUE GENERA LOS REGISTROS DE ENVIO A DECALOG *00030000
//*  PJF16P10     PGM ZM4DJB28                        TABLA DEMANDA    *00020000
//**********************************************************************00060000
//PJF16P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMJB28A1 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..DEMANDA.CTOSPORV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(LRECL=236,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF16T10),DISP=SHR                   00140000
//**********************************************************************00010000
//*  PASO: 05     FUSION DE ARCHIVOS PARA ENVIAR A DECALOG             *00030000
//*  PJF16P05                                                          *00020000
//**********************************************************************00060000
//PJF16P05 EXEC PGM=ICEGENER,COND=(0,NE)                                00040000
//SYSOUT   DD SYSOUT=*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERDIN.CTOSPORV,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERASI.CTOSPORV,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERATE.CTOSPORV,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERAVA.CTOSPORV,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..OPERA.CTOSPORV,
//            DISP=SHR
//SYSUT2   DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..TAOPERAS.CTOSPORV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=384,BLKSIZE=0)
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DUMMY
//*
