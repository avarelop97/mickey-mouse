//ZMLIPD23 PROC                                                         00001000
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA       :   SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                     <<  CAPITALES   >>                             *
//*                                                                    *
//* PROCESO       :  CBLIND23                                          *
//*                PROCESO QUE REALIZA LA CARGA DE INF. PARA SIST. DIEZ*00050000
//*                                                                    *
//* OBJETIVO      :EJECUTAR LOS PROGRAMAS QUE CARGAN LA TABLA DE COSTOS*
//*                ACTUALIZAN LA "TENOPER", "TENEMIS", "TENSUC" Y LA   *
//*                "TENCTO".                                           *
//*                                                                    *
//* REALIZO       : HUGOLINO REYES (HILDEBRANDO)                       *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//* SUBPROCESO : (D) AL INICIO DE OPERACIONES                          *
//*              - CAPITALES                                           *
//**********************************************************************
//**********************************************************************00010000
//*                                                                    *00020000
//*  OBJETIVO :   RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y    *00030000
//*  PLI23P06     LOS GRABA EN ARCHIVO SECUENCIAL.                     *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PLI23P07 EXEC PGM=ZM3DG001,PARM=('&EMP',' ',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLIPD23,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                        -- ZM4DGR34 --                              *
//*                                                                    *
//* OBJETIVO    : CARGA DIARIA DE TABLA DE LA RELACION DE LOS CENTROS  *
//*               DE COSTOS 31003, 31103, 31203, 31383 EN LA TABLA     *
//*               PARAM CR2 (IPARAM).                                  *
//*                                                                    *
//* PASO REINICIABLE                                *** PROC M.DINERO  *
//**********************************************************************
//PLI23P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD SYSOUT=*                                                  00280000
//SYSUDUMP DD DUMMY                                                     00290000
//ZMGR34A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLIPD23,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLI23T01),DISP=SHR                   00140000
//*
//**********************************************************************
//*                        -- ZM4DGR30 --                              *
//*                                                                    *
//* OBJETIVO    : INSERTAR EN TENOPER APARTIR DE LA TABLA DE OPERA     *
//*               PARA OBTENER LAS OPERACIONES DE COMPRAS Y VENTAS     *
//*               A NIVEL DE CONTRATO,PROMOTOR,SUCURSAL,C.COSTO        *
//*                                                                    *
//* PASO REINICIABLE                                *** PROC M.DINERO  *00060000
//**********************************************************************
//PLI23P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD SYSOUT=*                                                  00280000
//SYSUDUMP DD DUMMY                                                     00290000
//ZMGR30A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLIPD23,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLI23T02),DISP=SHR                   00140000
//*
//**********************************************************************
//*                        -- ZM4DGR31 --                              *
//*                                                                    *
//* OBJETIVO    : INSERTAR EN TENEMIS LOS DATOS OBTENIDOS DE SECART    *
//*               CONCEPT Y CUENTA.                                    *
//*                                                                    *
//* PASO REINICIABLE                                *** PROC M.DINERO  *
//**********************************************************************
//PLI23P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD SYSOUT=*                                                  00280000
//SYSUDUMP DD DUMMY                                                     00290000
//ZMGR31A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLIPD23,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLI23T03),DISP=SHR                   00140000
//*
//**********************************************************************
//*                        -- ZM4DGR32 --                              *
//*                                                                    *
//* OBJETIVO    : INSERTAR EN TENSUC LOS DATOS OBTENIDOS DE SECART     *
//*               CONCEPT Y CUENTA.                                    *
//*                                                                    *
//* PASO REINICIABLE                                *** PROC M.DINERO  *
//**********************************************************************
//PLI23P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD SYSOUT=*                                                  00280000
//SYSUDUMP DD DUMMY                                                     00290000
//ZMGR32A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLIPD23,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLI23T04),DISP=SHR                   00140000
//*
//**********************************************************************
//*                        -- ZM4DGR33 --                              *
//*                                                                    *
//* OBJETIVO    : INSERTAR EN TENCTO LOS DATOS OBTENIDOS DE SECART     *
//*               CONCEPT Y CUENTA.                                    *
//*                                                                    *
//* PASO REINICIABLE                                *** PROC M.DINERO  *
//**********************************************************************
//PLI23P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD SYSOUT=*                                                  00280000
//SYSUDUMP DD DUMMY                                                     00290000
//ZMGR33A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLIPD23,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLI23T05),DISP=SHR                   00140000
//*
//**********************************************************************
//*                       -- ZM4DG002   --                             *
//*   OBJETIVO : DEPURADOR DE LAS TABLAS TENOPER, TENCTO, TENSUC Y     *
//*              TENEMIS.                                              *
//*                                                       ** TEMPORAL  *
//**********************************************************************
//PLI23P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLI23T06),DISP=SHR
//*
