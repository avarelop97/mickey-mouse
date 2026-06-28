//ZMSFPD02 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBSFCD02                                         *
//*                   INGRESOS ESTADISTICOS                            *
//*                                                                    *
//* OBJETIVO       :  CONOCER LOS INGRESOS DE LA CASA EN LOS           *
//*                   DIFERENTES GRUPOS DE INSTRUMENTO                 *
//*                                                                    *
//*                   CARGA DE INFORMACION EN TABLAS IMAGEN PARA       *
//*                   NO ENTORPECER LA EJECUCION DE OTROS PROCESOS     *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PTEPED03     ( CBSFCD03  -  ZMSFPD03 )           *
//*                                                                    *
//* DESPUES DE     :  PTEPED01     ( CBSFCD01  -  ZMSFPD01 )           *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  OCTUBRE, 2005                                    *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4MS023 ==                            *
//* OBJETIVO    :  EXTRAE INF. DE INGRESOS POR FUERA PARA GRABAR EN    *
//*                SEINDET (DE SEINGFU)                                *
//* ACTUALIZA   :  SEINDET                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P39 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T39),DISP=SHR
//**********************************************************************
//*                          == ZM4DS035 ==                            *
//* OBJETIVO    :  EXTRAE INF. DE VALUACION DE CLIENTES                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P38 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS035A1 DD DSN=MXCP.ZM.TMP.SIE.BCTENDIM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=117,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(10,5),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T38),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF88 ==                            *
//* OBJETIVO    :  GRABA LOS INGRESOS VIRTUALES DE MERCADO DE DINERO   *
//* ACTUALIZA   :  SEINDET                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P37 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T37),DISP=SHR
//**********************************************************************
//*                          == ZM4DJ189 ==                            *
//* OBJETIVO    :  GENERA INGRESO DE INDICATIVOS                       *
//* ACTUALIZA   :  SEINDET                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P36 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T36),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF78 ==                            *
//* OBJETIVO    :  GRABA LOS INGRESOS DE DIA PARA LA CASA              *
//* ACTUALIZA   :  SEINDET                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P35 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T35),DISP=SHR
//**********************************************************************
//*                          == ZM4DSG32 ==                            *
//* OBJETIVO    :  GENERA LOS MOVIMIENTOS DE INGRESOS POR ADMON.       *
//*                DE CONTRATOS DE FONDO DE AHORRO.                    *
//* ACTUALIZA   :  SEINDET                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P34 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSG32R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T34),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF79 ==                            *
//* OBJETIVO    :  ORDER BY SEINDET X TPO.MERC,TPO.EMISORA,GPO.CONCEPT *
//* ACTUALIZA   :  SEINDET                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P33 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSF79A1 DD DSN=MXCP.ZM.TMP.SIE.OSC.ZM4DSF79,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=080,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(20,10),RLSE),
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T33),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF80 ==                            *
//* OBJETIVO    :  DEPURACION DE TABLAS CORRESPONDIENTES A INGRESOS    *
//*                PARA LOS PERIODOS QUE INICIAN HOY (PARAM-TF6)       *
//* ACTUALIZA   :  SEINGC, SEINGCA, SEINGP, SEINGPA, SEINGPT, SEINGCS  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P32 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSF80A1 DD DSN=MXCP.ZM.TMP.SIE.SOBF80D.T1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=45,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),
//            UNIT=3390
//ZMSF80A2 DD DSN=MXCP.ZM.TMP.SIE.SOBF80D.T2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=48,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),
//            UNIT=3390
//ZMSF80A3 DD DSN=MXCP.ZM.TMP.SIE.SOBF80D.T3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=45,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),
//            UNIT=3390
//ZMSF80A4 DD DSN=MXCP.ZM.TMP.SIE.SOBF80D.T4,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=48,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),
//            UNIT=3390
//ZMSF80A5 DD DSN=MXCP.ZM.TMP.SIE.SOBF80D.T5,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=48,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),
//            UNIT=3390
//ZMSF80A6 DD DSN=MXCP.ZM.TMP.SIE.SOBF80D.T6,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=49,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T32),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF75 ==                            *
//* OBJETIVO    :  GENERA LOS INGRESOS DE LA CASA A NIVEL CUENTA       *
//* ACTUALIZA   :  SEINGC, SECATCA                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P31 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSF75R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T31),DISP=SHR
//**********************************************************************
//*                          == ZM4DSG33 ==                            *
//* OBJETIVO    :  GENERA LOS INGRESOS POR ADMINISTRACION DE FONDOS    *
//*                DE AHORRO A NIVEL PROMOTOR UNICAMENTE               *
//* ACTUALIZA   :  SEINGP, SEINGPA                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T30),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF85 ==                            *
//* OBJETIVO    :  MARCA CONTRATOS CON TRATAMIENTO ESPECIAL PARA       *
//*                PROMOTORES.                                         *
//* ACTUALIZA   :  SEINGC                                              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P29 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T29),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF83 == OPC 1                      *
//* OBJETIVO    :  GENERA LOS INGRESOS PARA TODOS LOS PERIODOS A NIVEL *
//*                GRUPO DE INSTRUMENTO Y MERCADO.                     *
//*                (EJECUCION DE PROGRAMA A NIVEL CUENTA)              *
//* ACTUALIZA   :  SEINGC, SEINGCA, SECATCA                            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P28 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T28),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF83 == OPC 2                      *
//* OBJETIVO    :  GENERA LOS INGRESOS PARA TODOS LOS PERIODOS A NIVEL *
//*                GRUPO DE INSTRUMENTO Y MERCADO.                     *
//*                (EJECUCION DE PROGRAMA A NIVEL PROMOTOR)            *
//* ACTUALIZA   :  SEINGP, SEINGPA, SECATCA                            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P27 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T27),DISP=SHR
//**********************************************************************
//*                          == ZM4DS207 ==                            *
//* OBJETIVO    :  CALCULA CUOTAS DE ADMINISTRACION POR ADMINISTRACION *
//*                DE FONDOS DE SOCIEDADES DE INVERSION.               *
//* ACTUALIZA   :  CUOTACC                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P26 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS207A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..TENDIA.FIN,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T26),DISP=SHR
//**********************************************************************
//*                          == ZM4DJ200 ==                            *
//* OBJETIVO    :  GENERA INGRESOS POR ADMINISTRACION DE SOCIEDADES    *
//*                DE INVERSION A NIVEL CUENTA.                        *
//* ACTUALIZA   :  CUOTACC, CARTSOC                                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T25),DISP=SHR
//**********************************************************************
//*                          == ZM4DS206 ==                            *
//* OBJETIVO    :  GENERA INGRESOS DIARIOS POR LOS DISTINTOS CONCEPTOS *
//*                EN TABLA SEINGC PARA ARCHIVO DIARIO DE INGRESOS.    *
//* ACTUALIZA   :  SEINGC                                              *
//*                                                                    *
//* PASO NO REINICIABLE POR RESTART                                    *
//**********************************************************************
//PSF02P24 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T24),DISP=SHR
//**********************************************************************
//*                          == ZM4DS059 ==                            *
//* OBJETIVO    :  GENERA ARCHIVO DE INGRESOS DIARIOS PARA ADMON. DE   *
//*                PROMOCION.                                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P23 EXEC PGM=IKJEFT01,COND=(4,LT)
//*MS059A1 DD DSN=SIVA.SIE.FIX.IDINDIA.DIARIO,
//ZMS059A1 DD DSN=MXCP.ZM.GDGD.SIE.EBCM.IDINDIA(+1),
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=77,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T23),DISP=SHR
//**********************************************************************
//*                          == ZM4MJ203 ==                            *
//* OBJETIVO    :  GENERA INGRESOS POR ADMINISTRACION DE SOCIEDADES    *
//*                DE INVERSION A NIVEL CUENTA.                        *
//* ACTUALIZA   :  SEINGC, SEINGP,SEINGCA,SEINGPA                      *
//*                                                                    *
//* NOTA        :  SI CANCELA NO PUEDE CONTINUAR  LOS PASOS SIGUIENTES *
//*                REPORTAR A SISTEMAS                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P22 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T22),DISP=SHR
//**********************************************************************
//*                          == ZM4DS058 ==                            *
//* OBJETIVO    :  GENERA INGRESOS POR ADMINISTRACION DE SOCIEDADES    *
//*                DE INVERSION A NIVEL CUENTA.                        *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P21 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS058R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMS058R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T21),DISP=SHR
//**********************************************************************
//*                          == ZM4DSG35 ==                            *
//* OBJETIVO    :  GENERA INGRESOS VIRTUALES POR A PARTIR DE LOS       *
//*                ING. POR ADMON. DE SOC. DE INV. DE LOS CONTRATOS    *
//*                DE FONDOS DE AHORRO                                 *
//* ACTUALIZA   :  SEINGC, SEINGP,SEINGCA,SEINGPA                      *
//*                                                                    *
//* NOTA        :  SI CANCELA NO PUEDEN CONTINUAR LOS PASOS SIGUIENTES.*
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T20),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF81 == OPC 2                      *
//* OBJETIVO    :  GENERA LOS INGRESOS GLOBALES POR PROMOTOR           *
//*                (EJECUCION DE PROGRAMA A NIVEL PROMOTOR)            *
//* ACTUALIZA   :  SEINGPT, SECATCA                                    *
//*                                                                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P19 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSF81R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T19),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF81 == OPC 3                      *
//* OBJETIVO    :  GENERA LOS INGRESOS GLOBALES POR PROMOTOR           *
//*                (EJECUCION DE PROGRAMA A NIVEL CENTRO DE COSTOS)    *
//* ACTUALIZA   :  SEINGCS, SECATCA                                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P18 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSF81R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T18),DISP=SHR
//**********************************************************************
//*                          == ZM4DGG54 ==                            *
//* OBJETIVO : REPORTE DE COMISIONES GENERADAS                         *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PSF02P17 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGG54R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T17),DISP=SHR
//**********************************************************************
//*                          == ZM4MS034 ==                            *
//* OBJETIVO    : INGRESOS POR ADMON. DE S.INVERSION_RESUMEN           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS034R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T16),DISP=SHR
//**********************************************************************
//*                          == ZM4MS020 ==                            *
//* OBJETIVO    : TABLA INGRESOS SEMANAL Y MENSUAL                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS020A1 DD DSN=SIVA.SIE.FIX.IDINMES,DISP=SHR
//ZMS020A2 DD DSN=SIVA.SIE.FIX.IDINSEM,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T15),DISP=SHR
//**********************************************************************
//*                          == ZM4ES020 ==                            *
//* OBJETIVO    : GENERA INGRESOS                                      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P14 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSE20A1 DD DSN=MXCP.ZM.GDGD.SIE.EBCM.INGDCB01(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUP.MODEL,LRECL=86,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//ZMSE20A2 DD DSN=SIVA.SIE.FIX.RIB020E.ING02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=82,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T14),DISP=SHR
//**********************************************************************
//*                        == DEFINE RIB020MI ==                       *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P13 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF02T13),DISP=SHR
//**********************************************************************
//*                        == REPRO  RIB020MI ==                       *
//* OBJETIVO    : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P12 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//INPUT    DD DSN=SIVA.SIE.FIX.IDINMES,DISP=SHR
//OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.RIB020MI.INGRESO.MES,DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF02T12),DISP=SHR
//**********************************************************************
//*                        == DEFINE RIB020SI ==                       *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P11 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF02T11),DISP=SHR
//**********************************************************************
//*                        == REPRO  RIB020SI ==                       *
//* OBJETIVO    : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P10 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//INPUT    DD DSN=SIVA.SIE.FIX.IDINSEM,DISP=SHR
//OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.RIB020SI.INGRESO.SEM,DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF02T10),DISP=SHR
//**********************************************************************
//*                          == ZM4MSG36 ==                            *
//* OBJETIVO    : TABLA INGRESOS SEMANAL Y MENSUAL                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSG36A1 DD DSN=SIVA.SIE.FIX.PRINMES,DISP=SHR
//ZMSG36A2 DD DSN=SIVA.SIE.FIX.PRINSEM,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T09),DISP=SHR
//**********************************************************************
//*                        == DEFINE SOBG36MI ==                       *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P08 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF02T08),DISP=SHR
//**********************************************************************
//*                        == REPRO  SOBG36MI ==                       *
//* OBJETIVO    : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P07 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//INPUT    DD DSN=SIVA.SIE.FIX.PRINMES,DISP=SHR
//OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.SOBG36MI.INGRESO.MES,DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF02T07),DISP=SHR
//**********************************************************************
//*                        == DEFINE SOBG36SI ==                       *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P06 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF02T06),DISP=SHR
//**********************************************************************
//*                        == REPRO  SOBG36SI ==                       *
//* OBJETIVO    : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P05 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//INPUT    DD DSN=SIVA.SIE.FIX.PRINSEM,DISP=SHR
//OUTPUT   DD DSN=MXCP.ZM.VSB.SIE.SOBG36SI.INGRESO.SEM,DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF02T05),DISP=SHR
//**********************************************************************
//*                          == ZM4SS000 ==                            *
//* OBJETIVO    : INGRESO SEMANAL POR GRUPO DE INSTRUMENTO             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART    GENERA 1 REPORTE                   *
//**********************************************************************
//PSF02P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS000R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T04),DISP=SHR
//**********************************************************************
//*                          == ZM4SS006 ==                            *
//* OBJETIVO    : RESUMEN SEMANAL DE INGRESOS POR GRUPO DE INSTRUMENTO *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS006R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T03),DISP=SHR
//**********************************************************************
//*                          == ZM4MS030 ==                            *
//* OBJETIVO    : INGRESOS POR ADMON. DE S.INVERSION                   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS030R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T02),DISP=SHR
//**********************************************************************
//*                          == ZM4DS061 ==                            *
//* OBJETIVO    : INGRESOS POR ADMON. DE S.INVERSION                   *
//*                                                                    *
//*               GENERA UNICAMENTE 1 ARCHIVO PARA TRANSFERENCIA       *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF02P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS061A1 DD DSN=SIVA.SIE.FIX.INGSIBP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=085,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(10,5),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF02T01),DISP=SHR
//**********************************************************************
