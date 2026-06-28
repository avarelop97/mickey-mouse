//ZMHNET01 PROC                                                         00010007
//*                                                                     00020000
//**********************************************************************00030000
//* APLICACION: ZM (CASA DE BOLSA)                                     *00040000
//*                                                                    *00060000
//* PROCESO   : BCHNET01                                               *00070007
//*                                                                    *00080000
//* OBJETIVO  : GENERA ARCHIVO CON EL EFECTIVO DE CONTRATOS DE         *00090000
//*             FIDEICOMISOS                                           *00100000
//* FRECUENCIA:                                                        *00110000
//*                                                                    *00120000
//* REALIZO   : ELCS (EVERIS)                                          *00130000
//*                                                                    *00140000
//* FECHA     : 30-JUL-2008                                            *00150000
//*                                                                    *00160000
//**********************************************************************00170000
//* PASO : ZHCNET01 . EJECUCION PROGRAMA ZM4CFI23                      *00180007
//* OBJETIVO: GENERA ARCHIVO CON EL EFECTIVO DE CONTRATOS DE           *00190000
//*           FIDEICOMISOS                                             *00191000
//**********************************************************************00200000
//PHNETP02  EXEC PGM=IKJEFT01,COND=(4,LT)                               00201007
//ZMHI23R1  DD DSN=MXC&AMB..ZM.FIX.REPORTE.EFECT,                       00201008
//             DISP=(NEW,CATLG,DELETE),                                 00201009
//             UNIT=3390,                                               00201010
//             SPACE=(CYL,(5,1),RLSE),                                  00201011
//             DCB=(DSORG=PS,BLKSIZE=0,LRECL=37,RECFM=FB)               00201020
//SYSTSPRT DD SYSOUT=*                                                  00207100
//SYSPRINT DD SYSOUT=*                                                  00207200
//SYSOUT   DD SYSOUT=*                                                  00207300
//SYSDBOUT DD SYSOUT=*                                                  00207400
//SYSABOUT DD SYSOUT=*                                                  00207500
//SYSUDUMP DD DUMMY                                                     00207600
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZHCNET01),DISP=SHR                  00208007
//*---------------------------------------------------------------------00208008
//* PROGRAMA: CTMCND                                                    00208009
//* OBJETIVO: ADICIONA CONDICION PARA QUE SEA TOMADA POR MUV            00208010
//*                   Y SE EJECUTE EL PROCESO AJJNET01                  00208020
//*---------------------------------------------------------------------00208030
//PHNETP01 EXEC PGM=CTMCND,PARM='ADD COND BCHNET01_OK WDATE',           00208040
//         COND=(4,LT)                                                  00208050
//         INCLUDE MEMBER=IOASET                                        00208060
//         INCLUDE MEMBER=IOAENV                                        00208070
//SYSIN    DD DUMMY                                                     00208080
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00208090
//DARESF   DD DISP=SHR,DSN=SYS3.CTMD.SYSZBBV.DATA.RES                   00208100
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00208200
//PRTDBG   DD SYSOUT=*                                                  00208300
//SYSPRINT DD DUMMY                                                     00208400
//DAPRINT  DD SYSOUT=*                                                  00208500
//DACNDIN  DD DDNAME=SYSIN                                              00208600
//*                                                                     00209800
//**********************************************************************00238800
//*                   FIN DEL PROCEDIMIENTO ZMHNET01                   *00238907
//**********************************************************************00239000
