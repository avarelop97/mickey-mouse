//ZMPPGD05 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - PPG.                                           *
//* PROCESO      : ZMPPGD05.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : CARGA DE LA CARTERA ADMISIBLE TABLA ZMDT834.        *
//* REALIZO      : INDRA                                               *
//* FECHA        : 20 DE OCTUBRE DEL 2015.                             *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*@INDRA-0316-I  INDRA   22MAR16 SE ELIMINA EL PASO DE DEPURACION DE  *
//*@INDRA-0316-F                  REGISTROS CON ESTATUS = 'N' EN       *
//*                               LA TABLA ZMDT834                     *
//*SDATOOL-45183-ASO-INI
//*SDATOOL-45183 ANGEL S.OSORNO SE ANEXA LECTURA DE ARCHIVO DE TABLA   *
//*ZMDT833 PARA LEER TODOS LOS TIPOS DE VALORES EN PASO  ZPP05T99      *
//*SE ADICIONAN PASOS PARA HACER CRUCES PARA LA ADMISIBILIDAD          *
//*SDATOOL-45183-ASO-FIN
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T99.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG19                                     *
//* OBJETIVO   : DESCARGA DE LA TABLA CARTERA.                         *
//*--------------------------------------------------------------------*
//ZPP05T99 EXEC PGM=IKJEFT01
//*
//*SDATOOL-45183-ASO-INI
//ZM99PPE1 DD DSN=MXCP.ZM.FIX.LOMBARDO.ZMDT833,DISP=SHR
//*ZM99PPS1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.DESC,
//ZM99PPS1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.ITVBMV.DESC,
//*SDATOOL-45183-ASO-FIN
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*SDATOOL-45183-ASO-INI
//*           DCB=(RECFM=FB,LRECL=170,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=188,BLKSIZE=0,DSORG=PS)
//*SDATOOL-45183-ASO-FIN
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP05T99),DISP=SHR
//*
//*SDATOOL-45183-ASO-INI
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T97.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : RECORTA ARCHIVO GENERADO EN PASO PREVIO PARA QUE      *
//*              SIGA SIN EL TIPO DE VALOR AL FINAL Y USARLO EN LOS    *
//*              PASOS QUE LO UTILIZAN SIN EL CAMBIO QUE SE LE HIZO    *
//*--------------------------------------------------------------------*
//ZPP05T97 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.ITVBMV.DESC,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.DESC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=170,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T97),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T96.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO POR IEMISORA, ISERIE.                  *
//*--------------------------------------------------------------------*
//ZPP05T96 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.ITVBMV.DESC,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.DESC.SORTEMI.ITVBMV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=188,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T96),DISP=SHR
//*
//*SDATOOL-45183-ASO-FIN
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T95.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO POR IEMISORA, ISERIE.                  *
//*--------------------------------------------------------------------*
//ZPP05T95 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.DESC,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.DESC.SORTEMI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=170,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T95),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T90.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG20                                     *
//* OBJETIVO   : DESCARGA DE LA TABLA ZMDT837                          *
//*--------------------------------------------------------------------*
//ZPP05T90 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM90PPS1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG20.DESC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=51,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP05T90),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T85.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO POR IEMISORA, ISERIE.                  *
//*--------------------------------------------------------------------*
//ZPP05T85 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG20.DESC,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG20.DESC.SORTEMI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=51,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T85),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T80.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : MATCH ENTRE ARCHIVOS                                  *
//*--------------------------------------------------------------------*
//ZPP05T80 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//*SDATOOL-45183-ASO-INI
//*SORTJNF1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.DESC.SORTEMI,DISP=SHR
//SORTJNF1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.DESC.SORTEMI.ITVBMV,
//            DISP=SHR
//*SDATOOL-45183-ASO-FIN
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG20.DESC.SORTEMI,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG20.MATCH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*SDATOOL-45183-ASO-INI
//*           DCB=(DSORG=PS,LRECL=204,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=222,RECFM=FB,BLKSIZE=0),
//*SDATOOL-45183-ASO-FIN
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T80),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T75.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO POR CTABCO, ICUENTA, IEMISORA, ISERIE. *
//*--------------------------------------------------------------------*
//ZPP05T75 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.DESC,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.DESC.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=170,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T75),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T70.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG21                                     *
//* OBJETIVO   : DESCARGA DE LA TABLA ZMDT834                          *
//*--------------------------------------------------------------------*
//ZPP05T70 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM70PPS1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG21.DESC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=172,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP05T70),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T65.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO POR CTABCO, ICUENTA, IEMISORA, ISERIE. *
//*--------------------------------------------------------------------*
//ZPP05T65 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG21.DESC,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG21.DESC.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=172,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T65),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T60.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : MATCH ENTRE ARCHIVOS                                  *
//*--------------------------------------------------------------------*
//ZPP05T60 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.DESC.SORT,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG21.DESC.SORT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG21.MATCH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=178,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T60),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T55.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG22                                     *
//* OBJETIVO   : ACTUALIZA TABLA ZMDT834 PARA ESTATUS = 'B'            *
//*--------------------------------------------------------------------*
//ZPP05T55 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM55PPE1 DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG21.MATCH,
//            DISP=SHR
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP05T55),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T50.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG23                                     *
//* OBJETIVO   : DESCARGA DE LA TABLA VECPRE                           *
//*--------------------------------------------------------------------*
//ZPP05T50 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM50PPS1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG23.DESC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=57,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP05T50),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T45.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO POR IEMISORA, ISERIE.                  *
//*--------------------------------------------------------------------*
//ZPP05T45 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG23.DESC,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG23.DESC.SORTEMI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=57,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T45),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T40.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : MATCH ENTRE ARCHIVOS                                  *
//*--------------------------------------------------------------------*
//ZPP05T40 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.DESC.SORTEMI,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG23.DESC.SORTEMI,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG23.MATCH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=186,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T40),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T35.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO POR ICONCEPT.                          *
//*--------------------------------------------------------------------*
//ZPP05T35 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG23.DESC,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG23.DESC.SORTCON,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=57,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T35),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T30.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO POR ICONCEPT.                          *
//*--------------------------------------------------------------------*
//ZPP05T30 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.DESC,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.DESC.SORTCON,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=170,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T30),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T25.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : MATCH ENTRE ARCHIVOS                                  *
//*--------------------------------------------------------------------*
//ZPP05T25 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG19.DESC.SORTCON,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG23.DESC.SORTCON,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG23.MATCH.SORTCON,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=186,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T25),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T20.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG24                                     *
//* OBJETIVO   : INSERTA REGISTROS DE CARTERA EN ZMDT834 RF            *
//*--------------------------------------------------------------------*
//ZPP05T20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM20PPE1 DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG23.MATCH,
//            DISP=SHR
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP05T20),DISP=SHR
//*
//*SDATOOL-45183-ASO-INI
//*--------------------------------------------------------------------*
//* PASO    : ZPP05T18                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: COPIA DE DESCARGA TABLA YHDTVAL                          *
//*--------------------------------------------------------------------*
//ZPP05T18 EXEC PGM=ICEMAN
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXB&AMB..YH.FIX.F&FECHA..MYHPPD05.YHDTVAL,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.F&FECHA..MYHPPD05.YHDTVAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=197,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T18),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZPP05T17                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: CRUCE CON YHDTVAL PARA OBTENER REGISTROS QUE NO HACEN    *
//*           MATCH POR EMISORA, SERIE Y TIPO DE VALOR                 *
//*           Y POSTERIOR CRUZAR EL RESULTADO DE NUEVO CON             *
//*           YHDTVAL A TRAVES DEL IISIN                               *
//*--------------------------------------------------------------------*
//ZPP05T17 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG20.MATCH,
//            DISP=SHR
//*
//SORTJNF2 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..MYHPPD05.YHDTVAL,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG20.NOMATCH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=222,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T17),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZPP05X16                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: CRUCE DE NO MATCH CON YHDTVAL POR IISIN Y AGREGAR BURSA  *
//*--------------------------------------------------------------------*
//ZPP05X16 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..MYHPPD05.YHDTVAL,
//            DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG20.NOMATCH,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG20.YHDTVAL.IISIN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=224,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05X16),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZPP05T16                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: CRUCE POR EMISORA,SERIE Y TIPO DE VALOR                  *
//*           CON YHDTVAL PARA AGREGAR BURSATILIDAD                    *
//*--------------------------------------------------------------------*
//ZPP05T16 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..MYHPPD05.YHDTVAL,
//            DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG20.MATCH,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG20.YHDTVAL.MATCH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=224,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05T16),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZPP05X15                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: UNION DE CRUCE POR IISIN Y EMISORA.SERIE, TIPO DE VALOR  *
//*--------------------------------------------------------------------*
//ZPP05X15 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG20.YHDTVAL.MATCH,
//            DISP=SHR
//*
//         DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG20.YHDTVAL.IISIN,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG20.YHDTVAL.TOTAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=224,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP05X15),DISP=SHR
//*
//*SDATOOL-45183-ASO-FIN
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T15.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG25                                     *
//* OBJETIVO   : INSERTA REGISTROS DE CARTERA EN ZMDT834 RV            *
//*--------------------------------------------------------------------*
//ZPP05T15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*SDATOOL-45183-ASO-INI
//*ZM15PPE1 DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG20.MATCH,
//ZM15PPE1 DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG20.YHDTVAL.TOTAL,
//*SDATOOL-45183-ASO-FIN
//            DISP=SHR
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP05T15),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T10.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG26                                     *
//* OBJETIVO   : VALIDACION DE SUBYACENTES PARA NOTAS ESTRUCUTRADAS    *
//*--------------------------------------------------------------------*
//ZPP05T10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM10PPS1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG26.DESC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=174,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP05T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP05T05.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG27                                     *
//* OBJETIVO   : ELIMINA REGISTROS CON ESTATUS = 'N' EN ZMDT834        *
//*--------------------------------------------------------------------*
//*@INDRA-0316-I
//*ZPP05T05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*QRLSDB2  DD  SYSOUT=*
//*SYSPRINT DD  SYSOUT=*
//*SYSTSPRT DD  SYSOUT=*
//*SYSUDUMP DD  SYSOUT=*
//*SYSABOUT DD  SYSOUT=*
//*SYSDBOUT DD  SYSOUT=*
//*SYSOUT   DD  SYSOUT=*
//*SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP05T05),DISP=SHR
//*@INDRA-0316-F
//*-------------------------------------------------------------------
//*                     FIN PROCESO ZMPPGD05
//*-------------------------------------------------------------------
