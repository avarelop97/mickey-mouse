//ZMFMLD03 PROC                                                         00010000
//*                                                                    *00020000
//*--------------------------------------------------------------------*00030000
//* PROYECTO     : ZM - PPG.                                           *00040000
//* PROCESO      : ZMFMLD03.                                           *00050000
//* PERIODICIDAD : DIARIO.                                             *00060000
//* OBJETIVO     : GENERAR ARCHIVO DE CONFIGURACION.                   *00070000
//* REALIZO      : INDRA.                                              *00090000
//* FECHA        : 22 DE FEBREO DEL 2016                               *00100000
//*--------------------------------------------------------------------*00110000
//*         L O G    D E   M O D I F I C A C I O N E S                 *00140000
//*--------------------------------------------------------------------*00150000
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *00160000
//* ----------- --------- ------- ------------------------------------ *00170000
//*@INDRA-0316-I  INDRA   04MAR16 SE CAMBIA EL NOMBRE DEL ARCHIVO DE   *00180000
//*@INDRA-0316-F                  SALIDA PARA ELIMINAR EL FECHADO.     *00190000
//*--------------------------------------------------------------------*00200000
//* PASO       : ZFM03T01.                                             *00220000
//* UTILERIA   : IKJEFT01/ZM4FML07                                     *00230000
//* OBJETIVO   : GENERAR ARCHIVO DE CONFIGURACION.                     *00240000
//*--------------------------------------------------------------------*00250000
//*                                                                     00260000
//ZFM03T01 EXEC PGM=IKJEFT01                                            00270000
//*                                                                     00280000
//*@INDRA-0316-I                                                        00280100
//*ZM01FMS1 DD DSN=MXCP.ZM.FIX.PPG.ZM4FML07.D&FECHA,                    00290000
//ZM01FMS1 DD DSN=MXCP.ZM.FIX.PPG.ZM4FML07.ACONFIG,                     00290010
//*@INDRA-0316-I                                                        00290100
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00300000
//            SPACE=(CYL,(200,100),RLSE),                               00310000
//            DCB=(RECFM=FB,LRECL=1850,BLKSIZE=0,DSORG=PS)              00311000
//*                                                                     00312000
//QRLSDB2  DD SYSOUT=*                                                  00320000
//SYSPRINT DD SYSOUT=*                                                  00330000
//SYSTSPRT DD SYSOUT=*                                                  00340000
//SYSUDUMP DD SYSOUT=*                                                  00350000
//SYSABOUT DD SYSOUT=*                                                  00360000
//SYSDBOUT DD SYSOUT=*                                                  00370000
//SYSOUT   DD SYSOUT=*                                                  00380000
//*                                                                     00390000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFM03T01),                           00400000
//            DISP=SHR                                                  00410000
//*                                                                     00420000
//*--------------------------------------------------------------------*00430000
//*                     FIN PROCESO ZMFMLD03                           *00440000
//*--------------------------------------------------------------------*00450000
