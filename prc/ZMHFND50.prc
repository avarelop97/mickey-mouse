//ZMHFND50 PROC
//**********************************************************************
//**********************************************************************
//* APLICACION  : MUV                                                  *
//* PROCESO     : ZMHFND50                                             *
//* OBJETIVO    : GENERA ARCHIVO CON MONTO MAXIMO DE CREDITO PARA      *
//*               CLIENTES FUERTES                                     *
//* PERIODICIDAD: DIARIO.                                              *
//* FECHA       : SEPTIEMBRE 2018                                      *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-XX  FSWXXX  DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX       *
//* -----------  ------- ------- ------------------------------------- *
//**********************************************************************
//* PASO        : PHF50P10                                             *
//* PROGRAMA    : ADUUMAIN                                             *
//* OBJETIVO    : DESCARGA DE CREDITOS ADMISIBLES                      *
//**********************************************************************
//PHF50P10 EXEC PGM=ADUUMAIN,
//          PARM='MXP1,ZMHFND50,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXC&AMB..ZM.FIX.ZM4PPG50.DESCA834,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=303,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//*
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF50T05),DISP=SHR
//*
//**********************************************************************
//* PASO        : PHF50P09                                             *
//* PROGRAMA    : ICEMAN                                               *
//* OBJETIVO    : ORDENA DESCARGA POR CUENTA VINCULADA                 *
//**********************************************************************
//PHF50P09 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZM4PPG50.DESCA834,
//             DISP=SHR
//*
//SORTOUT  DD  DSN=MXC&AMB..ZM.FIX.SIMP1.ORDENADO.CTAVIN,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(DSORG=PS,RECFM=FB,LRECL=303,BLKSIZE=0),
//             UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF50T09),DISP=SHR
//*BBVAMUV-01-F
//**********************************************************************
//* PASO        : PHF50P08                                             *
//* PROGRAMA    : IKJEFT01/ZM4PPG50                                    *
//* OBJETIVO    : CREA INTERFAZ CON MONTO MAXIMO                       *
//**********************************************************************
//PHF50P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXC&AMB..ZM.FIX.ZM4PPG50.DESCA834,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXC&AMB..ZM.FIX.MONMAX.CLIENTOK,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=26,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF50T02),DISP=SHR
//**********************************************************************
//* PASO        : PHF50P07                                             *
//* PROGRAMA    : ICEMAN.                                              *
//* OBJETIVO    : CARGA ARCHIVO DE UG DE CLIENTES FUERTES DE U.G       *
//*               ORDENA ARCHIVO DE CLIENTES FUERTES DE FORMA ASC      *
//*               POR EL NUMERO DE CLIENTE.                            *
//**********************************************************************
//PHF50P07 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MBVP.AJ.FIX.EBCM.UGRECIBO.NUMCLIE,
//             DISP=SHR
//*
//SORTOUT  DD  DSN=MXC&AMB..ZM.FIX.SIMP1.ORDENADO.NUMCLIE,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(DSORG=PS,RECFM=FB,LRECL=08,BLKSIZE=0),
//             UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF50T03),DISP=SHR
//**********************************************************************
//* PASO        : PHF50P06                                             *
//* PROGRAMA    : IKJEFT01/ZM3PPG50                                    *
//* OBJETIVO    : MATCH  DEL ARCHIV DE CLIENTES FUERTES VS MONTOS MAX  *
//**********************************************************************
//PHF50P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXC&AMB..ZM.FIX.SIMP1.ORDENADO.NUMCLIE,
//            DISP=SHR
//*
//ENTRADA2 DD DSN=MXC&AMB..ZM.FIX.MONMAX.CLIENTOK,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXC&AMB..ZM.FIX.SIMP1.CLIENTOK,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=26,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SALIDA02 DD DSN=MXC&AMB..ZM.FIX.SIMP1.CLIENERR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=69,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFPPG50),DISP=SHR
//*BBVAMUV-01-I
//**********************************************************************
//* PASO        : PHF50P05                                             *
//* PROGRAMA    : IKJEFT01/ZM4PPG52                                    *
//* OBJETIVO    : CREA INTERFAZ CON MONTO MAXIMO                       *
//**********************************************************************
//PHF50P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXC&AMB..ZM.FIX.SIMP1.ORDENADO.CTAVIN,
//            DISP=SHR
//*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF50T08),DISP=SHR
//*BBVAMUV-01-F
//**********************************************************************
//*  PASO     : PHF50P01.                                              *
//*  PROGRAMA : IOACND.                                                *
//*  OBJETIVO : SE ADICIONA CONDICION PARA QUE SEA TOMADA POR ALTAMIRA *
//*             PARA CREAR COPIA DE ARCH A AJ                          *
//**********************************************************************
//*
//PHF50P01 EXEC  PGM=IOACND,PARM='ADD COND BCHFND50_IN_OK WDATE',
//         COND=(4,LT)
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD  DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//**********************************************************************
//*                        FIN DE PROC                                 *
//**********************************************************************
