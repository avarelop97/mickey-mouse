//ZMLLPC33 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A).              *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPC33.                                           *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  PROCESO AUTOMATICO DE COMPRA - VENTA DIFO.          *00003000
//*                 *--- D E F I N I T I V O ---*                      *00003000
//*   CORRE ANTES DE  :                                                *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:                                                *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : DIARIA                                         *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*---------------------------------------------------------------------
//*---------------------------------------------------------------------
//* PASO    : PLC33P01
//* PROGRAMA: ZM4OJ204
//*---------------------------------------------------------------------
//PLC33P01 EXEC PGM=IKJEFT01
//*
//ZMJ204E1 DD DSN=MXC&AMB..ZM.FIX.PRECIOS.PREVCIER.D&FECHA.,DISP=SHR
//*
//ZMJ204S1 DD DSN=MXC&AMB..ZM.FIX.COMVEN.DEF.D&FECHA.,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=94,BLKSIZE=0,DSORG=PS)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC33T01),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
