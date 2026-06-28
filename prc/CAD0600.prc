//CAD0600   PROC
//**********************************************************************
//*                                                                    *
//*     BBB  BBB  VV VV    PPPP RRRR OOOO BBB  U  U RRRR SSSS AAAA     *
//*     B BB B BB VV VV    P PP R RR O  O B BB U  U R RR S    A  A     *
//*     BBBB BBBB VV VV -- PPPP RRRR O  O BBBB U  U RRRR SSSS AAAA     *
//*     B BB B BB  VVV     P    RR   O  O B BB U  U RR      S A  A     *
//*     BBB  BBB    V      P    R RR OOOO BBB  UUUU R RR SSSS A  A     *
//*                                                               OSCT *
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PCICAD06 2DA. PARTE DEL CIERRE.                  *
//*                   CIERRE DE DIA DEL MODULO DE CAPITALES            *
//*                                                                    *
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE CAPITALES ENVIADO *
//*                   POR CONTROL-M                                    *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PCICAD07 (CIERRE DE CAPITALES 3RA. ULTIMA PARTE).*
//*                                                                    *
//* DESPUES DE     :  PCICAD01 (CIERRE DE CAPITALES 1RA. PARTE).       *
//*                                                                    *
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *
//* FECHA          :  FEBRERO    1992                                  *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA.   *
//*                                                                    *
//*********************************************************************
//* MODIFICACION   : SOFTTEK(RHB) ENE/99                              *
//*                  SE AGREGO NUEVO PASO CAD0610 PARA EMITIR EL      *
//*                  REPORTE DE ORDENES REASIGNADAS VIBU45D.          *
//*********************************************************************
//* MODIFICACION   : SOFTTEK(RHB) MAR/2000                            *
//*                  SE AUMENTO LA LONGITUDD DEL ARCHIVO VIB466A2 EN  *
//*                  7 POSICIONES.                                    *
//*********************************************************************
//* MODIFICACION   : SOFTTEK(RHB) MAY/2000                            *
//*                  SE COMENTARIZA EJECUCION DE PROG. VIBJ34D,       *
//*                  VIBT42D, VIBT88E                                 *
//**********************************************************************
//* MODIFICACION   : ASATECK(OSCAR URBANO FERNANDEZ)                  *
//*                  SE INTEGRA REPORTE VIB31D                        *
//*                  MODIFICACION : NOV/2000.                         *
//**********************************************************************
//*********************************************************************
//*                       === VIBT88E ===                             *
//* OBJETIVO: REPORTE DE PORCENTAJE DE COMISIONES DE PT               *
//*********************************************************************
//*CAD0609 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//**VIBT88R1 DD SYSOUT=(V,,TJ16)
//*VIBT88R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=SIVA.CARDS(CAD0609),DISP=SHR
//*
//*********************************************************************
//*                       === VIBT42O ===                             *
//* OBJETIVO: REPORTES DE OPERACIONES DE PORTAFOLIO TECNICO           *
//*********************************************************************
//*CAD0608 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//**VIBT42R1 DD SYSOUT=(V,,TJ12)
//**VIBT42R2 DD SYSOUT=(V,,TJ13)
//**VIBT42R3 DD SYSOUT=(V,,TJ14)
//**VIBT42R4 DD SYSOUT=(V,,TJ15)
//*VIBT42R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*VIBT42R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*VIBT42R3 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*VIBT42R4 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=SIVA.CARDS(CAD0608),DISP=SHR
//*
//*********************************************************************
//*                       === VOBT49D ===                             *
//* OBJETIVO: ELIMINAR CUENTAS NO VIGENTES DE RELACION DE CUENTAS     *
//*           VIGENTES CON CUENTAS DE PT                              *
//*********************************************************************
//*CAD0607 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=SIVA.CARDS(CAD0607),DISP=SHR
//*
//*-------------------------------------------------------------------
//*        REPORTES DE ORDENES SOLICITADAS Y CANCELADAS
//*----ESTE PASO SE ENVIA AL FDD3300
//*-------------------------------------------------------------------
//*CAD0606  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//**VIB466R1 DD SYSOUT=(V,,TP04)
//**VIB466R2 DD SYSOUT=(V,,TP14)
//**VIB466R3 DD SYSOUT=(V,,TP33)
//*VIB466R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*VIB466R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*VIB466R3 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*VIB466A1 DD DSN=SIVA.MDC.FIX.VIB466A1,
//*        DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*        DCB=(RECFM=FBA,LRECL=133,BLKSIZE=0),
//*        SPACE=(TRK,(15,15),RLSE)
//*VIB466A2 DD DSN=SIVA.MDC.FIX.VIB466A2,
//*        DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*        DCB=(RECFM=FB,LRECL=169,BLKSIZE=0),
//*        SPACE=(TRK,(15,15),RLSE)
//*VIB466T1 DD DSN=SIVA.CARDS(CAD0112D),DISP=SHR
//*SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=X
//*SYSOUT   DD SYSOUT=X
//*SYSDBOUT DD SYSOUT=X
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=SIVA.CARDS(CAD0606),DISP=SHR
//*--------------------------------------------------------------------
//*        ACTUALIZA TABLA DE ISR PARA MANEJO DE PEPS - VIBB78E
//* PASO REINICIABLE POR RESTART
//*--------------------------------------------------------------------
//CAD0605A EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0605A),DISP=SHR
//*
//*--------------------------------------------------------------------
//*        ACTUALIZA CARTERA Y GENERA SIVA DE LA ASIGNACION DEFINITIVA
//*        MODIFICACION A FOLCTROL ( USO DE ARCHIVO VSAM ) - VOB514D
//* PASO REINICIABLE POR RESTART
//*--------------------------------------------------------------------
//CAD0605  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*
//* DEFINICION DE ARCHIVO VSAM PARA FOLCTRL
//*
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0605),DISP=SHR
//*
//*--------------------------------------------------------------------
//*        REPORTE DE VENTAS CON CARGO DE ISR. - VIBB72E
//*--------------------------------------------------------------------
//CAD0605B EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//VIBB72R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0605B),DISP=SHR
//*
//*-------------------------------------------------------------------
//*                    = VIB467D =
//*        REPORTE COMPRAS/VENTAS MISMO DIA MISMA EMISORA
//*-------------------------------------------------------------------
//*
//CAD0604  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//*VIB467R1 DD SYSOUT=(V,,TP17)
//VIB467R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0604),DISP=SHR
//**********************************************************************
//*                        -- VIBJ34D --                               *
//*                                                                    *
//*   OBJETIVO: REPORTAR LA CARTERA DE CLIENTES DISCRECIONALES         *
//*                                                                    *
//* ACTUALIZA TABLA : NINGUNA.                                         *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//*CAD0603 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//**VIBJ34R1 DD SYSOUT=(V,,TJ01)
//*VIBJ34R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=SIVA.CARDS(CAD0603),DISP=SHR
//*
//*-------------------------------------------------------------------
//*        REPORTES DE ORDENES SOLICITADAS Y POSICIONES CON PICO
//*-------------------------------------------------------------------
//CAD0602  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//PDR483R1 DD DSN=&&PDR483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//POL483R1 DD DSN=&&POL483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//SAT483R1 DD DSN=&&SAT483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//TIJ483R1 DD DSN=&&TIJ483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//CDJ483R1 DD DSN=&&CDJ483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//HER483R1 DD DSN=&&HER483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//MTY483R1 DD DSN=&&MTY483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//TOR483R1 DD DSN=&&TOR483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//CHI483R1 DD DSN=&&CHI483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//MAZ483R1 DD DSN=&&MAZ483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//KRO483R1 DD DSN=&&KRO483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//SLP483R1 DD DSN=&&SLP483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//GUA483R1 DD DSN=&&GUA483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//ZAC483R1 DD DSN=&&ZAC483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//JER483R1 DD DSN=&&JER483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//LEO483R1 DD DSN=&&LEO483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//MOR483R1 DD DSN=&&MOR483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//AGS483R1 DD DSN=&&AGS483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//TAM483R1 DD DSN=&&TAM483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//VER483R1 DD DSN=&&VER483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//JAL483R1 DD DSN=&&JAL483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//MER483R1 DD DSN=&&MER483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//TOL483R1 DD DSN=&&TOL483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//PUE483R1 DD DSN=&&PUE483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//MMP483R1 DD DSN=&&MMP483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//SAN483R1 DD DSN=&&SAN483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//CUL483R1 DD DSN=&&CUL483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//MMU483R1 DD DSN=&&MMU483R1,DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),
//        SPACE=(CYL,(1,1),RLSE)
//ZZZ483R1 DD SYSOUT=(V,,ZZZ)
//ZPR483R1 DD SYSOUT=(M,,OP02)
//VIB483T1 DD DISP=(,PASS),UNIT=3390,
//        DCB=(RECFM=FB,LRECL=158,BLKSIZE=0),
//        SPACE=(CYL,(10,1),RLSE)
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(5),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(5),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(5),RLSE)
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0602),DISP=SHR
//**********************************************************************
//*                        -- ICEGENER --                              *
//*                                                                    *
//*   OBJETIVO: MANDA A COMPRIMIDO ARCHIVOS ANTERIORES PARA SU SEPARA  *
//*             CION POR CTD                                           *
//*                                                                    *
//* ACTUALIZA TABLA : NINGUNA.                                         *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//CAD0602A EXEC PGM=ICEGENER,REGION=0M,COND=(4,LT)
//SYSUT1   DD DSN=&&PDR483R1,DISP=(OLD,DELETE)
//         DD DSN=&&POL483R1,DISP=(OLD,DELETE)
//         DD DSN=&&SAT483R1,DISP=(OLD,DELETE)
//         DD DSN=&&TIJ483R1,DISP=(OLD,DELETE)
//         DD DSN=&&CDJ483R1,DISP=(OLD,DELETE)
//         DD DSN=&&HER483R1,DISP=(OLD,DELETE)
//         DD DSN=&&MTY483R1,DISP=(OLD,DELETE)
//         DD DSN=&&TOR483R1,DISP=(OLD,DELETE)
//         DD DSN=&&CHI483R1,DISP=(OLD,DELETE)
//         DD DSN=&&MAZ483R1,DISP=(OLD,DELETE)
//         DD DSN=&&KRO483R1,DISP=(OLD,DELETE)
//         DD DSN=&&SLP483R1,DISP=(OLD,DELETE)
//         DD DSN=&&GUA483R1,DISP=(OLD,DELETE)
//         DD DSN=&&ZAC483R1,DISP=(OLD,DELETE)
//         DD DSN=&&JER483R1,DISP=(OLD,DELETE)
//         DD DSN=&&LEO483R1,DISP=(OLD,DELETE)
//         DD DSN=&&MOR483R1,DISP=(OLD,DELETE)
//         DD DSN=&&AGS483R1,DISP=(OLD,DELETE)
//         DD DSN=&&TAM483R1,DISP=(OLD,DELETE)
//         DD DSN=&&VER483R1,DISP=(OLD,DELETE)
//         DD DSN=&&JAL483R1,DISP=(OLD,DELETE)
//         DD DSN=&&MER483R1,DISP=(OLD,DELETE)
//         DD DSN=&&TOL483R1,DISP=(OLD,DELETE)
//         DD DSN=&&PUE483R1,DISP=(OLD,DELETE)
//         DD DSN=&&MMP483R1,DISP=(OLD,DELETE)
//         DD DSN=&&SAN483R1,DISP=(OLD,DELETE)
//         DD DSN=&&CUL483R1,DISP=(OLD,DELETE)
//         DD DSN=&&MMU483R1,DISP=(OLD,DELETE)
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                        -- VIBT01D --                               *
//*                                                                    *
//*   OBJETIVO: REPORTAR OPERACIONES DE EMISORAS DEL GFP               *
//*                                                                    *
//* ACTUALIZA TABLA : NINGUNA.                                         *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//CAD0601  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*VIBT01R1 DD SYSOUT=(V,,TP45)
//VIBT01R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0601),DISP=SHR
//**********************************************************************
//* OBJETIVO : GENERA REPORTE ASIGNACION CUENTAS JUMBO   (VIBV34D)     *
//*                                                                    *
//*   PASO REINICIABLE                                                 *
//**********************************************************************
//CAD0601C EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//VIBV34R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0601C),DISP=SHR
//**********************************************************************
//* OBJETIVO : GENERA REPORTE OPERACIONES DE CAPITALES   (VIBV95D)     *
//*            DE CLIENTES DEL AREA INTERNACIONAL.                     *
//* MODIFICO : ABRAHAM JUAREZ (ASATECK, 04/10/01)                      *
//*   PASO REINICIABLE                                                 *
//**********************************************************************
//CAD0601D EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//VIBV95R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0601D),DISP=SHR
//**********************************************************************
//* OBJETIVO : GENERA REPORTE DE OPERACION DE CAPITALES  (VIBV97D)     *
//*            DE CLIENTES BP.                                         *
//* MODIFICO : ABRAHAM JUAREZ (ASATECK, 04/10/01)                      *
//*   PASO REINICIABLE                                                 *
//**********************************************************************
//CAD0601E EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//VIBV97R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0601E),DISP=SHR
//**********************************************************************
//* OBJETIVO : GENERA REPORTE DE OPERACIONES DE CAPITALES(VIBV98D)     *
//*            DE CLIENTES INSTITUCIONALES.                            *
//* MODIFICO : ABRAHAM JUAREZ (ASATECK, 04/10/01)                      *
//*   PASO REINICIABLE                                                 *
//**********************************************************************
//CAD0601F EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//VIBV98R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0601F),DISP=SHR
