//ZMBACD15 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - BASE ACTUAL (ADA)  (REPROCESOS)                *
//* PROCESO      : ZMBACD15.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : ARCHIVO DE POSICIONES Y SALDOS PROMEDIO BASE ACTUAL *
//* REALIZO      : BBVA BPYP                                           *
//* FECHA        : FEBRERO 2026.                                       *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT608 Y CUENTA PARA FACTSET      *
//**********************************************************************
//ZBA15T30 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZBA15T30,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.RPR.ZM4BAC15.ZMDT608,
//            SPACE=(CYL,(600,300),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=49,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZBA15T51),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4BAC15                                     *
//* OBJETIVO   : OBTIENE POSICION  PARA BASE ACTUAL (ADA)              *
//**********************************************************************
//ZBA15T15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM15FME1 DD DSN=MXCP.ZM.TMP.RPR.ZM4BAC15.ZMDT608,DISP=SHR
//ZM15FME2 DD DUMMY
//*
//ZM15FMS1 DD DSN=MXCP.ZM.TMP.RPR.ZM4BAC15.POS.FIN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=141,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZBA15T16),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO POR LOS CAMPOS LLAVE DEL PROG. ZM4BAC15  *
//**********************************************************************
//ZBA15T10 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.RPR.ZM4BAC15.POS.FIN,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.RPR.ZM4BAC15.POS.FIN.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=141,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZBA20T40),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4BAC20                                     *
//* OBJETIVO   : OBTIENE ACUMULADO DE REGISTROS DE POSIC Y SALDOS      *
//**********************************************************************
//ZBA15T05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM20FME1 DD DSN=MXCP.ZM.TMP.RPR.ZM4BAC15.POS.FIN.SORT,DISP=SHR
//*
//ZM20FMS1 DD DSN=MXCP.ZM.FIX.RPR.ZM4BAC20.POS.FIN.DET,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(3000,900),RLSE),
//            DCB=(RECFM=FB,LRECL=141,BLKSIZE=0,DSORG=PS)
//*
//ZM20FMS2 DD DSN=MXCP.ZM.FIX.RPR.BCHTDT01.BASEACTU.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(3000,900),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//*
//*---------------------------------------------------------------------
//* ARCHIVOS SALIDA PROCESO MULTIPLE BASE ACTUAL
//*---------------------------------------------------------------------
//ZM20SD01 DD DSN=MXCP.ZM.FIX.RPR.A01.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD02 DD DSN=MXCP.ZM.FIX.RPR.A02.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD03 DD DSN=MXCP.ZM.FIX.RPR.A03.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD04 DD DSN=MXCP.ZM.FIX.RPR.A04.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD05 DD DSN=MXCP.ZM.FIX.RPR.A05.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD06 DD DSN=MXCP.ZM.FIX.RPR.A06.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD07 DD DSN=MXCP.ZM.FIX.RPR.A07.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD08 DD DSN=MXCP.ZM.FIX.RPR.A08.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD09 DD DSN=MXCP.ZM.FIX.RPR.A09.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD10 DD DSN=MXCP.ZM.FIX.RPR.A10.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD11 DD DSN=MXCP.ZM.FIX.RPR.A11.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD12 DD DSN=MXCP.ZM.FIX.RPR.A12.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD13 DD DSN=MXCP.ZM.FIX.RPR.A13.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD14 DD DSN=MXCP.ZM.FIX.RPR.A14.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD15 DD DSN=MXCP.ZM.FIX.RPR.A15.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD16 DD DSN=MXCP.ZM.FIX.RPR.A16.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD17 DD DSN=MXCP.ZM.FIX.RPR.A17.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD18 DD DSN=MXCP.ZM.FIX.RPR.A18.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD19 DD DSN=MXCP.ZM.FIX.RPR.A19.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD20 DD DSN=MXCP.ZM.FIX.RPR.A20.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD21 DD DSN=MXCP.ZM.FIX.RPR.A21.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD22 DD DSN=MXCP.ZM.FIX.RPR.A22.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//ZM20SD23 DD DSN=MXCP.ZM.FIX.RPR.A23.BCHTDT01.BACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(2000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=240,BLKSIZE=0,DSORG=PS)
//*---------------------------------------------------------------------
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZBA15T21),DISP=SHR
//*
//**********************************************************************
//*                    TERMINA ZMBACD15  (REPROCESO)
//**********************************************************************
