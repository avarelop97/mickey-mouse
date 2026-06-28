//ZMTEPM01 PROC
//*
//**********************************************************************
//* SISTEMA        :  MODULO UNICO DE VALORES  (M.U.V.)                *
//*                                                                    *
//* JCL DISPARADOR :  BCTENM01                                         *
//*                                                                    *
//* OBJETIVO       :  .GENERAR LOS GDG'S DE EDOSCTAS DE BPIGO          *
//*                   .CARGA A LA BASE DATOS LOS EDOSCTA DE BPIGO PARA *
//*                    SU CONSULTA EN EL MUV(EN T.F., INTERNET Y 3270) *
//*                   .TRANSMITE VIA TANTIA LOS ESTADOS DE CUENTA A UN *
//*                    A UN SERVIDOR UNIX.                             *
//* FRECUENCIA     :  MENSUAL                                          *
//*                                                                    *
//*         -- NOTA:SE ARRANCA DESDE AS400 VIA RUNJOB-SIKLICO --       *
//*                                                                    *
//* CORRE CUANDO TERMINA EL PROCESO DE ESTADOS DE CUENTA EN BPIGO.     *
//*                                                                    *
//**********************************************************************
//* OBJETIVO: GENERA LOS GDG'S  DE  LAS TRANSMISIONES HECHAS DESDE
//*           BPIGO PARA LOS ARCHIVOS BPRIVAD Y BPATRIM CNFA Y CIF CTL
//*********************************************************************
//*
//PTE01P19 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.EBPRIVAD.CNFA,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.EBPRIVAD.CNFA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(BKUP.MODEL,LRECL=133,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*
//PTE01P18 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.EBPATRIM.CNFA,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.EBPATRIM.CNFA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(BKUP.MODEL,LRECL=133,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//PTE01P17 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.EBPIGO.CIFCNT1,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.EBPIGO.CIFCNT1(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(BKUP.MODEL,LRECL=82,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//PTE01P16 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.EBPIGO.CIFCNT2,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.EBPIGO.CIFCNT2(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(BKUP.MODEL,LRECL=130,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  GENERACION DE BASE DE DATOS DE ESTADOS DE CUENTA DE *
//*                BANCA PATRIMONIAL (BPIGO) HISTORICO                 *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PTE01P15 EXEC PGM=ZM3DG001,COND=(4,LT),                               00250000
//         PARM=('&EMP','&SUC','&INT1','&FECHA',)                       00260000
//SYSTSPRT DD SYSOUT=*                                                  00270000
//SYSPRINT DD SYSOUT=*                                                  00280000
//SYSOUT   DD SYSOUT=*                                                  00290000
//SYSDBOUT DD SYSOUT=*                                                  00300000
//SYSABOUT DD DUMMY                                                     00310000
//SYSUDUMP DD DUMMY                                                     00320000
//*                                                                     00330000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMTEPD03,                        00340000
//            DISP=(NEW,CATLG,DELETE),                                  00350000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00360000
//            UNIT=3390,                                                00370000
//            SPACE=(CYL,(2,1),RLSE)                                    00380000
//*                                                                     01610000
//**********************************************************************01890000
//*                    -- ZM4MU020  --                                  01900000
//*  ACTUALIZA LA BASE DE DATOS HISTORICA DE ESTADOS DE CUENTA DE       01910000
//*  ACUERDO AL LAYOUT DE LOS ARCHIVOS DE BANCA PATRIMONIAL             01920000
//**********************************************************************01930000
//PTE01P14 EXEC PGM=IKJEFT01,COND=(0,NE)                                01940000
//ZMU020P1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMTEPD03,DISP=SHR                01950000
//*                                                                     01960000
//*---- ARCHIVOS ENTRADA MUV       E.C. IMPRESOS SIN RECORTAR           01970000
//ZMU020M1 DD DUMMY                                                     01980000
//ZMU020M2 DD DUMMY                                                     01990000
//ZMU020M3 DD DUMMY                                                     02000000
//*                                                                     02010000
//*---- ARCHIVOS ENTRADA BPIGO     E.C. IMPRESOS RECORTADOS             02020000
//ZMU020B1 DD DSN=MXCP.ZM.FIX.ECT.EBPATRIM.PF01,DISP=SHR                02030000
//ZMU020B2 DD DSN=MXCP.ZM.FIX.ECT.EBPATRIM.PF02,DISP=SHR                02040000
//ZMU020B3 DD DSN=MXCP.ZM.FIX.ECT.EBPATRIM.PF03,DISP=SHR                02050000
//ZMU020B4 DD DSN=MXCP.ZM.FIX.ECT.EBPATRIM.CNFA,DISP=SHR                02051000
//*                                                                     02051100
//ZMU020B5 DD DSN=MXCP.ZM.FIX.ECT.EBPRIVAD.PF01,DISP=SHR                02051200
//ZMU020B6 DD DSN=MXCP.ZM.FIX.ECT.EBPRIVAD.PF02,DISP=SHR                02051300
//ZMU020B7 DD DSN=MXCP.ZM.FIX.ECT.EBPRIVAD.PF03,DISP=SHR                02051400
//ZMU020B8 DD DSN=MXCP.ZM.FIX.ECT.EBPRIVAD.CNFA,DISP=SHR                02052000
//*                                                                     02060000
//*---- ARCHIVO SALIDA BPIGO/MUV E.C. IMPRESO PF01 ADMN SIN RECORTAR    02070000
//ZMU020HS DD DSN=MXCP.ZM.FIX.ECT.EBPIGO.F01.ADMN,                      02080000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        02090000
//            DCB=(DSORG=PS,LRECL=1278,RECFM=FB,BLKSIZE=0),             02100000
//            SPACE=(CYL,(200,100),RLSE)                                02110000
//*                                                                     02120000
//SYSTSPRT DD SYSOUT=*                                                  02130000
//SYSPRINT DD SYSOUT=*                                                  02140000
//SYSOUT   DD SYSOUT=*                                                  02150000
//SYSDBOUT DD SYSOUT=*                                                  02160000
//SYSABOUT DD SYSOUT=*                                                  02170000
//SYSUDUMP DD DUMMY                                                     02180000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZTE01T14),DISP=SHR                   02191000
//*                                                                     02200000
//**********************************************************************02200100
//*                    -- ZM4MU022  --                                  02200200
//*  GENERA ARCHIVOS PARA ESTADOS DE CUENTA A PARTIR DE LAS TABLAS      02200300
//*  HISTORICAS ZMDT930, ZMDT932, ZMDT933                               02200400
//**********************************************************************02200600
//PTE01P13 EXEC PGM=IKJEFT01,COND=(0,NE)                                02200700
//ZMU022P1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMTEPD03,DISP=SHR                02200800
//*                                                                     02201000
//*---- ARCHIVOS SALIDA E.C. BANCA PATRIMONIAL                          02201100
//ZMU022A1 DD DSN=MXCP.ZM.GDGD.ECT.EBPATRIM.PF01(+1),                   02201200
//            DISP=(NEW,CATLG,DELETE),                                  02201300
//            SPACE=(CYL,(200,100),RLSE),                               02201400
//            DCB=(BKUP.MODEL,LRECL=1214,RECFM=FB,BLKSIZE=0),           02201500
//            UNIT=3390                                                 02201600
//ZMU022A2 DD DSN=MXCP.ZM.GDGD.ECT.EBPATRIM.PF02(+1),                   02201700
//            DISP=(NEW,CATLG,DELETE),                                  02201800
//            SPACE=(CYL,(200,100),RLSE),                               02201900
//            DCB=(BKUP.MODEL,LRECL=214,RECFM=FB,BLKSIZE=0),            02202000
//            UNIT=3390                                                 02203000
//ZMU022A3 DD DSN=MXCP.ZM.GDGD.ECT.EBPATRIM.PF03(+1),                   02203100
//            DISP=(NEW,CATLG,DELETE),                                  02203200
//            SPACE=(CYL,(200,100),RLSE),                               02203300
//            DCB=(BKUP.MODEL,LRECL=224,RECFM=FB,BLKSIZE=0),            02203400
//            UNIT=3390                                                 02203500
//*                                                                     02203700
//*---- ARCHIVOS SALIDA E.C. BANCA PRIVADA                              02203800
//ZMU022A4 DD DSN=MXCP.ZM.GDGD.ECT.EBPRIVAD.PF01(+1),                   02203900
//            DISP=(NEW,CATLG,DELETE),                                  02204000
//            SPACE=(CYL,(200,100),RLSE),                               02204100
//            DCB=(BKUP.MODEL,LRECL=1214,RECFM=FB,BLKSIZE=0),           02204200
//            UNIT=3390                                                 02204300
//ZMU022A5 DD DSN=MXCP.ZM.GDGD.ECT.EBPRIVAD.PF02(+1),                   02204400
//            DISP=(NEW,CATLG,DELETE),                                  02204500
//            SPACE=(CYL,(200,100),RLSE),                               02204600
//            DCB=(BKUP.MODEL,LRECL=214,RECFM=FB,BLKSIZE=0),            02204700
//            UNIT=3390                                                 02204800
//ZMU022A6 DD DSN=MXCP.ZM.GDGD.ECT.EBPRIVAD.PF03(+1),                   02204900
//            DISP=(NEW,CATLG,DELETE),                                  02205000
//            SPACE=(CYL,(200,100),RLSE),                               02205100
//            DCB=(BKUP.MODEL,LRECL=224,RECFM=FB,BLKSIZE=0),            02205200
//            UNIT=3390                                                 02205300
//*                                                                     02205500
//SYSTSPRT DD SYSOUT=*                                                  02205600
//SYSPRINT DD SYSOUT=*                                                  02205700
//SYSOUT   DD SYSOUT=*                                                  02205800
//SYSDBOUT DD SYSOUT=*                                                  02205900
//SYSABOUT DD SYSOUT=*                                                  02206000
//SYSUDUMP DD DUMMY                                                     02206100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZTE01T13),DISP=SHR                   02206200
//*                                                                     02206300
//*
//**********************************************************************02200100
//*  TRANSMISIONES DE ESTADOS DE CUENTA A UNIX A TRAVES DE TANTIA.      02200200
//**********************************************************************02200600
//*PUNM0112 EXEC PGM=FTUCMD,COND=(4,LT)
//*STEPLIB  DD DSN=SYS3.TANTIA.TGT.LOAD,DISP=SHR
//*AUDIT    DD SYSOUT=*
//*SYSABEND DD SYSOUT=*
//*TANTIAPW DD DISP=SHR,DSN=SYS3.TANTIA.VPWD(TANTIPWP)
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZTE01T12),DISP=SHR
//**
//*PUNM0111 EXEC PGM=FTUCMD,COND=(4,LT)
//*STEPLIB  DD DSN=SYS3.TANTIA.TGT.LOAD,DISP=SHR
//*AUDIT    DD SYSOUT=*
//*SYSABEND DD SYSOUT=*
//*TANTIAPW DD DISP=SHR,DSN=SYS3.TANTIA.VPWD(TANTIPWP)
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZTE01T11),DISP=SHR
//**
//*PUNM0110 EXEC PGM=FTUCMD,COND=(4,LT)
//*STEPLIB  DD DSN=SYS3.TANTIA.TGT.LOAD,DISP=SHR
//*AUDIT    DD SYSOUT=*
//*SYSABEND DD SYSOUT=*
//*TANTIAPW DD DISP=SHR,DSN=SYS3.TANTIA.VPWD(TANTIPWP)
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZTE01T10),DISP=SHR
//**
//*PUNM0109 EXEC PGM=FTUCMD,COND=(4,LT)
//*STEPLIB  DD DSN=SYS3.TANTIA.TGT.LOAD,DISP=SHR
//*AUDIT    DD SYSOUT=*
//*SYSABEND DD SYSOUT=*
//*TANTIAPW DD DISP=SHR,DSN=SYS3.TANTIA.VPWD(TANTIPWP)
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZTE01T09),DISP=SHR
//**
//*PUNM0108 EXEC PGM=FTUCMD,COND=(4,LT)
//*STEPLIB  DD DSN=SYS3.TANTIA.TGT.LOAD,DISP=SHR
//*AUDIT    DD SYSOUT=*
//*SYSABEND DD SYSOUT=*
//*TANTIAPW DD DISP=SHR,DSN=SYS3.TANTIA.VPWD(TANTIPWP)
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZTE01T08),DISP=SHR
//**
//*PUNM0107 EXEC PGM=FTUCMD,COND=(4,LT)
//*STEPLIB  DD DSN=SYS3.TANTIA.TGT.LOAD,DISP=SHR
//*AUDIT    DD SYSOUT=*
//*SYSABEND DD SYSOUT=*
//*TANTIAPW DD DISP=SHR,DSN=SYS3.TANTIA.VPWD(TANTIPWP)
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZTE01T07),DISP=SHR
//**
//*PUNM0106 EXEC PGM=FTUCMD,COND=(4,LT)
//*STEPLIB  DD DSN=SYS3.TANTIA.TGT.LOAD,DISP=SHR
//*AUDIT    DD SYSOUT=*
//*SYSABEND DD SYSOUT=*
//*TANTIAPW DD DISP=SHR,DSN=SYS3.TANTIA.VPWD(TANTIPWP)
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZTE01T06),DISP=SHR
//**
//*PUNM0105 EXEC PGM=FTUCMD,COND=(4,LT)
//*STEPLIB  DD DSN=SYS3.TANTIA.TGT.LOAD,DISP=SHR
//*AUDIT    DD SYSOUT=*
//*SYSABEND DD SYSOUT=*
//*TANTIAPW DD DISP=SHR,DSN=SYS3.TANTIA.VPWD(TANTIPWP)
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZTE01T05),DISP=SHR
//**
//*PUNM0104 EXEC PGM=FTUCMD,COND=(4,LT)
//*STEPLIB  DD DSN=SYS3.TANTIA.TGT.LOAD,DISP=SHR
//*AUDIT    DD SYSOUT=*
//*SYSABEND DD SYSOUT=*
//*TANTIAPW DD DISP=SHR,DSN=SYS3.TANTIA.VPWD(TANTIPWP)
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZTE01T04),DISP=SHR
//**
//*PUNM0103 EXEC PGM=FTUCMD,COND=(4,LT)
//*STEPLIB  DD DSN=SYS3.TANTIA.TGT.LOAD,DISP=SHR
//*AUDIT    DD SYSOUT=*
//*SYSABEND DD SYSOUT=*
//*TANTIAPW DD DISP=SHR,DSN=SYS3.TANTIA.VPWD(TANTIPWP)
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZTE01T03),DISP=SHR
//**
//*PUNM0102 EXEC PGM=FTUCMD,COND=(4,LT)
//*STEPLIB  DD DSN=SYS3.TANTIA.TGT.LOAD,DISP=SHR
//*AUDIT    DD SYSOUT=*
//*SYSABEND DD SYSOUT=*
//*TANTIAPW DD DISP=SHR,DSN=SYS3.TANTIA.VPWD(TANTIPWP)
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZTE01T02),DISP=SHR
//**
//*PUNM0101 EXEC PGM=FTUCMD,COND=(4,LT)
//*STEPLIB  DD DSN=SYS3.TANTIA.TGT.LOAD,DISP=SHR
//*AUDIT    DD SYSOUT=*
//*SYSABEND DD SYSOUT=*
//*TANTIAPW DD DISP=SHR,DSN=SYS3.TANTIA.VPWD(TANTIPWP)
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZTE01T01),DISP=SHR
//**********************************************************************
//*        TERMINA PROCESO ZMTEPM01 SIVA MULTIEMPRESA                  *
//**********************************************************************
