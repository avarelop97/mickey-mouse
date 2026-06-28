//ZMJCON01 PROC                                                         00010002
//*====================================================================*00020002
//*                                                                    *00030002
//* SISTEMA        :  SIVA.                                            *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMJCON01                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  PROCESO QUE GENERA LA CARTERA Y OPERA DE LA CUEN-*00090002
//*                   TA CONCENTRADORA PARA LOS CLIENTES DEL PROM 355  *00090002
//* CORRE                                                              *00110002
//* ANTES DE       :  N/A                                              *00120002
//*                                                                    *00130002
//* DESPUES DE     :  N/A                                              *00140002
//*                                                                    *00150002
//* REALIZACION    :  HITSS(XMZ4984)                  ENERO/2018.      *00160002
//*                                                                    *00170002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//*====================================================================*
//* PASO    : PUF20P45                                                 *
//* PROGRAMA: ZM3CCTC0                                                 *
//* OBJETIVO: EJECUCION DEL PROGRAMA QUE GENERA LAS CONTROL DIMANICAS  *
//*           PARA EL ESPEJO DE LA CUENTA CONCENTRADORA.               *
//*====================================================================*
//PUF20P45 EXEC PGM=ZM3CCTC0,PARM=&FECHA&AMB
//*
//ZMCCCTC1 DD DSN=MXC&AMB..ZM.TMP.CCCTC01,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//ZMCCCTC2 DD DSN=MXC&AMB..ZM.TMP.CCCTC02,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//ZMCCCTC3 DD DSN=MXC&AMB..ZM.TMP.CCCTC03,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*====================================================================*
//* PASO    : PUF20P40                                                 *
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE LA POSICION DE EFECTIVO DE LA TABLA CARTERA  *
//*====================================================================*
//PUF20P40 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PUF20P40,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.TMP.CARTERA.EFECTIVO.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXC&AMB..ZM.TMP.CCCTC01,DISP=SHR
//*
//*====================================================================*
//* PASO    : PUF20P35                                                 *
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE LA POSICION DE EMISORA - SERIE               *
//*====================================================================*
//PUF20P35 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PUF20P35,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.TMP.CARTERA.POSICION.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXC&AMB..ZM.TMP.CCCTC02,DISP=SHR
//*
//*====================================================================*
//* PASO    : PUF20P30                                                 *
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE LOS MOVIMIENTOS DE CLIENTES ILOCALIZABLES    *
//*====================================================================*
//PUF20P30 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PUF20P30,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.TMP.OPERA.MOVTOS.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXC&AMB..ZM.TMP.CCCTC03,DISP=SHR
//*
//*====================================================================*
//* PASO    : PUF20P25                                                 *
//* PROGRAMA: ZM4CCON1                                                 *
//* OBJETIVO: EJECUCION DEL PROGRAMA QUE GENERA LA POSICION DE EFECTIVO*
//*           DE LAS CUENTAS NO LOCALIZABLES EN LA TABLA CARTERA.      *
//*====================================================================*
//PUF20P25 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//*
//ZMCCCTC1 DD DSN=MXC&AMB..ZM.TMP.CARTERA.EFECTIVO.F&FECHA.,
//            DISP=SHR
//*
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DUMMY
//*
//*====================================================================*
//* PASO    : PUF20P20                                                 *
//* PROGRAMA: ZM4CCON2                                                 *
//* OBJETIVO: EJECUCION DEL PROGRAMA QUE GENERA LA POSICION DE LAS CUEN*
//*           TAS NO LOCALIZABLES EMISORA - SERIE EN LA TABLA CARTERA. *
//*====================================================================*
//PUF20P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//*
//ZMCCCTC1 DD DSN=MXC&AMB..ZM.TMP.CARTERA.POSICION.F&FECHA.,
//            DISP=SHR
//*
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DUMMY
//*
//*====================================================================*
//* PASO    : PUF20P15                                                 *
//* PROGRAMA: ZM4COPE1                                                 *
//* OBJETIVO: EJECUCION DEL PROGRAMA QUE REALIZA LA MIGRACION DE LAS   *
//*           CUENTAS NO LOCALIZABLES EN LA TABLA OPERA.               *
//*====================================================================*
//PUF20P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//*
//ZMCCCTC3 DD DSN=MXC&AMB..ZM.TMP.OPERA.MOVTOS.F&FECHA.,
//            DISP=SHR
//*
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DUMMY
//*
//*====================================================================*
//*                   FIN DEL PROCESO ZMJCON01                         *
//*====================================================================*
