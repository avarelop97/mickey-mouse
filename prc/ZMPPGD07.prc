//ZMPPGD07 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//*                PRESTAMO PATRIMONIAL GARANTIZADO                    *
//* PROYECTO     : ZM - BCPPGD07.                                      *
//* PROCESO      : ZMPPGD07.                                           *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : PROCESO ESTADISTICO PRESTAMO PATRIMONIAL GARANTIZA. *
//* REALIZO      : FSW INDRA                                           *
//* FECHA        : 25 DE OCTUBRE DEL 2015.                             *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.0.0-01 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP07T50.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG05                                     *
//* OBJETIVO   : GENERA ARCHIVO CON EMISORAS-SERIE A PROCESAR          *
//*--------------------------------------------------------------------*
//*
//ZPP07T50 EXEC PGM=IKJEFT01
//*
//ZM05PPS1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG05.DESVEMSE,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=025,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP07T50),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP07T45.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG06                                     *
//* OBJETIVO   : GENERA ARCHIVO CON REGISTROS DE PRECIOS UN DIA ANTES  *
//*              Y HOY                                                 *
//*--------------------------------------------------------------------*
//*
//ZPP07T45 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM06PPG1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG05.DESVEMSE,DISP=SHR
//*
//ZM06PPS1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG06.DESVSTDI,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=053,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP07T45),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP07T40.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG07                                     *
//* OBJETIVO   : CALCULO LOGARITMO NATURAL DE 500 DIAS  REGISTRO DP    *
//*--------------------------------------------------------------------*
//*
//ZPP07T40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM07PPG1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG06.DESVSTDI,DISP=SHR
//*
//ZM07PPS1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG07.LOGNATUI,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=063,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP07T40),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP07T35.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA POR EMISORA SERIE Y SUMA EL LOGARITMO NATURAL  *
//*--------------------------------------------------------------------*
//*
//ZPP07T35 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG07.LOGNATUI,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG07.LOGNATUI.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=063,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP07T35),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP07T30.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL MATCH Y LE PEGA A TODOS LOS REGISTROS      *
//*              LA SUMA DE LOGARITMO                                  *
//*--------------------------------------------------------------------*
//*
//ZPP07T30 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG07.LOGNATUI,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG07.LOGNATUI.SORT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG07.MATCH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=073,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP07T30),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP07T25.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG08                                     *
//* OBJETIVO   : REALIZA CALCULO PARA PROCESO ESTADISTICO II PPG       *
//*              (GENERA INFORMACION CALCULO VARIANZA)                 *
//*--------------------------------------------------------------------*
//*
//ZPP07T25 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM08PPG1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG07.MATCH,DISP=SHR
//*
//ZM08PPS1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG08.VARIANZI,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=103,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP07T25),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP07T20.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA POR EMISORA SERIE Y SUMA LA VARIANZA           *
//*--------------------------------------------------------------------*
//*
//ZPP07T20 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG08.VARIANZI,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG08.VARIANZI.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=103,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP07T20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP07T15.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG09                                     *
//* OBJETIVO   : CALCULO DESVIACION ESTANDAR Y LO GUARDA EN ZMDT837    *
//*--------------------------------------------------------------------*
//*
//ZPP07T15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM09PPG1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG08.VARIANZI.SORT,DISP=SHR
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP07T15),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP07T13.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG10                                     *
//* OBJETIVO   : GENERA ARCHIVO CON REGISTROS PARA OBTENER LA MEDIA    *
//*              DE 90 DIAS PARA EL CALCULO DEL PERCENTIL              *
//*--------------------------------------------------------------------*
//*
//ZPP07T13 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM10PPG1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG05.DESVEMSE,DISP=SHR
//*
//ZM10PPS1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG10.PERCENTI,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=049,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP07T13),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP07T10.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA POR EMISORA SERIE Y SUMA EL RESULTADO DE       *
//*              VOLUMEN POR PRECIO                                    *
//*--------------------------------------------------------------------*
//*
//ZPP07T10 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG10.PERCENTI,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG10.PERCENTI.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=049,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP07T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP07T08.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG11                                     *
//* OBJETIVO   : CALCULO LA MEDIA DE CADA EMISORA SERIE PARA PERCENTIL *
//*--------------------------------------------------------------------*
//*
//ZPP07T08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM11PPG1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG10.PERCENTI.SORT,DISP=SHR
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP07T08),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP07T05.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG12                                     *
//* OBJETIVO   : OBTIENE EL PERCENTIL Y LO ACTUALIZA EN ZMDT837        *
//*--------------------------------------------------------------------*
//*
//ZPP07T05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP07T05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                      FIN PROCESO ZMPPGD07                          *
//*--------------------------------------------------------------------*
