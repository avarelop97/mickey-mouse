//CBPFCD59 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM.                                           *
//* PROCESO      : CBPFCD59.                                           *
//* OBJETIVO     :                                                     *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PROCESO QUE CARGA LA TABLA ZMDT939 MISMO DIA                       *
//*                                                                    *
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO    *
//**********************************************************************
//CBP59050 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..CBPFCD59,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*====================================================================*
//* OBJETIVO : CARGAR LA TABLA ZMDT939 MISMO DIA DESDE EL ARC. BNC MD  *
//* PROGRAMA : ZM4DCO04                                                *
//**********************************************************************
//CBP59040 EXEC PGM=IKJEFT01,COND=(4,LT)
//ENTRAD01 DD DISP=SHR,DSN=MXCP.ZM.FIX.BNCCONMD.CBJFCD59
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF59T01),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : PROCESO DE CONCILIACION MISMO DIA BNC MD                *
//* PROGRAMA : ZM4DCO23                                                *
//**********************************************************************
//CBP59030 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF59T02),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO: REALIZA REPORTE DE BNC MISMO DIA                         *
//* PROGRAMA: ZM4DCO06                                                 *
//**********************************************************************
//CBP59020 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT)
//*
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..CBPFCD59,DISP=SHR
//*
//BNC1PEN2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF61T01),DISP=SHR
//*
//
//**********************************************************************
//*                 F  I  N                                            *
//**********************************************************************
