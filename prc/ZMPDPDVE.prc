//ZMPDPDVE PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : (CB)PDV CONTRATACION Y OPERACION FASE II            *
//* PROCESO      : ZMPDPDVE.                                           *
//* PERIODICIDAD : SEMANAL.                                            *
//* OBJETIVO     : GENERAR UN ARCHIVO SEMANAL PARA PDV CON LOS CAMBIOS *
//*                EN PERFILES DE INVERSION DE RIESGO CON LA INFORMA-  *
//*                CION REFERENTE A LAS OPERACIONES DE LA BANCA        *
//*                PATRIMONIAL                                         *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 27 DE FEBRERO DE 2015.                              *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PPDV1P10.                                             *
//* UTILERIA   : IKJEFT01.                                             *
//* OBJETIVO   : GENERA UN ARCHIVO SEMANAL PARA PDV CON LOS CAMBIOS EN *
//*              PERFILES DE INVERSION DE RIESGO CON LA INFORMACION    *
//*              REFERENTE A LAS OPERACIONES DE LA BANCA PATRIMONIAL   *
//*--------------------------------------------------------------------*
//PPDV1P10 EXEC PGM=IKJEFT01
//*
//ZMPDV1E1 DD DSN=MBV&AMB..WI.FIX.WIJDRSEM.REPMUV,
//            DISP=SHR
//*
//ZMPDV1S1 DD DSN=MXC&AMB..ZM.FIX.REPPDV.BCJDPDVE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(DSORG=PS,LRECL=180,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV151),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMPDPDVE                        *
//*--------------------------------------------------------------------*
