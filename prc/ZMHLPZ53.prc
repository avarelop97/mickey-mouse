//ZMHLPZ53 PROC                                                         00060000
//**********************************************************************00150000
//*                                                                    *00160000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00170000
//*                                                                    *00180000
//* PROCESO        :  ZMHLPZ53.                                        *00190000
//*                                                                    *00220000
//* OBJETIVO       :  GENERA Y TRANSFIERE ARCHIVO OPCION 69.           *00230000
//*                                                                    *00240000
//* SUBMITIDO POR OPCION 69                                            *00300000
//*                                                                    *00321000
//* AUTOR: OUF INETUM                                                  *00350100
//**********************************************************************00360000
//*-------------------------------------------------------------------- 00460400
//* PASO 1                                                              00460500
//* PROGRAMA: ZM4DBC80                                                  00460700
//* FUNCION:  GENERA ARCHIVO CON INFORMACION DE LA OPC 69               00460800
//*-------------------------------------------------------------------- 00460900
//PHL53P01 EXEC PGM=IKJEFT01                                            00461003
//*                                                                     00461103
//ZMOH80R1 DD DSN=MXCP.ZM.FIX.ARCHIVO.ARBIN69,                          00461203
//            DISP=(NEW,CATLG,CATLG),                                   00461303
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=274,BLKSIZE=0),             00461406
//            UNIT=3390,                                                00461503
//            SPACE=(CYL,(4,2),RLSE)                                    00461603
//SYSTSPRT DD SYSOUT=*                                                  00461703
//SYSPRINT DD SYSOUT=*                                                  00461803
//SYSOUT   DD SYSOUT=*                                                  00461903
//SYSDBOUT DD SYSOUT=*                                                  00462003
//SYSABOUT DD DUMMY                                                     00462103
//SYSUDUMP DD DUMMY                                                     00462203
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZHA01T01)                   00462403
//*                                                                     00464510
//*--------------------------------------------------------------------*00501000
//*                 F I N   Z M H L P Z 5 3                             00501100
//*-------------------------------------------------------------------- 00501200
