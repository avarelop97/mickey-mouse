//ZMHNETI1 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//* APLICACION: ZM (CASA DE BOLSA)                                     *00040000
//*                                                                    *00060000
//* PROCESO   : BCHNETI1                                               *00070000
//*                                                                    *00080000
//* OBJETIVO  : GENERA ARCHIVO CON EL EFECTIVO DE CONTRATOS DE         *00090000
//*             FIDEICOMISOS                                           *00100000
//* FRECUENCIA:                                                        *00110000
//*                                                                    *00120000
//* REALIZO   : EAM                                                    *00130000
//*                                                                    *00140000
//* FECHA     : 24-MAY-2010                                            *00150000
//*                                                                    *00160000
//**********************************************************************00170014
//* PASO : PHNETI01 . EJECUCION PROGRAMA ZM4CNE01                      *00180000
//* OBJETIVO: INSERTA REGISTROS EN LA TABLA ZMDT633                    *00190000
//**********************************************************************00200000
//PHNETI01  EXEC PGM=IKJEFT01,COND=(4,LT)                               00201012
//ZMM205E1 DD DSN=MXCP.ZM.FIX.NETO.COMP,                                00242623
//            DISP=SHR                                                  00242722
//SYSTSPRT DD SYSOUT=*                                                  00209423
//SYSPRINT DD SYSOUT=*                                                  00209424
//SYSOUT   DD SYSOUT=*                                                  00209425
//SYSDBOUT DD SYSOUT=*                                                  00209426
//SYSABOUT DD SYSOUT=*                                                  00209427
//SYSUDUMP DD DUMMY                                                     00209428
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCNETI1),DISP=SHR                   00209429
//**********************************************************************00245400
//**                  FIN DEL PROCEDIMIENTO ZMHNETI1                   *00246000
//**********************************************************************00250000
