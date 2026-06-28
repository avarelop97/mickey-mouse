//ZMPLPF31 PROC                                                         00010000
//**********************************************************************00020000
//* OBJETIVO : GENERA EL ARCHIVO CORRESPONDIENTE CRS REPORTABLE        *00060000
//* AUTOR    : ROG                                                     *00080000
//* FECHA    : 23/06/2016                                           *   00110000
//*--------------------------------------------------------------------*00130000
//*         L O G     D E     M O D I F I C A C I O N E S              *00140000
//*--------------------------------------------------------------------*00150000
//*   MARCA       AUTOR    FECHA    DESCRIPCION                         00160000
//*--------------------------------------------------------------------*00190000
//*                                                                     00191000
//**********************************************************************00200000
//* PASO     : PHF31P03                                                 00220000
//* PROGRAMA : ZM4DFA25 / IKJEFT01                                      00230000
//* DESCRIPC : GENERA REPORTE DE CAMBIOS SIN FORMATO                    00240000
//**********************************************************************00270000
//PHF31P03 EXEC PGM=IKJEFT01                                            00490000
//*                                                                     00500000
//FDSALIDA DD  DSN=MXCP.ZM.FIX.CRSFAT.CAMBIOS,                          00501000
//             DISP=(NEW,CATLG,DELETE),                                 00501100
//             DCB=(LRECL=105,RECFM=FB,BLKSIZE=0,DSORG=PS),             00501200
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE)                        00501300
//*                                                                     00501400
//SYSOUT   DD  SYSOUT=*                                                 00502000
//SYSPRINT DD  SYSOUT=*                                                 00503000
//SYSTSPRT DD  SYSOUT=*                                                 00504000
//SYSDBOUT DD  SYSOUT=*                                                 00505000
//SYSABOUT DD  SYSOUT=*                                                 00506000
//SYSUDUMP DD  SYSOUT=*                                                 00507000
//SYSIN    DD  DUMMY                                                    00508000
//*                                                                     00509000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC31P00),DISP=SHR                  00510000
//*                                                                     00520000
//**********************************************************************00520010
//* PASO       : PHF31P02.                                             *00520020
//* DESCRIPC   : SORT REPORTE DE CAMBIOS SIN FORMATO POR LLAVE (1:24)  *00520030
//**********************************************************************00520040
//PHF31P02 EXEC PGM=ICEMAN,COND=(4,LT)                                  00520050
//SORTIN   DD DSN=MXCP.ZM.FIX.CRSFAT.CAMBIOS,DISP=SHR                   00520060
//SORTOUT  DD DSN=MXCP.ZM.FIX.CRSFAT.CAMBIOS.FS,                        00520070
//            DISP=(NEW,CATLG,DELETE),                                  00520080
//            DCB=(LRECL=105,RECFM=FB,BLKSIZE=0,DSORG=PS),              00520090
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00520091
//SYSOUT   DD SYSOUT=*                                                  00520092
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC31P01),DISP=SHR                   00520093
//*                                                                     00520094
//**********************************************************************00520100
//* PASO     : PHF31P01                                                 00520200
//* PROGRAMA : ZM4DFA24 / IKJEFT01                                      00520300
//* DESCRIPC : GENERA REPORTE DE CAMBIOS CON FORMATO                    00520400
//**********************************************************************00520500
//PHF31P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00520600
//*                                                                     00520700
//ZMFA24A1 DD DSN=MXCP.ZM.FIX.CRSFAT.CAMBIOS.FS,DISP=SHR                00520800
//FDSALIDA DD DSN=MXCP.ZM.FIX.CRSFAT.REPCAMB,                           00521000
//            DISP=(NEW,CATLG,DELETE),                                  00521100
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),              00521200
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00521300
//*                                                                     00521400
//SYSTSPRT DD SYSOUT=*                                                  00521500
//SYSPRINT DD SYSOUT=*                                                  00521600
//SYSOUT   DD SYSOUT=*                                                  00521700
//SYSDBOUT DD SYSOUT=*                                                  00521800
//SYSABOUT DD DUMMY                                                     00521900
//SYSUDUMP DD DUMMY                                                     00522000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC31P02),DISP=SHR                   00522100
//*                                                                     00522200
//**********************************************************************00522300
//* PASO    : PHF31P00                                                 *00522400
//* PROGRAMA: ICEGENER                                                 *00522500
//* OBJETIVO: ENVIAR REPORTE CAMBIOS FATCA CRS (CONTROL-D)             *00522600
//**********************************************************************00522700
//PHF31P00 EXEC PGM=ICEGENER,COND=(4,LT)                                00522800
//SYSUT1   DD DSN=MXCP.ZM.FIX.CRSFAT.REPCAMB,DISP=SHR                   00522900
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00523000
//SYSPRINT DD SYSOUT=*                                                  00523100
//SYSOUT   DD SYSOUT=*                                                  00523200
//SYSDBOUT DD SYSOUT=*                                                  00523300
//SYSIN    DD DUMMY                                                     00523400
//*                                                                     00523500
//****************** FIN DEL PROCESO ZMUFPD24 **************************00523600
