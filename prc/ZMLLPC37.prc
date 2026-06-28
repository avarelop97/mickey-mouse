//ZMLLPC37 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< SOCIEDADES DE INV >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCESO   :  CBJLPC37                                            *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  INSERTA EVENTO INTERFAZ DE OPERACIONES DIFO.        *00003000
//*                DE LAS COMPRAS/VENTAS DE SOCIEDADES DE INVERSION    *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    :  DIARIA                                        *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*---------------------------------------------------------------------
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4OJ084 (GRAVA EVENTO DF1 EN CTLPROC)
//*---------------------------------------------------------------------
//PLC36P03 EXEC PGM=IKJEFT01
//*
//ZMJ084E1 DD DSN=MBV&AMB..TP.FIX.PRECIOS.PREVCIER.D&FECHA.,DISP=SHR
//*
//ZMJ084S1 DD DSN=MXC&AMB..ZM.FIX.PRECIOS.PREVCIER.D&FECHA.,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=92,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP37T03),DISP=SHR
//*
