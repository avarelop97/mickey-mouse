//ZMHLPZ77 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES                      *
//*                   COLOCACION DE EMISIONES                          *
//*                                                                    *
//* PROCESO        :  ZMHLPP77
//* PROCESO ANT.   :  SIVAXCED ZMHLPE77
//*                                                                    *
//* OBJETIVO       :  ASIGNACION DEFINITIVA                            *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBHLPZ77                                         *
//*                                                                    *
//* REALIZO        :  RHB                                              *
//* FECHA          :  FEBRERO 2006                                     *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EVENTUALMENTE A PE-*
//*                   TICION DEL USUARIO.                              *
//*                                                                    *
//**********************************************************************
//*                  BITACORA DE MODIFICACIONES.                       *
//**********************************************************************
//*MODIFICO : OSCAR URBANO FERNANDEZ (AZERTIA).                        *
//*FECHA    : OCTUBRE 2008.                                            *
//**********************************************************************
//*                        -- ZM4DHW72--                               *
//* PASO 02                                                            *
//* OBJETIVO       :  ASIG. DEFINITVA DE COLOCACIONES                  *
//*                                                                    *
//**********************************************************************
//PHL77P02 EXEC PGM=IKJEFT01
//*
//ZMHW72A1 DD DSN=MXCP.ZM.TMP.MDC.EMP.SUC.COLOCDE,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHL77P02),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4DHW71--                               *
//* PASO 01                                                            *
//* OBJETIVO       :  REPORTE DE COLOCACIONES                          *
//*                                                                    *
//**********************************************************************
//PHL77P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW71A1 DD DSN=MXCP.ZM.TMP.MDC.EMP.SUC.COLOCDE,DISP=SHR
//ZMHW71R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHL77P01),DISP=SHR
//*
