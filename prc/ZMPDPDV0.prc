//ZMPDPDV0 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM YA9DPV (SIVA) PDV PRODUCTO 21.                   *
//* PROCESO      : ZMPDPDV0.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERAR UN ARCHIVO PARA LA CARGA INICIAL DEL PRO-   *
//*                YECTO PDV CON LA INFORMACION REFERENTE A LAS OPERACI*
//*                ONES DE LA BANCA PARTIMONIAL.                       *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 04 DE ABRIL DE 2014.                                *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*   @MEX001    XM26266  13ABR16 SE AGREGA EJECUCION DEL PROGRAMA     *
//*                               XXXXXXXX.                            *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PPDV2P10.                                             *
//* UTILERIA   : IKJEFT01.                                             *
//* OBJETIVO   : GENERAR UN ARCHIVO A PARTIR DE LAS TABLAS ZMDT608     *
//*              Y CUENTA PARA LA CARGA INICIAL DE PDV.                *
//*--------------------------------------------------------------------*
//PPDV2P10 EXEC PGM=IKJEFT01
//*
//ZMPDV0S1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..CARGAINI.BCJDPDV0,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(DSORG=PS,LRECL=30,BLKSIZE=0,RECFM=FB)
//*
//ZMPDV0S2 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..CI.NOENC.BCJDPDV0,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(DSORG=PS,LRECL=30,BLKSIZE=0,RECFM=FB)
//*
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV001),DISP=SHR
//*
//*@MEX001-I
//*--------------------------------------------------------------------*
//* PASO       : PPDV2P05.                                             *
//* UTILERIA   : IKJEFT01 / ZM4PDV18                                   *
//* OBJETIVO   : GENERAR UN ARCHIVO A PARTIR DE LAS TABLAS ZMDT608     *
//*              Y CUENTA PARA LA CARGA INICIAL DE PDV CON ESTATUS DE  *
//*              INACTIVO.                                             *
//*--------------------------------------------------------------------*
//PPDV2P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMPDV0S1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..CARGAINI.BCJDPDV0.ST,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(DSORG=PS,LRECL=34,BLKSIZE=0,RECFM=FB)
//*
//ZMPDV0S2 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..CI.NOENC.BCJDPDV0.ST,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(DSORG=PS,LRECL=34,BLKSIZE=0,RECFM=FB)
//*
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV005),DISP=SHR
//*@MEX001-F
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMPDPDV0                        *
//*--------------------------------------------------------------------*
