//ZMHNET03 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//* APLICACION: ZM (CASA DE BOLSA)                                     *00040000
//*                                                                    *00060000
//* PROCESO   : BCHNET03                                               *00070000
//*                                                                    *00080000
//* OBJETIVO  : GENERA ARCHIVO CON EL EFECTIVO DE CONTRATOS DE         *00090000
//*             FIDEICOMISOS                                           *00100000
//* FRECUENCIA:                                                        *00110000
//*                                                                    *00120000
//* REALIZO   : ELCS (EVERIS)                                          *00130000
//*                                                                    *00140000
//* FECHA     : 30-JUL-2008                                            *00150000
//*                                                                    *00160000
//**********************************************************************00170014
//* PASO : PHNETP03 . EJECUCION PROGRAMA ZM4CFI25                      *00180000
//* OBJETIVO: GENERA ARCHIVO CON EL EFECTIVO DE CONTRATOS DE           *00190000
//*           FIDEICOMISOS                                             *00191000
//**********************************************************************00200000
//PHNETP03  EXEC PGM=IKJEFT01,COND=(4,LT)                               00201012
//ZMHI23R1  DD DSN=MXC&AMB..ZM.FIX.REPORTE.MERK2,                       00209123
//             DISP=(NEW,CATLG,DELETE),                                 00209222
//             SPACE=(CYL,(5,1),RLSE),UNIT=3390,                        00209322
//             DCB=(DSORG=PS,BLKSIZE=0,LRECL=190,RECFM=FB)              00209422
//SYSTSPRT DD SYSOUT=*                                                  00209423
//SYSPRINT DD SYSOUT=*                                                  00209424
//SYSOUT   DD SYSOUT=*                                                  00209425
//SYSDBOUT DD SYSOUT=*                                                  00209426
//SYSABOUT DD SYSOUT=*                                                  00209427
//SYSUDUMP DD DUMMY                                                     00209428
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCNET03),DISP=SHR                   00209429
//*                                                                     00209813
//**********************************************************************00238900
//* OBJETIVO : SORTEAR ARCHIVO                                         *00239000
//* PROGRAMA : ICEMAN(TARJETA DE SORT PHNETP02)                        *00239100
//**********************************************************************00239200
//PHNETP02 EXEC PGM=ICEMAN,COND=(4,LT)                                  00239308
//SYSOUT   DD SYSOUT=*                                                  00239808
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.REPORTE.MERK2,DISP=SHR                00240023
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.REPORTE.SORT2,                        00240324
//            DISP=(NEW,CATLG,DELETE),                                  00240422
//            DCB=(LRECL=191,RECFM=FB,BLKSIZE=0,DSORG=PS),              00240522
//            UNIT=3390,                                                00240622
//            SPACE=(CYL,(5,1),RLSE)                                    00240722
//*                                                                     00240822
//SYSIN   DD DSN=ZIVA.ZME.CONTROL(ZHCNET04),DISP=SHR                    00240923
//**********************************************************************00241122
//* PASO : PHNETP01 .                                                  *00241222
//* OBJETIVO: PROGRAMA QUE GENERA REPORTE FINAL ZM3CREPO               *00241322
//*                                                                    *00241422
//**********************************************************************00241522
//PHNETP01  EXEC PGM=IKJEFT01,COND=(4,LT)                               00241523
//ENTRADA  DD DSN=MXC&AMB..ZM.FIX.REPORTE.SORT2,                        00242623
//            DISP=(OLD,PASS)                                           00242722
//SALIDA01 DD DSN=MXC&AMB..ZM.FIX.REPORTE.NET,                          00242923
//            DISP=(NEW,CATLG,DELETE),                                  00243022
//            DCB=(DSORG=PS,RECFM=FB,LRECL=189,BLKSIZE=0),              00243122
//            UNIT=3390,                                                00243222
//            SPACE=(CYL,(5,1),RLSE)                                    00243322
//SYSTSPRT DD SYSOUT=*                                                  00243323
//SYSPRINT DD SYSOUT=*                                                  00243324
//SYSOUT   DD SYSOUT=*                                                  00243325
//SYSDBOUT DD SYSOUT=*                                                  00243326
//SYSABOUT DD SYSOUT=*                                                  00243327
//SYSUDUMP DD DUMMY                                                     00243328
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCNET05),DISP=SHR                   00243330
//*                                                                     00243422
//**********************************************************************00245400
//**                  FIN DEL PROCEDIMIENTO ZMHNET03                   *00246000
//**********************************************************************00250000
