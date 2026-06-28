//ZMSFPM12 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBSFCM12                                         *
//*                   EFICIENCIA Y CONTROL CARTERA - CAPITALES         *
//*                                                                    *
//* OBJETIVO       :  REPORTES DE EFICIENCIA Y CONTROL DE LA CARTERA   *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBSFCM26  -  ZMSFPM26                            *
//*                                                                    *
//* DESPUES DE     :  CBSFCM09  -  ZMSFPM09                            *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE MENSUALMENTE                  *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4MGT75 ==                            *
//* OBJETIVO    :  REPORTE CANCELACION INTERES SALDO DEUDOR            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZSF12T13 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//ZMGT75R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF12T13),DISP=SHR
//**********************************************************************
//*                          == ZM4MGT72 ==                            *
//* OBJETIVO    :  CARGA DE ESDOS DE CTA. RETENIDOS A LA TABLA CTARET  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZSF12T12 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF12T12),DISP=SHR
//**********************************************************************
//*                          == ZM4MGU56 ==                            *
//* OBJETIVO    :  REPORTE DE CONTRATOS SIN OPERAR EN UN TRIMESTRE     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZSF12T11 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMGU56R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF12T11),DISP=SHR
//**********************************************************************
//*                          == ZM4MGU64 ==                            *
//* OBJETIVO    :  GENERAR ARCHIVO DE ROTACION DE CARTERA              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZSF12T10 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMGU64A1 DD DSN=MXCP.ZM.FIX.MDC.ROTACAR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=103,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF12T10),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//* OBJETIVO    :  ORDENAR ARCHIVO DE ROTACION DE CARTERA              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZSF12T09 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.ROTACAR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.MDC.ROTACAR.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=103,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF12T09),DISP=SHR
//**********************************************************************
//*                          == ZM4MGU58 ==                            *
//* OBJETIVO    :  REPORTE DE ROTACION DE CARTERA                      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZSF12T08 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMGU58R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU58A1 DD DSN=MXCP.ZM.WKF.MDC.ROTACAR.SORT,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF12T08),DISP=SHR
//**********************************************************************
//*                          == ZM4MGU60 ==                            *
//* OBJETIVO    :  GENERAR REPORTE/ARCHIVO DE CLIENTES MAS PRODUCTIVOS *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZSF12T07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMGU60R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU60A1 DD DSN=MXCP.ZM.FIX.MDC.CTEPRO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF12T07),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//* OBJETIVO    :  ORDENAR X CUENTA ARCHIVO DE CLIENTES MAS PRODUCTIVOS*
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZSF12T06 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.CTEPRO,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.MDC.CTEPRO.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF12T06),DISP=SHR
//**********************************************************************
//*                          == ZM4MGU61 ==                            *
//* OBJETIVO    :  GENERAR REPORTE Y ARCHIVO DE INVERSION EN MD. Y MC. *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZSF12T05 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMGU61R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU61A1 DD DSN=MXCP.ZM.FIX.MDC.INVMER,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF12T05),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//* OBJETIVO    :  ORDENAR X CUENTA ARCHIVO DE INVERSION EN MD. Y MC.  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZSF12T04 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.INVMER,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.MDC.INVMER.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF12T04),DISP=SHR
//**********************************************************************
//*                          == ZM4MGU54 ==                            *
//* OBJETIVO    :  CRUCE DE ARCHIVOS DE INV. EN MD Y MC  CON CLIENTES  *
//*                MAS PRODUCTIVOS                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZSF12T03 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMGU54A1 DD DSN=MXCP.ZM.WKF.MDC.CTEPRO.SORT,DISP=SHR
//ZMGU54A2 DD DSN=MXCP.ZM.WKF.MDC.INVMER.SORT,DISP=SHR
//ZMGU54A3 DD DSN=MXCP.ZM.FIX.MDC.CTEPRO.INV1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=118,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF12T03),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//* OBJETIVO    :  ORDENAR DE MAYOR A MENOR RENDIMIENTO EL CRUCE       *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZSF12T02 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.CTEPRO.INV1,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.MDC.CTEPRO.INV1.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=118,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF12T02),DISP=SHR
//**********************************************************************
//*                          == ZM4MGU65 ==                            *
//* OBJETIVO    :  REPORTE Y ARCHIVO CLIENTES MAS PRODUCTIVOS EN MC/MD *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                      PROGRAMA SIN DB2 *
//**********************************************************************
//ZSF12T01 EXEC PGM=ZM4MGU65,COND=(4,LT)
//PI601765 DD DUMMY
//ZMGU65R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU65A1 DD DSN=MXCP.ZM.WKF.MDC.CTEPRO.INV1.SORT,DISP=SHR
//ZMGU65A2 DD DSN=MXCP.ZM.FIX.MDC.CTEPRO.INV2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
