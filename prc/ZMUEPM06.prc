//ZMUEPM06 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - DIGITALIZACION DE ESTADOS DE CUENTA DE         *
//*                CASA DE BOLSA                                       *
//* PROCESO      : ZMUEPM06                                            *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : GENERAR CUATRO ARCHIVOS CON LA INFORMACION DE       *
//*                ESTADOS DE CUENTA INTEGRADOS CON EL SELLO FISCAL    *
//* REALIZO      : CAPGEMINI                                           *
//* FECHA        : 12 DE JULIO DE 2012                                 *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-1.0.0-03  XMBB121 12JUL12  SE ELIMINA CONTENIDO ANTERIOR DEL    *
//*                               PRC, SE AGREGAN PASOS ZMPM7260,      *
//*                               ZMPM7250 Y ZMPM7220.                 *
//*                                                                    *
//* FS-1.0.0-04  DGCM    20JUN16  SE CAMBIA LONGITUD DE ARCHIVO DE     *
//*                               SELLOS DE 879 A 1553                 *
//* FS-1.0.0-05  XMA3149 08JUN18  SE CAMBIA LONGITUD DE ARCHIVO DE     *
//*                               SELLOS DE 1553 A 1563                *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPM7260                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA SORT PARA ORDENAR EL ARCHIVO DE SELLOS        *
//*              FISCALES POR NUMERO DE CUENTA                         *
//* FS-1.0.0-03  CREACION DEL PASO ZMPM7260                            *
//*--------------------------------------------------------------------*
//ZMPM7260 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.MEDC.SELLOS.D&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.ECBP.MEDC.SELLOS.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*FS-1.0.0-04 INI
//*           DCB=(DSORG=PS,LRECL=879,RECFM=FB,BLKSIZE=0),
//*FS-1.0.0-05 INI
//*           DCB=(DSORG=PS,LRECL=1553,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=1563,RECFM=FB,BLKSIZE=0),
//*FS-1.0.0-05 FIN
//*FS-1.0.0-04 FIN
//            SPACE=(CYL,(500,250),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPM0601),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPM7250                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA SORT PARA ORDENAR EL ARCHIVO DE ESTADOS DE    *
//*              CUENTA DE CASA DE BOLSA (ARCHIVO DE SEGMENTOS) POR    *
//*              NUMERO DE CUENTA                                      *
//* FS-1.0.0-03  CREACION DEL PASO ZMPM7250                            *
//*--------------------------------------------------------------------*
//ZMPM7250 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.DIGTA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDOSCTA.DIGTA.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMECBD01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPM7220                                              *
//* UTILERIA   : IKJEFT01(ZM4CBD04)                                    *
//* OBJETIVO   : ACTUALIZA SELLOS FISCALES EN LOS ESTADOS DE CUENTA DE *
//*              CASA DE BOLSA (ARCHIVO DE SEGMENTOS)                  *
//* FS-1.0.0-03  CREACION DEL PASO ZMPM7220                            *
//*--------------------------------------------------------------------*
//ZMPM7220 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD04E1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDOSCTA.DIGTA.SORT,DISP=SHR
//ZMUD04E2 DD DSN=MXCP.ZM.TMP.ECT.ECBP.MEDC.SELLOS.SORT,DISP=SHR
//*
//ZMUD04S1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.INDRA.DIGTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=0)
//ZMUD04S2 DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.INDRA.CIFCTL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0)
//ZMUD04S3 DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.INDRA.LOGERR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=1500,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPM0603),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMUEPM06                          *
//*--------------------------------------------------------------------*
//*
