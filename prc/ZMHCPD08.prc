//ZMHCPD08 PROC                                                         00002025
//**********************************************************************00002125
//*                                                                    *00002225
//*                                                                    *00002325
//*                   C A S A   D E  B O L S A                         *00003000
//*                   ========================                         *00004000
//*                   <<  C A P I T A L E S  >>                        *00005000
//*                                                                    *00006000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00007000
//*                                                                    *00008000
//* PROCESO        :  ZMHCPD08                                         *00009001
//*                   PREVIO AL CIERRE DE DIA DEL MODULO DE CAPITALES  *00009100
//*                                                                    *00009200
//* OBJETIVO       :  PREVIO DE ASIGNACIONES DEL DIA DE CAPITALES      *00009300
//*                                                                    *00009500
//* CORRE                                                              *00009600
//* ANTES DE       :  ZMHCPD04, ZMHCPD05 Y ZMHCPD06.                   *00009700
//*                                                                    *00009900
//* PERIODICIDAD   :  DIARIO                                           *00010000
//*                                                                    *00010100
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *00010200
//*                                                                    *00010300
//**********************************************************************00010400
//*                      LOG DE MODIFICACIONES                         *00010500
//**********************************************************************00010600
//*MODIF ³  FECHA   ³USUARIO³  PASO  ³DESCRIPCION                      *00010700
//*--------------------------------------------------------------------*00010800
//*                                                                    *
//*  OBJETIVO : GENERAR ARCHIVO CON LOS DATOS DE LAS EMISORAS -        *
//*             SERIES VALIDAS PARA E-GUARD (MERCADO DE CAPITA-        *
//*             LES, MERCADO DE DINERO Y SOCIEDADES DE INVERSI-        *
//*             ON).                                                   *
//*                                                                    *
//**********************************************************************
//*      ³          ³       ³        ³                                 *00010900
//**********************************************************************00011000
//*                                                                    *00011100
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00011200
//*  PHP08P23     GRABA EN UN ARCHIVO SECUENCIAL.                      *00011300
//**********************************************************************00011500
//* DESPUES DE     :                                                   *00011600
//**********************************************************************00011700
//*                     ===   INICIO DE     ===                        *00011800
//*                     ===   CAPITALES     ===                        *00011900
//**********************************************************************00014016
//PHP08P23 EXEC PGM=ZM3DG001,                                           00050000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00060000
//ZMG001A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCPD08,                  00090002
//            DISP=(NEW,CATLG,DELETE),                                  00100000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00110000
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00120020
//*                                                                     00140000
//SYSTSPRT DD SYSOUT=*                                                  00150003
//SYSPRINT DD SYSOUT=*                                                  00160003
//SYSOUT   DD SYSOUT=*                                                  00170003
//SYSDBOUT DD SYSOUT=*                                                  00180003
//SYSABOUT DD DUMMY                                                     00190000
//SYSUDUMP DD DUMMY                                                     00200000
//*
//**********************************************************************01292000
//* OBJETIVO : GENERAR ARCHIVO CON LOS DATOS DE LAS EMISORAS -         *01292000
//*            SERIES VALIDAS PARA E-GUARD (MERCADO DE CAPITA-         *01311000
//*            LES, MERCADO DE DINERO Y SOCIEDADES DE INVERSI-         *01311000
//*            ON).                                                    *01311000
//*            -- ZM4DQQ01 --                                          *01311000
//**********************************************************************01320000
//PHP08P22 EXEC PGM=IKJEFT01,COND=(4,LT)                                01321008
//ZMDQQ012 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..EMISORAS.EGUARD,               01401002
//            DISP=(NEW,CATLG,DELETE),                                  01402008
//            DCB=(DSORG=PS,RECFM=FB,LRECL=244,BLKSIZE=0),              01410022
//            UNIT=3390,                                                01420022
//            SPACE=(CYL,(4,2),RLSE)                                    01430022
//SYSIN    DD DUMMY                                                     01440000
//SYSTSPRT DD SYSOUT=*                                                  01450017
//SYSPRINT DD SYSOUT=*                                                  01460017
//SYSOUT   DD SYSOUT=*                                                  01470017
//SYSDBOUT DD SYSOUT=*                                                  01480017
//SYSABOUT DD DUMMY                                                     01490000
//SYSUDUMP DD DUMMY                                                     01500000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T23),DISP=SHR                   01510005
//*
//**********************************************************************00270100
//* OBJETIVO : OBTENER LOS LISTADOS DE LA OPERACION DEL DIA            *00270200
//*            DE ORDENES DE POSICION PROPIA                           *00270300
//*            -- ZM4DHU80 --                                          *00270400
//**********************************************************************00270700
//PHP08P21 EXEC PGM=IKJEFT01,COND=(4,LT)                                00270800
//ZMHU80A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCPD08,DISP=SHR          00271102
//*                                                                     00271200
//ZMHU80T1 DD DSN=ZIVA.ZME.CONTROL(ZHP08T22),DISP=SHR                   00271605
//ZMHU80R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00271709
//SYSTSPRT DD SYSOUT=*                                                  00271903
//SYSPRINT DD SYSOUT=*                                                  00272003
//SYSOUT   DD SYSOUT=*                                                  00272103
//SYSDBOUT DD SYSOUT=*                                                  00272203
//SYSABOUT DD DUMMY                                                     00272300
//SYSUDUMP DD DUMMY                                                     00272400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T21),DISP=SHR                   00272505
//*
//**********************************************************************00272800
//* OBJETIVO : REPORTE DE ORDENES GLOBALES                             *00274000
//*             -- ZM4DHU83 --                                         *00272900
//**********************************************************************00278000
//PHP08P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                00279000
//ZMHU83A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCPD08,DISP=SHR          00300002
//*                                                                     00310000
//ZMHU83R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00360009
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00370020
//SYSTSPRT DD SYSOUT=*                                                  00380003
//SYSPRINT DD SYSOUT=*                                                  00390003
//SYSOUT   DD SYSOUT=*                                                  00400003
//SYSDBOUT DD SYSOUT=*                                                  00410003
//SYSABOUT DD DUMMY                                                     00420000
//SYSUDUMP DD DUMMY                                                     00430000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T20),DISP=SHR                   00440005
//*
//**********************************************************************00451000
//* OBJETIVO : REPORTE DE PAQUETES DEL DIA (CONTROL INTERNO)           *00454000
//*            -- ZM4DHU69 --                                          *00452000
//**********************************************************************00457000
//PHP08P19 EXEC PGM=IKJEFT01,COND=(4,LT)                                00457100
//ZMHU69A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCPD08,DISP=SHR          00457402
//*                                                                     00457500
//ZMHU69R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00459209
//*
//ZMHU69A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD08.ORDEN.GLO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00459420
//SYSTSPRT DD SYSOUT=*                                                  00459503
//SYSPRINT DD SYSOUT=*                                                  00459603
//SYSOUT   DD SYSOUT=*                                                  00459703
//SYSDBOUT DD SYSOUT=*                                                  00459803
//SYSABOUT DD DUMMY                                                     00459900
//SYSUDUMP DD DUMMY                                                     00460000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T19),DISP=SHR                   00460105
//*
//**********************************************************************00460400
//* OBJETIVO : BORRA EL ARCHIVO DE PRECIOS DE ULTIMO HECHO (IDCAMS)    *00460400
//**********************************************************************00470000
//PHP08P18 EXEC PGM=IDCAMS,COND=(4,LT)                                  00471005
//SYSPRINT DD SYSOUT=*                                                  00490005
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHP08T18),DISP=SHR                   00500012
//*                                                                     00510000
//**********************************************************************00512000
//* OBJETIVO : CREA EL ARCHIVO DE PRECIOS DE ULTIMO HECHO (IEFBR14)    *00512000
//**********************************************************************00550000
//PHP08P17 EXEC PGM=IEFBR14,COND=(4,LT)                                 00551006
//ARCHIVO  DD DSN=SIVA.MDC.WKF.E&EMP..PRULTHEC,                         00571007
//            DISP=(NEW,CATLG,DELETE),                                  00580006
//            UNIT=3390,                                                00590006
//            DCB=(RECFM=FB,LRECL=46,BLKSIZE=0,DSORG=PS),               00600028
//            SPACE=(CYL,(4,2),RLSE)                                    00610006
//*
//**********************************************************************00622000
//* OBJETIVO : DETECCION DEL ESTADO FINAL DE CADA HECHO                *00622000
//*             -- ZM4DHJ07 --                                         *00631000
//**********************************************************************00640000
//PHP08P16 EXEC PGM=IKJEFT01,COND=(4,LT)                                00641000
//ZMHJ07A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCPD08,DISP=SHR          00644002
//*                                                                     00645000
//ZMHJ07R1 DD SYSOUT=*                                                  00671003
//SYSTSPRT DD SYSOUT=*                                                  00680000
//SYSPRINT DD SYSOUT=*                                                  00690000
//SYSOUT    DD SYSOUT=*                                                 00700000
//SYSDBOUT  DD SYSOUT=*                                                 00710000
//SYSABOUT  DD DUMMY                                                    00720000
//SYSUDUMP  DD DUMMY                                                    00730000
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZHP08T16),DISP=SHR                  00740006
//*
//**********************************************************************01292000
//* OBJETIVO : EFECTUA ASIGNACION PREVIA                               *01292000
//*            -- ZM4DH507 --                                          *01311000
//**********************************************************************01320000
//PHP08P12 EXEC PGM=IKJEFT01,COND=(4,LT)                                01321008
//ZMH507A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCPD08,DISP=SHR          01324002
//*                                                                     01325000
//ZMH442O  DD DSN=SIVA.MDC.WKF.E&EMP..ASIGNA.VTB442O,                   01351002
//            DISP=(NEW,CATLG,DELETE),                                  01352000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=19,BLKSIZE=0),               01360021
//            UNIT=3390,                                                01370021
//            SPACE=(CYL,(4,2),RLSE)                                    01380021
//ZMH546A1 DD DSN=SIVA.MDC.WKF.E&EMP..ASIGNA.VTB546O,                   01401002
//            DISP=(NEW,CATLG,DELETE),                                  01402008
//            DCB=(DSORG=PS,RECFM=FB,LRECL=14,BLKSIZE=0),               01410022
//            UNIT=3390,                                                01420022
//            SPACE=(CYL,(4,2),RLSE)                                    01430022
//SYSIN    DD DUMMY                                                     01440000
//SYSTSPRT DD SYSOUT=*                                                  01450017
//SYSPRINT DD SYSOUT=*                                                  01460017
//SYSOUT   DD SYSOUT=*                                                  01470017
//SYSDBOUT DD SYSOUT=*                                                  01480017
//SYSABOUT DD DUMMY                                                     01490000
//SYSUDUMP DD DUMMY                                                     01500000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T12),DISP=SHR                   01510005
//*
//**********************************************************************01781000
//* OBJETIVO : REP. DE OPERACION DEL DIA Y HECHOS POR ASIGNAR          *01781100
//*            -- ZM4DHU85 --                                          *01783000
//**********************************************************************01784000
//PHP08P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                01784100
//ZMHU85P1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCPD08,DISP=SHR          01784402
//*                                                                     01784500
//ZMHU85A1 DD DSN=SIVA.MDC.WKF.E&EMP..VIBU85A1,                         01787102
//            DISP=(NEW,CATLG,DELETE),                                  01788021
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FBA,DSORG=PS),             01789021
//            UNIT=3390,                                                01789121
//            SPACE=(CYL,(4,2),RLSE)                                    01789221
//ZMHU85A2 DD DSN=SIVA.MDC.FIX.E&EMP..ASIG.E.PRE,                       01789402
//            DISP=(NEW,CATLG,DELETE),                                  01789521
//            DCB=(LRECL=170,BLKSIZE=0,RECFM=FB,DSORG=PS),              01789621
//            UNIT=3390,                                                01789721
//            SPACE=(CYL,(4,2),RLSE)                                    01789821
//*
//ZMHU85A3 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD08.ASIG.EMI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMHU85A4 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD08.SOBRA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMHU85RX DD SYSOUT=O                                                  01790017
//ZMHU85R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01790109
//ZMHU85R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01790209
//ZMHU85R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01790309
//ZMHU85T1 DD DSN=ZIVA.ZME.CONTROL(ZHP08T22),DISP=SHR                   01790408
//SYSTSPRT DD SYSOUT=*                                                  01791300
//SYSPRINT DD SYSOUT=*                                                  01791400
//SYSOUT   DD SYSOUT=*                                                  01791500
//SYSDBOUT DD SYSOUT=*                                                  01791600
//SYSABOUT DD DUMMY                                                     01791708
//SYSUDUMP DD DUMMY                                                     01791808
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T10),DISP=SHR                   01791905
//*
//**********************************************************************03001000
//* OBJETIVO : REPORTES DE ORDENES SOLICITADAS Y CANCELADAS            *03001100
//*            POR PROMOTOR                                            *03002000
//*            -- ZM4DHU87 --                                          *03003100
//**********************************************************************03004000
//PHP08P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                03004100
//ZMHU87A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCPD08,DISP=SHR          03004402
//*                                                                     03004500
//MMUU87R3 DD SYSOUT=(O,,1P40)                                          03018900
//ZMHU87R4 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     03019009
//ZMHU87T1 DD DSN=&&CAD0103,                                            03019300
//            DISP=(NEW,PASS),                                          03019421
//            DCB=(LRECL=210,BLKSIZE=0,RECFM=FB,DSORG=PS),              03019521
//            UNIT=3390,                                                03019621
//            SPACE=(CYL,(4,2),RLSE)                                    03019721
//*
//ZMHU87A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD08.ORD.NO.REAL,
//        DISP=(NEW,CATLG,DELETE),
//        DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//        UNIT=3390,
//        SPACE=(CYL,(4,2),RLSE)
//*
//SORTWORK DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          03019820
//SYSTSPRT DD SYSOUT=*                                                  03019903
//SYSPRINT DD SYSOUT=*                                                  03020003
//SYSOUT   DD SYSOUT=*                                                  03020103
//SYSDBOUT DD SYSOUT=*                                                  03020203
//SYSABOUT DD DUMMY                                                     03020300
//SYSUDUMP DD DUMMY                                                     03020400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T08),DISP=SHR                   03020505
//*
//**********************************************************************03441000
//* OBJETIVO : REPORTES DE ORDENES SOLICITADAS Y CANCELADAS            *03441100
//*            -- ZM4DHU86 --                                          *03443000
//**********************************************************************03444000
//PHP08P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                03444100
//ZMHU86P1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCPD08,DISP=SHR          03444402
//*                                                                     03444500
//ZMHU86R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     03449209
//ZMHU86R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     03449309
//ZMHU86R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     03449409
//ZMHU86A1 DD DSN=SIVA.MDC.FIX.E&EMP..VIBU86A1,                         03449502
//            DISP=(NEW,CATLG,DELETE),                                  03449621
//            DCB=(RECFM=FBA,LRECL=133,BLKSIZE=0,DSORG=PS),             03449721
//            UNIT=3390,                                                03449821
//            SPACE=(CYL,(4,2),RLSE)                                    03449921
//ZMHU86A2 DD DSN=SIVA.MDC.FIX.E&EMP..OR.X.EMIS.PRE,                    03450102
//            DISP=(NEW,CATLG,DELETE),                                  03450221
//            DCB=(RECFM=FB,LRECL=136,BLKSIZE=0,DSORG=PS),              03450321
//            UNIT=3390,                                                03450421
//            SPACE=(CYL,(4,2),RLSE)                                    03450521
//*
//ZMHU86A5 DD DSN=SIVA.MDC.FIX.E&EMP..ORDEN.CAN.PRE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=239,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMHU86T1 DD DSN=ZIVA.ZME.CONTROL(ZHP08T22),DISP=SHR                   03450705
//SYSTSPRT DD SYSOUT=*                                                  03450803
//SYSPRINT DD SYSOUT=*                                                  03450903
//SYSOUT   DD SYSOUT=*                                                  03451003
//SYSDBOUT DD SYSOUT=*                                                  03451103
//SYSABOUT DD DUMMY                                                     03451200
//SYSUDUMP DD DUMMY                                                     03451300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T05),DISP=SHR                   03451405
//*
//**********************************************************************03451600
//* OBJETIVO : REPORTE DE PAQUETES NO DISTRIBUIDOS                     *03451700
//*            -- ZM4DH498 --                                          *03453000
//**********************************************************************03460000
//PHP08P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                03461000
//ZMH498A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCPD08,DISP=SHR          03464002
//*                                                                     03465000
//ZMH498R1 DD SYSOUT=(O,,TP10)                                          03501018
//ZMH498T1 DD DSN=&&PASO04,DISP=(,PASS),                                03502000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=158,BLKSIZE=0),              03510021
//            UNIT=3390,                                                03520021
//            SPACE=(CYL,(4,2),RLSE)                                    03530021
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          03540020
//SYSTSPRT DD SYSOUT=*                                                  03550017
//SYSPRINT DD SYSOUT=*                                                  03560017
//SYSOUT   DD SYSOUT=*                                                  03570017
//SYSDBOUT DD SYSOUT=*                                                  03580017
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T04),DISP=SHR                   03590005
//*
//**********************************************************************03600000
//* OBJETIVO : REPORTES DE CANCELACIONES Y CAMBIOS A HECHOS            *03601000
//*            -- ZM4DH464 --                                          *03610000
//**********************************************************************03620000
//PHP08P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                03621000
//ZMH464A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCPD08,DISP=SHR          03624002
//*                                                                     03625000
//ZMH464R1 DD SYSOUT=(O,,TP02)                                          03651018
//SYSTSPRT DD SYSOUT=*                                                  03660017
//SYSPRINT DD SYSOUT=*                                                  03670017
//SYSOUT   DD SYSOUT=*                                                  03680017
//SYSDBOUT DD SYSOUT=*                                                  03690017
//SYSABOUT DD DUMMY                                                     03700000
//SYSUDUMP DD DUMMY                                                     03710000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T03),DISP=SHR                   03720005
//*
//**********************************************************************00451000
//* OBJETIVO : REPORTE DE PAQUETES DEL DIA (CONTROL INTERNO)           *00454000
//*            -- ZM4DHU69 -- NUEVO ZM4DHV69                           *00452000
//**********************************************************************00457000
//PHP08P0A EXEC PGM=IKJEFT01,COND=(4,LT)                                00457100
//ZMHV69A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCPD08,DISP=SHR          00457402
//*                                                                     00457500
//ZMHV69R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00459209
//*
//ZMHV69A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD08.ORDEN.GLOV69,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00459420
//SYSTSPRT DD SYSOUT=*                                                  00459503
//SYSPRINT DD SYSOUT=*                                                  00459603
//SYSOUT   DD SYSOUT=*                                                  00459703
//SYSDBOUT DD SYSOUT=*                                                  00459803
//SYSABOUT DD DUMMY                                                     00459900
//SYSUDUMP DD DUMMY                                                     00460000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T0A),DISP=SHR                   00460105
//*
//**********************************************************************00270100
//* OBJETIVO : OBTENER LOS LISTADOS DE LA OPERACION DEL DIA            *00270200
//*            DE ORDENES DE POSICION PROPIA                           *00270300
//*            -- ZM4DHU80 -- NUEVO ZM4DHV80                           *00270400
//**********************************************************************00270700
//PHP08P0B EXEC PGM=IKJEFT01,COND=(4,LT)                                00270800
//ZMHV80A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCPD08,DISP=SHR          00271102
//*                                                                     00271200
//ZMHV80T1 DD DSN=ZIVA.ZME.CONTROL(ZHP08T22),DISP=SHR                   00271605
//ZMHV80R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00271709
//SYSTSPRT DD SYSOUT=*                                                  00271903
//SYSPRINT DD SYSOUT=*                                                  00272003
//SYSOUT   DD SYSOUT=*                                                  00272103
//SYSDBOUT DD SYSOUT=*                                                  00272203
//SYSABOUT DD DUMMY                                                     00272300
//SYSUDUMP DD DUMMY                                                     00272400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T0B),DISP=SHR                   00272505
//*
//**********************************************************************01781000
//* OBJETIVO : REP. DE OPERACION DEL DIA Y HECHOS POR ASIGNAR          *01781100
//*            -- ZM4DHU85 -- NUEVO ZM4DHV90                           *01783000
//**********************************************************************01784000
//PHP08P0C EXEC PGM=IKJEFT01,COND=(4,LT)                                01784100
//ZMHV90P1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCPD08,DISP=SHR          01784402
//*                                                                     01784500
//ZMHV90A1 DD DSN=SIVA.MDC.WKF.E&EMP..VIBV90A1,                         01787102
//            DISP=(NEW,CATLG,DELETE),                                  01788021
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FBA,DSORG=PS),             01789021
//            UNIT=3390,                                                01789121
//            SPACE=(CYL,(4,2),RLSE)                                    01789221
//ZMHV90A2 DD DSN=SIVA.MDC.FIX.E&EMP..ASIG.E.PREV90,                    01789402
//            DISP=(NEW,CATLG,DELETE),                                  01789521
//            DCB=(LRECL=170,BLKSIZE=0,RECFM=FB,DSORG=PS),              01789621
//            UNIT=3390,                                                01789721
//            SPACE=(CYL,(4,2),RLSE)                                    01789821
//*
//ZMHV90A3 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD08.ASIG.EMIV90,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMHV90A4 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD08.SOBRAV90,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMHV90RX DD SYSOUT=O                                                  01790017
//ZMHV90R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01790109
//ZMHV90R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01790209
//ZMHV90R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01790309
//ZMHV90T1 DD DSN=ZIVA.ZME.CONTROL(ZHP08T22),DISP=SHR                   01790408
//SYSTSPRT DD SYSOUT=*                                                  01791300
//SYSPRINT DD SYSOUT=*                                                  01791400
//SYSOUT   DD SYSOUT=*                                                  01791500
//SYSDBOUT DD SYSOUT=*                                                  01791600
//SYSABOUT DD DUMMY                                                     01791708
//SYSUDUMP DD DUMMY                                                     01791808
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T0C),DISP=SHR                   01791905
//*
//**********************************************************************01781000
//* OBJETIVO : REP. DE OPERACION DEL DIA Y HECHOS POR ASIGNAR          *01781100
//*            -- ZM4DHU85 -- ES REEMPLAZADO POR ZM4DHV85.             *01783000
//**********************************************************************01784000
//PHP08P0D EXEC PGM=IKJEFT01,COND=(4,LT)                                01784100
//ZMHV85P1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCPD08,DISP=SHR          01784402
//*                                                                     01784500
//ZMHV85A1 DD DSN=SIVA.MDC.WKF.E&EMP..VIBV85A1,                         01787102
//            DISP=(NEW,CATLG,DELETE),                                  01788021
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FBA,DSORG=PS),             01789021
//            UNIT=3390,                                                01789121
//            SPACE=(CYL,(4,2),RLSE)                                    01789221
//ZMHV85A2 DD DSN=SIVA.MDC.FIX.E&EMP..ASIG.E.PREV85,                    01789402
//            DISP=(NEW,CATLG,DELETE),                                  01789521
//            DCB=(LRECL=170,BLKSIZE=0,RECFM=FB,DSORG=PS),              01789621
//            UNIT=3390,                                                01789721
//            SPACE=(CYL,(4,2),RLSE)                                    01789821
//*
//ZMHV85A3 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD08.ASIG.EMIV85,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMHV85A4 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD08.SOBRAV85,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMHV85RX DD SYSOUT=O                                                  01790017
//ZMHV85R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01790109
//ZMHV85R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01790209
//ZMHV85R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01790309
//ZMHV85T1 DD DSN=ZIVA.ZME.CONTROL(ZHP08T22),DISP=SHR                   01790408
//SYSTSPRT DD SYSOUT=*                                                  01791300
//SYSPRINT DD SYSOUT=*                                                  01791400
//SYSOUT   DD SYSOUT=*                                                  01791500
//SYSDBOUT DD SYSOUT=*                                                  01791600
//SYSABOUT DD DUMMY                                                     01791708
//SYSUDUMP DD DUMMY                                                     01791808
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T0D),DISP=SHR                   01791905
//*
//**********************************************************************03441000
//* OBJETIVO : REPORTES DE ORDENES SOLICITADAS Y CANCELADAS            *03441100
//*            -- ZM4DHU86 -- NUEVO ZM4DHV86.                          *03443000
//**********************************************************************03444000
//PHP08P0E EXEC PGM=IKJEFT01,COND=(4,LT)                                03444100
//ZMHV86P1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCPD08,DISP=SHR          03444402
//*                                                                     03444500
//ZMHV86R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     03449209
//ZMHV86R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     03449309
//ZMHV86R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     03449409
//ZMHV86A1 DD DSN=SIVA.MDC.FIX.E&EMP..VIBV86A1,                         03449502
//            DISP=(NEW,CATLG,DELETE),                                  03449621
//            DCB=(RECFM=FBA,LRECL=133,BLKSIZE=0,DSORG=PS),             03449721
//            UNIT=3390,                                                03449821
//            SPACE=(CYL,(4,2),RLSE)                                    03449921
//ZMHV86A2 DD DSN=SIVA.MDC.FIX.E&EMP..OR.X.EMIS.PREV86,                 03450102
//            DISP=(NEW,CATLG,DELETE),                                  03450221
//            DCB=(RECFM=FB,LRECL=136,BLKSIZE=0,DSORG=PS),              03450321
//            UNIT=3390,                                                03450421
//            SPACE=(CYL,(4,2),RLSE)                                    03450521
//*
//ZMHV86A5 DD DSN=SIVA.MDC.FIX.E&EMP..ORDEN.CAN.PREV86,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=239,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMHV86T1 DD DSN=ZIVA.ZME.CONTROL(ZHP08T22),DISP=SHR                   03450705
//SYSTSPRT DD SYSOUT=*                                                  03450803
//SYSPRINT DD SYSOUT=*                                                  03450903
//SYSOUT   DD SYSOUT=*                                                  03451003
//SYSDBOUT DD SYSOUT=*                                                  03451103
//SYSABOUT DD DUMMY                                                     03451200
//SYSUDUMP DD DUMMY                                                     03451300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T0E),DISP=SHR                   03451405
//*
//**********************************************************************03800000
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROLM QUE TERMINO             *03801000
//*            ASIGNACION PREVIA.                                      *03810000
//**********************************************************************03820100
//PHP08P01 EXEC  PGM=CTMCND,PARM='ADD COND     SIVAXPRE_OK    WDATE',   03821027
//         COND=(4,LT,PHP08P19)                                         03821111
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*                                                  03851014
//SYSPRINT DD DUMMY                                                     03900021
//SYSUDUMP DD DUMMY                                                     03910021
//DAPRINT  DD SYSOUT=*                                                  03920021
//DACNDIN  DD DDNAME=SYSIN                                              03930021
//*                                                                     03950000
