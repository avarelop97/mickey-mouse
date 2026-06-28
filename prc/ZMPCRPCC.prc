//ZMPCRPCC PROC
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO    : ZMRPCC95                                                 *
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE LA TABLA CUENTA .                            *
//**********************************************************************
//ZMRPCC95 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,FID0AP56,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.FIX.CUENTA.ZMPCDECU.F&FECHA..P1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRPCC95),DISP=SHR
//*
//**********************************************************************
//*********************************************************************
//*   PASO    : ZMRPCC90                                              *
//*   PROGRAMA: ICEMAN TABLA CUENTA                                   *
//*   OBJETIVO: REALIZA LA SELECCION DE DATOS Y CAMPOS NECESARIOS     *
//*             DE LA DESCARGA DE LA TABLA CUENTA                     *
//*********************************************************************
//ZMRPCC90 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN DD DSN=MXC&AMB..ZM.FIX.CUENTA.ZMPCDECU.F&FECHA..P1,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.CUENTA.F&FECHA..SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN   DD DSN=ZIVA.ZME.CONTROL(ZMRPCC90),DISP=SHR
//*********************************************************************
//*   PASO    : ZMRPCC75                                              *
//*   PROGRAMA: ICEMAN ARCHIVO ZMDT608                                *
//*   OBJETIVO: REALIZA LA SELECCION DE DATOS Y CAMPOS NECESARIOS DE  *
//*             LA TABLA ZMDT608                                      *
//*********************************************************************
//*
//ZMRPCC75 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN DD DSN=MXC&AMB..ZM.FIX.ZMDT608K.ZMPCDEZM.P1,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ZMDT608.P00.F&FECHA..SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=22,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN   DD DSN=ZIVA.ZME.CONTROL(ZMRPCC75),DISP=SHR
//*
//*********************************************************************
//*   PASO    : ZMRPCC70                                              *
//*   PROGRAMA: ZM3CMAT1                                              *
//*   OBJETIVO: REALIZA EL MATCH DE CUENTA CON ZMDT608                *
//*             POR NUMERO DE CUENTA MUV                              *
//*********************************************************************
//ZMRPCC70 EXEC PGM=ZM3CMAT1,COND=(4,LT),PARM=('&AMB&FECHA')
//*
//E1DQENT1 DD DSN=MXC&AMB..ZM.FIX.CUENTA.F&FECHA..SORT,DISP=SHR
//*
//E2DQENT2 DD DSN=MXC&AMB..ZM.FIX.ZMDT608.P00.F&FECHA..SORT,DISP=SHR
//*
//S1DQSAL1 DD DSN=MXC&AMB..ZM.FIX.BCJCRPCC.F&FECHA..ZM3CMAT1,
//           DISP=(NEW,CATLG,DELETE),
//           UNIT=3390,
//           SPACE=(CYL,(100,50),RLSE),
//           DCB=(RECFM=FB,LRECL=28,BLKSIZE=0,DSORG=PS)
//*
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//*********************************************************************
//*   PASO    : ZMRPCC65                                              *
//*   PROGRAMA: ICEMAN                                                *
//*   OBJETIVO: SELECCIONA LOS DATOS NECESARIOS DE INTERFAZ PERSONA   *
//*        PARA EL CRUCE CON ZM3CMAT1                                 *
//*********************************************************************
//*--------------------------------------------------------------------*
//ZMRPCC65 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MBV&AMB..AJ.FIX.AMCP.DOMENV,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.DOMENV.F&FECHA..SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRPCC65),DISP=SHR
//*
//*********************************************************************
//*   PASO    : ZMRPCC60                                              *
//*   PROGRAMA: ICEMAN                                                *
//*   OBJETIVO: ORDENACION DE ARCHIVO POR NUM CUENTA DE 10 POSICIONES *
//*********************************************************************
//ZMRPCC60 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.BCJCRPCC.F&FECHA..ZM3CMAT1,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.BCJCRPCC.F&FECHA..ZM3CMAT1.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=28,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRPCC60),DISP=SHR
//*
//*********************************************************************
//*   PASO    : ZMRPCC55                                              *
//*   PROGRAMA: ZM3CMAT2                                              *
//*   OBJETIVO: REALIZA EL MATCH DE ZM3CMAT1 CON INTERFAZ PERSONA     *
//*             POR NUMERO DE CUENTA                                  *
//*                                                                   *
//*********************************************************************
//ZMRPCC55 EXEC PGM=ZM3CMAT2,COND=(4,LT),PARM=('&AMB&FECHA')
//*
//E1DQENT1 DD DSN=MXC&AMB..ZM.FIX.DOMENV.F&FECHA..SORT,
//            DISP=SHR
//E2DQENT2 DD DSN=MXC&AMB..ZM.FIX.BCJCRPCC.F&FECHA..ZM3CMAT1.SORT,
//            DISP=SHR
//S1DQSAL1 DD DSN=MXC&AMB..ZM.FIX.BCJCRPCC.F&FECHA..ZM3CMAT2,
//           DISP=(NEW,CATLG,DELETE),
//           UNIT=3390,
//           SPACE=(CYL,(100,50),RLSE),
//           DCB=(RECFM=FB,LRECL=62,BLKSIZE=0,DSORG=PS)
//*
//SYSIN    DD DUMMY                                                     00008100
//SYSTSPRT DD SYSOUT=*                                                  00008200
//SYSPRINT DD SYSOUT=*                                                  00008300
//SYSOUT   DD SYSOUT=*                                                  00008400
//SYSDBOUT DD SYSOUT=*                                                  00008500
//SYSABOUT DD SYSOUT=*                                                  00008600
//SYSUDUMP DD DUMMY                                                     00008700
//SYSTSIN  DD DUMMY
//*
//*********************************************************************
//*   PASO    : ZMRPCC50                                              *
//*   PROGRAMA: ICEMAN                                                *
//*   OBJETIVO: REALIZA EL ORDENAMIENTO DE ZM3CMAT2 PARA ACTUALIZAR LA*
//*             TABLA ZMDTCCP                                         *
//*                                                                   *
//*********************************************************************
//ZMRPCC50 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.BCJCRPCC.F&FECHA..ZM3CMAT2,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.BCJCRPCC.F&FECHA..ZM3CMAT2.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=62,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRPCC50),DISP=SHR
//*
//*********************************************************************
//*   PASO    : ZMLOCC45                                              *
//*   PROGRAMA: MBMCLOAD                                              *
//*   OBJETIVO: ACTUALIZACION DE LA TABLA ZMDTCCP                     *
//*                                                                   *
//*********************************************************************
//ZMLOCC45 EXEC MBMCLOAD,COND=(4,LT),
//         UID=ZMLOCC45.LOCAX,
//         CREATOR=PRODUSVP,
//         NOMTAB=ZMDTCCP,
//         OPTION=REPLACE,
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZMLOCC45),
//         INPREC=DSN=MXC&AMB..ZM.FIX.BCJCRPCC.F&FECHA..ZM3CMAT2.SORT
//*
//*********************************************************************
