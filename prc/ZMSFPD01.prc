//ZMSFPD01 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBSFCD01                                         *
//*                   TENENCIA ESTADISTICA                             *
//*                                                                    *
//* OBJETIVO       :  CONOCER LA POSICION DE LA CASA EN LOS            *
//*                   DIFERENTES GRUPOS DE INSTRUMENTO                 *
//*                                                                    *
//*                   CALCULA LAS ESTADISTICAS SOBRE TENENCIA A NIVEL  *
//*                   CLIENTE Y PROMOTOR PARA LOS PERIODOS REGISTRADOS *
//*                   EN LA PARAM 'TF6'                                *
//* CORRE                                                              *
//* ANTES DE       :  CBSFCD02  -  ZMSFPD02                            *
//*                                                                    *
//* DESPUES DE     :                                                   *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//**********************************************************************
//*                          == ZM4DSG38 ==                            *
//* OBJETIVO    :  DEPURACION DIARIA DE SEDIAPE (DIAS DE PERMANENCIA)  *
//*                PARA LOS PERIODOS QUE INICIEN EL DIA DE HOY         *
//* ACTUALIZA   :  SEDIAPE, PASO REINICIBLE                            *
//**********************************************************************
//PSF01P50 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF01T21),DISP=SHR
//**********************************************************************
//*                          == ZM4DSG39 ==                            *
//* OBJETIVO    :  ACUMULADO DIARIO DE SEDIAPE (DIAS DE PERMANENCIA)   *
//*                CONSIDERANDO LOS DIAS TRANSCURRIDOS POR PERIODO     *
//* ACTUALIZA   :  SEDIAPE                                             *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART                                      *
//**********************************************************************
//PSF01P45 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF01T20),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF60 ==                            *
//* OBJETIVO    :  DEPURACION DIARIA DE LAS ESTADISTICAS DE LA TENENCIA*
//*                PARA LOS PERIODOS QUE INICIEN EL DIA DE HOY         *
//*                                                                    *
//* ACTUALIZA   :  SETENC, SETENCA, SETENP, SETENPA                    *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART                                      *
//**********************************************************************
//PSF01P40 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF01T19),DISP=SHR
//**********************************************************************
//*                          == ZM4MSG13 ==                            *
//* OBJETIVO    :  GENERA Y CLASIFICA INFORMACION SECART               *
//* ACTUALIZA   :  NINGUNA TABLA SOLO GENERA ARCHIVOS SECUENCIALES     *
//*                PARA EL SIGUIENTE PASO (DIARIO)                     *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART                                      *
//**********************************************************************
//ZM4MSG35 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSG13A1 DD DSN=MXCP.ZM.FIX.SIE.TENENCIA.DIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=70,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMSG13A2 DD DSN=MXCP.ZM.FIX.SIE.TENENCIA.SEMANA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=70,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMSG13A3 DD DSN=MXCP.ZM.FIX.SIE.TENENCIA.MES,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=70,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF01T18),DISP=SHR
//**********************************************************************
//*                          == ZM4DS053 ==                            *
//* OBJETIVO    :  GENERA REPORTE DE TENENCIA DIARIO APARTIR DE SECART *
//* ACTUALIZA   :  NINGUNA TABLA SOLO GENERA REPORTE DIARIO            *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART                                      *
//**********************************************************************
//PSF01P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS053A2 DD DSN=MXCP.ZM.FIX.SIE.REPOTEN1.DIARIO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF01T17),DISP=SHR
//**********************************************************************
//*                          == ZM4MSG14 ==                            *
//* OBJETIVO    :  GENERA TENENCIA SETENC Y SETENP                     *
//* ACTUALIZA   :  SETENC Y SETENP (DIARIO)                            *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART                                      *
//**********************************************************************
//PSF01P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSG14A1 DD DSN=MXCP.ZM.FIX.SIE.TENENCIA.DIA,DISP=SHR
//ZMSG14A2 DD DSN=MXCP.ZM.FIX.SIE.TENENCIA.SEMANA,DISP=SHR
//ZMSG14A3 DD DSN=MXCP.ZM.FIX.SIE.TENENCIA.MES,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//ZMSG14R1 DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF01T16),DISP=SHR
//**********************************************************************
//*                          == ZM4MSG13 ==                            *
//* OBJETIVO    :  GENERA Y CLASIFICA INFORMACION SECART               *
//* ACTUALIZA   :  NINGUNA TABLA SOLO GENERA ARCHIVOS SECUENCIALES     *
//*                PARA EL SIGUIENTE PASO  (MENSUAL)                   *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART                                      *
//**********************************************************************
//PSF01P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSG13A1 DD DSN=MXCP.ZM.FIX.SIE.TENENCIA.DIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=70,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMSG13A2 DD DSN=MXCP.ZM.FIX.SIE.TENENCIA.SEMANA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=70,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMSG13A3 DD DSN=MXCP.ZM.FIX.SIE.TENENCIA.MES,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=70,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK05 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF01T15),DISP=SHR
//**********************************************************************
//*                          == ZM4MSG14 ==                            *
//* OBJETIVO    :  GENERA TENENCIA SETENC Y SETENP                     *
//* ACTUALIZA   :  SETENC Y SETENP (MENSUAL)                           *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART                                      *
//**********************************************************************
//PSF01P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSG14A1 DD DSN=MXCP.ZM.FIX.SIE.TENENCIA.DIA,DISP=SHR
//ZMSG14A2 DD DSN=MXCP.ZM.FIX.SIE.TENENCIA.SEMANA,DISP=SHR
//ZMSG14A3 DD DSN=MXCP.ZM.FIX.SIE.TENENCIA.MES,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//ZMSG14R1 DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF01T14),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF70 ==                            *
//* OBJETIVO    :  ORDENA SEINDET POR TIPO DE MERCADO, TIPO DE EMISORA *
//*                GRUPO DE CONCEPTO Y ACTUALIZA EL FSIST              *
//* ACTUALIZA   :  SETENC                                              *
//**********************************************************************
//PSF01P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSF70A1 DD DSN=MXCP.ZM.FIX.SIE.OSC.ESTADISC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=080,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF01T10),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF56 ==                            *
//* OBJETIVO    :  GENERA TENENCIAS PROMEDIO A PARTIR DE LA SEMANAL    *
//* ACTUALIZA   :  SETENC, SETENP, SETENCA, SETENPA                    *
//*                                                                    *
//* PASO  REINICIABLE POR RESTART                                      *
//**********************************************************************
//PSF01P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF01T09),DISP=SHR
//**********************************************************************
//*                          == ZM4MS019 ==                            *
//* OBJETIVO    : TABLA TENENCIA SEMANAL Y MENSUAL                     *
//* ACTUALIZA   : GENERA UNICAMENTE 2 ARCHIVOS                         *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF01P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS019A1 DD DSN=MXCP.ZM.FIX.SIE.IDTEMES,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=109,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMS019A2 DD DSN=MXCP.ZM.FIX.SIE.IDTESEM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=109,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF01T08),DISP=SHR
