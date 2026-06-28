//ZMHCPD72 PROC                                                         00002025
//**********************************************************************00002125
//*                                                                    *00002225
//*                                                                    *00002325
//*                   C A S A   D E  B O L S A                         *00003000
//*                   ========================                         *00004000
//*                   <<  C A P I T A L E S  >>                        *00005000
//*                                                                    *00006000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00007000
//*                                                                    *00008000
//* PROCESO        :  ZMHCPD72                                         *00009001
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
//**********************************************************************
//*  PHP08P23     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//**********************************************************************03004000
//PHP08P23 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//ZMG001A1 DD DSN=SIVA.MDC.WFK.E&EMP..S&SUC..ZMHCPD72,
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
//**********************************************************************
//* OBJETIVO : REPORTES DE ORDENES SOLICITADAS Y CANCELADAS            *03001100
//*            POR PROMOTOR                                            *03002000
//*            -- ZM4DHU97 --                                          *03003100
//**********************************************************************03004000
//PHP72P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                03004100
//ZMHU97A1 DD DSN=SIVA.MDC.WFK.E&EMP..S&SUC..ZMHCPD72,DISP=SHR          03004402
//*                                                                     03004500
//MMUU87R3 DD SYSOUT=*                                                  03018900
//ZMHU97R4 DD SYSOUT=*                                                  03019009
//ZMHU87T1 DD DSN=&&CAD0103,                                            03019300
//            DISP=(NEW,PASS),                                          03019421
//            DCB=(LRECL=210,BLKSIZE=0,RECFM=FB,DSORG=PS),              03019521
//            UNIT=3390,                                                03019621
//            SPACE=(CYL,(4,2),RLSE)                                    03019721
//*
//ZMHU97A2 DD DSN=SIVA.MDC.WFK.ZMHCPD72.E&EMP..AUX1,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZCH72T01),DISP=SHR                   03020505
//*
//
