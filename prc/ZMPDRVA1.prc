//ZMPDRVA1 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : RVA - AUTOMATIZACION RENTA VARIABLE NACIONAL        *
//* PROCESO      : BCJDRVA1                                            *
//* PERIODICIDAD : DIARIA                                              *
//* OBJETIVO     : OBTENER MOVIMIENTOS PARA SEGREGACION DE CARTERA     *
//*                Y CALCULO DE COSTO PROMEDIO PARA CUENTAS PROPIAS 783*
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 15 DE DICIEMBRE DE 2015.                            *
//*====================================================================*
//*             L O G    D E   M O D I F I C A C I O N E S             *
//*====================================================================*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* @LSGM01-INI XMZ0423   17DIC17 SE AGREGAN  CLONES PARA EJECUTAR POR *
//* /FIN                          LIBRO CONTABLE.                      *
//*                                                                    *
//* @DGCM01     XMZ8533   02FEB18 SE AGREGA PASO QUE ACTUALIZARA CANJES*
//*                               SE AGREGA LLAMADO A PGM ZM4RVA28     *
//*====================================================================*
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA200                                              *
//* UTILERIA   : ZM4RVA01                                              *
//* OBJETIVO   : OBTIENE MOVIMIENTOS DIARIOS (C O M P R A S)           *
//*--------------------------------------------------------------------*
//ZMRVA200 EXEC PGM=IKJEFT01
//*@DGCM01-I
//*S1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVDIAA,
//S1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVDIAAX,
//*@DGCM01-F
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//S2DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..ZMDTPOS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=362,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA190),DISP=SHR
//*@DGCM01-I
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA201                                              *
//* UTILERIA   : ZM4RVA28                                              *
//* OBJETIVO   : COMPLEMENTA ARCHIVO DE OPERA, AGREGANDO ITIPOTEN      *
//*--------------------------------------------------------------------*
//ZMRVA201 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1DQENT1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVDIAAX,
//            DISP=SHR
//S1DQSAL1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVDIAA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA201),DISP=SHR
//*@DGCM01-F
//*@LSGM01-INI SE AGREGAN SRC´S POR LIBRO CONTABLE
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA199                                              *
//* UTILERIA   : ZM4RVC01 CLON DE ZM4RVA01                             *
//* OBJETIVO   : C  O  M  P  R  A  S (LIBRO CONTABLE= N E G)           *
//*--------------------------------------------------------------------*
//ZMRVA199 EXEC PGM=IKJEFT01,COND=(4,LT)
//S1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.MOVDIA.F&FECHA..NEG,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//S2DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMDTPOS.F&FECHA..NEG,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=362,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA199),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA198                                              *
//* UTILERIA   : ZM4RVC01 CLON DE ZM4RVA01                             *
//* OBJETIVO   : C  O  M  P  R  A  S (LIBRO CONTABLE= D P V)           *
//*--------------------------------------------------------------------*
//ZMRVA198 EXEC PGM=IKJEFT01,COND=(4,LT)
//S1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.MOVDIA.F&FECHA..DPV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//S2DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMDTPOS.F&FECHA..DPV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=362,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA198),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA197     (C  O  M  P  R  A  S)                    *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDEN DE LOS REGISTROS NEG Y DPV.                     *
//*--------------------------------------------------------------------*
//ZMRVA197 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN  DD DSN=MXC&AMB..ZM.FIX.ZMDTPOS.F&FECHA..NEG,DISP=SHR
//        DD DSN=MXC&AMB..ZM.FIX.ZMDTPOS.F&FECHA..DPV,DISP=SHR
//SORTOUT DD DSN=MXC&AMB..ZM.FIX.SORTPOS.F&FECHA..BKP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=362,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//SYSOUT  DD SYSOUT=*
//SYSIN   DD DSN=ZIVA.ZME.CONTROL(ZMRVA101),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA196     (C  O  M  P  R  A  S)                    *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO DE POSICION POR CUENTA, EMISORA Y SERIE*
//*--------------------------------------------------------------------*
//ZMRVA196 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN  DD DSN=MXC&AMB..ZM.FIX.MOVDIA.F&FECHA..NEG,DISP=SHR
//        DD DSN=MXC&AMB..ZM.FIX.MOVDIA.F&FECHA..DPV,DISP=SHR
//SORTOUT DD DSN=MXC&AMB..ZM.FIX.MOVDIA.F&FECHA..BKP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=200,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRVA130),DISP=SHR
//*@LSGM01-FIN
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA190                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO DE POSICION POR CUENTA, EMISORA Y SERIE*
//*--------------------------------------------------------------------*
//ZMRVA190 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..ZMDTPOS,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..SORTPOS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=362,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRVA101),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA180                                              *
//* UTILERIA   : ZM4RVA10                                              *
//* OBJETIVO   : INSERTA O ACTUALIZA EN TABLA - ZMDTPOS                *
//*--------------------------------------------------------------------*
//ZMRVA180 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..SORTPOS,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA180),DISP=SHR
//*@DGCM01-I
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA175                                              *
//* UTILERIA   : ZM4RVA27                                              *
//* OBJETIVO   : INSERTA REGISTROS A LA ZMDTPOS, CANJES VALIDOS DEL DIA*
//*--------------------------------------------------------------------*
//ZMRVA175 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA175),DISP=SHR
//*@DGCM01-F
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA170                                              *
//* UTILERIA   : ZM4RVA12                                              *
//* OBJETIVO   : OBTIENE MOVIMIENTOS DIARIOS (V E N T A S )            *
//*--------------------------------------------------------------------*
//ZMRVA170 EXEC PGM=IKJEFT01,COND=(4,LT)
//S1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVDIAB,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//S2DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..ZMDTPOS2,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=362,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA170),DISP=SHR
//*@LSGM01-INI VENTAS POR LIBRO CONTABLE
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA169                                              *
//* UTILERIA   : ZM4RVC12 CLON DE ZM4RVA12                             *
//* OBJETIVO   : OBTIENE MOVIMIENTOS DIARIOS (V E N T A S )            *
//*--------------------------------------------------------------------*
//ZMRVA169 EXEC PGM=IKJEFT01,COND=(4,LT)
//S1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.MOVDIAB.F&FECHA..NEG,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//S2DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMDTPOS2.F&FECHA..NEG,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=362,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA169),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA168                                              *
//* UTILERIA   : ZM4RVC12 CLON DE ZM4RVA12                             *
//* OBJETIVO   : OBTIENE MOVIMIENTOS DIARIOS (V E N T A S )  DPV       *
//*--------------------------------------------------------------------*
//ZMRVA168 EXEC PGM=IKJEFT01,COND=(4,LT)
//S1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.MOVDIAB.F&FECHA..DPV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//S2DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMDTPOS2.F&FECHA..DPV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=362,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA168),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA167                                              *
//* UTILERIA   : ICEMAN           (V  E  N  T  A  S)                   *
//* OBJETIVO   : ORDENA ARCHIVO DE POSICION POR CUENTA, EMISORA Y SERIE*
//*--------------------------------------------------------------------*
//ZMRVA167 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN  DD DSN=MXC&AMB..ZM.FIX.ZMDTPOS2.F&FECHA..NEG,DISP=SHR
//        DD DSN=MXC&AMB..ZM.FIX.ZMDTPOS2.F&FECHA..DPV,DISP=SHR
//SORTOUT DD DSN=MXC&AMB..ZM.FIX.ZMDTPOS2.F&FECHA..BKP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=362,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRVA101),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA166                                              *
//* UTILERIA   : ICEMAN           (V  E  N  T  A  S)                   *
//* OBJETIVO   : ORDENA ARCHIVO DE POSICION POR CUENTA, EMISORA Y SERIE*
//*--------------------------------------------------------------------*
//ZMRVA166 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN  DD DSN=MXC&AMB..ZM.FIX.MOVDIAB.F&FECHA..NEG,DISP=SHR
//        DD DSN=MXC&AMB..ZM.FIX.MOVDIAB.F&FECHA..DPV,DISP=SHR
//SORTOUT DD DSN=MXC&AMB..ZM.FIX.MOVDIAV.F&FECHA..BKP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=200,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//SYSOUT  DD SYSOUT=*
//SYSIN   DD DSN=ZIVA.ZME.CONTROL(ZMRVA130),DISP=SHR
//*@LSGM01-FIN
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA160                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO DE POSICION POR CUENTA, EMISORA Y SERIE*
//*--------------------------------------------------------------------*
//ZMRVA160 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..ZMDTPOS2,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..SORTPOS2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=362,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRVA101),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA150                                              *
//* UTILERIA   : ZM4RVA10                                              *
//* OBJETIVO   : INSERTA O ACTUALIZA TABLA ZMDTPOS                     *
//*--------------------------------------------------------------------*
//ZMRVA150 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..SORTPOS2,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA160),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA140                                              *
//* UTILERIA   : ZM4RVA02                                              *
//* OBJETIVO   : OBTIENE MOVIMIENTOS CON LIQUIDACION A FECHA VALOR Y   *
//*              GENERA SEGREGACION DE CARTERA EN TABLA ZMDTPOS        *
//*--------------------------------------------------------------------*
//ZMRVA140 EXEC PGM=IKJEFT01,COND=(4,LT)
//S1DQRVA2 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVFECV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA120),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA130                                              *
//* UTILERIA   : ZM4RVA03                                              *
//* OBJETIVO   : OBTIENE MOVIMIENTOS DE PRESTAMOS Y                    *
//*              GENERA PRESTAMISTA Y PRESTATARIO EN TABLA ZMDTPOS     *
//*--------------------------------------------------------------------*
//ZMRVA130 EXEC PGM=IKJEFT01,COND=(4,LT)
//S1DQRVA3 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVPRES,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA110),DISP=SHR
//*INICIO DE CAMBIOS A ACCIONES
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA120                                              *
//* UTILERIA   : ZM4RVA15                                              *
//* OBJETIVO   : OBTIENE LAS SUMATORIAS DE LAS ACCIONES CORPORATIVAS   *
//*              POR EMISOR,SERIE,TIPOTEN,ITRANS.                      *
//*--------------------------------------------------------------------*
//ZMRVA120 EXEC PGM=IKJEFT01,COND=(4,LT)
//S1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..ACCCORP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=206,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA880),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA110                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO DE POSICION POR CUENTA, EMISORA Y SERIE*
//*--------------------------------------------------------------------*
//ZMRVA110 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..ACCCORP,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..SORTCOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=206,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRVA810),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA100                                              *
//* UTILERIA   : ZM4RVA13                                              *
//* OBJETIVO   : GENERA LA SEGREGACIóN DE MOVIMIENTOS CONTABLES.       *
//*--------------------------------------------------------------------*
//ZMRVA100 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..SORTCOR,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA150),DISP=SHR
//*AAJC-INI                                                            *
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA095                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO DE POSICION POR CUENTA, EMISORA Y SERIE*
//*              PROCESA TIPO TENENCIA K                               *
//*--------------------------------------------------------------------*
//ZMRVA095 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..SORTCOR,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVDIACK,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=200,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRVA89A),DISP=SHR
//*AAJC-FIN                                                            *
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA090                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO DE POSICION POR CUENTA, EMISORA Y SERIE*
//*              PROCESA TIPO TENENCIA DIFERENTE A K                   *
//*--------------------------------------------------------------------*
//ZMRVA090 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..SORTCOR,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVDIAC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=200,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRVA890),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA080                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO DE POSICION POR CUENTA, EMISORA Y SERIE*
//*--------------------------------------------------------------------*
//ZMRVA080 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVDIAA,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVDIAB,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVDIAC,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVDIACK,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVDIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=200,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRVA130),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA070                                              *
//* UTILERIA   : ZM4RVA17                                              *
//* OBJETIVO   : EDICION DEL ARCHIVO DE MOVIMIENTOS DIARIOS.           *
//*--------------------------------------------------------------------*
//ZMRVA070 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVDIA,DISP=SHR
//S1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVDIA.REP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=285,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA070),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA060                                              *
//* UTILERIA   : ZM4RVA17                                              *
//* OBJETIVO   : EDICION DEL ARCHIVO DE MOVIMIENTOS A FECHA VALOR.     *
//*--------------------------------------------------------------------*
//ZMRVA060 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVFECV,DISP=SHR
//S1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVFECV.REP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=285,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA070),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA050                                              *
//* UTILERIA   : ZM4RVA17                                              *
//* OBJETIVO   : EDICION DEL ARCHIVO DE MOVIMIENTOS DE PRESTAMOS.      *
//*--------------------------------------------------------------------*
//ZMRVA050 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVPRES,DISP=SHR
//S1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVPRES.REP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=285,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA070),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA040                                              *
//* UTILERIA   : ZM4RVA18                                              *
//* OBJETIVO   : EDICION DE LA TABLA ZMDTPOS.                          *
//*--------------------------------------------------------------------*
//ZMRVA040 EXEC PGM=IKJEFT01,COND=(4,LT)
//S1DQRVA1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..ZMDTPOS.REP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=666,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA040),DISP=SHR
//*@MEX001-I
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA030                                              *
//* UTILERIA   : ZM4RVA21                                              *
//* OBJETIVO   : RECUPERA LOS TRACS DE LA ZMDT645 E INSERTA A PARAM    *
//*--------------------------------------------------------------------*
//ZMRVA030 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA030),DISP=SHR
//*@MEX001-F
//*--------------------------------------------------------------------*
//*                       FIN DEL PRC ZMPDRVA1                         *
//*--------------------------------------------------------------------*
