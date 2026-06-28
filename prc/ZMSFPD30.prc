//ZMSFPD30 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM@ - APROVISIONAMIENTO MUV PARA DATAMART           *
//* PROCESO      : ZMSFPD30                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : EJECUTAR EL PROGRAMA ZM4DS130 PARA GENERAR LA       *
//*                INTERFAZ DE CUENTAS ACTIVAS DE CLIENTES DE GESTION  *
//*                INDUCIDA PARA LA CARGA DEL DATA MART.               *
//* REALIZO      : CAPGEMINI                                           *
//* FECHA        : 17 DE SEPTIEMBRE DE 2012                            *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-0.0.0-01 TECNOCOM 20DIC12  SE MODIFICA LA LONGITUD DEL ARCHIVO  *
//*                               DE SALIDA DE 103 POSICIONES A 145    *
//* -----------  ------- -------  -------------------------------------*
//* AGR01          ANS   10JUN14  SE INCORPORA LA COPIA CON FECHA DE   *
//*                               LOS ARCHIVOS QUE SE ENVIAN AL AREA   *
//*                               DE DATA-MART                         *
//*--------------------------------------------------------------------*
//* PASO       : PSF30P01                                              *
//* UTILERIA   : IKJEFT01/ZM4DS130                                     *
//* OBJETIVO   : EJECUCION DE PROGRAMA ZM4DS130 PARA GENERAR INTERFAZ  *
//*              DE CUENTAS DE CLIENTES DE GESTION INDUCIDA. *
//*--------------------------------------------------------------------*
//PSF30P14 EXEC PGM=IKJEFT01
//*
//S1AEMAIL DD DSN=MXC&AMB..ZM.FIX.DATAMART.GESTION.INDU,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,100),RLSE),
//            UNIT=3390,
//*FS-0.0.0-01-INI
//*           DCB=(RECFM=FB,LRECL=103,DSORG=PS,BLKSIZE=0)
//            DCB=(RECFM=FB,LRECL=145,DSORG=PS,BLKSIZE=0)
//*FS-0.0.0-01-FIN
//*
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//QRLSDB2   DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSTSPRT  DD SYSOUT=*
//SYSDUMP   DD SYSOUT=*
//*
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZSF30T01),DISP=SHR
//*
//****AGR01 INI
//**********************************************************************
//*              ===   COPIA  ===                                      *
//* OBJETIVO : COPIAR ARCHIVO DE ACUMULADO DE INGRESOS DEL MUV         *
//*            A ===> MISMO ARCHIVO CON FECHA                          *
//**********************************************************************
//PSF30P13 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.EBCM.ACUINGRE,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.SIE.EBCM.ACUINGRE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSIN    DD DUMMY
//**********************************************************************
//*              ===   COPIA  ===                                      *
//* OBJETIVO : COPIAR ARCHIVO DE ACUMULADO DE MOVIMIENTOS DEL MUV      *
//*            A ===> MISMO ARCHIVO CON FECHA                          *
//**********************************************************************
//PSF30P12 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.EBCM.ACUMOVTS,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.SIE.EBCM.ACUMOVTS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=235,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSIN    DD DUMMY
//**********************************************************************
//*              ===   COPIA  ===                                      *
//* OBJETIVO : COPIAR ARCHIVO DE ACUMULADO DE PROMOTORES DEL MUV       *
//*            A ===> MISMO ARCHIVO CON FECHA                          *
//**********************************************************************
//PSF30P11 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.EBCM.ACUPROM,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.SIE.EBCM.ACUPROM.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=230,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSIN    DD DUMMY
//**********************************************************************
//*              ===   COPIA  ===                                      *
//* OBJETIVO : COPIAR ARCHIVO DE MOVIMIENTOS DEL MUV                   *
//*            A ===> MISMO ARCHIVO CON FECHA                          *
//**********************************************************************
//PSF30P10 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.SIE.EBCM.MOVTOS(0),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.SIE.EBCM.MOVTOS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=235,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DUMMY
//**********************************************************************
//*              ===   COPIA  ===                                      *
//* OBJETIVO : COPIAR ARCHIVO DE CARGOS VARIOS DEL MUV                 *
//*            A ===> MISMO ARCHIVO CON FECHA                          *
//**********************************************************************
//PSF30P09 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.EBCM.CARGOSV,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.SIE.EBCM.CARGOSV.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=70,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DUMMY
//**********************************************************************
//*              ===   COPIA  ===                                      *
//* OBJETIVO : COPIAR ARCHIVO DE CENTROS DE COSTOS DEL MUV             *
//*            A ===> MISMO ARCHIVO CON FECHA                          *
//**********************************************************************
//PSF30P08 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.SIE.EBCM.CCOSTOS(0),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.SIE.EBCM.CCOSTOS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=50,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSIN    DD DUMMY
//**********************************************************************
//*              ===   COPIA  ===                                      *
//* OBJETIVO : COPIAR ARCHIVO DE CLIENTES DEL MUV                      *
//*            A ===> MISMO ARCHIVO CON FECHA                          *
//**********************************************************************
//PSF30P07 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.SIE.EBCM.CLIENTES(0),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.SIE.EBCM.CLIENTES.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=860,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DUMMY
//**********************************************************************
//*              ===   COPIA  ===                                      *
//* OBJETIVO : COPIAR ARCHIVO DE EMISORAS DEL MUV                      *
//*            A ===> MISMO ARCHIVO CON FECHA                          *
//**********************************************************************
//PSF30P06 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.SIE.EBCM.EMISORAS(0),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.SIE.EBCM.EMISORAS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSIN    DD DUMMY
//**********************************************************************
//*              ===   COPIA  ===                                      *
//* OBJETIVO : COPIAR ARCHIVO DE PROMOTORES DEL MUV                    *
//*            A ===> MISMO ARCHIVO CON FECHA                          *
//**********************************************************************
//PSF30P05 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.SIE.EBCM.PROMOT(0),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.SIE.EBCM.PROMOT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=142,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSIN    DD DUMMY
//**********************************************************************
//*              ===   COPIA  ===                                      *
//* OBJETIVO : COPIAR ARCHIVO DE TENECIA, INCLUYE IISIN DEL MUV        *
//*            A ===> MISMO ARCHIVO CON FECHA                          *
//**********************************************************************
//PSF30P04 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.EBCM.TENEISIN,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.SIE.EBCM.TENEISIN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=243,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DUMMY
//**********************************************************************
//*              ===   COPIA  ===                                      *
//* OBJETIVO : COPIAR ARCHIVO DE INGRESOS DEL MUV                      *
//*            A ===> MISMO ARCHIVO CON FECHA                          *
//**********************************************************************
//PSF30P03 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.SIE.EBCM.INGRESOS(0),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.SIE.EBCM.INGRESOS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DUMMY
//**********************************************************************
//*              ===   COPIA  ===                                      *
//* OBJETIVO : COPIAR ARCHIVO DE GESTION INDUCIDA EN EL MUV            *
//*            A ===> MISMO ARCHIVO CON FECHA                          *
//**********************************************************************
//PSF30P02 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.DATAMART.GESTION.INDU,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.DATAMART.GESTION.INDU.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=145,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DUMMY
//**********************************************************************
//*              ===   COPIA  ===                                      *
//* OBJETIVO : COPIAR ARCHIVO DE RENDIMIENTOS DIARIO EN EL MUV         *
//*            A ===> MISMO ARCHIVO CON FECHA                          *
//**********************************************************************
//PSF30P01 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.INTFAZ.DIA.REND,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.INTFAZ.DIA.REND.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=128,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DUMMY
//****AGR01 FIN
//*--------------------------------------------------------------------*
//*                           FIN ZMSFPD30                             *
//*--------------------------------------------------------------------*
