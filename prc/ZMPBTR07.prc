//ZMPBTR07 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : WEB TRADER.                                         *
//* PROCESO      : ZMPBTR07.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : GENERACION DE ARCHIVOS DE KARDEX PARA WEB TRADER.   *
//* REALIZO      : LUIS A. GABRIEL MALDONADO.                          *
//* FECHA        : 13 DE FEBRERO DEL 2017.                             *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMCWT100                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4ECF21                                        *00240002
//* OBJETIVO: GENERA ARCHIVO KARDEX DE INTERESES   W E B - T R A D E R *00240002
//*--------------------------------------------------------------------*
//ZMCWT100 EXEC PGM=IKJEFT01
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBTR.KARDEX.INTERES,DISP=SHR
//SALIDA   DD DSN=MXCP.ZM.FIX.EBTR.CIFRAS.INTERES.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCWT100),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMCWT099                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4ECF22                                        *00240002
//* OBJETIVO: GENERA ARCHIVO KARDEX DE ACCIONES    W E B - T R A D E R *00240002
//*--------------------------------------------------------------------*
//ZMCWT099 EXEC PGM=IKJEFT01,COND=(04,LT)
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBTR.KARDEX.ACCION,DISP=SHR
//SALIDA   DD DSN=MXCP.ZM.FIX.EBTR.CIFRAS.ACCION.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCWT099),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMCWT098                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4ECF23                                        *00240002
//* OBJETIVO: GENERA ARCHIVO KARDEX DE FIBRAS      W E B - T R A D E R *00240002
//*--------------------------------------------------------------------*
//ZMCWT098 EXEC PGM=IKJEFT01,COND=(04,LT)
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBTR.KARDEX.FIBRAS,DISP=SHR
//SALIDA   DD DSN=MXCP.ZM.FIX.EBTR.CIFRAS.FIBRAS.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCWT098),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMCWT097                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4ECF24                                        *00240002
//* OBJETIVO: GENERA ARCHIVO KARDEX DE CKDS        W E B - T R A D E R *00240002
//*--------------------------------------------------------------------*
//ZMCWT097 EXEC PGM=IKJEFT01,COND=(04,LT)
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBTR.KARDEX.CKDS,DISP=SHR
//SALIDA   DD DSN=MXCP.ZM.FIX.EBTR.CIFRAS.CKDS.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCWT097),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMCWT096                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4ECF25                                        *00240002
//* OBJETIVO: GENERA ARCHIVO KARDEX DE WARRANT     W E B - T R A D E R *00240002
//*--------------------------------------------------------------------*
//ZMCWT096 EXEC PGM=IKJEFT01,COND=(04,LT)
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBTR.KARDEX.WARRANT,DISP=SHR
//SALIDA   DD DSN=MXCP.ZM.FIX.EBTR.CIFRAS.WARRANT.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCWT096),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMCWT095                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4ECF26                                        *00240002
//* OBJETIVO: GENERA ARCHIVO KARDEX DE DIV/SOCI    W E B - T R A D E R *00240002
//*--------------------------------------------------------------------*
//ZMCWT095 EXEC PGM=IKJEFT01,COND=(04,LT)
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBTR.KARDEX.DIVSOC,DISP=SHR
//SALIDA   DD DSN=MXCP.ZM.FIX.EBTR.CIFRAS.DIVSOC.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCWT095),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMCWT094                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4ECF27                                        *00240002
//* OBJETIVO: GENERA ARCHIVO KARDEX DE DIV/CAPI    W E B - T R A D E R *00240002
//*--------------------------------------------------------------------*
//ZMCWT094 EXEC PGM=IKJEFT01,COND=(04,LT)
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBTR.KARDEX.DIVCAP,DISP=SHR
//SALIDA   DD DSN=MXCP.ZM.FIX.EBTR.CIFRAS.DIVCAP.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCWT094),DISP=SHR
//*
//*--------------------------------------------------------------------*00240002
//*                 FIN DEL PROCESO ZMPDRVA2                           *00240002
//*--------------------------------------------------------------------*00240002
