//ZMHLPZ78 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES                      *
//*                   COLOCACION DE EMISIONES                          *
//*                                                                    *
//* PROCESO        :  ZMHLPZ78 CBHLPZ78                                *
//*                                                                    *
//* OBJETIVO       :  PRORRATEO DE COLOCACIONES                        *
//*                                                                    *
//* REALIZO        :  RHB                                              *
//* FECHA          :  MARZO   2006                                     *
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
//*                        -- ZM4EHV80--                               *
//* PASO 02                                                            *
//* OBJETIVO       :  PRORRATEO DE COLOCACIONES                        *
//*                                                                    *
//**********************************************************************
//PHL78P02 EXEC PGM=IKJEFT01
//*
//ZMHV80A1 DD DSN=MXCP.ZM.TMP.MDC.EMP.SUC.COLOCPR,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHL78P02),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4DHW71--                               *
//* PASO 01                                                            *
//* OBJETIVO       :  REPORTE DE COLOCACIONES                          *
//*                                                                    *
//**********************************************************************
//PHL78P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW71A1 DD DSN=MXCP.ZM.TMP.MDC.EMP.SUC.COLOCPR,DISP=SHR
//ZMHW71R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHL78P01),DISP=SHR
//*
//*
