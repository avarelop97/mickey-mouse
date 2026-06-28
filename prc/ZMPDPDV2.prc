//ZMPDPDV2 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM YA9DPV (SIVA) PDV PRODUCTO 21.                   *
//* PROCESO      : ZMPDPDV2.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERAR UN ARCHIVO CON LOS COMPROBANTES DE RAZONAMI *
//*                ENTO QUE NO SE ENTREGARON EN LOS CANALES QUE FUERON *
//*                OPERADOS DEL PROYECTO PDV CON LA INFORMACION        *
//*                REFERENTE A LAS OPERACIONES DE LA BANCA PATRIMONIAL.*
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 04 DE ABRIL DE 2014.                                *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PPDV2P10.                                             *
//* UTILERIA   : IKJEFT01.                                             *
//* OBJETIVO   : GENERAR UN ARCHIVO A PARTIR DE LA TABLA ZMDT200 QUE   *
//*              CONTENGA EL CR O OFICINA PARA ACLARACION Y ENVIO DE   *
//*              COMPROBANTES DE RAZONAMIENTO QUE NO SE ENTREGARON     *
//*              EN LOS CANALES QUE FUERON OPERADOS.                   *
//*--------------------------------------------------------------------*
//PPDV2P10 EXEC PGM=IKJEFT01
//*
//ZMPDV1S1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..REPOPDV3.BCJDPDV2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=72,BLKSIZE=0,RECFM=FB)
//*
//QSRLSDB2 DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV201),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMPDPDV2                        *
//*--------------------------------------------------------------------*
