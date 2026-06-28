//ZMPPGD60 PROC
//*                                                                    *00020000
//*--------------------------------------------------------------------*00030000
//* PROYECTO     : ZM - PPG.                                           *00040000
//* PROCESO      : ZMPPGD60.                                           *00050000
//* PERIODICIDAD : MENSUAL.                                            *00060000
//* OBJETIVO     : ACTUALIZACION DE AFOROS TABLA ZMDT837.              *00070000
//* REALIZO      : INETUM.                                             *00080000
//* FECHA        : 26 DE AGOSTO 2024.                                  *00090000
//*--------------------------------------------------------------------*00100000
//*         L O G    D E   M O D I F I C A C I O N E S                 *00110000
//*--------------------------------------------------------------------*00120000
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *00130000
//* ----------- --------- ------- ------------------------------------ *00140000
//*@INETUM        INETUM  26AGO24 PROCESO ORIGINAL.                    *00150000
//*@BBVA         MI12728  ENERO25 SE AGREGA PASO PARA INICIALIZAR      *00150000
//*                               AFORO EN CERO A FONDOS Y ETFS.       *00150000
//*--------------------------------------------------------------------*00230000
//* PASO       : ZPP50T90.                                             *00240000
//* UTILERIA   : IKJEFT01/ZM4PPG61.                                    *00250000
//* OBJETIVO   : INICIALIZAR AFOROS EN CERO DE FONDOS.                 *00260000
//*--------------------------------------------------------------------*00270000
//ZPP50T90 EXEC PGM=IKJEFT01                                            00280000
//*                                                                     00290000
//QRLSDB2  DD SYSOUT=*                                                  00420000
//SYSPRINT DD SYSOUT=*                                                  00430000
//SYSTSPRT DD SYSOUT=*                                                  00440000
//SYSUDUMP DD SYSOUT=*                                                  00450000
//SYSABOUT DD SYSOUT=*                                                  00460000
//SYSDBOUT DD SYSOUT=*                                                  00470000
//SYSOUT   DD SYSOUT=*                                                  00480000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP60T50),DISP=SHR                   00490000
//*                                                                     00500000
//*-------------------------------------------------------------------  06400000
//* PASO       : ZPP60T90.                                             *00240000
//* UTILERIA   : IKJEFT01/ZM4PPG60.                                    *00250000
//* OBJETIVO   : ACTUALIZACION DE AFOROS TABLA ZMDT837.                *00260000
//*--------------------------------------------------------------------*00270000
//ZPP60T90 EXEC PGM=IKJEFT01,COND=(4,LT)                                00280000
//*                                                                     00290000
//ZM60PPE1 DD DSN=MXCP.ZM.FIX.LOMBARDO.ZMDT837,DISP=SHR                 00310000
//*                                                                     00410000
//ZM60PPS1 DD DSN=MXCP.ZM.FIX.LOMBARDO.ZMDT837.NOUPDATE,                00310000
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=014,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(5,2),RLSE)
//*                                                                     00410000
//QRLSDB2  DD SYSOUT=*                                                  00420000
//SYSPRINT DD SYSOUT=*                                                  00430000
//SYSTSPRT DD SYSOUT=*                                                  00440000
//SYSUDUMP DD SYSOUT=*                                                  00450000
//SYSABOUT DD SYSOUT=*                                                  00460000
//SYSDBOUT DD SYSOUT=*                                                  00470000
//SYSOUT   DD SYSOUT=*                                                  00480000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP60T60),DISP=SHR                   00490000
//*-------------------------------------------------------------------  06400000
//* PASO       : ZPP70T90.                                             *00240000
//* UTILERIA   : IKJEFT01/ZM4PPG65.                                    *00250000
//* OBJETIVO   : ACTUALIZACION DE AFOROS ETFS EN ZMDT837.              *00260000
//*--------------------------------------------------------------------*00270000
//ZPP70T90 EXEC PGM=IKJEFT01,COND=(4,LT)                                00280000
//*                                                                     00290000
//ZM60PPE2 DD DSN=MXCP.ZM.FIX.LOMBAETF.ZMDT837,DISP=SHR                 00310000
//*                                                                     00410000
//ZM60PPS2 DD DSN=MXCP.ZM.FIX.LOMBAETF.ZMDT837.NOUPDATE,                00310000
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=014,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(5,2),RLSE)
//*                                                                     00410000
//QRLSDB2  DD SYSOUT=*                                                  00420000
//SYSPRINT DD SYSOUT=*                                                  00430000
//SYSTSPRT DD SYSOUT=*                                                  00440000
//SYSUDUMP DD SYSOUT=*                                                  00450000
//SYSABOUT DD SYSOUT=*                                                  00460000
//SYSDBOUT DD SYSOUT=*                                                  00470000
//SYSOUT   DD SYSOUT=*                                                  00480000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP60T70),DISP=SHR                   00490000
//*                                                                     00500000
//*-------------------------------------------------------------------  06400000
//*                     FIN PROCESO ZMPPGD60                            06410000
//*-------------------------------------------------------------------  06420000
