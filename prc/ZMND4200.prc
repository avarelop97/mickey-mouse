//ZMND4200 PROC
//**********************************************************************
//*                   C. B.                                            *
//* SISTEMA        :  SISTEMA INTEGRAL DE INFORMACION ESTADISTICA      *
//*                               (S. I. I. E.)                        *
//*                                                                    *
//* PROCESO        :  EXTRACTORES DE ADMINISTRACION DE PROMOCION       *
//*                                                                    *
//* OBJETIVO       :  GENERAR LOS ARCHIVOS DE ADMINISTRACION DE        *
//*                   PROMOCION SEMANALES, MENSUALES Y TRIMESTRALES    *
//*                                                                    *
//* FECHA          :  MAYO DE 2010                                     *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//**********************************************************************
//*                          === IDCAMS ===
//* OBJETIVO    : BORRADO DE ARCHIVOS DE PASO
//*
//* PASO REINICIABLE POR RESTART
//*********************************************************************
//ZLF42P78 EXEC PGM=IDCAMS
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF42T78),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4DL50D --
//* OBJETIVO    : GENERA ARCHIVO DE TENENCIA DIARIA.
//*               INFORMACION DE TENENCIA POR CONTRATO
//*
//* PASO REINICIABLE POR RESTART
//*********************************************************************
//ZLF42P76 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY                                                     00140027
//SYSTSPRT DD SYSOUT=*
//Z4DL50R1 DD DSN=SIVA.SIE.FIX.IDTCDIA,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=99,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,10),RLSE)
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T76),DISP=SHR
//*********************************************************************
//*                           -- ZM4DL50M --
//* OBJETIVO    : TABLA TENENCIA SEMANAL Y MENSUAL
//*
//* ACTUALIZA   : GENERA UNICAMENTE 2 ARCHIVOS
//*               INFORMACION DE TENENCIA POR CONTRATO
//* PASO REINICIABLE POR RESTART
//*********************************************************************
//ZLF42P74 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//Z4DL50M1 DD DSN=SIVA.SIE.FIX.IDTCMES,DISP=SHR
//Z4DL50M2 DD DSN=SIVA.SIE.FIX.IDTCSEM,DISP=SHR
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T74),DISP=SHR
//**********************************************************************
//*                          -- ZM4DL43S --                            *
//* OBJETIVO    : APERTURAS SEMANALES.                                 *
//*                                                                    *
//* ACTUALIZA   : GENERA UNICAMENTE 1 ARCHIVO                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P72 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//Z4DL43M1 DD DSN=SIVA.SIE.FIX.IDAPSEM1,DISP=SHR
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T72),DISP=SHR
//********************************************************************* 00040000
//*                          -- ZM4DL34D --                            *
//*  EXTRAE INF. DE CUENTA                                            * 00050000
//*  PASO REINICIALIZABLE POR RESTART                                 * 00050000
//********************************************************************* 00060000
//ZLF42P70 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//Z4DL34T1 DD DSN=SIVA.SIE.FIX.CONT34D,DISP=SHR                         00140027
//SYSTSPRT DD SYSOUT=*                                                  00230000
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T70),DISP=SHR
//*********************************************************************
//*                      === ZM4DL89M ===                             *
//* OBJETIVO: REPORTE MENSUAL DE TENENCIA POR PORTAFOLIO              *
//*********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZLF42P68 EXEC PGM=IKJEFT01,COND=(4,LT)
//*SYSTSPRT DD SYSOUT=*
//*Z4DL89R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSTSPRT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//*SYSPRINT DD SYSOUT=*
//*QRLSDB2  DD SYSOUT=*
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T68),DISP=SHR
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                          -- ZM4DL87S --                            *
//* OBJETIVO    : CARGA DE APERTURAS A SSADAPN Y ACTUALIZACION DE SAL- *
//*               DOS PROMEDIO DE APERTURAS CON ANTIGUEDAD DE 6 MESES. *
//*                                                                    *
//* ACTUALIZA   : SSADAPN, CTLPROC                                     *
//*                                                                    *
//* CONSULTA    : CONCEPT, CUENTA, SECART, SEAPERO, SSADAPN, SEATRCA.  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P66 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*                                                  01710000
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T66),DISP=SHR
//**********************************************************************
//*                          -- ZM4DL09M --                            *
//* OBJETIVO    : REPORTE MENSUAL DE INGRESOS PROMEDIO                 *
//*                                                                    *
//* ACTUALIZA   : GENERA UNICAMENTE 1 REPORTE                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P64 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*Z4DL09R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*Z4DL09R2 DD DSN=MXCP.ZM.FIX.ZMND4200.REPORTE1,                       00140027
//*            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(3,1),RLSE)
//Z4DL09R2 DD DUMMY
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T64),DISP=SHR
//********************************************************************* 00040000
//*                          == ZM4DL14Y ==                           * 00040000
//*  EXTRAE INF. DE CUENTA                                            * 00050000
//*  PASO REINICIALIZABLE POR RESTART                                 * 00050000
//********************************************************************* 00060000
//ZLF42P62 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//Z4DL14Y1 DD DSN=SIVA.SIE.FIX.DEL14Y.PARAM,                            00140027
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//SYSTSPRT DD SYSOUT=*                                                  00230000
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T62),DISP=SHR
//**********************************************************************
//* PASO:     ZLF42P60                                                 *
//* UTILERIA: IKJEFT01                                                 *
//* DESCRIPCION PASO: DEPURA OPERACIONES DE PARAM DE N MESES ANTERIORES*
//**********************************************************************
//ZLF42P60 EXEC  PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T60),DISP=SHR
//SYSPUNCH DD DUMMY
//SYSIN    DD DSN=SIVA.SIE.FIX.DEL14Y.PARAM,DISP=SHR
//*
//**********************************************************************00003000
//*                         === ZM4DL14B ===                           *00004002
//* OBJETIVO :  EMITE REPORTE SALDOS DEUDORES Y ACREDORES.             *00005000
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//*                                                                    *
//**********************************************************************00006000
//ZLF42P58 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*                                                  00050000
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*Z4DL14R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*Z4DL14R1 DD DSN=MXCP.ZM.FIX.ZMND4200.REPORTE2,                       00140027
//*            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(3,1),RLSE)
//Z4DL14R1 DD DUMMY
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T58),DISP=SHR                   00130000
//**********************************************************************00003000
//*                         === ZM4DL15M ===                           *00004002
//* OBJETIVO :  EMITE REPORTE -----------------------                  *00005000
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//*                                                                    *
//**********************************************************************00006000
//ZLF42P56 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*                                                  00050000
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*Z4DL15R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*Z4DL15R1 DD DSN=MXCP.ZM.FIX.ZMND4200.REPORTE3,                       00140027
//*            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(3,1),RLSE)
//Z4DL15R1 DD DUMMY
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T56),DISP=SHR                   00130000
//**********************************************************************
//*                          == ZM4DL26S --                            *
//* OBJETIVO    : INGRESO SEMANAL POR GRUPO DE INSTRUMENTO             *
//*                                                                    *
//* ACTUALIZA   : GENERA UNICAMENTE 2 REPORTES                         *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P54 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*Z4DL26R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*Z4DL26R1 DD DSN=MXCP.ZM.FIX.ZMND4200.REPORTE4,                       00140027
//*            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(3,1),RLSE)
//Z4DL26R1 DD DUMMY
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T54),DISP=SHR
//**********************************************************************
//*                          -- ZM4DL28S --                            *
//* OBJETIVO    : INGRESO SEMANAL POR GRUPO DE INSTRUMENTO             *
//*                                                                    *
//* ACTUALIZA   : GENERA UNICAMENTE 2 REPORTES                         *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P52 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*Z4DL28R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*Z4DL28R1 DD DSN=MXCP.ZM.FIX.ZMND4200.REPORTE5,                       00140027
//*            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(3,1),RLSE)
//Z4DL28R1 DD DUMMY
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T52),DISP=SHR
//**********************************************************************
//*                         -- IDCAMS    --                            *
//* OBJETIVO    : BORRAR Y GENERAR ARCH VSAM INGANO.                   *
//*                                                                    *
//* MODULO      : PROCESO ESTADISTICO.                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P50 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF42T50),DISP=SHR
//**********************************************************************
//*                          -- ZM4DL16M --                            *
//* OBJETIVO    : COMISIONES GENERADAS A ANIO A LA FECHA               *
//*                                                                    *
//* ACTUALIZA   : GENERA UNICAMENTE 1 REPORTE                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P48 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY                                                     00140027
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//Z4DL16T1 DD DSN=&&ARCHTA,
//            DISP=(NEW,PASS),
//            DCB=(DSORG=PS,LRECL=93,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(50,10),RLSE)
//IDDPTRI  DD DSN=SIVA.SIE.FIX.IDDPANUA,DISP=SHR
//Z4DL16R1 DD DSN=SIVA.SIE.FIX.REPORTE.RIB016M,DISP=SHR
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)
//*TCTEPRO  DD DSN=MXCP.ZM.VSB.SIE.INGANO.KC,DISP=SHR
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T48),DISP=SHR
//**********************************************************************
//*                      -- ICEGENER  --                               *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZLF42P46 EXEC PGM=ICEGENER,COND=(4,LT)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=SIVA.SIE.FIX.REPORTE.RIB016M,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                      -- IDCAMS --                                  *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P44 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF42T44),DISP=SHR
//**********************************************************************
//*                      -- IDCAMS  --                                 *
//* OBJETIVO    : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P42 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//INPUT    DD DSN=SIVA.SIE.FIX.IDDPANUA,DISP=SHR
//OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.RIB016AD.DEPENDEN.ANUAL,DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF42T42),DISP=SHR
//**********************************************************************
//*                         -- ZLF42P40  --                            *
//* OBJETIVO    : BORRAR Y GENERAR ARCH VSAM INGANO.                   *
//*                                                                    *
//* MODULO      : PROCESO ESTADISTICO.                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P40 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF42T40),DISP=SHR
//*****************************************************************
//*                          == ZM4DL17M ==                       *
//*            ARCHIVO DE COMISIONES GENERADAS                    *
//*****************************************************************
//ZLF42P38 EXEC PGM=IKJEFT01,COND=(4,LT)
//IDDMEND  DD DSN=SIVA.SIE.FIX.IDDMEN.DESGLO,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T38),DISP=SHR
//**********************************************************************
//*                          -- ZM4DL40M --                            *
//* OBJETIVO    : COMISIONES GENERADAS A MES A LA FECHA                *
//*                                                                    *
//* ACTUALIZA   : GENERA UNICAMENTE 1 REPORTE                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P36 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY                                                     00140027
//SYSTSPRT DD SYSOUT=*
//Z4DL40T1 DD DSN=&&ARCHTB,
//            DISP=(NEW,PASS),
//            DCB=(DSORG=PS,LRECL=93,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(50,10),RLSE)
//IDDPTRI  DD DSN=SIVA.SIE.FIX.IDDPMES,DISP=SHR
//Z4DL40R1 DD DSN=SIVA.SIE.FIX.REPORTE.RIB040M,DISP=SHR
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)
//*TCTEPRO  DD DSN=MXCP.ZM.VSB.SIE.INGANO.KC,DISP=SHR
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T36),DISP=SHR
//**********************************************************************
//*                      -- ICEGENER  --                               *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZLF42P34 EXEC PGM=ICEGENER,COND=(4,LT)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=SIVA.SIE.FIX.REPORTE.RIB040M,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                      -- IDCAMS --                                  *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P32 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF42T32),DISP=SHR
//**********************************************************************
//*                      -- REPRO ZLF42P30 --                          *
//* OBJETIVO    : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P30 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//INPUT    DD DSN=SIVA.SIE.FIX.IDDPMES,DISP=SHR
//OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.RIB040MD.DEPENDEN.MES,DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF42T30),DISP=SHR
//**********************************************************************
//*                         -- IDCAMS --                               *
//* OBJETIVO    : BORRAR Y GENERAR ARCH VSAM INGANO.                   *
//*                                                                    *
//* MODULO      : PROCESO ESTADISTICO.                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P28 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF42T28),DISP=SHR
//**********************************************************************
//*                          -- ZM4DL41T --                            *
//* OBJETIVO    : COMISIONES GENERADAS A TRIMESTRE A LA FECHA          *
//*                                                                    *
//* ACTUALIZA   : GENERA UNICAMENTE 1 REPORTE                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P26 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY                                                     00140027
//SYSTSPRT DD SYSOUT=*
//Z4DL41T1 DD DSN=&&ARCHTC,
//            DISP=(NEW,PASS),
//            DCB=(DSORG=PS,LRECL=93,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(50,10),RLSE)
//IDDPTRI  DD DSN=SIVA.SIE.FIX.IDDPTRI,DISP=SHR
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*Z4DL41R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*Z4DL41R1 DD DSN=MXCP.ZM.FIX.ZMND4200.REPORTE6,                       00140027
//*            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=141,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(3,1),RLSE)
//Z4DL41R1 DD DUMMY
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*TCTEPRO  DD DSN=MXCP.ZM.VSB.SIE.INGANO.KC,DISP=SHR
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T26),DISP=SHR
//**********************************************************************
//*                      -- IDCAMS  --                                 *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P24 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF42T24),DISP=SHR
//**********************************************************************
//*                      -- IDCAMS  --                                 *
//* OBJETIVO    : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P22 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//INPUT    DD DSN=SIVA.SIE.FIX.IDDPTRI,DISP=SHR
//OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.RIB041TD.DEPENDEN.TRIM,DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF42T22),DISP=SHR
//**********************************************************************
//*                           -- ZM4DL17B --                           *
//* OBJETIVO    : COMISIONES GENERADAS EN EL MES                       *
//*                                                                    *
//* ACTUALIZA   : GENERA UNICAMENTE 1 REPORTE                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY                                                     00140027
//SYSTSPRT DD SYSOUT=*
//Z4DL17T1 DD DSN=&&ARCHTD,
//            DISP=(NEW,PASS),
//            DCB=(DSORG=PS,LRECL=110,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(50,10),RLSE)
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*Z4DL17R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*Z4DL17R1 DD DSN=MXCP.ZM.FIX.ZMND4200.REPORTE7,                       00140027
//*            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=137,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(3,1),RLSE)
//Z4DL17R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T20),DISP=SHR
//**********************************************************************
//*                           == ZM4DL31S ==                           *
//* OBJETIVO    : EXTRACTOR DE BAJAS SEMANAL.                          *
//*                                                                    *
//* ACTUALIZA   : GENERA UNICAMENTE 1 ARCHIVO                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P18 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//IDBASEM  DD DSN=SIVA.SIE.FIX.IDBASEM,DISP=SHR
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T18),DISP=SHR
//**********************************************************************
//*                           == ZM4DL32M ==                           *
//* OBJETIVO    : EXTRACTOR DE BAJAS MENSUAL.                          *
//*                                                                    *
//* ACTUALIZA   : GENERA UNICAMENTE 1 ARCHIVO                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//IDBAMES  DD DSN=SIVA.SIE.FIX.IDBAMES,DISP=SHR
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T16),DISP=SHR
//**********************************************************************
//*                      -- IDCAMS --                                  *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P14 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF42T14),DISP=SHR
//**********************************************************************
//*                      -- IDCAMS  --                                 *
//* OBJETIVO    : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P12 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//INPUT    DD DSN=SIVA.SIE.FIX.IDBAMES,DISP=SHR
//OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.RIB032MB.BAJAS.MENSUAL,DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF42T12),DISP=SHR
//**********************************************************************
//*                           == ZM4DL33M ==                           *
//* OBJETIVO    : APERTURAS MENSUALES.                                 *
//*                                                                    *
//* ACTUALIZA   : GENERA UNICAMENTE 1 ARCHIVO                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//IDAPMES  DD DSN=SIVA.SIE.FIX.IDAPMES,DISP=SHR
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T10),DISP=SHR
//**********************************************************************
//*                      -- IDCAMS --                                  *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P08 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF42T08),DISP=SHR
//**********************************************************************
//*                      -- IDCAMS --                                  *
//* OBJETIVO    : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P06 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//INPUT    DD DSN=SIVA.SIE.FIX.IDAPMES,DISP=SHR
//OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.RIB033MA.ALTAS.MENSUAL,DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF42T06),DISP=SHR
//**********************************************************************
//*                           -- ZM4DL23S --                           *
//* OBJETIVO    : TABLA DE APERTURAS SEMANAL                           *
//*                                                                    *
//* ACTUALIZA   : GENERA UNICAMENTE 1 ARCHIVO                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZLF42P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//IDAPSEM  DD DSN=SIVA.SIE.FIX.IDAPSEM,DISP=SHR
//*SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF42T02),DISP=SHR
