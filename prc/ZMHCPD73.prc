//ZMHCPD73 PROC
//*
//*--------------------------------------------------------------------*
//* PROCESO  : ZMHCPD73                                                *
//* OBJETIVO : EJECUTAR PROGRAMA QUE OBTIENE A LOS CLIENTES FACTA QUE  *
//*            TIENEN AUTODECLACION                                    *
//* AUTOR    : ROG                                                     *
//* FECHA    : 24/06/2016                                              *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*                       LOG DE MODIFICACIONES                        *
//*--------------------------------------------------------------------*
//*  MARCA   AUTOR   FECHA  DESCRIPCION                                *
//* ------- ------- ------- -------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO     : PHD73P01                                                *
//* PROGRAMA : IKJEFT01/ZM4DFA20                                       *
//* FUNCION  : GENERA ARCHIVO DE AUTODECLARACION                       *
//*--------------------------------------------------------------------*
//PHD73P01 EXEC PGM=IKJEFT01
//*
//FDSALIDA DD DSN=MXCP.ZM.FIX.CRSFAT.AUTODEC.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=187,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC73P01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                  FIN DE PROCESO ZMHCPD73                           *
//*--------------------------------------------------------------------*
