//ZMUFPM12 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM REPORTE DE GESTION SIVA.                         *
//* PROCESO      : ZMUFPM12 / JCL BCUFNM12                             *
//* PERIODICIDAD : UNICA VEZ / TEMPORAL / ADECUAR MALLA                *
//* OBJETIVO     : REPROCESO DEL PRODUCTO 00020 ALTAS - BAJAS, RECUPERA*
//*                VALORES NORMALES DE ALTAS Y BAJAS                   *
//* REALIZO      : DYD BANCA PATRIMONIAL                               *
//* FECHA        : 05 OCTUBRE 2012                                     *
//* FECHA ACTUALIZACION : 15 MAYO 2013                                 *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*DYD-0.0.0-00  XXXXXXX DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*DYD-1.1.0-01  GESFOR  25FEB13  REPROCESO DE ACUMULACION PROD 30-33  *
//*                               DE LOS MES ENERO Y FEBRERO.          *
//*DYD-1.2.0-01  GESFOR  05ABR13  REPROCESO DE ALTAS DE FEBRERO Y      *
//*                               ACUMULACION DE PRODUCTOS 30 Y 31.    *
//*DYD-1.3.0-01  GESFOR  12ABR13  CORRECCION DE LAS CLAVES DE BUSQUEDA *
//*                               APERTURAS QUE NO CUMPLEN EL MONTO MIN*
//*DYD-1.4.0-01  GESFOR  17ABR13  CORRECCION DE LAS CLAVES DE BUSQUEDA *
//*                               APERTURAS ZMDT768                    *
//*DYD-1.5.0-01  GESFOR  25ABR13  CORRECCION A TPMONTO FEBRERO TODAS   *
//*                               LAS APERTURAS TIENEN CLAVE 'NO'      *
//*DYD-1.6.0-01  GESFOR  15MAY13  REPROCESO PRODUCTO 00020 ALTAS - BAJA*
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4EUG26                     *
//*--------------------------------------------------------------------*
//ZMUFP007 EXEC PGM=ZM3CTC01,PARM=('P,MXP1,ZM4EUG26,02.BQR.20130430')
//SYSTSIN  DD DSN=MXCP.ZM.FIX.BQR.ZM4EUG26,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : ZMUFP006                                                *
//* UTILERIA : IKJEFT01/ZM4EUG26                                       *
//* OBJETIVO : ACTUALIZACION MENSUAL ALTAS-BAJAS      A NIVEL BANQUERO *
//*--------------------------------------------------------------------*
//ZMUFP006 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.FIX.BQR.ZM4EUG26,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4EUG26                     *
//*--------------------------------------------------------------------*
//ZMUFP005 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4EUG26,02.UNG.20130430')
//SYSTSIN  DD DSN=MXCP.ZM.FIX.UNG.ZM4EUG26,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : ZMUFP004                                                *
//* UTILERIA : IKJEFT01/ZM4EUG26                                       *
//* OBJETIVO : ACTUALIZACION MENSUAL ALTAS - BAJAS    A NIVEL OFICINA  *
//*--------------------------------------------------------------------*
//ZMUFP004 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.FIX.UNG.ZM4EUG26,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4EUG26                     *
//*--------------------------------------------------------------------*
//ZMUFP003 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4EUG26,02.DIV.20130430')
//SYSTSIN  DD DSN=MXCP.ZM.FIX.DIV.ZM4EUG26,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : ZMUFP002                                                *
//* UTILERIA : IKJEFT01/ZM4EUG26                                       *
//* OBJETIVO : ACTUALIZACION MENSUAL DE PRODUCTIVIDAD A NIVEL DIVISION *
//*--------------------------------------------------------------------*
//ZMUFP002 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.FIX.DIV.ZM4EUG26,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4EUG26                     *
//*--------------------------------------------------------------------*
//ZMUFP001 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4EUG26,02.BCA.20130430')
//SYSTSIN  DD DSN=MXCP.ZM.FIX.BCA.ZM4EUG26,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : ZMUFP000                                                *
//* UTILERIA : IKJEFT01/ZM4EUG26                                       *
//* OBJETIVO : ACTUALIZACION MENSUAL ALTAS - BAJAS    A NIVEL BANCA    *
//*--------------------------------------------------------------------*
//ZMUFP000 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.FIX.BCA.ZM4EUG26,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUFPM12                        *
//*--------------------------------------------------------------------*
