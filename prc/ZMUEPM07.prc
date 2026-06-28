//ZMUEPM07 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - DIGITALIZACION DE ESTADOS DE CUENTA DE         *
//*                CASA DE BOLSA                                       *
//* PROCESO      : ZMUEPM07                                            *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : GENERAR ARCHIVO DE LOG DE ERRORES Y SUBIRLO A CTL-D *
//* REALIZO      : CAPGEMINI                                           *
//* FECHA        : 12 DE JULIO DE 2012                                 *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-1.0.0-03  XMBB121 12JUL12  SE ELIMINA CONTENIDO ANTERIOR DEL    *
//*                               PRC, SE AGREGAN PASOS ZMPM0702 Y     *
//*                               Y ZMPM0701.                          *
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPM0702                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : UNION DEL ARCHIVO DE LOG DE ERRORES EN SELLOS         *
//* FS-1.0.0-03  CREACION DEL PASO ZMPM0702                            *
//*--------------------------------------------------------------------*
//ZMPM0702 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.INDRA.LOGERR,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECT.MEDC.LOGERR.D&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.LOGERR.RPTE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1500,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPM0701),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPM0701                                              *
//* UTILERIA   : ICEGENER                                              *
//* OBJETIVO   : ENVIO A CONTROL-D EL ARCHIVO DE ERRORES CASA DE BOLSA *
//* FS-1.0.0-03  CREACION DEL PASO ZMPM0701                            *
//*--------------------------------------------------------------------*
//ZMPM0701 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.LOGERR.RPTE,DISP=SHR
//*
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSIN    DD DUMMY
//*
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMUEPM07                          *
//*--------------------------------------------------------------------*
//*
