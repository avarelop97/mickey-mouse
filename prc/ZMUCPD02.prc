//ZMUCPD02 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBUCCD02                                         *
//*                   CIERRE DE DIA DEL MODULO DE CONTRATOS            *
//*                                                                    *
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE CONTRATOS,        *
//*                   ENVIADO POR EL USUARIO.                          *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBUCCD03 (FIN DE DIA)                            *
//*                                                                    *
//* DESPUES DE     :  OPERACION DIARIA EN EL SIVA Y SIVAXRCA           *
//*                                                                    *
//* REALIZO        :  MONICA RUBIO CONTREAS.                           *
//* FECHA          :  ABRIL 2003                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *
//*                   SIEMPRE ANTES DE TODO EL FIN DE DIA              *
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PUC02P10 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUCPD02,
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
//*                    PROGRAMA   -- ZM4DUK56 --                       *
//* OBJETIVO:  REPORTE DE CAMBIOS GENERALES A CONTRATOS.               *
//*            ASIGNACION DE NIVEL 3 A CANDADO 1.                      *
//*            PASO REINICIABLE POR RESTART                            *
//**********************************************************************
//PUC02P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4DUKA1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUCPD02,DISP=SHR
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
//*                    PROGRAMA   -- ZM4EGS50 --                       *
//* OBJETIVO:  ARCHIVO DE CONTRATO TITULAR Y COTITULAR                 *
//**********************************************************************
//PUC02P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4EGSA1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUCPD02,DISP=SHR
//*
//*M4EGSA2 DD DSN=SIVA.CON.FIX.E&EMP..TITULAR,
//ZM4EGSA2 DD DSN=MXCP.ZM.FIX.E&EMP..TITULAR,
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
//*
//**********************************************************************
//*                    PROGRAMA   -- ZM4EGS03 --                       *
//*  GENERACION DE ARCHIVO Y REPORTE DE LOS CLIENTES EXTRANJEROS       *
//*  A LOS QUE SE LES DETUVO EL ISR.                                   *
//**********************************************************************
//PUC02P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4EGSP1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUCPD02,DISP=SHR
//*
//*M4EGSA1 DD DSN=SIVA.SIN.FIX.E&EMP..CLIENTES,
//ZM4EGSA1 DD DSN=MXCP.ZM.FIX.E&EMP..CLIENTES,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(RECFM=FB,LRECL=194,BLKSIZE=0),
//             UNIT=3390,
//             SPACE=(CYL,(5,1),RLSE)
//ZM4EGSR1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
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
//PUC02P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4MGSA1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUCPD02,DISP=SHR
//*
//*M4MGSA2 DD DSN=SIVA.CON.FIX.E&EMP..APERTURA,
//ZM4MGSA2 DD DSN=MXCP.ZM.FIX.E&EMP..APERTURA,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,
//*           SPACE=(CYL,(5,1),RLSE),
//            SPACE=(CYL,(6,3),RLSE),
//*           RECFM=FB,LRECL=94
//            DCB=(RECFM=FB,LRECL=094,BLKSIZE=0)
//ZM4MGSR1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
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
//PUC02P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4MG3A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUCPD02,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//ZM4MG3R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC02T07),DISP=SHR
//*
//**********************************************************************
//*                    PROGRAMA   -- ZM4MG635 --                       *
//* OBJETIVO:  REPORTE DE CUENTAS FALTANTES DE IMPRESION DE            *
//*            INTERMEDIACION BURSATIL.                                *
//**********************************************************************
//PUC02P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4MG5A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUCPD02,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//ZM4MG5R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC02T06),DISP=SHR
//*
//**********************************************************************
//*                    PROGRAMA   -- ZM4DG614 --                       *
//* OBJETIVO:  REPORTE DE CAMBIOS GENERALES A CONTRATOS                *
//*            PASO REINICIABLE POR RESTART                            *
//**********************************************************************
//PUC02P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4DG6A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUCPD02,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//ZM4DG6R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC02T04),DISP=SHR
//*
//**********************************************************************
//*                    PROGRAMA   -- ZM4DG615 --                       *
//* OBJETIVO:  REPORTE DE CAMBIOS A COPROPIETARIOS                     *
//*            PASO REINICIABLE POR RESTART                            *
//**********************************************************************
//PUC02P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4DG5A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUCPD02,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//ZM4DG5R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC02T03),DISP=SHR
//*
//**********************************************************************
//*                    PROGRAMA   -- ZM4DG616 --                       *
//* OBJETIVO:  REPORTE DE CAMBIOS A CUENTAS BANCARIAS DE CONTRATOS     *
//*            PASO REINICIABLE POR RESTART                            *
//**********************************************************************
//PUC02P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZM4DG6A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUCPD02,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//ZM4DG6R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC02T02),DISP=SHR
