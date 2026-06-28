//ZMPPGD06 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//*                PRESTAMO PATRIMONIAL GARANTIZADO                    *
//* PROYECTO     : ZM - BCPPGD06.                                      *
//* PROCESO      : ZMPPGD06.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : DESCARGA REGISTRO 'DP' DE ZMDT645 Y LA GUARDA EN    *
//*                LA ZMDT838                                          *
//* REALIZO      : FSW INDRA                                           *
//* FECHA        : SEPTIEMBRE 2015.                                    *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : ZPP06T50.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG03                                     *
//* OBJETIVO   : GENERA ARCHIVO CON INFORMACION 'DP' DE ZMDT645        *
//*--------------------------------------------------------------------*
//ZPP06T50 EXEC PGM=IKJEFT01
//*
//ZM03PPS1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG03.REGISTDP,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=115,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP06T50),DISP=SHR
//*
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//* OBJETIVO : ORDENA EL ARCHIVO CON INFORMACION 'DP'                  *
//**********************************************************************
//ZPP06T45 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG03.REGISTDP,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG04.REGISTDP.SORT,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=115,BLKSIZE=0),
//         SPACE=(CYL,(100,050),RLSE),UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP06T45),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//* OBJETIVO : SUMA EL VOLUMEN REPORTADO POR LA BMV                    *
//**********************************************************************
//ZPP06T43 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG04.REGISTDP.SORT,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG04.REGISTDP.SUM,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=115,BLKSIZE=0),
//         SPACE=(CYL,(100,050),RLSE),UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP06T43),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZPP06T40.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG04                                     *
//* OBJETIVO   : CARGA LA INFORMACION 'DP' EN LA TABL   ZMDT838        *
//*--------------------------------------------------------------------*
//ZPP06T40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM04PPG1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG04.REGISTDP.SUM,DISP=SHR
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP06T40),DISP=SHR
//*
//**********************************************************************
//*-------------------------------------------------------------------
//* FIN PROCESO ZMPPGD0W
//*-------------------------------------------------------------------
