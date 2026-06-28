//ZMJFPD13 PROC
//*
//**********************************************************************
//*    G R U P O   F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBJFCD13                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LOS PROCESOS DE BAJAS AUTOMATICAS       *
//*                   MENSUALES Y CARGOS VARIOS DEL MODULO DE          *
//*                   PROCESO ESTADISTICO                              *
//*                                                               OSCT *
//**********************************************************************
//PJF13P10 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD13,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//**********************************************************************
//*                         -- VOBE89M --                              *
//*                        --  ZM4MGE89 --                             *
//*   OBJETIVO: GRABA REGISTRO DEL EVENTO DE BAJAS EN CTLPROC          *
//*           (ACTUALIZA: CTLPROC)                                     *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//PJF13P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMGE89A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD13,
//         DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF13T17),DISP=SHR
//**********************************************************************
//*                         -- VOBE66M --                              *
//*                         -- ZM4MGE66 --                             *
//*   OBJETIVO: DEPURACION MENSUAL DE LA TABLA BAJAMES                 *
//*           (ACTUALIZA: BAJAMES)                                     *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               *** BAJAS AUTOMATICAS *
//**********************************************************************
//PJF13P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMGE66A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD13,
//         DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF13T16),DISP=SHR
//**********************************************************************
//*                         -- VOBE75M --                              *
//*                         -- ZM4MGE75 --                             *
//*   OBJETIVO: VACIADO DE CUENTA A BAJAMES                            *
//*           (ACTUALIZA: BAJAMES, CTLPROC)                            *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//PJF13P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMGE75A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD13,
//         DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF13T15),DISP=SHR
//**********************************************************************
//*                         -- VOBE62M --                              *
//*                         -- ZM4MGE62 --                             *
//*  OBJETIVO: CONTROLADOR DE BAJAS FISICAS Y LOGICAS                  *
//*           EJECUTA LA RUTINA VDBE64M (BAJAS LOGICAS)                *
//*           EJECUTA LA RUTINA VDBE72M (BAJAS FISICAS)                *
//*           EJECUTA LA RUTINA VDBE85D (EFECTIVO DISPONIBLE RETIRABLE)*
//*           (ACTUALIZA: ACLICTA, BAJACLI, BAJAFIS, BAJAMES, BAJCLIE, *
//*                       BAJCTAB, BAJCTAM, CLIENTE, CTABCO, CTAMAES,  *
//*                       CTLPROC)                                     *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//PJF13P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMGE62A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD13,
//         DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF13T14),DISP=SHR
//**********************************************************************
//*                         -- VOBE86M --                              *
//*                         -- ZM4MGE86 --                             *
//*  OBJETIVO: ACTUALIZA CUENTAS CONEXAS                               *
//*           (ACTUALIZA: BAJCONE, CUENTA)                             *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//PJF13P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMGE86A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD13,
//         DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF13T13),DISP=SHR
//**********************************************************************
//*                         -- VOBE70M --                              *
//*                         -- ZM4MGE70 --                             *
//* OBJETIVO: DA DE BAJA FISICA LAS CUENTAS FISICAS EN LA TABLA CUENTA *
//*           EJECUTA LA RUTINA VDBE75O (NO AFECTA BANCOS)             *
//*           EJECUTA LA RUTINA VDBE80O (OBTIENE EL SIGUIENTE IREF)    *
//*           EJECUTA LA RUTINA VDBE85D (EFECTIVO DISPONIBLE RETIRABLE)*
//*           (ACTUALIZA: CARTERA, CTLPROC, CUENTA,          OPERATE,  *
//*                       OPERTET                                      *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//PJF13P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMGE70A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD13,
//         DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF13T12),DISP=SHR
//**********************************************************************
//*                         -- VIBE67M --                              *
//*                         -- ZM4MGE67 --                             *
//*  OBJETIVO: REPORTE DE LAS BAJAS DEL MES                            *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//PJF13P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGE67A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD13,
//         DISP=SHR
//ZMGE67R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF13T10),DISP=SHR
//**********************************************************************
//*                         -- VIBE69M --                              *
//*                         -- ZM4MGE69 --                             *
//* OBJETIVO: REPORTE DE LOS MOVIMIENTOS PARA SALDAR A CERO LAS CUENTAS*
//*           DADAS DE BAJA FISICA                                     *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//PJF13P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGE69R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGE69A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD13,
//         DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF13T09),DISP=SHR
//**********************************************************************
//*                          --  VOBE49M --                            *
//*                          --  ZM4MGE49 --                           *
//* OBJETIVO : PASAR INF. DE TABLAS OPERATE A OPERA Y DE OPERTET A     *
//*            OPERTER (UNICAMENTE LOS MOVIMIENTOS DE BAJAS)           *
//*            (ACTUALIZA OPERTES, OPERA)                              *
//*                                                                    *
//*   PASO REINICIABLE POR RESTART               ***BAJAS AUTOMATICAS  *
//**********************************************************************
//PJF13P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMGE49A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD13,
//         DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF13T08),DISP=SHR
//*
//**********************************************************************
//*          FIN DEL PROCEDIMIENTO ZMJFPD13 1A PARTE                   *
//**********************************************************************
