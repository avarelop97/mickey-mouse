//ZMUCPD04 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBUCCD04                                         *
//*                   CIERRE DE DIA DEL MODULO DE CONTRATOS            *
//*                                                                    *
//* OBJETIVO       :  ACTUALIZA EL PORCENTAJE DE INTERES DE LOS        *
//*                   CONTRATOS DADOS DE ALTA EN EL DIA.               *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  CBUCCD03                                         *
//*                                                                    *
//* REALIZO        :  MONICA RUBIO CONTRERAS.                          *
//* FECHA          :  OCTUBRE/2003.                                    *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *
//*                   SIEMPRE ANTES DE TODO EL FIN DE DIA              *
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PUC04P14 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUCPD04,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                    PROGRAMA   -- ZM4EU618 --                       *
//*  ACTUALIZA LOS CONTRATOS DADOS DE ALTA EN DIA EN EL CAMPO PORCENT  *
//*  DE LA TABLA ACLICTA.                                              *
//**********************************************************************
//PUC04P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZMU618A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUCPD04,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC04T01),DISP=SHR
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PUC04P12 EXEC PGM=ZM3DG001,
//         PARM=('BCM','000','&INT1','&INT2',)
//PI601765 DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CON.EBCM.S000.ZMUCPD04,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*             *** CIERRE DE BANCA PATRIMONIAL ****
//**********************************************************************
//*                    PROGRAMA   -- ZM4EGS03 --                       *
//*  GENERACION DE ARCHIVO Y REPORTE DE LOS CLIENTES EXTRANJEROS       *
//*  A LOS QUE SE LES DETUVO EL ISR.                                   *
//**********************************************************************
//PUC04P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4EGSP1 DD DSN=MXCP.ZM.TMP.CON.EBCM.S000.ZMUCPD04,DISP=SHR
//*
//ZM4EGSA1 DD DSN=MXCP.ZM.FIX.SIN.EBCM.CLIENTES,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(RECFM=FB,LRECL=194,BLKSIZE=0),
//             UNIT=3390,
//             SPACE=(CYL,(5,1),RLSE)
//*ZM4EGSR1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZM4EGSR1 DD DSN=MXCP.ZM.FIX.SIN.EBCM.REP.CLIENTES,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(RECFM=FBA,LRECL=205,BLKSIZE=0),
//             UNIT=3390,
//             SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC02T09),DISP=SHR
//*
//**********************************************************************
//*                    PROGRAMA   -- ZM4MGS00 --                       *
//*  GENERACION DE ARCHIVO Y REPORTE DE CONTRATOS APERTURADOS DURANTE  *
//*  EL MES.                                                           *
//**********************************************************************
//PUC04P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4MGSA1 DD DSN=MXCP.ZM.TMP.CON.EBCM.S000.ZMUCPD04,DISP=SHR
//*
//ZM4MGSA2 DD DSN=MXCP.ZM.FIX.CON.EBCM.APERTURA,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            RECFM=FB,LRECL=94
//*ZM4MGSR1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZM4MGSR1 DD DSN=MXCP.ZM.FIX.CON.EBCM.REP.APERTURA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            RECFM=FBA,LRECL=133
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC02T08),DISP=SHR
//*
//**********************************************************************
//*                    PROGRAMA   -- ZM4MG639 --                       *
//* OBJETIVO:  REPORTE DE CUENTAS ASOCIADAS A INTERMEDIARIO            *
//*            FINANCIERO.                                             *
//**********************************************************************
//PUC04P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4MG3A1 DD DSN=MXCP.ZM.TMP.CON.EBCM.S000.ZMUCPD04,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//*ZM4MG3R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZM4MG3R1 DD DSN=MXCP.ZM.FIX.CON.EBCM.REP.CTAASOC,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            RECFM=FBA,LRECL=133
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC02T07),DISP=SHR
//*
//**********************************************************************
//*                    PROGRAMA   -- ZM4MG635 --                       *
//* OBJETIVO:  REPORTE DE CUENTAS FALTANTES DE IMPRESION DE            *
//*            INTERMEDIACION BURSATIL.                                *
//**********************************************************************
//PUC04P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4MG5A1 DD DSN=MXCP.ZM.TMP.CON.EBCM.S000.ZMUCPD04,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//*ZM4MG5R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZM4MG5R1 DD DSN=MXCP.ZM.FIX.CON.EBCM.REP.CTAFALT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            RECFM=FBA,LRECL=133
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC02T06),DISP=SHR
//*
//**********************************************************************
//*                    PROGRAMA   -- ZM4DUK56 --                       *
//* OBJETIVO:  REPORTE DE CAMBIOS GENERALES A CONTRATOS.               *
//*            ASIGNACION DE NIVEL 3 A CANDADO 1.                      *
//*            PASO REINICIABLE POR RESTART                            *
//**********************************************************************
//PUC04P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4DUKA1 DD DSN=MXCP.ZM.TMP.CON.EBCM.S000.ZMUCPD04,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC02T05),DISP=SHR
//*
//**********************************************************************
//*                    PROGRAMA   -- ZM4DG614 --                       *
//* OBJETIVO:  REPORTE DE CAMBIOS GENERALES A CONTRATOS                *
//*            PASO REINICIABLE POR RESTART                            *
//**********************************************************************
//PUC04P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4DG6A1 DD DSN=MXCP.ZM.TMP.CON.EBCM.S000.ZMUCPD04,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//*ZM4DG6R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZM4DG6R1 DD DSN=MXCP.ZM.FIX.CON.EBCM.REP.CAMBIOS,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            RECFM=FBA,LRECL=81
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC02T04),DISP=SHR
//*
//**********************************************************************
//*                    PROGRAMA   -- ZM4DG615 --                       *
//* OBJETIVO:  REPORTE DE CAMBIOS A COPROPIETARIOS                     *
//*            PASO REINICIABLE POR RESTART                            *
//**********************************************************************
//PUC04P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4DG5A1 DD DSN=MXCP.ZM.TMP.CON.EBCM.S000.ZMUCPD04,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//*ZM4DG5R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZM4DG5R1 DD DSN=MXCP.ZM.FIX.CON.EBCM.REP.COPROP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            RECFM=FBA,LRECL=81
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC02T03),DISP=SHR
//*
//**********************************************************************
//*                    PROGRAMA   -- ZM4DG616 --                       *
//* OBJETIVO:  REPORTE DE CAMBIOS A CUENTAS BANCARIAS DE CONTRATOS     *
//*            PASO REINICIABLE POR RESTART                            *
//**********************************************************************
//PUC04P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4DG6A1 DD DSN=MXCP.ZM.TMP.CON.EBCM.S000.ZMUCPD04,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//*ZM4DG6R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZM4DG6R1 DD DSN=MXCP.ZM.FIX.CON.EBCM.REP.CTABCO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            RECFM=FBA,LRECL=81
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC02T02),DISP=SHR
//*
//**********************************************************************
//*                    PROGRAMA   -- ZM4EGS50 --                       *
//* OBJETIVO:  ARCHIVO DE CONTRATO TITULAR Y COTITULAR                 *
//**********************************************************************
//PUC04P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4EGSA1 DD DSN=MXCP.ZM.TMP.CON.EBCM.S000.ZMUCPD04,DISP=SHR
//*
//ZM4EGSA2 DD DSN=MXCP.ZM.FIX.CON.EBCM.TITULAR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC02T01),DISP=SHR
//*
//**********************************************************************
//*                    PROGRAMA  -- ZM4ELM01 --                        *
//*  OBJETIVO : GENERA ARCHIVO DE CLIENTES PARA ENVIO A ALTAMIRA       *
//*             PROCESO DIARIO                                         *
//*             PASO REINICIABLE POR RESTART                           *
//**********************************************************************
//PUC04P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4ELMP1 DD DSN=MXCP.ZM.TMP.CON.EBCM.S000.ZMUCPD04,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//ZM4ELMA1 DD DSN=MXCP.ZM.TMP.CON.EBCM.CLIENTES.CASA.DIARIO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE)
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC03T01),DISP=SHR
//*
//**********************************************************************
//*                    PROGRAMA   -- ZM4EU618 --                       *
//*  ACTUALIZA LOS CONTRATOS DADOS DE ALTA EN DIA EN EL CAMPO PORCENT  *
//*  DE LA TABLA ACLICTA.                                              *
//**********************************************************************
//PUC04P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZMU618A1 DD DSN=MXCP.ZM.TMP.CON.EBCM.S000.ZMUCPD04,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC04T01),DISP=SHR
//*
