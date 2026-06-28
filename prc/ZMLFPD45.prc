//ZMLFPD45 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        : CBLFND45.                                         *
//*                  REPORTES DE LA INTERFAZ DE MERCADO DE DINERO      *
//*                                                                    *
//* OBJETIVO: GENERA EL REPORTE DE CONFIRMACIONES DE MESA DE DINERO    *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  IMAGE COPYS POSTERIORES A FINDIA                 *
//*                                                                    *
//* CORRE                                                              *
//* DESPUES DE     :  CBJFND22                                         *
//*                                                                    *
//* CORRE                                                              *
//* ANTES   DE     :  CBJFND46                                         *
//*                                                                    *
//* REALIZO        :  FERNANDO CABALLERO ROMAN (ASATECK).              *
//*                                                                    *
//* FECHA          :  SEPTIEMBRE / 2002                                *
//**********************************************************************
//*---------------------------------------------------------------------
//*     MODIFICO:       IGNACIO ESQUIVEL FLORES
//*     FECHA   :       ABRIL 2023
//*     ASUNTO:         INCREMENTO FOLIO CONCEPT
//*     MARCA :         SDATOOL-41254-IEF-INI (INICIO BLOQUE)
//*                     SDATOOL-41254-IEF-FIN (FIN    BLOQUE)
//*---------------------------------------------------------------------
//**********************************************************************
//* SUBPROCESO : (D) AL CIERRE DE OPERACIONES                          *
//*              - MERCADO DE DINERO                                   *
//**********************************************************************
//*ACV*SIVA*PENDIENTE*HPC***********************************************
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PLF45P06 EXEC PGM=ZM3DG001,PARM=('&EMP',' ',' ',' ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD45,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGR16
//* OBJETIVO: GENERA ARCHIVO DE COMISIONES
//* PASO REINICIABLE POR RESTART                        *** M.DINERO   *
//*---------------------------------------------------------------------
//PLF45P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGR16A2 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD45,DISP=SHR
//ZMGR16A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..FDD45.COMIS,
//*SDATOOL-41254-IEF-INI
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//*           DCB=(DSORG=PS,LRECL=78,RECFM=FBA,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=83,RECFM=FBA,BLKSIZE=0),
//            UNIT=3390
//*SDATOOL-41254-IEF-FIN
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF45T04),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DLN95
//* OBJETIVO: REPORTE DE OPERACIONES FUERA DE CORRO
//* PASO REINICIABLE POR RESTART                        *** M.DINERO   *
//*---------------------------------------------------------------------
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLF45P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*ZMLN95A2 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD45,DISP=SHR
//*ZMLN95R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**ZMLN95A1 ARCHIVO GENERADO EN PROC MDD4800
//*ZMLN95A1 DD DSN=SIVA.MDD.FIX.UTIL.CORRO,DISP=MOD
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF45T03),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DLN94
//* OBJETIVO: GENERA REPORTE DE EFICIENCIA Y CONTROL DE LA CARTERA
//*           REPORTE DE OPERACIONES QUE VENCEN ANTICIPADAMENTE.
//* PASO REINICIABLE POR RESTART                        *** M.DINERO
//*---------------------------------------------------------------------
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLF45P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*ZMLN94A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD45,DISP=SHR
//*ZMLN94R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF45T02),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DLN83
//* OBJETIVO: REPORTE DE LAS CONFIRMACIONES DE MESA DE DINERO
//*           ENVIADAS A IMPRESION.
//* PASO REINICIABLE POR RESTART                        *** M.DINERO
//*---------------------------------------------------------------------
//*                   PASO PARA CASA DE BOLSA
//*---------------------------------------------------------------------
//PLF45P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMLN83A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD45,DISP=SHR
//*ZMLN83R1 DD DSN=GFPP.CB.FIX.VIBN83D.SALIDA.BANCO, (NOMBRE PU) (CB-PU)
//*SDATOOL-41254-IEF
//*SE ESTANDARIZA ARCHIVO, LA TRANSMISION DONDE SE ENVIA ESTE ARCHIVO
//*ESTA COMENTADA (NPFDFDX5)
//*ZMLN83R1 DD DSN=SIVA.MDD.FIX.E&EMP..ZM4DLN83.SALIDA.BANCO,
//ZMLN83R1 DD DSN=MXCP.ZM.FIX.E&EMP..ZM4DLN83.SALIDA.BANCO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF45T01),DISP=SHR
//*
//*---------------------------------------------------------------------
//*
//*  SE HACE UN IEBGENER DEL ARCHIVO QUE GENERA EL PASO ZM4DLN83
//*
//*---------------------------------------------------------------------
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLF45P01 EXEC PGM=ICEGENER,COND=(4,LT)
//*SYSPRINT DD SYSOUT=*
//**SYSUT1  DD DSN=GFPP.CB.FIX.VIBN83D.SALIDA.BANCO, (NOMBRE PU) (CB-PU)
//*SYSUT1   DD DSN=SIVA.MDD.FIX.E&EMP..ZM4DLN83.SALIDA.BANCO,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
