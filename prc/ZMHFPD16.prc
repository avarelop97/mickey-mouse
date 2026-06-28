//ZMHFPD16  PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE CAPITALES  >>                   *
//*                                                                    *
//*                                                                    *00810033
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00820033
//*                                                                    *00830033
//* PROCESO        :  CBHFPD16 FIN DE DIA DE MERCADO DE CAPITALES      *00840033
//*                   PARA BANCA PATRIMONIAL.                          *00840033
//*                   REPORTES DE CAPITALES.                           *00850033
//*                                                                    *00860033
//* OBJETIVO       :  GENERAR LA REPORTERIA DE FIN DE DIA CAPITALES    *00870033
//*                                                                    *00880033
//* CORRE                                                              *00890033
//* ANTES DE       :                                                   *00900033
//*                                                                    *00910033
//* DESPUES DE     :                                                   *00920033
//*                                                                    *00930033
//* PERIODICIDAD   :  DIARIO                                           *00930033
//*                                                                    *00930033
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *00940033
//*                                                                    *00950033
//**********************************************************************00970033
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* FECHA    : 20 DE DICIEMBRE  DE 2005.                               *
//* MODIFICO : ERNESTO MANUEL CUAUTLE MARTINEZ.                        *
//*                                                                    *
//* OBJETIVO : SE ADICIONA PASO PARA EL PROCESO DEL PROGRAMA ZM4DHW67. *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |10-04-2012|XMBB077|        |SE INCORPORAN PASOS A FIN DE DIA *
//*                                   DE MERCADO DE CAPITALES PARA     *
//*FS-1.0.0-01-INI                    BANCA PATRIMONIAL.               *
//*FS-1.0.0-01-FIN                                                     *
//**********************************************************************
//**********************************************************************
//*      |17-05-2012|XMBB103|        |SE AUMENTA DE DCB=(LRECL=184     *
//*FS-1.0.0-02-INI                    A DCB=(LRECL=189                 *
//*--------------------------------------------------------------------*
//*@SRA  |09-01-2023|INDRA  |PHF16P05|SE AGREGA SALIDA REPORTE TXT     *
//*                         |PHF16P06|SE AGREGA SALIDA REPORTE TXT     *
//*                         |PHF16P09|SE AGREGA SALIDA REPORTE TXT     *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHF16P15     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//*                                                         ZM3DH001   *
//**********************************************************************
//*FS-1.0.0-01-INI
//*PHF16P10 EXEC PGM=ZM3DG001,
//PHF16P15 EXEC PGM=ZM3DG001,
//*FS-1.0.0-01-FIN
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD16,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*FS-1.0.0-01-INI
//**********************************************************************
//*                                                                    *
//* OBJETIVO : ORDENES GLOBALES DE COMPRA O VENTA POR CUENTA,          *
//*            NO ELEGIBLES.                                           *
//*                        -- ZM4DHU36 --                              *
//**********************************************************************
//PHF16P14 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU36R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU36R1 DD DSN=MXCP.ZM.FIX.ZMHFPD16.REPORTE1,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=134,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMHU36R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//ZMHU36A1 DD DSN=MXCP.ZM.FIX.ZMHU36A1.SAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//**FS-1.0.0-02-INI
//*           DCB=(LRECL=184,RECFM=FB,BLKSIZE=0,DSORG=PS)
//            DCB=(LRECL=189,RECFM=FB,BLKSIZE=0,DSORG=PS)
//**FS-1.0.0-02-FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF16T15),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//* OBJETIVO : ORDENES DE COMPRA O VENTA POR CUENTA, NO ELEGIBLES      *
//*                        -- ZM4DHU37 --                              *
//**********************************************************************
//PHF16P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU37R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU37R1 DD DSN=MXCP.ZM.FIX.ZMHFPD16.REPORTE2,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMHU37R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//ZMHU37A1 DD DSN=MXCP.ZM.FIX.ZMHU37A1.SAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(LRECL=183,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF16T14),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//* OBJETIVO : REPORTE DE ORDENES DE COMPRA O DE VENTA NO ELEGIBLE,    *
//*            POR CUENTA CORRESPONDIENTES A SIC.                      *
//*                        -- ZM4DHU38 --                              *
//**********************************************************************
//PHF16P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU38R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU38R1 DD DSN=MXCP.ZM.FIX.ZMHFPD16.REPORTE3,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMHU38R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//ZMHU38A1 DD DSN=MXCP.ZM.FIX.ZMHU38A1.SAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(LRECL=183,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF16T13),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//* OBJETIVO : REPORTE DE ORDENES DE COMPRA O DE VENTA NO ELEGIBLES,   *
//*            POR CUENTA CORRESPONDIENTES A MESA.                     *
//*                        -- ZM4DHU39 --                              *
//**********************************************************************
//PHF16P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU39R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU39R1 DD DSN=MXCP.ZM.FIX.ZMHFPD16.REPORTE4,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMHU39R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//ZMHU39A1 DD DSN=MXCP.ZM.FIX.ZMHU39A1.SAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(LRECL=183,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF16T12),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//* OBJETIVO : ORDENES DE COMPRA O VENTA GLOBALES POR CUENTA,          *
//*            NO ELEGIBLES.                                           *
//*                        -- ZM4DHU40 --                              *
//**********************************************************************
//PHF16P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU40R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU40R1 DD DSN=MXCP.ZM.FIX.ZMHFPD16.REPORTE5,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMHU40R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//ZMHU40A1 DD DSN=MXCP.ZM.FIX.ZMHU40A1.SAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(LRECL=183,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF16T11),DISP=SHR
//*
//*FS-1.0.0-01-FIN
//**********************************************************************
//*                                                                    *
//* OBJETIVO : REPORTE DE REASIGNACIONES DE M.C. DE B.P.               *
//*                        -- ZM4DHW67 --                              *
//**********************************************************************
//PHF16P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHW67A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD16,DISP=SHR
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHW67R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHW67R1 DD DSN=MXCP.ZM.FIX.ZMHFPD16.REPORTE6,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMHW67R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//ZMHW67A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHFPD16.CORRECIO,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=133,BLKSIZE=0,RECFM=FB,DSORG=PS),
//         UNIT=3390,
//         SPACE=(CYL,(4,2),RLSE)
//*@SRA
//ZMHW67TX DD DSN=SIVA.MDC.FIX.E&EMP..ZMHFPD16.CORRETXT,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=300,BLKSIZE=0,RECFM=FB,DSORG=PS),
//         UNIT=3390,
//         SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF16T10),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//* OBJETIVO : REPORTE DE ORDENES EXTRAORDINARIAS                      *
//*                        -- ZM4DHU84 --                              *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PHF16P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*PI601765  DD DUMMY
//**
//*ZMHU84A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD16,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*ZMHU84R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF16T08),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*  REPORTE DE SOLICITUD DE ORDENES DE COMPRA/VENTA POR EMISORA       *
//*                          -- ZM4DHV20  --                           *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PHF16P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*PI601765  DD DUMMY
//**
//*ZMHV20A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD16,DISP=SHR
//**
//*ZMHV20R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF16T07),DISP=SHR
//**                                                                    00980033
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//PHF16P0B EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PHF16P0B,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMHFPD16.ORDCAPA.ORDENES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),
//            SPACE=(CYL,(500,250),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF16T0B),DISP=SHR
//*
//**********************************************************************
//*  REPORTE DE SOLICITUD DE CANCELACIONES                             *
//*                        -- ZM4DHU88 --                              *
//**********************************************************************
//PHF16P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHU88A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD16,DISP=SHR
//*
//ZMHU88E2 DD DSN=MXCP.ZM.FIX.ZMHFPD16.ORDCAPA.ORDENES,DISP=SHR
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU88R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU88R1 DD DSN=MXCP.ZM.FIX.ZMHFPD16.REPORTE7,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMHU88R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//ZMHU88A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHFPD16.MODIFI,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//         UNIT=3390,
//         SPACE=(CYL,(4,2),RLSE)
//*@SRA
//ZMHU88TX DD DSN=SIVA.MDC.FIX.E&EMP..ZMHFPD16.MODITX,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=300,BLKSIZE=0,RECFM=FB,DSORG=PS),
//         UNIT=3390,
//         SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF16T06),DISP=SHR
//*
//**********************************************************************
//*        REPORTES DE ORDENES SOLICITADAS Y CANCELADAS POR PROMOTOR   *
//*                        -- ZM4DHU87 --                              *
//**********************************************************************
//PHF16P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHU87A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD16,DISP=SHR
//*
//ZZZU87R3 DD SYSOUT=(W,,ZZZ)
//ZZZU87R2 DD SYSOUT=(V,,ZZZ)
//ZZZU87R1 DD SYSOUT=(V,,ZZZ)
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU87R4 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU87R4 DD DSN=MXCP.ZM.FIX.ZMHFPD16.REPORTE8,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMHU87R4 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//ZMHU87T1 DD DSN=&&CAD0103,
//            DISP=(NEW,PASS),
//            DCB=(LRECL=210,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMHU87A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHFPD16.ORD.NO.REAL,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//         UNIT=3390,
//         SPACE=(CYL,(4,2),RLSE)
//*@SRA
//ZMHU87T4 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHFPD16.ORD.NO.RETX,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=200,BLKSIZE=0,RECFM=FB,DSORG=PS),
//         UNIT=3390,
//         SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF16T05),DISP=SHR
//*
//**********************************************************************
//*        REPORTES DE ORDENES SOLICITADAS Y CANCELADAS                *
//*                        -- ZM4DHU86 --                              *
//**********************************************************************
//PHF16P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHU86P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD16,DISP=SHR
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU86R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU86R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU86R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU86R1 DD DSN=MXCP.ZM.FIX.ZMHFPD16.REPORTE9,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//*ZMHU86R2 DD DSN=MXCP.ZM.FIX.ZMHFPD16.REPORT10,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//*ZMHU86R3 DD DSN=MXCP.ZM.FIX.ZMHFPD16.REPORT11,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMHU86R1 DD DUMMY
//ZMHU86R2 DD DUMMY
//ZMHU86R3 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//ZMHU86A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..VIBU86A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMHU86A2 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..ORDEN.X.EMISBP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=136,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMHU86A5 DD DSN=MXCP.ZM.TMP.MDC.FIX.E&EMP..ORDEN.CANCEL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=239,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMHU86T1 DD DSN=ZIVA.ZME.CONTROL(ZHF16T09),DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF16T04),DISP=SHR
//*
//**********************************************************************00990033
//* BORRADO DE ARCHIVOS                                                *01000033
//**********************************************************************01010033
//PHF16P03 EXEC PGM=IDCAMS,COND=(4,LT)
//PI601765  DD DUMMY
//*
//SYSPRINT DD  SYSOUT=*                                                 01040033
//SYSINT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHF16T03),DISP=SHR                  01050033
//*                                                                     01980033
//**********************************************************************
//*        REPORTES DE OPERACIONES WARRANTS PARA SIVACTOS DERIVADOS    *
//*                       -- ZM4DHU89 --                               *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PHF16P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*PI601765  DD DUMMY
//*
//*ZMHU89A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD16,DISP=SHR
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*ZMHU89R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU89R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU89R4 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF16T02),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//* OBJETIVO :   REPORTE DE OPERACION PROPIA.                          *
//*              -- ZM4DHJ53 --                                        *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PHF16P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*PI601765  DD DUMMY
//**
//*ZMHJ53A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD16,DISP=SHR
//**
//*ZMHJ53R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZHF16T01),DISP=SHR
//**
//*PGL-INI:ORDENES CONDICIONADAS
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*--------------------------------------------------------------------*
//*   PASO    : ZMPB1605                                               *
//*   OBJETIVO: GENERA TARJETA DE CONTROL DINAMICA PARA REALIZAR       *
//*             LA DESCARGA DE LAS TABLAS DE ORDENES CONDICIONADAS.    *
//*                     -- ZM4COC03 --                                 *
//*--------------------------------------------------------------------*
//*ZMPB1605 EXEC PGM=IKJEFT01,COND=(4,LT)                               00020700
//**                                                                    00020800
//*SZMDT882 DD DSN=MXCP.ZM.FIX.ZM4COC03.TARJETA.UNLOAD,                 00020900
//*            DISP=(NEW,CATLG,DELETE),                                 00021000
//*            UNIT=3390,                                               00021100
//*            SPACE=(CYL,(500,250),RLSE),                              00021200
//*            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS)               00021300
//**                                                                    00021400
//*SYSTSPRT DD SYSOUT=*                                                 00021500
//*SYSPRINT DD SYSOUT=*                                                 00021600
//*SYSOUT   DD SYSOUT=*                                                 00021700
//*SYSDBOUT DD SYSOUT=*                                                 00021800
//*SYSABOUT DD DUMMY                                                    00021900
//*SYSUDUMP DD DUMMY                                                    00022000
//**                                                                    00022100
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPB1605),DISP=SHR                  00022200
//**                                                                    00022300
//*--------------------------------------------------------------------*00022400
//*   PASO    : ZMPB1610                                               *00022500
//*   OBJETIVO: REALIZA DESCARGA DE TABLAS PARA ORDENES                *00022600
//*--------------------------------------------------------------------*00022700
//*ZMPB1610 EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022800
//*         PARM='MXP1,PHATC104,NEW,,MSGLEVEL(1)'                       00022900
//**                                                                    00023000
//*STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                           00023100
//*         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00023200
//*         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00023300
//**                                                                    00023400
//*SYSREC   DD DSN=MXCP.ZM.FIX.ZM4COC03.ORDENES.UNLOAD,                 00023500
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,                       00023600
//*            SPACE=(CYL,(350,90),RLSE),                               00023700
//*            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                        00023800
//**                                                                    00023900
//*SYSCNTL  DD DUMMY                                                    00024000
//*UTPRINT  DD SYSOUT=*                                                 00024100
//*SYSPRINT DD SYSOUT=*                                                 00024200
//*SYSUDUMP DD SYSOUT=*                                                 00024300
//*SYSIN    DD DSN=MXCP.ZM.FIX.ZM4COC03.TARJETA.UNLOAD,DISP=SHR         00024400
//**                                                                    00024500
//**********************************************************************00024600
//*   PASO    : ZMPB1615                                               *00022500
//*   OBJETIVO: ELIMINA LAS POSICIONES DE LOS CAMPOS QUE PUEDEN        *00022500
//*             CONTENER NULLOS.                                       *00024700
//**********************************************************************00024800
//*ZMPB1615 EXEC PGM=ICEMAN,COND=(4,LT)                                 00024900
//**                                                                    00025000
//*SYSOUT   DD  SYSOUT=*                                                00025100
//*SORTIN   DD  DSN=MXCP.ZM.FIX.ZM4COC03.ORDENES.UNLOAD,                00025200
//*             DISP=SHR                                                00025300
//**                                                                    00025400
//*SORTOUT  DD  DSN=MXCP.ZM.FIX.ZM4COC03.ORDENES.UNLOADXX,              00025500
//*             DISP=(NEW,CATLG,DELETE),                                00025600
//*             UNIT=3390,                                              00025700
//*             DCB=(DSORG=PS,LRECL=173,RECFM=FB,BLKSIZE=0),            00025800
//*             SPACE=(CYL,(100,50),RLSE)                               00025900
//**                                                                    00026000
//*SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMPB1615),DISP=SHR                 00026600
//**                                                                    00026700
//**PGL-FIN:ORDENES CONDICIONADAS
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO DE ORDENES PARA LA BANCA PATRIMONIAL     *
//*            -- ZM4DHW03 --                                          *
//**********************************************************************
//*PHF16P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*PI601765  DD DUMMY
//**PGL-INI:ORDENES CONDICIONADAS
//*ORDENESC DD DSN=MXCP.ZM.FIX.ZM4COC03.ORDENES.UNLOADXX,
//*         DISP=SHR
//**PGL-FIN:ORDENES CONDICIONADAS
//*HECHOSBP DD DSN=MXCP.ZM.FIX.EBCM.ZMHCPD15.ORDENEX.BCM,
//*        DISP=(NEW,CATLG,DELETE),
//**       DCB=(LRECL=212,BLKSIZE=0,RECFM=FB,DSORG=PS),
//**       DCB=(LRECL=214,BLKSIZE=0,RECFM=FB,DSORG=PS),
//**PGL-INI:ORDENES CONDICIONADAS
//**       DCB=(LRECL=242,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*        DCB=(LRECL=245,BLKSIZE=0,RECFM=FB,DSORG=PS),
//**PGL-FIN:ORDENES CONDICIONADAS
//*        UNIT=3390,
//*        SPACE=(CYL,(4,2),RLSE)
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//**
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15T00),DISP=SHR
//**
//**BTRPRO3Q24-I
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO DE ORDENES PARA LA BANCA PATRIMONIAL     *
//*            -- ZM4DHW05 --                                          *
//**********************************************************************
//*PHF16P0C EXEC PGM=IKJEFT01,COND=(4,LT)
//*PI601765  DD DUMMY
//*ENTRADA1 DD DSN=MXCP.ZM.FIX.EBCM.ZMHCPD15.ORDENEX.BCM,
//*         DISP=SHR
//*SALIDA01 DD DSN=MXCP.ZM.FIX.EBCM.ZMHCPD15.ORDENES.BCM,
//*        DISP=(NEW,CATLG,DELETE),
//**       DCB=(LRECL=245,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*        DCB=(LRECL=247,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*        UNIT=3390,
//*        SPACE=(CYL,(4,2),RLSE)
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//**
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC15T0E),DISP=SHR
//*BTRPRO3Q24-F
//**********************************************************************
//* OBJETIVO : GENERAR EL ARCHIVO CON LA DESCARGA DE CONTRATOS PARA LA *
//*            CARGA MANUAL DE PDV                                     *
//*            -- ZM4DHN10 --                                          *
//**********************************************************************
//PHF16P0A EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHN10A1 DD DSN=MXCP.ZM.FIX.EBCM.ZMHFPD16.CUENTA.ZMPDV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(010,005),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC16T0A),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*     ===   F I N    D E    P R O C E S O   ===                      *
//*     ===        C A P I T A L E S          ===                      *
//*                                                                    *
//**********************************************************************
//*  PEND           FIN DE PROCEDIMIENTO ZMHFPD16                      *
//**********************************************************************
