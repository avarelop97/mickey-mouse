//ZMHCPD71  PROC                                                        00010025
//**********************************************************************00020000
//*                                                                    *00030000
//*                   C A S A   D E  B O L S A                         *00031000
//*                   ========================                         *00032000
//*                   <<  C A P I T A L E S  >>                        *00033000
//*                                                                    *00120000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00130000
//*                                                                    *00140000
//* PROCESO        :  ZMHCPD71 1RA. PARTE DE 3.                        *00150025
//*                   CIERRE DE DIA DEL MODULO DE CAPITALES            *00160000
//*                                                                    *00170000
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE CAPITALES ENVIADO *00180000
//*                   POR CONTROL-M                                    *00190000
//*                                                                    *00200000
//* CORRE                                                              *00210000
//* ANTES DE       :  ZMHCPD05 2A.  PARTE DE CIERRE DE CAPITALES       *00220025
//*                                                                    *00230000
//* DESPUES DE     :  CBHCND01 (CIERRE DE CAPITALES RESPALDOS).        *00240000
//*                                                                    *00250000
//* PERIODICIDAD   :  DIARIO                                           *00260000
//*                                                                    *00270000
//* ELABORADO POR  :  CAROLINA ROJAS                                   *00280000
//*                                                                    *00290000
//*                                                                    *00310000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *00320000
//*                   SIEMPRE ANTES DE LA 2DA. PARTE DEL CIERRE        *00330000
//*                   ZMHCPD05.                                        *00340025
//**********************************************************************
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC04P29     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *
//*                     ===   CAPITALES     ===                        *
//**********************************************************************
//PHC04P29 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','BCM000','     ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD71,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00550040
//*                      LOG DE MODIFICACIONES                         *00482000
//* OBJETIVO : REPORTE DE SOLICITUD DE ORDENES                         *00520000
//*          -- ZM4DHU91 --                                            *00530001
//**********************************************************************00550040
//PHC91P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00551027
//*                                                                     00553001
//ZMHU91A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD71,DISP=SHR       00554038
//*                                                                     00555001
//ZMHU91R1 DD DSN=MXCP.ZM.TMP.MDC.ZMHCPD71.E&EMP..AUXR1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=152,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMHU91A2 DD DSN=MXCP.ZM.TMP.MDC.ZMHCPD71.E&EMP..AUX1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=152,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00580000
//SYSTSPRT DD SYSOUT=*                                                  00590035
//SYSPRINT DD SYSOUT=*                                                  00600035
//SYSOUT   DD SYSOUT=*                                                  00610035
//SYSDBOUT DD SYSOUT=*                                                  00620035
//SYSABOUT DD DUMMY                                                     00630000
//SYSUDUMP DD DUMMY                                                     00640000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZCH71T01),DISP=SHR                   00651041
//*
//
