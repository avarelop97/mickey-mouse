//ZMUEPV03 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPV03                                            *
//*                                                                    *
//*   OBJETIVO  :  COPY REGITRO DE ARCHIVO VSAM X CAMBIO NOMENCLATURA  *
//*                DE "SIVA.FOLCTRL.NUEVOS.KC" A "MXCP.ZM.VSL.FOLCTRL" *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    :  E(V)ENTUAL (A SOLICITUD DE SISTEMAS)          *
//*                      CORRE UNICA VEZ                               *
//**********************************************************************
//*
//******************************************************************
//*   ARCHIVO - VSAM   PRINT   SIVA.FOLCTRL.NUEVOS.KC             **
//******************************************************************
//CBV03S01 EXEC PGM=IDCAMS
//IFILE    DD DSN=SIVA.FOLCTRL.NUEVOS.KC,DISP=SHR
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(CBV03001),DISP=SHR
//******************************************************************
//*   ARCHIVO - ENTRADA VSAM   SIVA.FOLCTRL.NUEVOS.KC             **
//*   ARCHIVO - SALIDA  VSAM   MXCP.ZM.VSL.FOLCTRL                **
//******************************************************************
//CBV03S02 EXEC PGM=IDCAMS,COND=(4,LT)
//IFILE    DD DSN=SIVA.FOLCTRL.NUEVOS.KC,DISP=SHR
//OFILE    DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(CBV03002),DISP=SHR
//******************************************************************
//*   ARCHIVO - VSAM   PRINT   MXCP.ZM.VSL.FOLCTRL                **
//******************************************************************
//CBV03S03 EXEC PGM=IDCAMS,COND=(4,LT)
//IFILE    DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(CBV03001),DISP=SHR
//******************************************************************
