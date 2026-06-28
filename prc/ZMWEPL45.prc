//ZMWEPL45 PROC
//**********************************************************************
//* PROCESO      : ZMWEPL45                                            *
//* OBJETIVO     : REPORTE PREVIO EJ. TIT. OPC.                        *
//* REALIZO      : CAPGEMINI                                           *
//* FECHA        : AGOSTO 2012                                         *
//**********************************************************************
//*  MARCA       AUTOR       FECHA       DESCRIPCION                   *
//* *********** ********** ********** **********************************
//*            *          *          *                                 *
//**********************************************************************
//*--------------------------------------------------------------------*
//* PASO    : PWL45P02                                                 *
//* PROGRAMA: IKJEFT0                                                  *
//* FUNCION : RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS    *
//*           GRABA EN UN ARCHIVO SECUENCIAL.                          *
//*--------------------------------------------------------------------*
//PWL45P02 EXEC  PGM=ZM3DG001,PARM=('&EMP','&SUC','BCM000','     ',)    00230008
//PI601765 DD DUMMY                                                     00240005
//*                                                                     00240005
//ZMG001A1  DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMWEPL45,              00250007
//             DISP=(NEW,CATLG,DELETE),                                 00260005
//             DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),             00290005
//             UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         00280005
//*                                                                     00300005
//SYSTSPRT DD SYSOUT=*                                                  00370006
//SYSPRINT DD SYSOUT=*                                                  00370007
//SYSOUT   DD SYSOUT=*                                                  00370008
//SYSDBOUT DD SYSOUT=*                                                  00370009
//SYSABOUT DD DUMMY                                                     00370010
//SYSUDUMP DD DUMMY                                                     00370020
//*                                                                     00380009
//*--------------------------------------------------------------------*
//* PASO    : PWL45P01                                                 *
//* PROGRAMA: IKJEFT01                                                 *
//* FUNCION : GENERA REPORTE PREVIO DE EJ. TIT. OPC. (WARRANTS)        *
//*--------------------------------------------------------------------*
//PWL45P01 EXEC  PGM=IKJEFT01,COND=(4,LT)                               00230008
//*                                                                     00240005
//ZMWL44A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMWEPL45,DISP=SHR       00250007
//*                                                                     00240005
//SYSTSPRT DD SYSOUT=*                                                  00250007
//ZMWL44R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00260005
//SYSPRINT DD SYSOUT=*                                                  00280005
//SYSOUT   DD SYSOUT=*                                                  00270005
//SYSDBOUT DD SYSOUT=*                                                  00290005
//SYSABOUT DD DUMMY                                                     00300005
//SYSUDUMP DD DUMMY                                                     00370006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZWL45T01),DISP=SHR                   00370007
//*                                                                     00370008
//*--------------------------------------------------------------------*
