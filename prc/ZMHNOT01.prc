//ZMHNOT01  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMHNOT01                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* GENERACION DE REPORTE DE DEMANDA PARA EMISORAS DE WARRANT CON      *
//* FECHA DE CIERRE IGUAL A LA FECHA DEL DIA, ADICIONAL SE ENVIARAN    *
//* EL REGISTRO DE LOS WARRANTS QUE HAYAN SUFRIDO UN CAMBIO EN LA      *
//* FECHA DE CIERRE.                                                   *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*--------------------------------------------------------------------*00240002
//* PASO    : PWR01P05                                                 *00240002
//* UTIL/PGM: ZM3WAR01                                                 *00240002
//* OBJETIVO: GENERA TARJETA  DE CONTROL PARA OBTENER LA FECHA.        *00240002
//*--------------------------------------------------------------------*
//*********PNO01P05 EXEC PGM=ZM3NOT01,PARM=&FECHA2                      00780700
//PNO01P05 EXEC PGM=ZM3NOT01,PARM=('&FECHA2')                           00780700
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM3NOT01.FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=10,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : PWR01P04                                                 *00240002
//* UTIL/PGM: ZM3WAR02                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//PNO01P04 EXEC PGM=ZM3NOT02,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZNT01T01),DISP=SHR
//E1DQ0002 DD DSN=MXCP.ZM.TMP.ZM3NOT01.FECHA,DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM3NOT02.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : PNO01P03                                                 *00240002
//* UTIL/PGM: ZM3WAR03                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//PNO01P03 EXEC PGM=ZM3NOT03,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZNT01T02),DISP=SHR
//E1DQ0002 DD DSN=MXCP.ZM.TMP.ZM3NOT01.FECHA,DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM3NOT03.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*====================================================================*
//* PASO     : PNO01P02                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE INFORMACION PARA DEMANDAS                   *
//*====================================================================*
//PNO01P02 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PWR01P02,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZNOTADEM.F&FECHA..ENTNEW,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZM3NOT02.CTC,DISP=SHR
//*
//*====================================================================*
//* PASO     : PNO01P01                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE INFORMACION PARA DEMANDAS                   *
//*====================================================================*
//PNO01P01 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PWR01P01,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZNOTAMOD.F&FECHA..ENTNEW,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZM3NOT03.CTC,DISP=SHR
//*
//**********************************************************************
//* PASO     : PNO01P00                                                *
//* UTIL/PGM : ZM3WAR04                                                *00240002
//* OBJETIVO   : REALIZA REPORTE DE DEMANDA DE WARRANTS CON FECHA DE   *
//*              CIERRE DEL DIA.                                       *
//**********************************************************************
//PNO01P00 EXEC PGM=ZM3NOT04,COND=(4,LT)
//*
//ZMNOTE01 DD DSN=MXCP.ZM.FIX.ZNOTAMOD.F&FECHA..ENTNEW,DISP=SHR
//ZMNOTE02 DD DSN=MXCP.ZM.FIX.ZNOTADEM.F&FECHA..ENTNEW,DISP=SHR
//*
//*
//ZMNOTS01 DD DSN=MXCP.ZM.FIX.REPORT.NEW.DEMANDA.NOT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=345,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
