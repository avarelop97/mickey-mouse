//ZMHNOT02  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMHNOT02                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* GENERACION DE INSUMOS CON INFORMACIóN DE WARRANTS Y NOTAS ESTRUCTU-*
//* DAS PARA LA GENERACION DE CARTAS DEó INSTRUCCION.                  *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*--------------------------------------------------------------------*00240002
//* PASO    : PNO02P06                                                 *00240002
//* UTIL/PGM: ZM3EST01                                                 *00240002
//* OBJETIVO: GENERA TARJETA  DE CONTROL PARA OBTENER LA FECHA.        *00240002
//*--------------------------------------------------------------------*
//PNO02P06 EXEC PGM=ZM3EST01,PARM=&FECHA2                               00780700
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM3EST01.FECHA,
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
//* PASO    : PNO02P05                                                 *00240002
//* UTIL/PGM: ZM4EST01                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//PNO02P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZNT01T03),DISP=SHR
//E1DQ0002 DD DSN=MXCP.ZM.TMP.ZM3EST01.FECHA,DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM4ESTNT.CTC,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZNT01T05),DISP=SHR                   00512608
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : PNO02P04                                                 *00240002
//* UTIL/PGM: ZM4EST01                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//PNO02P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZNT01T04),DISP=SHR
//E1DQ0002 DD DSN=MXCP.ZM.TMP.ZM3EST01.FECHA,DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM4ESTWA.CTC,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZNT01T05),DISP=SHR                   00512608
//*
//*====================================================================*
//* PASO     : PNO02P03                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE INFORMACION DE NOTAS ESTRUCTURADAS          *
//*====================================================================*
//PNO02P03 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PWR01P02,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CARTNOTA.F&FECHA..ENTNEW,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZM4ESTNT.CTC,DISP=SHR
//*
//*====================================================================*
//* PASO     : PNO02P02                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE INFORMACION DE WARRANTS                     *
//*====================================================================*
//PNO02P02 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PWR01P01,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CARTWARR.F&FECHA..ENTNEW,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZM4ESTWA.CTC,DISP=SHR
//*
//**********************************************************************
//* PASO     : PNO02P01                                                *
//* UTIL/PGM : ZM4EST02                                                *00240002
//* OBJETIVO   : GENERA ARCHIVO CON INFORMACION DE WARRANTS Y NOTAS ES-*
//*              TRUCTURADAS PARA GENERAR CARTAS DE INSTRUCCION.       *
//**********************************************************************
//PNO02P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMNOTE01 DD DSN=MXCP.ZM.FIX.CARTNOTA.F&FECHA..ENTNEW,DISP=SHR
//ZMNOTE02 DD DSN=MXCP.ZM.FIX.CARTWARR.F&FECHA..ENTNEW,DISP=SHR
//*
//*
//ZMNOTS01 DD DSN=MXCP.ZM.FIX.NEW.CARTAS.WARNOTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=403,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZNT01T06),DISP=SHR                   00512608
//*
//**********************************************************************
//*                     F I N    Z M H N O T 0 2                       *
//**********************************************************************
