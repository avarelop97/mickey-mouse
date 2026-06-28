//ZMPDWTR5  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMPDWTR5                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* DESACARGA CONTRATOS DE CASA DE BOLSA FONDOS BBVA                   *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*--------------------------------------------------------------------*00240002
//*====================================================================*
//* PASO    : PWT05P02                                                 *00240002
//* UTIL/PGM: ZM3BTR02                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL PARA OBTENER LA FECHA.        *00240002
//*====================================================================*
//PWT05P02 EXEC PGM=ZM3BTR02,PARM=&FECHA2                               00780700
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM3BTR02.FECHA,
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
//*====================================================================*
//* PASO     : PWT05P01                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA CTECOMP                            *
//*====================================================================*
//PWT05P01 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PWT05P01,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZCUENTAS.F&FECHA..FONBBVA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZWT05T01),DISP=SHR
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : PWT05P00                                                 *00240002
//* UTIL/PGM: ZM4BTR05                                                 *00240002
//* OBJETIVO: FORMATEO ARCHIVO BURSATILES                              *00240002
//*--------------------------------------------------------------------*
//PWT05P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMBTRE01 DD DSN=MXCP.ZM.FIX.ZCUENTAS.F&FECHA..FONBBVA,
//            DISP=SHR
//ZMBTRE02 DD DSN=MXCP.ZM.TMP.ZM3BTR02.FECHA,
//            DISP=SHR
//*
//ZMBTRS01 DD DSN=MXCP.ZM.FIX.BTRADER.F&FECHA..MOVSCAPI,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=146,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZWT05T00),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                  FIN DE PROCESO ZMPDWTR5                           *
//*--------------------------------------------------------------------*
//*
