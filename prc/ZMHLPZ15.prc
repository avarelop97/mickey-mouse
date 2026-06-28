//ZMHLPZ15 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PMVVAE03   (DISPARADOR)                          *
//*                   EL NOMBRE DEL PROCESO ERA VAE0300                *
//*                                                                    *
//* OBJETIVO       :  EMITE REPORTE DE MOVIMIENTOS DE VALORES          *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  SIVAXVOC                                         *
//*                                                                    *
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *
//* FECHA          :  SEPTIEMBRE/1992                                  *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO SE INCLUYO BAJO CONTROL-M AUNQUE    *
//*                   NO ACTUALICE TABLAS YA QUE SE CANCELA POR -911   *
//*                   COMO RESOURCE UNAVAILABLE DE OPERDIN QUE ES      *
//*                   UTILIZADA POR LA ASIGNACION AUTOMATICA           *
//*                   (PAAMDD07)                                       *
//*                                                                    *
//* MODIFICACION   :  SOFTTEK ENERO DE 1999                            *
//*                   SE MODIFICO LA LONGITUD DEL ARCHIVO VIBA63T2     *
//*                   DE 133 A 146 POSICIONES.                         *
//*                   SE AGREGO UN PASO MAS PARA REPORTAR LAS ORDENES  *
//*                   CORREGIDAS.                                      *
//*                                                                    *
//* MODIFICACION   :  MARCO A. MORALES G. (ASATECK)      20-ENERO-1999 *
//*                   SE AGREGO EL REPORTE VIBB64E                     *
//*                                                                    *
//* MODIFICACION   :  MARCO A. MORALES G. (ASATECK)      14-ABRIL-1999 *
//*                   SE AGREGO EL REPORTE VIBU55E                     *
//*                                                                    *
//* MODIFICACION   :  ALFONSO DAMIAN E.   (ASATECK)      26-DIC-2001   *
//*                   SE AGREGARON CONDICIONES EN LOS PASOS DEL PROCESO*
//*                   SE AGREGO ACTUALIZACION DE CTLPROC CON EVENTO    *
//*                   'VAE'.                                           *
//*                                                                    *
//* MODIFICACION   :  GUADALUPE OROZCO OROZCO (HPI)       ABRIL-2003   *
//*                   ADECUACIONES PARA SIVA-MULTIEMPRESA              *
//*                                                                    *
//* MODIFICACION   :  EDUARDO MORALES VILLAFUERTE (SOFTTEK) JULIO-2005 *
//*                   ADECUACIONES PARA REPROTE DE MOVIMIENTOS DE      *
//*                   VALORES                                          *
//* MODIFICACION   : SE CAMBIO LA LONGITUD DEL ARCHIVO DEL PROG        *
//*                  ZM4DHA63                                          *
//**********************************************************************
//*                   ZM4DJ241
//* OBJETIVO : VALIDAR EJECUCION DE PROCESO PMVVAE03.
//*
//* TABLA QUE ACTUALIZA : CTLPROC.
//*
//* PASO REINICIBLE POR RESTART.
//************************************************************
//*
//PHL15P09 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL15T01),DISP=SHR
//*
//**********************************************************************00370400
//*                         --  ZM4DGU46  --                           *00370500
//*                                                                    *00370600
//* OBJETIVO :    REPORTE DE CORRECCION DE ORDENES (ENVIO IMP. USUARIO)*00370700
//*                                                                    *00370800
//**********************************************************************00370900
//PHL15P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                00371100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00371200
//SYSPRINT DD SYSOUT=*                                                  00371300
//ZMGU46A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE15,
//            DISP=SHR
//ZMGU46R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00371600
//ZMGU46R2 DD SYSOUT=7,DEST=VALOR02                                     00371600
//SYSOUT   DD SYSOUT=*                                                  00371700
//SYSDBOUT DD SYSOUT=*                                                  00371800
//SYSABOUT DD DUMMY                                                     00371900
//SYSUDUMP DD DUMMY                                                     00372000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL15T02),DISP=SHR
//*                                                                     00370400
//**********************************************************************
//*                         --  ZM4DH980  --                           *
//*                                                                    *
//* OBJETIVO :    REPORTE DE MOVIMIENTOS DIARIOS DE GARANTIAS          *
//*                >>>>> NO ACTUALIZA TABLAS <<<<<                     *
//*                                                                    *
//**********************************************************************
//PHL15P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//ZMH980A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE15,
//            DISP=SHR
//ZMH980R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL15T03),DISP=SHR
//*                                                                     00372200
//**********************************************************************
//*                          --  ZM4DHA63  --                          *
//*                                                                    *
//* OBJETIVO :    REPORTE DE MOVIMIENTOS DE VALORES                    *
//*                >>>>> NO ACTUALIZA TABLAS <<<<<                     *
//*                                                                    *
//**********************************************************************
//PHL15P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//ZMHA63FD DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE15,
//            DISP=SHR
//ZMHA63A1 DD DSN=MXCP.ZM.WKF.VAL.EMP.SUC.ZMHLPE15,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=217,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//ZMHA63A2 DD DSN=MXCP.ZM.FIX.VAL.EMP.REP.ZMHLPE15,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//ZMHA63R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHA63R2 DD SYSOUT=7,DEST=VALOR02
//ZMHA63RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SORTWK01 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK02 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK03 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK04 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK05 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK06 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK07 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK08 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK09 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK10 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL15T04),DISP=SHR
//*
//**********************************************************************
//*                          --  ZM4EHB64  --                          *
//*                                                                    *
//* OBJETIVO :  REPORTE DE TIPO DE BURSATILIDAD Y CLAVE INTERNACIONAL  *
//*             DE EMISORAS.                                           *
//*                                                                    *
//*                >>>>> NO ACTUALIZA TABLAS <<<<<                     *
//*                                                                    *
//**********************************************************************
//PHL15P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHB64A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE15,
//           DISP=SHR
//ZMHB64R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL15T05),DISP=SHR
//*
//**********************************************************************
//*                          --  ZM4EGU55  --                          *
//*                                                                    *
//* OBJETIVO :  REPORTE DE OPERACIONES DE RECEPCION Y RETIRO DE TITULOS*
//*             CON OTRAS CASAS DE BOLSA.                              *
//*                                                                    *
//*    >>> BORRA REGISTROS DE MESES ANTERIORES DE LA PARAM TU1 <<<     *
//*                                                                    *
//**********************************************************************
//PHL15P04 EXEC  PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMGU55FD DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE15,
//           DISP=SHR
//ZMGU55A1 DD DSN=MXCP.ZM.WKF.VAL.EMP.SUC.ARCHT1,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(RECFM=FB,LRECL=88,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(10,5),RLSE)
//ZMGU55A2 DD DSN=MXCP.ZM.WKF.VAL.EMP.SUC.ARCHT2,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(RECFM=FB,LRECL=78,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(10,5),RLSE)
//ZMGU55R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU55R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU55R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SORTWK05 DD UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SORTWK06 DD UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SORTWK07 DD UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SORTWK08 DD UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SORTWK09 DD UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SORTWK10 DD UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL15T06),DISP=SHR
//*
//**********************************************************************
//*                   ZM4DJ241
//* OBJETIVO : VALIDAR EJECUCION DE PROCESO PMVVAE03.
//*
//* TABLA QUE ACTUALIZA : CTLPROC.
//*
//************************************************************
//*
//PHL15P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL15T07),DISP=SHR
//*
