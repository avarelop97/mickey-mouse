//ZMWEPL46 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM LIQUIDACION WARRANTS PARA CASA DE BOLSA.         *
//* PROCESO      : ZMWEPL46.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : PROCESO QUE GENERA EL REPORTE PREVIO DE LA          *
//*                LIQUIDACION WARRANT PARA CASA DE BOLSA.             *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 14 DE JULIO DE 2014.                                *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO     : PWL46P02.                                               *
//* UTILERIA : ZM3DG001.                                               *
//* OBJETIVO : RECIBE PARAMETROS ENVIADOS DESDE EL DISPARADOR Y LOS    *
//*            GUARDA EN UN ARCHIVO SECUENCIAL.                        *
//*--------------------------------------------------------------------*
//PWL46P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','CBP000','     ',)     00230008
//*
//PI601765 DD DUMMY                                                     00240005
//*                                                                     00240005
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMWEPL46,               00250007
//            DISP=(NEW,CATLG,DELETE),                                  00260005
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00290005
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00280005
//*                                                                     00300005
//SYSTSPRT DD SYSOUT=*                                                  00370006
//SYSPRINT DD SYSOUT=*                                                  00370007
//SYSOUT   DD SYSOUT=*                                                  00370008
//SYSDBOUT DD SYSOUT=*                                                  00370009
//SYSABOUT DD DUMMY                                                     00370010
//SYSUDUMP DD DUMMY                                                     00370020
//*                                                                     00380009
//*--------------------------------------------------------------------*
//* PASO     : PWL46P01.                                               *
//* UTILERIA : IKJEFT01 / ZM4EWL46.                                    *
//* OBJETIVO : GENERA REPORTE PREVIO DE LA LIQUIDACION WARRANT PARA    *
//*            CASA DE BOLSA.                                          *
//*--------------------------------------------------------------------*
//PWL46P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00230008
//*                                                                     00240005
//ZMWL44A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMWEPL46,DISP=SHR       00250007
//*                                                                     00240005
//SYSTSPRT DD SYSOUT=*                                                  00250007
//ZMWL44R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00260005
//SYSPRINT DD SYSOUT=*                                                  00280005
//SYSOUT   DD SYSOUT=*                                                  00270005
//SYSDBOUT DD SYSOUT=*                                                  00290005
//SYSABOUT DD DUMMY                                                     00300005
//SYSUDUMP DD DUMMY                                                     00370006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZWL46T01),DISP=SHR
//*                                                                     00370008
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMWEPL46                        *
//*--------------------------------------------------------------------*
//*
