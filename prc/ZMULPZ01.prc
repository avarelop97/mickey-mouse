//ZMULPZ01 PROC
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                         <<< CONTRATOS >>>                          *00003000
//*                                                                    *00003000
//*   APLICACION      :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00003000
//*                                                                    *00003000
//*   PROCEDIM.       :  ZMULPZ01                                      *00003000
//*                                                                    *00003000
//*   OBJETIVO        :  IMPRESION DE CONTRATOS   (OPCION: 484)        *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    :  CORRE A SOLICITUD DEL USUARIO.                *00003000
//*                                                                    *00003000
//*   ELABORO         :  MONICA RUBIO CONTRERAS                        *00003000
//*                                                                    *00003000
//**********************************************************************
//**                      LOG DE MODIFICACIONES                        *
//**********************************************************************
//**  FECHA   |DESCRIPCION                                             *
//**-------------------------------------------------------------------*
//**2005-05-11|SE ELIMINAN LA FORMAS DE IMPRESION, SE ENVIA A          *
//**          |CTROL-D    A.G.R. (AZERTIA).                            *
//**********************************************************************
//*                       ZM4EU617
//*                 IMPRESION DE CONTRATOS
//*******************************************************************
//PUL01P02 EXEC PGM=IKJEFT01
//*
//ZMU617A1 DD DSN=MXCP.ZM.TMP.CON.EMP.SUC.ZMULPE01,
//            DISP=(OLD,PASS)
//*****************************   CONTRATO
//ZMG617R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*****************************   CONTRATO ANEXO
//ZMG617R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL01T01),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMULPZ01 SIVA MULTIEMPRESA                  *
//**********************************************************************
//*                                                                     00850000
