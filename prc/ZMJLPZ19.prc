//ZMJLPZ19 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                        >>>>  TESORERIA   <<<<                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMJLPZ19                                            *
//*                                                                    *
//*   OBJETIVO  :  IMPRESION DE CONFIRMACIONES DE OPERACIONES          *
//*                S.P.E.U.A.    OPCION = (564)                        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA:  JUNIO / 2002                                             *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*
//**********************************************************************
//*                    -- ZM4EJG61  --                                 *
//*                IMPRIME REPORTES S.P.E.U.A.                         *
//*           PASO NO REINICIABLE REINICIAR A PARTIR DEL PASO ANTERIOR *
//**********************************************************************
//PJL19P07 EXEC PGM=IKJEFT01
//ZMJG61A1 DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.ZMJLPE19,
//            DISP=SHR
//ZMJG61R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMJG61R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL19T07),DISP=SHR
//*
