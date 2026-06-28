//ZMLDPD02 PROC
//*--------------------------------------------------------------------*
//* PROCESO  : ZMLDPD02                                                *
//* OBJETIVO : REALIZA EL REPROCESO DE POLIZAS ANTERIORES              *
//* REALIZO  : SOFTTEK (JGPG)                                          *
//* FECHA    : MARZO/2010                                              *
//*--------------------------------------------------------------------*
//***                    LOG DE MODIFICACIONES                         *
//*--------------------------------------------------------------------*
//**********************************************************************
//* AUTOR    FECHA   DESCRIPCION                                       *
//*-------   ------- ----------------------------------------------    *
//**********************************************************************
//* PASO        : ZLF02T09                                             *
//* DESCRIPCION : BORRA LOS ARCHIVOS DE TRABAJO                        *
//**********************************************************************
//ZLF02T09 EXEC PGM=IDCAMS
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZLF02T09),DISP=SHR
//**********************************************************************
//* PASO        : ZLF02T08                                             *
//* PROGRAMA    : ZM4DL16D                                             *
//* DESCRIPCION : LIMPIA ARCHIVOS ECMOVDI Y ECRECHA
//**********************************************************************
//ZLF02T08 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF02T08),DISP=SHR
//*
//**********************************************************************
//* PASO        : ZLF02T07                                             *
//* PROGRAMA    : ZM4DL11D                                             *
//* DESCRIPCION : GENERACION DE MOVIMIENTOS CONTABLES                  *
//**********************************************************************
//ZLF02T07 EXEC PGM=IKJEFT01,COND=(4,LT)
//EOBM11T1 DD DSN=SIVA.ENC.FIX.GLMV303.VCVMNT.G30029.CTASAUX,DISP=MOD
//*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF02T07),DISP=SHR
//*
//**********************************************************************
//* PASO        : ZLF02T06                                             *
//* PROGRAMA    : ZM4DL14D                                             *
//* DESCRIPCION : CONSOLIDACION DE ASIENTOS CONTABLES                  *
//**********************************************************************
//ZLF02T06 EXEC PGM=IKJEFT01,COND=(4,LT)
//SZMDL14H DD  DSN=SIVA.ENC.FIX.GLMV303.ENCON.HEADER,DISP=MOD
//*
//SZMDL14D DD  DSN=SIVA.IFA.FIX.GLMV303.ENCON.DETAIL,DISP=MOD
//*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF02T06),DISP=SHR
//**********************************************************************
//* PASO        : ZLF02T05                                             *
//* PROGRAMA    : ZM4DL15D                                             *
//* DESCRIPCION : REPORTE POLIZA AUTOMATICA
//**********************************************************************
//ZLF02T05 EXEC PGM=IKJEFT01,COND=(4,LT)
//SZMDL15D DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF02T05),DISP=SHR
//*
//**********************************************************************
//* PASO        : ZLF02T04                                             *
//* PROGRAMA    : ZM4DL17D                                             *
//* DESCRIPCION : REPORTE DE MOVIMIENTOS RECHAZADOS                    *
//**********************************************************************
//ZLF02T04 EXEC PGM=IKJEFT01,COND=(4,LT)
//SZMDL17D DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF02T04),DISP=SHR
//*
//**********************************************************************
//* PASO        : ZLF02T03                                             *
//* PROGRAMA    : ZM4DL27D                                             *
//* DESCRIPCION : REPORTE DE CONTROL DE MOVIMIENTOS                    *
//**********************************************************************
//ZLF02T03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SZMDL27D DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF02T03),DISP=SHR
//*
//**********************************************************************
//* PASO        : ZLF02T02                                             *
//* PROGRAMA    : ZM4DL20D                                             *
//* DESCRIPCION : ACTUALIZACION DE NUMERO DE POLIZA Y FECHA            *
//**********************************************************************
//ZLF02T02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF02T02),DISP=SHR
//*
//**********************************************************************
//* PASO        : ZLF02T01                                             *
//* DESCRIPCION : AVISO EN CASO DE ERROR
//**********************************************************************
//ZLF02T01 EXEC PGM=MAILOPER,COND=(4,GE),
//   PARM=('/ATENCION OPERADOR.AVISAR A SOP. PROD. QUE',
//        ' PROCESO CBLFND02 TERMINO MAL.CONTESTAR SI',
//        ' PARA TERMINAR')
//*
