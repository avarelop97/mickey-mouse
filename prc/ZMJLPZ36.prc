//ZMJLPZ36  PROC
//*********************************************************************
//* MENU CARGOS VARIOS OPC. 955.
//*********************************************************************
//*  REPORTE DIARIO DE LAS SOLICITUDES DE CANCELACION DE INTERESES POR
//*  SALDO DEUDOR CON VO. BO. DEL RESPONSABLE DEL CENTRO DE COSTOS
//*********************************************************************
//* OBJETIVO: REPORTE DIARIO DE LAS SOLICITUDES DE CANCELACION
//*           DE INTERESES POR SALDO DEUDOR CON VO. BO.
//*           DEL RESPONSABLE DEL CENTRO DE COSTOS.
//* PROGRAMA: ZM4DGF02
//*****************************************************************
//PJL36P02 EXEC PGM=IKJEFT01,DYNAMNBR=20
//*
//ZMGF02A1 DD DSN=MXCP.ZM.TMP.TES.EMP.ZMJLPE36,
//            DISP=SHR
//*
//ZMGF02R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL36T01),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJLPZ36 SIVA MULTIEMPRESA                  *
//**********************************************************************
