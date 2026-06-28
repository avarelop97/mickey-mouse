//ZMHHPZ16 PROC
//*--------------------------------------------------------------------*
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE DINERO  >>                      *
//*                     <<     Y CAPITALES     >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMHHPZ16                                      *
//*                                                                    *
//*   JCL              : CBHHPZ16                                      *
//*                                                                    *
//*   LO EJECUTA       : TRANSACCION ZV75 CICLICAMENTE.                *
//*                                                                    *
//*   OBJETIVO         : EJECUTA PROCESO DE VALIDACION DE RESPUESTAS   *
//*                      QUE SE RECIBEN DE PLUS.                       *
//*                                                                    *
//*   FECHA            : 11/ABRIL/2016.                                *
//*                                                                    *
//*   PERIODICIDAD     : CICLICO.                                      *
//*                                                                    *
//*   AUTOR            : HITSS - ANS (CIHM)                            *
//*                                                                    *
//*   OBSERVACION      : ESTE PROCESO ES CICLICO Y SE EJECUTA MAS      *
//*                      DE UNA VEZ EN DIA.                            *
//*                                                                    *
//*------------------------------------------------------------------- *
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4DHH15                                                 *
//* FUNCION : PROCESA RESPUESTA QUE LLEGAN A SIVA DE PLUS.             *
//*           PROCESA REGISTROS: (LB, LD, LQ, LE, LG).                 *
//*--------------------------------------------------------------------*
//PHL16P00 EXEC PGM=IKJEFT01
//SYSTSPRT  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZHH02T01)
//*
