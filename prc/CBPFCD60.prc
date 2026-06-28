//CBPFCD60 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM.                                           *
//* PROCESO      : CBPFCD60.                                           *
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
//CBP600P1 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..CBPFCD60,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*====================================================================*
//* PASO    : CBP550P2                                                 *
//* OBJETIVO : CARGAR LA TABLA ZMDT939 DIA ANTERIOR                    *
//* PROGRAMA : IKJEFT01                                                *
//**********************************************************************
//CBP600P2 EXEC PGM=IKJEFT01,COND=(4,LT)
//ENTRAD01 DD DISP=SHR,DSN=MXCP.ZM.FIX.BNCCONFV.CBJFCD60
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF60T01),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:ZM4DCO08                                                  *
//* FUNCION : REALIZA REPORTE DE BNC DIA ANTERIOR                      *
//**********************************************************************
//CBP600P3 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT)
//*
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..CBPFCD60,DISP=SHR
//*
//BNC1PEN2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF62T01),DISP=SHR
//*
//
//**********************************************************************
//*                 F  I  N                                            *
//**********************************************************************
