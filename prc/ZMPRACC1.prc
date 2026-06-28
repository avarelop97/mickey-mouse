//ZMPRACC1 PROC
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO    : ZMCTCPT1                                                 *
//* PROGRAMA: ZM4PRT01                                                 *
//* FUNCION : EJECUTA EL PROGRAMA ZM4PRT01 PARA GENERAR UN             *
//*           REPORTE DE LA TABLA                                      *
//**********************************************************************
//ZMCTCPT1 EXEC PGM=IKJEFT01
//*
//ZMACC0U1 DD  DSN=MXCP.ZM.FIX.REP.RCOVAF.F&FECHA,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(020,010),RLSE),UNIT=3390,
//             DCB=(DSORG=PS,RECFM=FB,LRECL=276,BLKSIZE=0)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCTACC1),DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMCTCPT2                                                 *00240002
//* UTIL/PGM: IKJEFT01                                                 *00240002
//* OBJETIVO: DESCARGA DE LA TABLA OPERASI                             *00240002
//*--------------------------------------------------------------------*
//ZMCTCPT2 EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMCTACC2,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCTACC2),DISP=SHR
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.DES.OPERASI.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(020,010),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=62,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCTCPT3.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : CLASIFICAR EL ARCHIVO REPOTING POR CONTRATO, TIPO DE  *
//*              CONTRATO, EMISORA, SERIE, ISIN Y TIPO VALOR.          *
//*--------------------------------------------------------------------*
//ZMCTCPT3 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.DES.OPERASI.F&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.DES.OPERASI.ORD.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=62,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(020,010),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCTACC3),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZMCTCPT4                                               *
//* PROGRAMA :  ICEMAN  , ZM2ACC02                                     *
//* OBJETIVO :  EJECUTA EL PROGRAMA ZM2ACC02 DE TABLA OPERASI          *
//*--------------------------------------------------------------------*
//ZMCTCPT4 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMACC0U0 DD DSN=MXCP.ZM.FIX.DES.OPERASI.ORD.F&FECHA,DISP=SHR
//*
//ZMACC0U2 DD DSN=MXCP.ZM.FIX.DES.OPERASI.ORD1.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=276,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(020,010),RLSE)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCTACC4),DISP=SHR
//*
//***************************************************************
//* OBJETIVO : REALIZA LA UNION DE LOS ARCHIVOS DE LA LVH
//*                       Y DE OPERASI
//***************************************************************
//ZMCTCPT5 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD  DSN=MXCP.ZM.FIX.REP.RCOVAF.F&FECHA,
//             DISP=SHR
//         DD  DSN=MXCP.ZM.FIX.DES.OPERASI.ORD1.F&FECHA,
//             DISP=SHR
//SYSUT2   DD  DSN=MXCP.ZM.FIX.REP.RCOVAF.F&FECHA..FIN,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(020,010),RLSE),
//             DCB=(DSORG=PS,RECFM=FB,LRECL=276,BLKSIZE=0)
//SYSIN    DD  DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMCTCPT6.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : CLASIFICAR EL ARCHIVO REPOTING POR EMISORA , SERIE    *
//*              Y TIPO DE OPERACION (C/V)                             *
//*--------------------------------------------------------------------*
//ZMCTCPT6 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.RCOVAF.F&FECHA..FIN,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.RCOVAF.F&FECHA..FIN1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(020,010),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=276,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCTACC5),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZMCTCPT7                                               *
//* PROGRAMA :  IKJEFT01, ZM2ACC03                                     *
//* OBJETIVO :  EJECUTA EL PROGRAMA ZM2ACC03 CONSOLIDA OPERASI / LVH   *
//*--------------------------------------------------------------------*
//ZMCTCPT7 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.REP.RCOVAF.F&FECHA..FIN1,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.REP.RCOVAF.F&FECHA..FIN2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=276,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(020,010),RLSE)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCTACC6),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMCTCAC7                                                 *
//* PROGRAMA: ICEMAN0                                                  *
//* FUNCION : MODIFICA EL TIPO DE DATO DEL ARCHIVO DE ENTRADA DE       *
//*           COMPACTADO A NUMERICO                                    *
//**********************************************************************
//ZMCTCAC7 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.FIX.DES.OPERASI.ORD.F&FECHA,DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.DES.OPERASI.TRA.F&FECHA,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(1000,500),RLSE),
//             DCB=(RECFM=FB,LRECL=74,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCTACC7),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMFODI05                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : GENERA ARCHIVO CON ENCABEZADOS                        *
//*--------------------------------------------------------------------*
//ZMCTCAC8 EXEC PGM=ICETOOL,COND=(4,LT)
//*
//IN1      DD DSN=MXCP.ZM.FIX.DES.OPERASI.TRA.F&FECHA,
//            DISP=SHR
//*
//OUT1     DD DSN=MXCP.ZM.FIX.DES.OPERASI.TRA1.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=95,BLKSIZE=0,RECFM=FB)
//*
//TOOLIN   DD DSN=ZIVA.ZME.CONTROL(ZMCTACC8),DISP=SHR
//*
//LISTDD   DD SYSOUT=*
//TOOLMSG  DD SYSOUT=*
//DFSMSG   DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SORTDAIG DD SYSOUT=*
//*
