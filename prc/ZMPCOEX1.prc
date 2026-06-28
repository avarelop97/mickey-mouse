//ZMPCOEX1  PROC                                                        00010025
//*====================================================================*
//* PROYECTO     : COMPLETITUD DE EXPEDIENTE.                          *
//* PROCESO      : ZMPCOEX1.                                           *
//* PERIODICIDAD : DIAS HABILES.                                       *
//* OBJETIVO     : PROCESO PARA GENERACION DE ARCHIVO CON DETALLE DE   *
//*                CUENTAS APERTUDARDAS EN EL DIA.                     *
//* DESARROLLO   : DYD XMY3083.                                        *
//* FECHA        : 10 DE SEPTIEMBRE DE 2018.                           *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*                                                                    *
//*====================================================================*
//*--------------------------------------------------------------------*
//* PASO       : ZMCOEX40                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : FORMATO DEL ARCHIVO DE PERSONAS POR NUMCLIEN,         *
//*              SECTOR Y SEGMENTO DEL CLIENTE                         *
//*--------------------------------------------------------------------*
//ZMCOEX40 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.CON.AMCP,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.COMPEXP.CLIEN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=13,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCOEX40),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCOEX30                                              *
//* PROGRAMA   : ZM4COEX1                                              *
//* OBJETIVO   : GENERACION DE REPORTE DE CONTRATACIONES               *
//*--------------------------------------------------------------------*
//ZMCOEX30 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*                                                                     01153001
//ZMJCONTR DD DSN=MXC&AMB..ZM.FIX.COMPEXP.CONTR.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=340,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//*                                                                     01155001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCOEX30),DISP=SHR                   01230041
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCOEX20                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : CRUCE DE ARCHIVO DE CLIENTES CON REPORTE DE           *
//*              CONTRATACIONES PARA GENERAR REPORTE DE COMPLETITUD    *
//*              DE EXPEDIENTE.                                        *
//*--------------------------------------------------------------------*
//ZMCOEX20 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXC&AMB..ZM.FIX.COMPEXP.CONTR.F&FECHA,
//            DISP=SHR
//SORTJNF2 DD DSN=MXC&AMB..ZM.FIX.COMPEXP.CLIEN.F&FECHA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.COMPEXP.REPO.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=340,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCOEX20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCOEX10                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : COLOCA ENCABEZADO AL REPORTE                          *
//*--------------------------------------------------------------------*
//ZMCOEX10 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.COMPEXP.REPO.F&FECHA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.COMPEXP.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=340,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCOEX10),DISP=SHR
//*
