//ZMUIBG07 PROC
//**********************************************************************00010000
//*                 MIGRACION DE BANCA PATRIMONIAL                     *00020000
//*  CARGA DE PRODUCTOS DE CUENTAS EN TABLA ZMDT608 DEL MUV            *00030000
//**********************************************************************00060000
//ZMU07003 EXEC PGM=IKJEFT01                                            01130000
//ABGEBCBO DD DSN=MBV&AMB..BG.FIX.F&FECHA..D005.BGJBACC5.SALIDA,        01220000
//            DISP=SHR
//SALIDA   DD DSN=MXCP.ZM.FIX.MIGRA.SALIDA1,DISP=MOD
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMMG7003),DISP=SHR
//**********************************************************************00010000
//*  SORT AL ARCHIVO DE SALIDA DE LA MIGRACION DE BP AL MUV            *
//**********************************************************************
//ZMU07002 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.MIGRA.SALIDA1,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIGRA.SORTREP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=449,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMMG7002),DISP=SHR
//*********************************************************************
//*  GENERA EL REPORTE DE CONTRATOS MIGRADOS OK DE BPIGO AL MUV       *
//*********************************************************************
//ZMU07001 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMRX06A1 DD DSN=MXCP.ZM.WKF.MIGRA.SORTREP,DISP=SHR
//ZMRX06A2 DD DSN=MXCP.ZM.FIX.MIGRA.REPORTE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=132,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//ZMRX06A3 DD DSN=MXCP.ZM.FIX.MIGRA.CTASOK,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=57,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMMG7001),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: ICEGENER
//* OBJETIVO: SE AGREGO PASO PARA QUE HAGA UN IEBGENER DEL ARCHIVO
//*           CON EL REPORTE QUE GENERA EL PASO ANTERIOR.
//*---------------------------------------------------------------------
//ZMU07000 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.MIGRA.REPORTE,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//**********************************************************************
//* INICIALIZACION DEL ARCHIVO DE ENTRADA DEL PROCESO DE               *
//* MIGRACION.                                                         *
//**********************************************************************
//ZMU0701C EXEC  PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD  DUMMY
//SYSPRINT DD  SYSOUT=*
//SYSUT1   DD  DSN=NULLFILE,
//             DCB=(RECFM=FB,LRECL=1035)
//SYSUT2   DD  DSN=MXCP.ZM.FIX.MIGRA.CTASBP,DISP=SHR
//**********************************************************************
//* INICIALIZACION DEL ARCHIVO DE ENTRADA DE SOLICITUD DE PRODUCTOS 10 *
//* Y 13 COMPLEMENTO.                                                  *
//**********************************************************************
//ZMU0701B EXEC  PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD  DUMMY
//SYSPRINT DD  SYSOUT=*
//SYSUT1   DD  DSN=NULLFILE,
//             DCB=(RECFM=FB,LRECL=600)
//SYSUT2   DD  DSN=MXCP.ZM.FIX.FINANCHE.COMP,DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: CTMCND
//* OBJETIVO: ADICIONA CONDICION PARA QUE SEA TOMADA POR CONTROL-D
//*---------------------------------------------------------------------
//ZMU0701A EXEC PGM=CTMCND,PARM='ADD COND CBUIBG07_IN_SEP_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
