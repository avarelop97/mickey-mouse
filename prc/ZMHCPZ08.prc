//ZMHCPZ08 PROC                                                         00002025
//**********************************************************************
//*               C A S A   D E  B O L S A                             *
//*               ========================                             *
//*               << SISTEMA DE VALORES >>                             *
//*                                                                    *
//* APLICACION : MODULO UNICO DE VALORES  (M.U.V.)                     *
//* DESCRIPCION: PREVIO AL CIERRE DE DIA DEL MODULO DE CAPITALES       *
//*              PREVIO DE ASIGNACIONES DEL DIA DE CAPITALES           *
//* OBJETIVO   : GENERAR ARCHIVO CON LOS DATOS DE LAS EMISORAS,        *
//*              SERIES VALIDAS PARA E-GUARD (MERCADO DE CAPITALES,    *
//*              MERCADO DE DINERO Y SOCIEDADES DE INVERSION           *
//* OPCION LINEA     = 166, TRANSACCION = Z536, PREFIJO = SIVAXPRE     *
//* PROC QUE SUBMITE : ZMHCPP08                                        *
//* JCL              : CBHCPZ08                                        *
//* CORRE DESPUES DE :                                                 *
//* CORRE ANTES   DE :                                                 *
//* PERIODICIDAD     : A SOLICITUD DEL USUARIO                         *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//*            L O G    D E    M O D I F I C A C I O N E S             *
//*--------------------------------------------------------------------*
//*                                                                    *
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-12 CAPGEMINI 09MAY13 COMENTAR EL PASO PHP08P10.           *
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//**********************************************************************01292000
//* OBJETIVO : GENERAR ARCHIVO CON LOS DATOS DE LAS EMISORAS -         *01292000
//*            SERIES VALIDAS PARA E-GUARD (MERCADO DE CAPITA-         *01311000
//*            LES, MERCADO DE DINERO Y SOCIEDADES DE INVERSI-         *01311000
//*            ON).                                                    *01311000
//*            -- ZM4DQQ01 --.                                         *01311000
//**********************************************************************01320000
//PHP08P22 EXEC PGM=IKJEFT01                                            01321008
//ZMDQQ012 DD DSN=MXCP.ZM.FIX.MDC.EMP.EMISORAS.EGUARD,                  01401002
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
//ARCHIVO  DD DSN=SIVA.MDC.WKF.EMP.PRULTHEC,                            00571007
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
//ZMHJ07A1 DD DSN=SIVA.MDC.WKF.EMP.SUC.ZMHCPE08,DISP=SHR                00644002
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
//ZMH507A1 DD DSN=SIVA.MDC.WKF.EMP.SUC.ZMHCPE08,DISP=SHR                01324002
//*                                                                     01325000
//ZMH442O  DD DSN=SIVA.MDC.WKF.EMP.ASIGNA.VTB442O,                      01351002
//            DISP=(NEW,CATLG,DELETE),                                  01352000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=19,BLKSIZE=0),               01360021
//            UNIT=3390,                                                01370021
//            SPACE=(CYL,(4,2),RLSE)                                    01380021
//ZMH546A1 DD DSN=SIVA.MDC.WKF.EMP.ASIGNA.VTB546O,                      01401002
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
//*********************************************************************
//* OBJETIVO : REP. DE OPERACION DEL DIA Y HECHOS POR ASIGNAR         *
//*            -- ZM4DHU85 -- ES REEMPLAZADO POR ZM4DHV85.            *
//*********************************************************************
//PHP08P0D EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHV85P1 DD DSN=SIVA.MDC.WKF.EMP.SUC.ZMHCPE08,DISP=SHR
//*
//ZMHV85A1 DD DSN=SIVA.MDC.WKF.EMP.VIBV85A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FBA,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMHV85A2 DD DSN=SIVA.MDC.FIX.EMP.ASIG.E.PREV85,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=170,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMHV85A3 DD DSN=SIVA.MDC.FIX.EMP.ZMHCPZ08.ASIG.EMIV85,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMHV85A4 DD DSN=SIVA.MDC.FIX.EMP.ZMHCPZ08.SOBRAV85,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMHV85RX DD SYSOUT=O
//ZMHV85R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHV85R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHV85R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHV85T1 DD DSN=ZIVA.ZME.CONTROL(ZHP08T22),DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T0D),DISP=SHR
//*
//**********************************************************************01292000
//* OBJETIVO : GENERA ARCHIVOS DE HECHOS                               *01292000
//*            -- ZM4DHV61 --                                          *01311000
//**********************************************************************01320000
//PHP08P0E EXEC PGM=IKJEFT01,COND=(4,LT)                                01321008
//ZMHV61A1 DD DSN=SIVA.MDC.WKF.EMP.SUC.ZMHCPE08,DISP=SHR                01324002
//*                                                                     01325000
//ZMHV61A2 DD DSN=MXCP.ZM.WKF.HECHOS.CPA,                               01351002
//            DISP=(NEW,CATLG,DELETE),                                  01352000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=150,BLKSIZE=0),              01360021
//            UNIT=3390,SPACE=(CYL,(10,2),RLSE)                         01370021
//ZMHV61A3 DD DSN=MXCP.ZM.WKF.HECHOS.VTA,                               01401002
//            DISP=(NEW,CATLG,DELETE),                                  01402008
//            DCB=(DSORG=PS,RECFM=FB,LRECL=150,BLKSIZE=0),              01410022
//            UNIT=3390,SPACE=(CYL,(10,2),RLSE)                         01420022
//SYSIN    DD DUMMY                                                     01440000
//SYSTSPRT DD SYSOUT=*                                                  01450017
//SYSPRINT DD SYSOUT=*                                                  01460017
//SYSOUT   DD SYSOUT=*                                                  01470017
//SYSDBOUT DD SYSOUT=*                                                  01480017
//SYSABOUT DD DUMMY                                                     01490000
//SYSUDUMP DD DUMMY                                                     01500000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T0E),DISP=SHR                   01510005
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE HECHOS DE COMPRA         *
//**********************************************************************
//PHP08P0F EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.WKF.HECHOS.CPA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.HECHOS.COMPRA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=150,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T0F),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//* DESCRIPCION: REALIZAR SORT DEL ARCHIVO DE HECHOS DE VENTA          *
//**********************************************************************
//PHP08P0G EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.WKF.HECHOS.VTA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.HECHOS.VENTA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=150,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T0G),DISP=SHR
//*
//**********************************************************************01292000
//* OBJETIVO : GENERA ARCHIVOS DE CRUCES INVALIDOS                     *01292000
//*            -- ZM4DHV62 --                                          *01311000
//**********************************************************************01320000
//PHP08P0H EXEC PGM=IKJEFT01,COND=(4,LT)                                01321008
//ZMHV62A1 DD DSN=SIVA.MDC.WKF.EMP.SUC.ZMHCPE08,DISP=SHR                01324002
//*                                                                     01325000
//ZMHV62A2 DD DSN=MXCP.ZM.WKF.HECHOS.COMPRA,DISP=SHR                    01351002
//ZMHV62A3 DD DSN=MXCP.ZM.WKF.HECHOS.VENTA,DISP=SHR                     01401002
//ZMHV62R1 DD DSN=MXCP.ZM.WKF.HECHOS.CRUCES,                            01401002
//            DISP=(NEW,CATLG,DELETE),                                  01402008
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),              01410022
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)                          01420022
//SYSIN    DD DUMMY                                                     01440000
//SYSTSPRT DD SYSOUT=*                                                  01450017
//SYSPRINT DD SYSOUT=*                                                  01460017
//SYSOUT   DD SYSOUT=*                                                  01470017
//SYSDBOUT DD SYSOUT=*                                                  01480017
//SYSABOUT DD DUMMY                                                     01490000
//SYSUDUMP DD DUMMY                                                     01500000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T0H),DISP=SHR                   01510005
//*
//**********************************************************************
//* PROGRAMA:    IKJEFT01
//* DESCRIPCION: GENERAR REPORTE A CONTR-D
//**********************************************************************
//PHP08P0I EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.WKF.HECHOS.CRUCES,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
