//ZMHFND05 PROC
//*                                                                     00190000
//**********************************************************************00191002
//*                     C A S A   D E   B O L S A                      *00192002
//*                     =========================                      *00193002
//*                     <<<   V A L O R E S   >>>                      *00194002
//*                                                                    *00195002
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00196002
//*                                                                    *00197002
//*   PROCEDIM. :  ZMHFND05.                                           *00198002
//*                                                                    *00199002
//*   OBJETIVO  :  REALIZA LA CARGA INICIóAL DE COSTOS PROMEDIOS DE    *00199102
//*                EMISORAS MARCADAS COMO TRACS.                       *00199202
//*                                                                    *00199302
//*   PERIODICIDAD    :  EVENTUAL                                      *00199802
//*                                                                    *00199902
//*   ELABORADO POR   :  SWF BBVA BANCOMER ACCENTURE XM09400           *00200002
//*                                                                    *00201002
//*   FECHA:  ENERO 2011.                                              *00202002
//*                                                                    *00203002
//**********************************************************************00206002
//*                                                                     00340006
//*--------------------------------------------------------------------*00207002
//* PASO:     PHF05P01                                                 *
//* PROGRAMA: IKJEFT01/ZM4EHA21                                        *00208002
//* FUNCION:  CARGA INICIAL DE COSTOS PRóOMEDIOS DE EMISORAS TRACS     *00199102
//*                                                                    *00199202
//*--------------------------------------------------------------------*00209102
//PHF05P01 EXEC PGM=IKJEFT01
//ZMHA20A1 DD DSN=MXCP.ZM.FIX.VAL.EBCM.S000.ZMHFPZ05,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZHF05T01)
//*                                                                     00340006
