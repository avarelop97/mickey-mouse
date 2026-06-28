//ZMHNET2R PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//* APLICACION: ZM (CASA DE BOLSA)                                     *00040000
//*                                                                    *00060000
//* PROCESO   : BCHNET2R                                               *00070007
//*                                                                    *00080000
//* OBJETIVO  : REALIZA AFECTACIONES TABLAS MUV PARA GENERAR           *00090000
//*             NETEO BG EN BASE DE DATOS                              *00100000
//* FRECUENCIA: EVENTUAL                                               *00110000
//*                                                                    *00120000
//* REALIZO   : JOSE OSCAR SEGURA PEREZ (HILDEBRANDO)                  *00130000
//*                                                                    *00140000
//* FECHA     : 08-MAR-2011                                            *00150000
//*                                                                    *00160000
//**********************************************************************00170000
//* PASO 1  : EJECUCION PROGRAMA ZM4CFX24                              *00180007
//* OBJETIVO: REALIZA AFECTACIONES TABLAS MUV PARA GENERAR NETEO       *00190000
//*           (MUV)                                                    *00191000
//**********************************************************************00200000
//PHNETP01  EXEC PGM=IKJEFT01,COND=(4,LT)                               00201007
//SYSTSPRT DD SYSOUT=*                                                  00208008
//SYSPRINT DD SYSOUT=*                                                  00208009
//SYSOUT   DD SYSOUT=*                                                  00208010
//SYSDBOUT DD SYSOUT=*                                                  00208020
//SYSABOUT DD SYSOUT=*                                                  00208030
//SYSUDUMP DD DUMMY                                                     00208040
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCNET2R),DISP=SHR                   00208050
//*                                                                     00209800
//**********************************************************************00238800
//*                   FIN DEL PROCEDIMIENTO ZMHNET2R                   *00238900
//**********************************************************************00239000
