//NZMPRC34 PROC FECHA=
//*
//*********************************************************************
//* SISTEMA  : ZM (BANCA PATRIMONIAL Y FIDUCIARIO)         .          *
//* PROCESO  : NZMPRC34.                                              *
//* OBJETIVO : GENERACION DE ARCHIVO PARA INGRESOS UN AñO ATRAS DE LA *
//*            FECHA DE EJECUCION                                     *
//* REALIZO  : WSS - ITS.                                             *
//* FECHA    : 31 JULIO 2012.                                         *
//*********************************************************************
//*********************************************************************
//*-------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S             *
//*-------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA              DESCRIPCION             *
//* ----------- -------- ------- ------------------------------------ *
//* XXXXXXXXXXX XXXXXXXX XXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*            *         *       *                                    *
//*********************************************************************
//*********************************************************************
//* PASO     : NZMPRC20                                               *
//* PROGRAMA : ADUUMAIN                                               *
//* OBJETIVO : DESCARGA DE LOS INGRESOS GENERADOS UN AÑO ATRAS DE LA  *
//*            FECHA DE EJECUCION (TABLA ZMDT768)                     *
//*********************************************************************
//NZMPRC20 EXEC PGM=ADUUMAIN,PARM='MXP1,NZMPRC20,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC1  DD DSN=MXCP.ZM.TMP.UNLDT768,
//         DISP=(NEW,CATLG,DELETE),
//         UNIT=3390,BUFNO=30,
//         SPACE=(CYL,(200,100),RLSE),
//         DCB=(RECFM=FB,BLKSIZE=0)
//*
//*SYSCNTL  DD  DUMMY
//*
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(NZMPRC20),DISP=SHR
//*
//*********************************************************************
//* PASO     : NZMPRC10                                               *
//* PROGRAMA : IKJEFT01                                               *
//* OBJETIVO : GENERACION DE ARCHIVO CON LOS INGRESOS HISTORICOS 1    *
//*            AÑO ATRAS                                              *
//*********************************************************************
//*NZMPRC10 EXEC PGM=IKJEFT01,COND=(4,LT)
//NZMPRC10 EXEC PGM=ZM3MU910,COND=(4,LT),
//         PARM=('&FECHA')
//*
//E1ZMINGR DD DSN=MXCP.ZM.TMP.UNLDT768,DISP=SHR
//*
//S1ZMINGR DD DSN=MXCP.ZM.FIX.INTFAZ.EVEN.INGRE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=57,RECFM=FB,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(NZMPRC10),DISP=SHR
//*
//**********************************************************************
//*            F I N      N Z M P R C 3 4                              *
//**********************************************************************
