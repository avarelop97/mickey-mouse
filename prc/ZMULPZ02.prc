//ZMULPZ02 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                         <<< CONTRATOS >>>                          *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMULPZ02                                            *
//*                                                                    *
//*   OBJETIVO  :  REPORTE DE CONTRATOS CON DOCUMENTACION INCOMPLETA   *
//*                                         (OPCION: 487)              *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                    ZM4EU631
//*          CONTRATOS CON DOCUMENTACION INCOMPLETA
//**********************************************************************
//PUL02P03 EXEC PGM=IKJEFT01
//*
//ZMU631A1 DD DSN=MXCP.ZM.TMP.CON.EMP.SUC.ZMULPE02,
//            DISP=(OLD,PASS)
//ZMU631R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL02T01),DISP=SHR
//*
