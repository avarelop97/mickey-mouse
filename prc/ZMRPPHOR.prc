//ZMRPPHOR PROC
//*
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     ========C=====B==========                      *
//*                     <<  ESTADOS DE CUENTA  >>                      *
//*                     <<     (MENSUALES)     >>                      *
//*                                                                    *
//* APLICACION: SISTEMA INTEGRAL DE VALORES    (S.I.V.A.)              *
//*                                                                    *
//* PROCESO   : ZMRPPHOR/CBRP0HOR                                      *
//*                                                                    *
//* OBJETIVO  : MONITOREAR LAS  CONDICIONES   LINEA  QUE   EL  USUARIO *
//*             (ANS FIJO) DISPARA, PARA ASI, FORZAR LA CARGA  EN   EL *
//*             ACTIVO, DE  LA MALLA  RELACIONADA  CON  EL  GRUPO   DE *
//*             REPROCESO DE INTERES; A SABER:                         *
//*                                                                    *
//* CONDICION       MALLA    JOB      DESCRIPCION DE REPROCESO         *
//* --------------- -------- -------- -------------------------------- *
//* CBERPDIC_CIC_PR CBERPDIC CBRP0ERP COMUN      (OPC: 349 Y 897)      *
//* --------------- -------- -------- -------------------------------- *
//* CBEPEDIC_CIC_PR CBEPEDIC CBRP0EPE        CB  (OPC: 349)            *
//* CBEPVDIC_CIC_PR CBEPVDIC CBRP0EPV VOBO   CB                        *
//* CBEPSDIC_CIC_PR CBEPSDIC CBRP0EPS SELLOS CB                        *
//* --------------- -------- -------- -------------------------------- *
//* CBRPEDIB_CIC_PR CBRPEDIB BPRP0RPE        BP  (OPC: 897)            *
//* CBRPVDIB_CIC_PR CBRPVDIB BPRP0RPV VOBO   BP                        *
//* CBRPSDIB_CIC_PR CBRPSDIB BPRP0RPS SELLOS BP                        *
//* --------------- -------- -------- -------------------------------- *
//*                 CBMONDIC CBRP0HOR CARGADA DIARIO A LAS  6:00 HORAS *
//*                                   POR ADMON DE LA PRODUCCION.      *
//*                                   SI EL USURIO NO REQUIERE NINGUNA *
//*                                   MALLA DURANTE   LA   VENTANA  NO *
//*                                   LINEA, A LAS 23:00 HORAS SE EJE- *
//*                                   CUTA  UN   IEFBR14  PARA  CUBRIR *
//*                                   ESTADISTICAS.                    *
//*                                                                    *
//* REALIZO   : HITSS (XM01480 / VICENTE VILLARRUEL RAYON)             *
//*                                                                    *
//* FECHA     : MARZO  DE 2015                                         *
//*                                                                    *
//*====================================================================*
//* PASO      : ZMPHOR05                                               *
//* PROGRAMA  : IEFBR14                                                *
//* FUNCION   : CREAR ARCHIVO TEMPORAL POR VALIDACIONES AUTOMATICAS DE *
//*             ADMINISTRACION  DE  LA PRODUCCION.                     *
//*--------------------------------------------------------------------*
//ZMPHOR05 EXEC PGM=IEFBR14
//ZMHORARI  DD DSN=MXCP.ZM.TMP.ECT.ECBP.ZMHORARI,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//**********************************************************************
