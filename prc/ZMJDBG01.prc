//ZMJDBG01 PROC                                                         00010001
//*--------------------------------------------------------------------*00020000
//* PROYECTO     : ZM.                                                 *00030000
//* PROCESO      : ZMJDBG01.                                           *00040001
//* OBJETIVO     : HACER DESCARGA DE TABLAS POR UTILERIA               *00050000
//*--------------------------------------------------------------------*00060000
//*             L O G   D E   M O D I F I C A C I O N E S              *00070000
//*--------------------------------------------------------------------*00080000
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *00080100
//* ----------- --------- ------- ------------------------------------ *00080200
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *00080300
//*--------------------------------------------------------------------*00080400
//*--------------------------------------------------------------------*00095600
//* PASO       : ZMDBG010                                              *00095701
//* UTILERIA   : ICEMAN                                                *00095800
//* OBJETIVO   : DESCOMPRIME NUMERICOS                                 *00095901
//*--------------------------------------------------------------------*00097200
//ZMDBG010 EXEC PGM=ICEMAN                                              00097301
//*                                                                     00097400
//SORTIN   DD DSN=MBVP.BG.FIX.F&FECHA..MM02.PEN1PEN2.ENCT,              00097505
//            DISP=SHR                                                  00097702
//SORTOUT  DD DSN=MXCP.ZM.FIX.BGDES.MISMODIA,                           00097802
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00097902
//            SPACE=(CYL,(1000,500),RLSE),                              00098002
//            DCB=(RECFM=FB,LRECL=161,BLKSIZE=0,DSORG=PS)               00098104
//*                                                                     00098202
//SYSOUT   DD SYSOUT=*                                                  00098302
//*                                                                     00098402
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJDBGT01),DISP=SHR                   00098502
//*                                                                     00098600
//                                                                      00120000
