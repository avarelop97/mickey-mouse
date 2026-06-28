//ZMHCPD43  PROC                                                        00010025
//**********************************************************************00020000
//*                                                                    *00030000
//*                   C A S A   D E  B O L S A                         *00031000
//*                   ========================                         *00032000
//*                   <<  C A P I T A L E S  >>                        *00033000
//*                                                                    *00120000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00130000
//*                                                                    *00140000
//* PROCESO        :  CBHCND43 EJECUTA AFECTACION DEL BLOQUE 3         *00150025
//*                   CIERRE DE DIA DEL MODULO DE CAPITALES            *00160000
//*                                                                    *00170000
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE CAPITALES ENVIADO *00180000
//*                   POR CONTROL-M                                    *00190000
//*                                                                    *00200000
//* CORRE                                                              *00210000
//* ANTES DE       :  CBHCND49 VOBO. OPER. BLOQUES                     *00220025
//*                                                                    *00230000
//* DESPUES DE     :  CBHCND04 Y OPERACION DIARIA EN EL SIVA           *00240000
//**********************************************************************00481000
//*                      LOG DE MODIFICACIONES                         *00482000
//**********************************************************************00483000
//*                                                                    *00488000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00489000
//*  PHC43P03     GRABA EN UN ARCHIVO SECUENCIAL.                      *00489127
//**********************************************************************00489300
//*                     ====  INICIO DE    ====                        *00489400
//*                     ====  CAPITALES    ====                        *00489500
//**********************************************************************00489600
//PHC04P29 EXEC PGM=ZM3DG001,                                           00489727
//         PARM=('&EMP','&SUC','CBPZPR','     ',)                       00489847
//*                                                                     00490000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD43,               00491038
//            DISP=(NEW,CATLG,DELETE),                                  00492000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00493000
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00494042
//*                                                                     00496000
//SYSTSPRT DD SYSOUT=*                                                  00497035
//SYSPRINT DD SYSOUT=*                                                  00498035
//SYSOUT   DD SYSOUT=*                                                  00499035
//SYSDBOUT DD SYSOUT=*                                                  00499135
//SYSABOUT DD DUMMY                                                     00499200
//SYSUDUMP DD DUMMY                                                     00499300
//*                                                                     00499400
//**********************************************************************
//*    CREA EL ARCHIVO LOG DE MOVIMIENTOS (IEFBR14)                    *
//**********************************************************************
//PHC43P02 EXEC PGM=IEFBR14,COND=(4,LT)
//ARCHIVO   DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD43.LOG,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//**********************************************************************
//* OBJETIVO : ACTUALIZA CARTERA Y GENERA SIVA DE LA ASIGNACION        *
//*                -- ZM4DH516 -- BLOQUE 3 --                          *
//**********************************************************************
//PHC43P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH516A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD43,DISP=SHR
//ZMH516L1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD43.LOG,DISP=MOD
//ZMH516E1 DD DSN=SIVA.MDC.FIX.E&EMP..BLOQUE3,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC43T01),DISP=SHR
//*
