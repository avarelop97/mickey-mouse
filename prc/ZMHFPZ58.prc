//ZMHFPZ58 PROC                                                         00010006
//*                                                                     00190000
//**********************************************************************00191002
//*                     C A S A   D E   B O L S A                      *00192002
//*                     =========================                      *00193002
//*                     <<<   V A L O R E S   >>>                      *00194002
//*                                                                    *00195002
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00196002
//*                                                                    *00197002
//*   PROCEDIM. :  ZMHFPZ58.                                           *00198002
//*                                                                    *00199002
//*   OBJETIVO  :  COMPROBANTE DE INVERSION DE SOCIEDADES DE INVERSION *00199102
//*                DEUDA/COMUN (BATCH).                                *00199202
//*                                                                    *00199302
//*   CORRE ANTES DE  :                                                *00199402
//*                                                                    *00199502
//*   CORRE DESPUES DE:                                                *00199602
//*                                                                    *00199702
//*   PERIODICIDAD    :                                                *00199802
//*                                                                    *00199902
//*   ELABORADO POR   :  ACCENTURE                                     *00200002
//*                                                                    *00201002
//*   FECHA:  NOVIEMBTE 2010.                                          *00202002
//*                                                                    *00203002
//*   MODIFICA       :                                                 *00204002
//*   FECHA          :                                                 *00205002
//**********************************************************************00206002
//*-------------------------------------------------------------------* 00207002
//* PROGRAMA: ZM4CFI58                                                * 00208002
//* FUNCION:     COMPROBANTE DE INVERSION DE SOCIEDADES DE INVERSION  * 00199102
//*              DEUDA/COMUN (BATCH).                                 * 00199202
//*-------------------------------------------------------------------* 00209102
//*                                                                     00340000
//ZMPZ5805 EXEC PGM=IKJEFT01                                            00200006
//ZMHFIENT DD DSN=MXC&AMB..ZM.FIX.EBMC.ZMLCFI58,DISP=SHR
//ZMHFISAL DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00240006
//*                                                                     00240007
//SYSTSPRT DD SYSOUT=*                                                  00290006
//SYSPRINT DD SYSOUT=*                                                  00300006
//SYSOUT   DD SYSOUT=*                                                  00310006
//SYSDBOUT DD SYSOUT=*                                                  00320006
//SYSABOUT DD SYSOUT=*                                                  00320007
//SYSUDUMP DD DUMMY                                                     00320008
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPZ5801),DISP=SHR                   00330006
//*                                                                     00340006
