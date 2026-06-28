//ZMULPZ04 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMULPZ04                                            *
//*                                                                    *
//*   OBJETIVO  :  REIMPRESION NORMAL DE ESTADOS DE CUENTA             *
//*                (OPCION: 348)                                       *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMULPP04 (SIVAXEIN)                           *
//*                                                                    *
//*   PERIODICIDAD    :  CORRE A SOLICITUD DEL USUARIO                 *
//*                                                                    *
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        IMPRESION EN SPOOL DE MUESTRA DE ESTADOS DE CUENTA FISICAS  *
//**********************************************************************
//PUL04P02 EXEC PGM=ICEGENER
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//OUTPUT1  OUTPUT FORMDEF=EDOBOL,PAGEDEF=EDOBOL,TRC=YES
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDOSCTA.FIS.UL04,
//         DISP=SHR,DCB=RECFM=FBA
//SYSUT2   DD SYSOUT=(V,,FISI),OUTPUT=*.OUTPUT1
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        IMPRESION EN SPOOL DE MUESTRA DE ESTADOS DE CUENTA MORALES  *
//**********************************************************************
//PUL04P01 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//OUTPUT1  OUTPUT FORMDEF=EDOBOL,PAGEDEF=EDOBOL,TRC=YES
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDOSCTA.MOR.UL04,
//         DISP=SHR,DCB=RECFM=FBA
//SYSUT2   DD SYSOUT=(V,,MORA),OUTPUT=*.OUTPUT1
//*
//**********************************************************************
//*        TERMINA PROCESO ZMULPZ04 SIVA MULTIEMPRESA                  *
//**********************************************************************
