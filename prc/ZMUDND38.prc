//ZMUDND38 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO (ZM)          *
//*                                                                    *
//* PROCESO  : ZMUDND38                                                *
//*                                                                    *
//* OBJETIVO : CALCULA LAS ESTADISTICAS SOBRE TENENCIA A NIVEL CLIENTE *
//*            Y PROMOTOR PARA LOS PERIODOS REGISTRADOS EN LA PARAM    *
//*            'TF6'.                                                  *
//*                                                                    *
//* REALIZO  : SOFTTEK (ANBH)                                          *
//*                                                                    *
//* FECHA    : 18 MAYO 2010                                            *
//**                                                                   *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//* FS-0.0.0-00  XXXXXXX DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P63                                                *
//* UTILERIA : ZM4DL38D                                                *
//* OBJETIVO : DEPURACION DIARIA DE SEDIAPE (DIAS DE PERMANENCIA) PARA *
//*            LOS PERIODOS QUE INICIEN EL DIA DE HOY.                 *
//* ACTUALIZA: SEDIAPE                                                 *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P63 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF38T63),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P60                                                *
//* UTILERIA : ZM4DL39D                                                *
//* OBJETIVO : ACUMULADO DIARIO DE SEDIAPE (DIAS DE PERMANENCIA) CONSI-*
//*            DERANDO LOS DIAS TRANSCURRIDOS POR PERIODO              *
//* ACTUALIZA: SEDIAPE                                                 *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART                                      *
//*--------------------------------------------------------------------*
//ZLF38P60 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF38T60),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P57                                                *
//* UTILERIA : ZM4DL60D                                                *
//* OBJETIVO : DEPURACION DIARIA DE LAS ESTADISTICAS DE LA TENENCIA    *
//*            PARA LOS PERIODOS QUE INICIEN EL DIA DE HOY             *
//* ACTUALIZA: SETENC, SETENCA, SETENP, SETENPA                        *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART                                      *
//*--------------------------------------------------------------------*
//ZLF38P57 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF38T57),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P54                                                *
//* UTILERIA : ZM4DL13M                                                *
//* OBJETIVO : GENERA Y CLASIFICA INFORMACION SECART.                  *
//* ACTUALIZA: NINGUNA TABLA SOLO GENERA ARCHIVOS SECUENCIALES PARA EL *
//*            SIGUIENTE PASO(DIARIO).                                 *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P54 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMDL13T1 DD DSN=SIVA.SIE.FIX.TENENCIA.DIA,DISP=SHR
//ZMDL13T2 DD DSN=SIVA.SIE.FIX.TENENCIA.SEMANA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=70,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(30,10),RLSE)
//ZMDL13T3 DD DSN=SIVA.SIE.FIX.TENENCIA.MES,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF38T54),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P51                                                *
//* UTILERIA : ZM4DL53D                                                *
//* OBJETIVO : GENERA REPORTE DE TENENCIA DIARIO APARTIR DE SECART     *
//* ACTUALIZA: NINGUNA TABLA SOLO GENERA REPORTE DIARIO                *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P51 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4DL53D DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF38T51),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P48                                                *
//* UTILERIA : ZM4DL14M                                                *
//* OBJETIVO : GENERA TENENCIA SETENC Y SETENP                         *
//* ACTUALIZA: SETENC Y SETENP (DIARIO)                                *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P48 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDL14T1 DD DSN=SIVA.SIE.FIX.TENENCIA.DIA,DISP=SHR
//ZMDL14T2 DD DSN=SIVA.SIE.FIX.TENENCIA.SEMANA,DISP=SHR
//ZMDL14T3 DD DSN=SIVA.SIE.FIX.TENENCIA.MES,DISP=SHR
//*
//ZMDL14R1 DD SYSOUT=*
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF38T48),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P45                                                *
//* UTILERIA : ZM4DL13M                                                *
//* OBJETIVO : GENERA Y CLASIFICA INFORMACION SECART                   *
//* ACTUALIZA: NINGUNA TABLA SOLO GENERA ARCHIVOS SECUENCIALES PARA EL *
//*            SIGUIENTE PASO  (MENSUAL)                               *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P45 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDL13T1 DD DSN=SIVA.SIE.FIX.TENENCIA.DIA,DISP=SHR
//ZMDL13T2 DD DSN=SIVA.SIE.FIX.TENENCIA.SEMANA,DISP=SHR
//ZMDL13T3 DD DSN=SIVA.SIE.FIX.TENENCIA.MES,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF38T45),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P42                                                *
//* UTILERIA : ZM4DL14M                                                *
//* OBJETIVO : GENERA TENENCIA SETENC Y SETENP                         *
//* ACTUALIZA: SETENC Y SETENP (MENSUAL)                               *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P42 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDL14T1 DD DSN=SIVA.SIE.FIX.TENENCIA.DIA,DISP=SHR
//ZMDL14T2 DD DSN=SIVA.SIE.FIX.TENENCIA.SEMANA,DISP=SHR
//ZMDL14T3 DD DSN=SIVA.SIE.FIX.TENENCIA.MES,DISP=SHR
//*
//ZMDL14R1 DD SYSOUT=*
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF38T42),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P39                                                *
//* UTILERIA : ZM4DL21M                                                *
//* OBJETIVO : TABLA DE SEGMENTACION MENSUAL                           *
//* ACTUALIZA: GENERA UNICAMENTE 1 ARCHIVO                             *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P39 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//IDSGMES  DD DSN=SIVA.SIE.FIX.IDSGMES,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF38T39),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P36                                                *
//* UTILERIA : IDCAMS                                                  *
//* OBJETIVO : REDEFINIR ARCHIVO VSAM                                  *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P36 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF38T36),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P33                                                *
//* UTILERIA : IDCAMS                                                  *
//* OBJETIVO : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                    *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P33 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//INPUT    DD DSN=SIVA.SIE.FIX.IDSGMES,DISP=SHR
//OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.RIB021MS.SEGMENTA.MES,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF38T33),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P30                                                *
//* UTILERIA : ZM4DL70D                                                *
//* OBJETIVO : ORDENA SEINDET POR TIPO DE MERCADO, TIPO DE EMISORA     *
//*            GRUPO DE CONCEPTO Y ACTUALIZA EL FSIST.                 *
//* ACTUALIZA: SETENC                                                  *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZMDL70T1 DD DSN=&&ARCHT1,
//            DISP=(NEW,PASS),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=080,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(50,10),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF38T30),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P27                                                *
//* UTILERIA : ZM4DL56D                                                *
//* OBJETIVO : GENERA TENENCIAS PROMEDIO A PARTIR DE LA SEMANALFSIST   *
//* ACTUALIZA: SETENC, SETENP, SETENCA, SETENPA                        *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P27 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF38T27),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P24                                                *
//* UTILERIA : ZM4DL19M                                                *
//* OBJETIVO : TABLA TENENCIA SEMANAL Y MENSUAL                        *
//* ACTUALIZA: GENERA UNICAMENTE 2 ARCHIVOS                            *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P24 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//IDTEMES  DD DSN=SIVA.SIE.FIX.IDTEMES,DISP=SHR
//IDTESEM  DD DSN=SIVA.SIE.FIX.IDTESEM,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF38T24),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P21                                                *
//* UTILERIA : IDCAMS                                                  *
//* OBJETIVO : REDEFINIR ARCHIVO VSAM                                  *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P21 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF38T21),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P18                                                *
//* UTILERIA : IDCAMS                                                  *
//* OBJETIVO : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                    *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P18 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//INPUT    DD DSN=SIVA.SIE.FIX.IDTEMES,DISP=SHR
//OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.RIB019MT.TENENCIA.MES,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF38T18),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P15                                                *
//* UTILERIA : IDCAMS                                                  *
//* OBJETIVO : REDEFINIR ARCHIVO VSAM                                  *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P15 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF38T15),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P12                                                *
//* UTILERIA : IDCAMS                                                  *
//* OBJETIVO : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                    *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P12 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//INPUT    DD DSN=SIVA.SIE.FIX.IDTESEM,DISP=SHR
//OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.RIB019ST.TENENCIA.SEM,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF38T12),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P09                                                *
//* UTILERIA : ZM4DL52D                                                *
//* OBJETIVO : TABLA TENENCIA SEMANAL Y DIARIA                         *
//* ACTUALIZA: GENERA UNICAMENTE 2 ARCHIVOS                            *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//IDTEMES  DD DSN=SIVA.SIE.FIX.TENDIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=109,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(30,10),RLSE)
//IDTESEM  DD DSN=SIVA.SIE.FIX.TENSEMA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=109,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(30,10),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF38T09),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P06                                                *
//* UTILERIA : ZM4DL01S                                                *
//* OBJETIVO : TENENCIA SEMANAL POR GRUPO DE INSTRUMENTO               *
//* ACTUALIZA: GENERA UNICAMENTE 2 REPORTES                            *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P06 EXEC PGM=IKJEFT01,COND=(7,LT)
//*
//ZMDL01R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF38T06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF38P03                                                *
//* UTILERIA : ZM4DL07S                                                *
//* OBJETIVO : RESUMEN SEMANAL DE TENENCIA POR GRUPO DE INSTRUMENTO    *
//* ACTUALIZA: GENERA UNICAMENTE 1 REPORTE                             *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART.                                     *
//*--------------------------------------------------------------------*
//ZLF38P03 EXEC PGM=IKJEFT01,COND=(7,LT)
//*
//Z4DL07R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF38T03),DISP=SHR
//*------------------------------------------------------------------*
//*                  FIN DEL PROCESO ZMUDND38                        *
//*------------------------------------------------------------------*
