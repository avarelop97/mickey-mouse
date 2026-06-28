//ZMJFPD11 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBJFND11                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *
//*                   - INTERFASES BATCH (TSO)                         *
//*                                                                    *
//*   6TA. PARTE   :  GENERACION DE REPORTES                           *
//*                   (SOCIEDADES DE INVERSIOQ)                        *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBJFCD12                                         *
//*                                                                    *
//* DESPUES DE     :  CBJFCD31, CBJFCD08                               *
//*                                                                    *
//* REALIZO        :  FERNANDO CABALLERO ROMAN                         *
//* FECHA          :  AGOSTO / 2002                                    *
//*                                                                    *
//* OBSERVACION    :                                                   *
//*                                                                    *
//**********************************************************************
//* SUBPROCESO : (D) AL CIERRE DE OPERACIONES                          *
//*              - SOCIEDADES DE INVERSION                             *
//**********************************************************************
//*ACV*SIVA*PENDIENTE*HPC***********************************************
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PJF11P05 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD11,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ190
//* OBJETIVO: GENERA REPORTE DE CANCELACION DE OPERACIONES DEL DIA
//* PASO REINICIABLE POR RESTART                     *** SOC. INVERS.
//*---------------------------------------------------------------------
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PJF11P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*ZMJ190A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD11,DISP=SHR
//*ZMJ190R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF11T11),DISP=SHR
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ191
//* OBJETIVO: MONITOREAR TENENCIA POR RANGO
//*           VERIFICAR QUE EXISTA EL FDDETRO POR RANGO, Y QUE ESTE
//*           TENGA RANGOS PREESTABLECIDOS PARA DISPARAR LOS FDD11S
//*           NECESARIOS HASTA EJECUTAR EL PROGRAMA VIB190E,
//*           (LISTADO DE TENENCIAS POR RANGO)
//* PASO REINICIABLE POR RESTART                      ***SOC. INVERS.
//*---------------------------------------------------------------------
//PJF11P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSUDUMP DD DUMMY
//SYSABEND DD DUMMY
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//ZMJ191A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD11,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF11T10),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGS12
//* OBJETIVO: TENENCIAS POR RANGO SOC. DE INVERSION
//* PASO REINICIABLE POR RESTART                      ***SOC. INVERS.
//*---------------------------------------------------------------------
//PJF11P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSUDUMP DD DUMMY
//SYSABEND DD DUMMY
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//ZMGS12A2 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD11,DISP=SHR
//*ZMGS12A1 DD DSN=MBVP.CB.FIX.BCOYCASA,     (NOMBRE EN PU)  (CB-PU)
//*MGS12A1 DD DSN=SIVA.SIN.FIX.E&EMP..TENENCIA.BCOYCASA,
//ZMGS12A1 DD DSN=MXCP.ZM.FIX.E&EMP..TENENCIA.BCOYCASA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(16,8),RLSE),
//            DCB=(RECFM=FB,LRECL=72,BLKSIZE=0,DSORG=PS),
//            UNIT=3390
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMGS12R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMGS12R1 DD DSN=MXCP.ZM.FIX.E&EMP..ZMJFPD11.REPORTE1,
//*        DISP=(NEW,CATLG,DELETE),
//*        DCB=(LRECL=133,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*        UNIT=3390,
//*        SPACE=(CYL,(5,10),RLSE)
//*
//ZMGS12R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF11T02),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ164
//* OBJETIVO : EMITIR REPORTE DE MOVIMIENTOS DIARIOS - S.I.
//*            NO ACTUALIZA TABLAS.
//* PASO REINICIABLE POR RESTART                    ***SOC. INVERS.
//*---------------------------------------------------------------------
//PJF11P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMJ164A0 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD11,DISP=SHR
//ZMJ164A1 DD DSN=MXCP.ZM.FIX.E&EMP..ZMJFPD11.OPRVINT2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=110,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF11T13),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ163
//* OBJETIVO : EMITIR REPORTE DE MOVIMIENTOS DIARIOS - S.I.
//*            NO ACTUALIZA TABLAS.
//* PASO REINICIABLE POR RESTART                    ***SOC. INVERS.
//*---------------------------------------------------------------------
//*PJF11P01 EXEC PGM=IKJEFT01,COND=(5,LT)
//*PI601765 DD DUMMY
//*ZMJ163R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**SOCCOM   DD DSN='SACSIN/SOCCOM'     (NOMBRE EN AS400)  (CB-AS400)
//*SOCCOM   DD DSN=SIVA.SIN.WKF.E&EMP..SOCCOM,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(16,8),RLSE),
//*            DCB=(RECFM=FB,LRECL=40,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390
//*ZMJ163A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJ163A1,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(16,8),RLSE),
//*            DCB=(RECFM=FB,LRECL=132,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390
//*ZMJ163A2 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD11,DISP=SHR
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF11T01),DISP=SHR
//**
//**********************************************************************
//* PEND          FIN DEL PROCEDIMIENTO ZMUFPD11                       *
//**********************************************************************
