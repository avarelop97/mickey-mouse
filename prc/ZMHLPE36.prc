//ZMHLPE36 PROC
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMHLPE36                                         *
//*                   INICIO DE DIA DEL SIVA.                          *
//*                                                                    *
//* OBJETIVO       :  INICIO DE DIA DE MERCADO DE CAPITALES,           *
//*                   SE PUEDE EJECUTAR EN CUALQUIER MOMENTO.          *
//*                                                                    *
//* REALIZO        :  J. JAIME FLORES ESTRADA    -   ASATECK   -       *
//*                                                                    *
//* FECHA          :  ABRIL 2003.                                      *
//*                                                                    *
//* ///////                                                    /////// *
//* /////    PROC ADECUADO PARA PRUEBAS H2H NO SE INSTALARA      ///// *
//* ///////                                                    /////// *
//*                                                                    *
//**********************************************************************
//* EMV  | SEP-2006 |IDCEX75|PHL36P06|AGREGAR REPORTES EVENTUALES      *
//*                          PHL36P05                                  *
//**********************************************************************
//**********************************************************************
//* SUBPROCESO : (D) AL INICIO DE OPERACIONES                          *
//*              - CAPITALES                                           *
//**********************************************************************
//**********************************************************************
//*                        RECIBE PARAMETROS
//**********************************************************************
//PHL36P07 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..ZMHLPE36,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                        -- ZM4EGR42 --                              *
//*                                                                    *
//* OBJETIVO    :  GENERAR EL REPORTE DE LOS MOVIMIENTOS PARA EL       *
//*                FONDEO DE CONTRATOS EXTRANJEROS EXCLUYENDO          *
//*                AREA INTERNACIONAL. (EVENTUAL)                      *
//*                                                                    *
//* PASO REINICIABLE                                *** PROC CAPITALES *
//**********************************************************************
//PHL36P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMER42A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..ZMHLPE36,DISP=SHR
//* ER42R1 DD SYSOUT=X
//ZMER42R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL36T04),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4EGR43 --                              *
//*                                                                    *
//* OBJETIVO    :  GENERAR EL REPORTE DE LOS MOVIMIENTOS PARA EL       *
//*                FONDEO DE CONTRATOS POSICION PROPIA POR MERCADO.    *
//*                (EVENTUAL)                                          *
//* PASO REINICIABLE                                *** PROC CAPITALES *
//**********************************************************************
//PHL36P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMER43A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..ZMHLPE36,DISP=SHR
//*MER43R1 DD SYSOUT=X
//ZMER43R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL36T03),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4DGR42 --                              *
//*                                                                    *
//* OBJETIVO    :  GENERAR EL REPORTE DE LOS MOVIMIENTOS PARA EL       *
//*                FONDEO DE CONTRATOS EXTRANJEROS EXCLUYENDO          *
//*                AREA INTERNACIONAL.                                 *
//*                                                                    *
//* PASO REINICIABLE                                *** PROC CAPITALES *
//**********************************************************************
//PHL36P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMGR42A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..ZMHLPE36,DISP=SHR
//*MGR42R1 DD SYSOUT=X
//ZMGR42R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL36T02),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4DGR43 --                              *
//*                                                                    *
//* OBJETIVO    :  GENERAR EL REPORTE DE LOS MOVIMIENTOS PARA EL       *
//*                FONDEO DE CONTRATOS POSICION PROPIA POR MERCADO.    *
//*                                                                    *
//* PASO REINICIABLE                                *** PROC CAPITALES *
//**********************************************************************
//PHL36P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMGR43A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..ZMHLPE36,DISP=SHR
//*ZMGR43R1 DD SYSOUT=X
//ZMGR43R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL36T01),DISP=SHR
//*
//*********************************************************************
//*        BORRA ARCHIVOS                                             *
//*********************************************************************
//PHL36P01 EXEC PGM=IEFBR14,COND=(04,LT)
//*
//ARCHPA   DD DSN=MXCP.ZM.FIX.MDC.E&EMP..ZMHLPE36,
//            DISP=(OLD,DELETE,DELETE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJCPD01 SIVA MULTIEMPRESA                  *
//**********************************************************************
