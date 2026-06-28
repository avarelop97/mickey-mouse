//ZMHCNE02  PROC
//*
//**********************************************************************
//*                                                                    *
//*                   C A S A   D E  B O L S A                         *
//*                   ========================                         *
//*                   <<  M E R C A D O   D E   C A P I T A L E S  >>  *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMHCNE02.                                        *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVO DE ORDENES DE MERCADO             *
//*                   DE CAPITALES, PARA LA AUDITORIA DE LA CNBV.      *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  SE PROCESA CADA FIN DE MES.                      *
//*                                                                    *
//* DESPUES DE     :  AL FINALIZAR EL JOB CBHFND33.                    *
//*                                                                    *
//* PERIODICIDAD   :  MENSUAL.                                         *
//*                                                                    *
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN EL FIN DE CADA  *
//*                   MES.                                             *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |10-04-2012|XMBB077|        |SE INCORPORAN PASOS A GENERAR    *
//*                                   ARCHIVO DE ORDENES DE MERCADO DE *
//*FS-1.0.0-01-INI                    CAPITALES, PARA LA AUDITORIA DE  *
//*FS-1.0.0-01-FIN                    CNBV.                            *
//**********************************************************************
//*      |17-05-2012|XMBB103|        |SE                               *
//*FS-1.0.0-02-INI                    AUMENTA DE DCB=(LRECL=184        *
//*                                   A DCB=(LRECL=189                 *
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC02P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//*                                                         ZM3DH001   *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *
//*                     ===   CAPITALES     ===                        *
//**********************************************************************
//*FS-1.0.0-01-INI
//*PHC02P02 EXEC PGM=ZM3DG001,
//PHC02P30 EXEC PGM=ZM3DG001,
//*FS-1.0.0-01-FIN
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCNE02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(05,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                       -- ZM4DHE02 --                               *
//* OBJETIVO : PROGRAMA QUE GENERA ARCHIVO DE ORDENES DE MERCADO       *
//*            DE CAPITALES, PARA LA AUDITORIA DE LA CNBV.             *
//**********************************************************************
//**PHC02P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//**PI601765  DD DUMMY
//*
//**ZM4DHEP2 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCNE02,DISP=SHR
//*
//**ZM4DHE01 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..ORDENES.CNBV,
//**        DISP=(NEW,CATLG,DELETE),
//**        DCB=(LRECL=196,BLKSIZE=0,RECFM=FB,DSORG=PS),
//**        UNIT=3390,
//**        SPACE=(CYL,(4,2),RLSE)
//*
//**ZM4DHE02 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..ASIGXXX.CNBV,
//**        DISP=(NEW,CATLG,DELETE),
//**        DCB=(LRECL=257,BLKSIZE=0,RECFM=FB,DSORG=PS),
//**        UNIT=3390,
//**        SPACE=(CYL,(4,2),RLSE)
//**SYSTSPRT DD SYSOUT=*
//**SYSPRINT DD SYSOUT=*
//**SYSOUT   DD SYSOUT=*
//**SYSDBOUT DD SYSOUT=*
//**SYSABOUT DD DUMMY
//**SYSUDUMP DD DUMMY
//**SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC01T02),DISP=SHR
//*
//*FS-1.0.0-01-INI
//**********************************************************************
//*                       -- ZM4DHU41 --                               *
//* OBJETIVO : ORDENES GLOBALES-CLIENTES NO ELEGIBLES MENSUAL          *
//*                                                                    *
//**********************************************************************
//PHC02P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHU41A1 DD DSN=MXCP.ZM.FIX.ZMHU41A1.SAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//**FS-1.0.0-02-INI
//*           DCB=(LRECL=184,RECFM=FB,BLKSIZE=0,DSORG=PS)
//            DCB=(LRECL=189,RECFM=FB,BLKSIZE=0,DSORG=PS)
//**FS-1.0.0-02-FIN
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU41R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU41R1 DD DSN=MXCP.ZM.FIX.ZMHCNE02.REPORTE1,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=134,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMHU41R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC01T10),DISP=SHR
//*
//**********************************************************************
//*                       -- ZM4DHU42 --                               *
//* OBJETIVO : ORDENES DE COMPRA O DE VENTA - CLIENTES NO ELEGIBLES    *
//*                                                                    *
//**********************************************************************
//PHC02P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHU42A1 DD DSN=MXCP.ZM.FIX.ZMHU42A1.SAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(LRECL=183,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU42R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU42R1 DD DSN=MXCP.ZM.FIX.ZMHCNE02.REPORTE2,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMHU42R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC01T09),DISP=SHR
//*
//**********************************************************************
//*                       -- ZM4DHU43 --                               *
//* OBJETIVO : ORDENES DE COMPRA O DE VENTA -CLIENTES NO ELEGIBLES-SIC *
//*                                                                    *
//**********************************************************************
//PHC02P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHU43A1 DD DSN=MXCP.ZM.FIX.ZMHU43A1.SAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(LRECL=183,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU43R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU43R1 DD DSN=MXCP.ZM.FIX.ZMHCNE02.REPORTE3,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMHU43R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC01T08),DISP=SHR
//*
//**********************************************************************
//*                       -- ZM4DHU44 --                               *
//* OBJETIVO : ORDENES DE COMPRA O DE VENTA - MESA NO ELEGIBLES        *
//*                                                                    *
//**********************************************************************
//PHC02P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHU44A1 DD DSN=MXCP.ZM.FIX.ZMHU44A1.SAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(LRECL=183,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU44R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU44R1 DD DSN=MXCP.ZM.FIX.ZMHCNE02.REPORTE4,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMHU44R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC01T07),DISP=SHR
//*
//**********************************************************************
//*                       -- ZM4DHU45 --                               *
//* OBJETIVO : ORDENES GLOBALES DE COMPA O DE VENTA - CLIENTES NO      *
//*            ELEGIBLES                                               *
//**********************************************************************
//PHC02P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHU45A1 DD DSN=MXCP.ZM.FIX.ZMHU45A1.SAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(LRECL=183,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMHU45R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHU45R1 DD DSN=MXCP.ZM.FIX.ZMHCNE02.REPORTE5,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMHU45R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC01T06),DISP=SHR
//*
//*FS-1.0.0-01-FIN
//**********************************************************************
//*                       -- ZM4DJ025 --                               *
//* OBJETIVO : PROGRAMA DE ARCHIVO DE CLIENTES DE CASA DE BOLSA        *
//*                                                                    *
//**********************************************************************
//PHC02P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ025A3 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..CLIENTE.CNBV,
//        DISP=(NEW,CATLG,DELETE),
//        DCB=(LRECL=1590,BLKSIZE=0,RECFM=FB,DSORG=PS),
//        UNIT=3390,
//        SPACE=(CYL,(27,6),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC01T00),DISP=SHR
//*
