//ZMHFPZ57 PROC
//*                                                                     00190000
//**********************************************************************00191002
//*                     C A S A   D E   B O L S A                      *00192002
//*                     =========================                      *00193002
//*                     <<<   V A L O R E S   >>>                      *00194002
//*                                                                    *00195002
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00196002
//*                                                                    *00197002
//*   PROCEDIM. :  ZMHFPZ57.                                           *00198002
//*                                                                    *00199002
//*   OBJETIVO  :  COMPROBANTE DE INVERSIóN DE MERCADO DE DINERO       *00199102
//*                (DIRECTO/REPORTO) BATCH                             *00199202
//*                                                                    *00199302
//*   CORRE ANTES DE  :                                                *00199402
//*                                                                    *00199502
//*   CORRE DESPUES DE:           ZMHFIP21                             *00199602
//*                                                                    *00199702
//*   PERIODICIDAD    :                                                *00199802
//*                                                                    *00199902
//*   ELABORADO POR   :  SWF BBVA BANCOMER ACCENTURE XM09400           *00200002
//*                                                                    *00201002
//*   FECHA:  NOVIEMBRE 2010.                                          *00202002
//*                                                                    *00203002
//*   MODIFICA       :                                                 *00204002
//*   FECHA          :                                                 *00205002
//**********************************************************************00206002
//*-------------------------------------------------------------------* 00207002
//* PROGRAMA: ZM4CFI57                                                * 00208002
//* FUNCION:      COMPROBANTE DE INVERSIóN DE MERCADO DE DINERO       * 00199102
//*               (DIRECTO/REPORTO) BATCH   (ARCHIVO)                 * 00199202
//*-------------------------------------------------------------------* 00209102
//*                                                                     00340000
//ZMPZ5710 EXEC PGM=IKJEFT01
//ZMHFIENT DD DSN=MXC&AMB..ZM.FIX.EBMC.ZMLCFI57,DISP=SHR
//ZMHFISAL DD DSN=MXC&AMB..ZM.FIX.EBCM.COMGMDD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=131,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPZ5701),DISP=SHR
//*                                                                     00340006
//*-------------------------------------------------------------------* 00207002
//* PROGRAMA: ZM4CFI57                                                * 00208002
//* FUNCION:      COMPROBANTE DE INVERSIóN DE MERCADO DE DINERO       * 00199102
//*               (DIRECTO/REPORTO) BATCH                             * 00199202
//*-------------------------------------------------------------------* 00209102
//*                                                                     00340000
//ZMPZ5705 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHFIENT DD DSN=MXC&AMB..ZM.FIX.EBMC.ZMLCFI57,DISP=SHR
//ZMHFISAL DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPZ5701),DISP=SHR
//*                                                                     00340006
