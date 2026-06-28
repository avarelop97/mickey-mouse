//ZMHCPZ12  PROC
//**********************************************************************00001000
//*                                                                    *00002000
//*                   C A S A   D E  B O L S A                         *00003000
//*                   ========================                         *00004000
//*                   <<  C A P I T A L E S >>                         *00005001
//*                                                                    *00006000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00007000
//*                                                                    *00008000
//* PROCESO        :  ZMHCPZ12 CBHCPZ12                                *00009001
//*                   PREVIO AL CIERRE DE DIA DEL MODULO DE CAPITALES  *00009100
//*                   PARA BANCA PATRIMONIAL.                          *00009201
//*                                                                    *00009301
//* OBJETIVO       :  PREVIO DE ASIGNACIONES DEL DIA DE CAPITALES      *00009401
//*                                                                    *00009500
//* CORRE                                                              *00009600
//* DESPUES DE     :  SIVAXBPP                                         *00009701
//*                                                                    *00009900
//* PERIODICIDAD   :  DIARIO                                           *00010000
//*                                                                    *00010100
//* ELABORADO POR  : ERNESTO MANUEL CUAUTLE MARTINEZ                   *00010200
//*                                                                    *00010300
//**********************************************************************00010400
//*                      LOG DE MODIFICACIONES                         *00010500
//**********************************************************************00010600
//* FECHA    : NOVIEMBRE 2008.                                         *00010700
//* MODIFICO : OSCAR URBANO F. (AZERTIA).                              *00010700
//**********************************************************************00011000
//**********************************************************************00270100
//* OBJETIVO : OBTENER LOS LISTADOS DE LA OPERACION DEL DIA            *00270202
//*            DE ORDENES DE POSICION PROPIA                           *00270302
//*            -- ZM4DHU80 --                                          *00270402
//**********************************************************************00270700
//* FECHA    : 07NOV22.                                                *00010700
//* MODIFICO : INDRA-MF.                                               *00010700
//* OBJETIVO : SE AGREGA SALIDA DE REPORTE A TXT PARA SER ENVIADO      *00270202
//*            AL SERVIDOR POSTERIORMENTE.  PASO:PHP12P11              *00270302
//**********************************************************************00006000
//* FECHA    : 09ENE23.                                                *00010700
//* MODIFICO : INDRA-MF. @SRA                                          *00010700
//* OBJETIVO : -SE AGREGA SALIDA DE REPORTE A TXT. PASO:PHP12P05       *00270202
//*            -SE AGREGA SALIDA DE REPORTE A TXT. PASO:PHP12P06       *00270202
//*                                                                    *00270202
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PHP12P13 EXEC PGM=IKJEFT01                                           00270802
//*ZMHU80A1 DD DSN=MXCP.ZM.TMP.MDC.EBCM.S000.ZMHCPD12,DISP=SHR          00271101
//**                                                                    00271200
//*ZMHU80T1 DD DSN=ZIVA.ZME.CONTROL(ZHP12T14),DISP=SHR                  00271603
//*ZMHU80R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00271800
//*SYSTSPRT DD SYSOUT=*                                                 00271900
//*SYSPRINT DD SYSOUT=*                                                 00272000
//*SYSOUT   DD SYSOUT=*                                                 00272100
//*SYSDBOUT DD SYSOUT=*                                                 00272200
//*SYSABOUT DD DUMMY                                                    00272300
//*SYSUDUMP DD DUMMY                                                    00272400
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP12T13),DISP=SHR                  00272503
//**                                                                    00272700
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************00272800
//* OBJETIVO : REPORTE DE ORDENES GLOBALES                             *00274000
//*             -- ZM4DHU83 --                                         *00276002
//**********************************************************************00278000
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PHP12P12 EXEC PGM=IKJEFT01,COND=(4,LT)                               00279002
//**                                                                    00290000
//*ZMHU83A1 DD DSN=MXCP.ZM.TMP.MDC.EBCM.S000.ZMHCPD12,DISP=SHR          00300001
//**                                                                    00310000
//*ZMHU83R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00361000
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         00370000
//*SYSTSPRT DD SYSOUT=*                                                 00380000
//*SYSPRINT DD SYSOUT=*                                                 00390000
//*SYSOUT   DD SYSOUT=*                                                 00400000
//*SYSDBOUT DD SYSOUT=*                                                 00410000
//*SYSABOUT DD DUMMY                                                    00420000
//*SYSUDUMP DD DUMMY                                                    00430000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP12T12),DISP=SHR                  00440003
//**                                                                    00450100
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************00451000
//* OBJETIVO : REPORTE DE PAQUETES DEL DIA (CONTROL INTERNO)           *00454000
//*            -- ZM4DHU69 --                                          *00455002
//**********************************************************************00457000
//PHP12P11 EXEC PGM=IKJEFT01                                            00457102
//*                                                                     00457300
//ZMHU69A1 DD DSN=MXCP.ZM.TMP.MDC.EBCM.S000.ZMHCPD12,DISP=SHR           00457401
//*                                                                     00457500
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU69R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00459300
//*ZMHU69R1 DD DSN=MXCP.ZM.FIX.EBCM.ZMHCPD12.REPORTE1,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMHU69R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//ZMHU69A2 DD DSN=SIVA.MDC.FIX.EBCM.ZMHCPD12.ORDEN.GLO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMHU69RT DD DUMMY
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00459400
//SYSTSPRT DD SYSOUT=*                                                  00459500
//SYSPRINT DD SYSOUT=*                                                  00459600
//SYSOUT   DD SYSOUT=*                                                  00459700
//SYSDBOUT DD SYSOUT=*                                                  00459800
//SYSABOUT DD DUMMY                                                     00459900
//SYSUDUMP DD DUMMY                                                     00460000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP12T11),DISP=SHR                   00460103
//*                                                                     00460300
//**********************************************************************00460400
//* OBJETIVO : BORRA EL ARCHIVO DE PRECIOS DE ULTIMO HECHO (IDCAMS)    *00461002
//**********************************************************************00470000
//PHP12P10 EXEC PGM=IDCAMS,COND=(4,LT)                                  00471002
//*                                                                     00473000
//SYSPRINT DD SYSOUT=*                                                  00490000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHP12T10),DISP=SHR                   00500003
//*                                                                     00511000
//**********************************************************************00512000
//* OBJETIVO : CREA EL ARCHIVO DE PRECIOS DE ULTIMO HECHO (IEFBR14)    *00520002
//**********************************************************************00550000
//PHP12P09 EXEC PGM=IEFBR14,COND=(4,LT)                                 00551002
//*                                                                     00553000
//ARCHIVO  DD DSN=MXCP.ZM.TMP.MDC.EBCM.PRULTHEC,                        00571000
//            DISP=(NEW,CATLG,DELETE),                                  00580000
//            UNIT=3390,                                                00590000
//            DCB=(RECFM=FB,LRECL=46,BLKSIZE=0,DSORG=PS),               00600000
//            SPACE=(CYL,(4,2),RLSE)                                    00610000
//*                                                                     00621000
//**********************************************************************01292000
//* OBJETIVO : EFECTUA ASIGNACION PREVIA                               *01300002
//*            -- ZM4DH507 --                                          *01310002
//**********************************************************************01320000
//PHP12P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                01321102
//*                                                                     01323000
//ZMH507A1  DD DSN=MXCP.ZM.TMP.MDC.EBCM.S000.ZMHCPD12,DISP=SHR          01324001
//*                                                                     01325000
//ZMH442O   DD DSN=MXCP.ZM.TMP.MDC.EBCM.ASIGNA.VTB442O,                 01351000
//          DISP=(NEW,CATLG,DELETE),                                    01352000
//          DCB=(DSORG=PS,RECFM=FB,LRECL=19,BLKSIZE=0),                 01360000
//          UNIT=3390,                                                  01370000
//          SPACE=(CYL,(4,2),RLSE)                                      01380000
//ZMH546A1  DD DSN=MXCP.ZM.TMP.MDC.EBCM.ASIGNA.VTB546O,                 01401000
//          DISP=(NEW,CATLG,DELETE),                                    01402000
//          DCB=(DSORG=PS,RECFM=FB,LRECL=14,BLKSIZE=0),                 01410000
//          UNIT=3390,                                                  01420000
//          SPACE=(CYL,(4,2),RLSE)                                      01430000
//SYSIN     DD DUMMY                                                    01440000
//SYSTSPRT  DD SYSOUT=*                                                 01481000
//SYSPRINT  DD SYSOUT=*                                                 01482000
//SYSOUT    DD SYSOUT=*                                                 01483000
//SYSDBOUT  DD SYSOUT=*                                                 01484000
//SYSABOUT  DD DUMMY                                                    01490000
//SYSUDUMP  DD DUMMY                                                    01500000
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZHP12T07),DISP=SHR                  01510003
//*
//**********************************************************************01520000
//* OBJETIVO : REP. DE OPERACION DEL DIA Y HECHOS POR ASIGNAR          *01782002
//*            -- ZM4DHU85 --                                          *01783002
//**********************************************************************01520000
//PHP12P06  EXEC PGM=IKJEFT01,COND=(4,LT)                               01784102
//*                                                                     01784300
//ZMHU85P1  DD DSN=MXCP.ZM.TMP.MDC.EBCM.S000.ZMHCPD12,DISP=SHR          01784401
//*                                                                     01784500
//ZMHU85A1  DD DSN=MXCP.ZM.TMP.MDC.EBCM.VIBU85A1,                       01787100
//          DISP=(NEW,CATLG,DELETE),                                    01788000
//          DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),                01789000
//          UNIT=3390,                                                  01789100
//          SPACE=(CYL,(4,2),RLSE)                                      01789200
//ZMHU85A2  DD DSN=MXCP.ZM.TMP.MDC.EBCM.VIBU85A2,                       01789400
//          DISP=(NEW,CATLG,DELETE),                                    01789500
//          DCB=(LRECL=174,BLKSIZE=0,RECFM=FB,DSORG=PS),                01789600
//          UNIT=3390,                                                  01789700
//          SPACE=(CYL,(4,2),RLSE)                                      01789800
//*
//ZMHU85A3 DD DSN=SIVA.MDC.FIX.EBCM.ZMHCPD12.ASIG.EMI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMHU85A4 DD DSN=SIVA.MDC.FIX.EBCM.ZMHCPD12.SOBRA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMHU85RX DD SYSOUT=*                                                  01790600
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU85R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    01790700
//*ZMHU85R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    01790800
//*ZMHU85R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    01790900
//*ZMHU85R1 DD DSN=MXCP.ZM.FIX.EBCM.ZMHCPD12.REPORTE2,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*            UNIT=3390,
//*            SPACE=(CYL,(4,2),RLSE)
//*
//*ZMHU85R2 DD DSN=MXCP.ZM.FIX.EBCM.ZMHCPD12.REPORTE3,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*            UNIT=3390,
//*            SPACE=(CYL,(4,2),RLSE)
//*
//*ZMHU85R3 DD DSN=MXCP.ZM.FIX.EBCM.ZMHCPD12.REPORTE4,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*            UNIT=3390,
//*            SPACE=(CYL,(4,2),RLSE)
//*
//*@SRA
//ZMHU85R8 DD DUMMY                                                     01790700
//ZMHU85R9 DD DUMMY                                                     01790700
//*
//ZMHU85R1 DD DUMMY                                                     01790700
//ZMHU85R2 DD DUMMY                                                     01790800
//ZMHU85R3 DD DUMMY                                                     01790900
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//ZMHU85T1 DD DSN=ZIVA.ZME.CONTROL(ZHP12T14),DISP=SHR                   01791103
//SYSTSPRT DD SYSOUT=*                                                  01791200
//SYSPRINT DD SYSOUT=*                                                  01791300
//SYSOUT   DD SYSOUT=*                                                  01791400
//SYSDBOUT DD SYSOUT=*                                                  01791500
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP12T06),DISP=SHR                   01791603
//*                                                                     03001100
//**********************************************************************03001200
//*  OBJETIVO : REPORTES DE ORDENES SOLICITADAS Y CANCELADAS           *03002002
//*             POR PROMOTOR                                           *03003102
//*             -- ZM4DHU87 --                                         *03003202
//**********************************************************************03001200
//PHP12P05  EXEC PGM=IKJEFT01,COND=(4,LT)                               03004102
//*                                                                     03004300
//ZMHU87A1  DD DSN=MXCP.ZM.TMP.MDC.EBCM.S000.ZMHCPD12,DISP=SHR          03004402
//*                                                                     03004502
//MMUU87R3  DD SYSOUT=*                                                 03018902
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU87R4  DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                   03019102
//*ZMHU87R4 DD DSN=MXCP.ZM.FIX.EBCM.ZMHCPD12.REPORTE5,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMHU87R4  DD DUMMY                                                    03019102
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//ZMHU87T1  DD DSN=MXCP.ZM.WKF.MDC.PASO.ZM4DHU87,                       03019302
//          DISP=(NEW,CATLG,DELETE),                                    03019402
//          DCB=(LRECL=210,BLKSIZE=0,RECFM=FB,DSORG=PS),                03019502
//          UNIT=3390,                                                  03019602
//          SPACE=(CYL,(4,2),RLSE)                                      03019702
//*
//ZMHU87A2  DD DSN=SIVA.MDC.FIX.EBCM.ZMHCPD12.ORD.NO.REAL,
//          DISP=(NEW,CATLG,DELETE),
//          DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//          UNIT=3390,
//          SPACE=(CYL,(4,2),RLSE)
//*@SRA
//ZMHU87T4  DD DUMMY
//*
//SORTWORK  DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         03019802
//SYSTSPRT  DD SYSOUT=*                                                 03019902
//SYSPRINT  DD SYSOUT=*                                                 03020002
//SYSOUT    DD SYSOUT=*                                                 03020102
//SYSDBOUT  DD SYSOUT=*                                                 03020202
//SYSABOUT  DD DUMMY                                                    03020302
//SYSUDUMP  DD DUMMY                                                    03020402
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZHP12T05),DISP=SHR                  03020503
//*
//**********************************************************************03441200
//* OBJETIVO : REPORTES DE ORDENES SOLICITADAS Y CANCELADAS            *03442002
//*            -- ZM4DHU86 --                                          *03443002
//**********************************************************************03441200
//PHP12P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                03444102
//*                                                                     03444300
//ZMHU86P1 DD DSN=MXCP.ZM.TMP.MDC.EBCM.S000.ZMHCPD12,DISP=SHR           03444401
//*                                                                     03444500
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU86R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    03449200
//*ZMHU86R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    03449300
//*ZMHU86R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    03449400
//*ZMHU86R1 DD DSN=MXCP.ZM.FIX.EBCM.ZMHCPD12.REPORTE6,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//*ZMHU86R2 DD DSN=MXCP.ZM.FIX.EBCM.ZMHCPD12.REPORTE7,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//*ZMHU86R3 DD DSN=MXCP.ZM.FIX.EBCM.ZMHCPD12.REPORTE8,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMHU86R1 DD DUMMY                                                     03449200
//ZMHU86R2 DD DUMMY                                                     03449300
//ZMHU86R3 DD DUMMY                                                     03449400
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//ZMHU86A1 DD DSN=MXCP.ZM.TMP.MDC.EBCM.VIBU86A1,                        03449500
//         DISP=(NEW,CATLG,DELETE),                                     03449600
//         DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS),                 03449700
//         UNIT=3390,                                                   03449800
//         SPACE=(CYL,(4,2),RLSE)                                       03449900
//*
//ZMHU86A2 DD DSN=MXCP.ZM.TMP.MDC.EBCM.VIBU86A2,                        03450100
//         DISP=(NEW,CATLG,DELETE),                                     03450200
//         DCB=(RECFM=FB,LRECL=136,BLKSIZE=0,DSORG=PS),                 03450300
//         UNIT=3390,                                                   03450400
//         SPACE=(CYL,(4,2),RLSE)                                       03450500
//*
//ZMHU86A5 DD DSN=MXCP.ZM.TMP.MDC.EBCM.ORDEN.CAN.PRE,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=239,RECFM=FB,BLKSIZE=0,DSORG=PS),
//         UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMHU86T1 DD DSN=ZIVA.ZME.CONTROL(ZHP12T14),DISP=SHR                   03450703
//SYSTSPRT DD SYSOUT=*                                                  03450800
//SYSPRINT DD SYSOUT=*                                                  03450900
//SYSOUT   DD SYSOUT=*                                                  03451000
//SYSDBOUT DD SYSOUT=*                                                  03451100
//SYSABOUT DD DUMMY                                                     03451200
//SYSUDUMP DD DUMMY                                                     03451300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP12T04),DISP=SHR                   03451403
//*                                                                     03451700
//**********************************************************************03451800
//* OBJETIVO : REPORTE DE PAQUETES NO DISTRIBUIDOS                     *03452002
//*            -- ZM4DH498 --                                          *03453002
//**********************************************************************03451600
//PHP12P03  EXEC PGM=IKJEFT01,COND=(4,LT)                               03461002
//*                                                                     03463000
//ZMH498A1  DD DSN=MXCP.ZM.TMP.MDC.EBCM.S000.ZMHCPD12,DISP=SHR          03464001
//*                                                                     03465000
//ZMH498R1  DD SYSOUT=*                                                 03501000
//ZMH498T1  DD DSN=MXCP.ZM.WKF.MDC.PASO.ZM4DH498,                       03502000
//          DISP=(NEW,CATLG,DELETE),
//          DCB=(DSORG=PS,RECFM=FB,LRECL=158,BLKSIZE=0),                03510000
//          UNIT=3390,                                                  03520000
//          SPACE=(CYL,(4,2),RLSE)                                      03530000
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         03540000
//SYSTSPRT  DD SYSOUT=*                                                 03581000
//SYSPRINT  DD SYSOUT=*                                                 03582000
//SYSOUT    DD SYSOUT=*                                                 03583000
//SYSDBOUT  DD SYSOUT=*                                                 03584000
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZHP12T03),DISP=SHR                  03590003
//*                                                                     03601000
//**********************************************************************03602000
//* OBJETIVO : REPORTES DE CANCELACIONES Y CAMBIOS A HECHOS            *03610002
//*            -- ZM4DH464 --                                          *03611002
//**********************************************************************03600000
//PHP12P02  EXEC PGM=IKJEFT01,COND=(4,LT)                               03621002
//*                                                                     03623000
//ZMH464A1  DD DSN=MXCP.ZM.TMP.MDC.EBCM.S000.ZMHCPD12,DISP=SHR          03624001
//*                                                                     03625000
//ZMH464R1  DD SYSOUT=*                                                 03651000
//SYSTSPRT  DD SYSOUT=*                                                 03691000
//SYSPRINT  DD SYSOUT=*                                                 03692000
//SYSOUT    DD SYSOUT=*                                                 03693000
//SYSDBOUT  DD SYSOUT=*                                                 03694000
//SYSABOUT  DD DUMMY                                                    03700000
//SYSUDUMP  DD DUMMY                                                    03710000
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZHP12T02),DISP=SHR                  03720003
//*
