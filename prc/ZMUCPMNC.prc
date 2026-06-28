//ZMUCPMNC PROC
//**********************************************************************
//* PROCESO     : ZMUCPMNC                                             *
//* DESCRIPCION : PROCESO DE GENERACION DE LOS NUEVOS REPORTES DE      *
//*               GESTION DE ALTAS Y BAJAS A PARTIR DE LOS ARCHIVOS    *
//*               DE ALTAS_MES.TXT Y BAJASMUV.TXT, GENERADOS POR EL    *
//*               REPORTE ACTUAL,APLICANDO NUEVAS REGLAS Y VALIDACIONES*
//*               LOS REPORTES SE GENERARAN DE FORMA MENSUAL POR LO    *
//*               QUE DEBE DETERMINARSE LA FECHA EN QUE DEBE GENERARSE *
//*               EL REPORTE. ESTOS REPORTES CORREN EL PRIMER DIA DEL  *
//*               PROCESANDO LA INFORMACION DEL MES ANTERIOR.          *
//*               EN EL CASO DEL MES DE ENERO DEBE PROCESAR LA         *
//*               LA INFORMACION DE DICIEMBRE DEL ANO ANTERIOR.        *
//* REALIZO     : CAPGEMINI                                            *
//* FECHA       : 02 DE MAYO DE 2012                                   *
//**********************************************************************
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA              DESCRIPCION              *
//* ----------- --------- ------- ------------------------------------ *
//* FS-9.9.9-99 CAPGEMINI DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*            *         *       *                                     *
//**********************************************************************
//* PASO     : PUCNCP07                                                *
//* OBJETIVO : PASO PARA BORRAR ARCHIVOS DE ALTAS Y BAJAS QUE SE VAN   *
//*            GENERAR EN LOS  SIGUIENTE PASOS.                        *
//* PROGRAMA : IDCAMS                                                  *
//**********************************************************************
//PUCNCP07 EXEC PGM=IDCAMS
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//**********************************************************************
//* PASO     : PUCNCP06                                                *
//* OBJETIVO : GENERAR EL NUEVO ARCHIVO NUEVO_ALTAS_XX.TXT TOMANDO EL  *
//*            FORMATO DEL REPORTE ALTAS_MES.TXT QUE SERA LA BASE DEL  *
//*            NUEVO REPORTE DE GESTION DE ALTAS. DONDE XX TOMA VALORES*
//*            DESDE 01, 02 HASTA 12 QUE REPRESENTA EL MES             *
//*            CORRESPONDIENTE EN QUE SE REALIZA EL REPORTE.           *
//* PROGRAMA : ZM4MUR04                                                *
//**********************************************************************
//PUCNCP06 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.TES.ALTASMUV,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.TES.APER&FECARCH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,5),RLSE),
//            DCB=(RECFM=FB,LRECL=623,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DUMMY
//**********************************************************************
//* PASO     : PUCNCP05                                                *
//* OBJETIVO : GENERAR EL NUEVO ARCHIVO NUEVO_BAJAS_XX.TXT TOMANDO EL  *
//*            FORMATO DEL REPORTE BAJASMUV.TXT QUE SERA LA BASE DEL   *
//*            NUEVO REPORTE DE GESTION DE BAJAS. DONDE XX TOMA VALORES*
//*            DESDE 01, 02 HASTA 12 QUE REPRESENTA EL MES             *
//*            CORRESPONDIENTE EN QUE SE REALIZA EL REPORTE.           *
//* PROGRAMA : ZM4MUR05                                                *
//**********************************************************************
//PUCNCP05 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.TES.BAJASMUV,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.TES.BAJA&FECARCH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,5),RLSE),
//            DCB=(RECFM=FB,LRECL=488,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DUMMY
//**********************************************************************
//* PASO     : PUCNCP04                                                *
//* OBJETIVO : GRABAR INFORMACION DE LOS ARCHIVOS DE ALTAS Y BAJAS     *
//*            EN LA TABLA ZMDT768 AGRUPADA POR BANQUERO               *
//* PROGRAMA : ZM4MUR06                                                *
//**********************************************************************
//PUCNCP04 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DUMMY
//**********************************************************************
//* PASO     : PUCNCP03                                                *
//* OBJETIVO : GRABAR INFORMACION DE LOS ARCHIVOS DE ALTAS Y BAJAS     *
//*            EN LA TABLA ZMDT768 AGRUPADA POR UNIDAD GESTORA         *
//* PROGRAMA : ZM4MUR07                                                *
//**********************************************************************
//PUCNCP03 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DUMMY
//**********************************************************************
//* PASO     : PUCNCP02                                                *
//* OBJETIVO : GRABAR INFORMACION DE LOS ARCHIVOS DE ALTAS Y BAJAS     *
//*            EN LA TABLA ZMDT768 AGRUPADA POR DIVISION               *
//* PROGRAMA : ZM4MUR08                                                *
//**********************************************************************
//PUCNCP02 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DUMMY
//**********************************************************************
//* PASO     : PUCNCP01                                                *
//* OBJETIVO : GRABAR INFORMACION DE LOS ARCHIVOS DE ALTAS Y BAJAS     *
//*            EN LA TABLA ZMDT768 AGRUPADA POR BANCA                  *
//* PROGRAMA : ZM4MUR09                                                *
//**********************************************************************
//PUCNCP01 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DUMMY
