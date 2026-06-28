//ZMHCPD13  PROC                                                        00010001
//**********************************************************************00020000
//*                                                                    *00030000
//*                   C A S A   D E  B O L S A                         *00031000
//*                   ========================                         *00032000
//*                   <<  MERCADO DE CAPITALES >>                      *00033002
//*                                                                    *00120000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00130002
//*                                                                    *00140000
//* PROCESO        :  ZMHCPD13 1RA. PARTE DE 3.                        *00150001
//*                   CIERRE DE DIA DEL MODULO DE MERCADO DE           *00160002
//*                   CAPITALES PARA BANCA PATRIMONIAL.                *00170002
//*                                                                    *00171002
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE CAPITALES ENVIADO *00180000
//*                   POR CONTROL-M                                    *00190000
//*                                                                    *00200000
//* CORRE                                                              *00210000
//* ANTES DE       :  ZMHCPD14 (CIERRE DE CAPITALES 2DA. PARTE).       *00220002
//*                                                                    *00230000
//* DESPUES DE     :  SIVAXBPD Y OPERACION DIARIA EN EL SIVA           *00240000
//*                                                                    *00250000
//* PERIODICIDAD   :  DIARIO                                           *00260000
//*                                                                    *00270000
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *00280002
//*                                                                    *00290000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *00320000
//*                   SIEMPRE ANTES DE LA 2DA. PARTE DEL CIERRE        *00330000
//*                   ZMHCPD14.                                        *00340002
//**********************************************************************00481000
//*                      LOG DE MODIFICACIONES                         *00482000
//**********************************************************************00483000
//*                                                                    *
//* FECHA    : 01 DE NOVIEMBRE  DE 2005.                               *
//* MODIFICO : ERNESTO MANUEL CUAUTLE MARTINEZ.                        *
//*                                                                    *
//* OBJETIVO : MODIFICA LA LONGITUD DEL ARCHIVO DE 169 A 136.          *
//*            MXCP.ZM.TMP.MDC.E&EMP..VIBU85A2                         *
//*            EN EL PASO PHC13P08.                                    *
//*                                                                    *
//**********************************************************************00487000
//**********************************************************************00483000
//*                                                                    *
//* FECHA    : 11 DE JUNIO DE 2009.                                    *
//* MODIFICO : AZERTIA (YDD).                                          *
//*                                                                    *
//* OBJETIVO : SE AGREGA PASO PHC13P19 CLON DEL PASO PHC13P10 SE       *
//*            AGREGA PROMOTOR Y USUARIO AL REPORTE                    *
//*            'SIVA.MDC.FIX.E&EMP..ZMHCPD13.ORDEN.SOL2'               *
//*                                                                    *
//**********************************************************************00487000
//*                                                                    *
//* FECHA    : 09 DE JULIO DE 2010.                                    *
//* MODIFICO : DAMIAN LUNA PE#A.                                       *
//*                                                                    *
//* OBJETIVO : SE AGREGA PASO PHC13P00 CLON DEL PASO PHC13P10          *
//*            GENERA REPORTE DE ORDENES DE CUENTAS NO ELEGIBLES       *
//*            'SIVA.MDC.FIX.E&EMP..ZMHCPD13.ORDEN.NEL'                *
//*                                                                    *
//**********************************************************************00487000
//*                                                                    *
//* FECHA    : 14 NOV 2022.                                            *
//* MODIFICO : INDRA.    @35155                                        *
//* OBJETIVO : SE AGREGA SALIDA A TXT DE REPORTE DE ORDENES.           *
//*            PASO:PHC13P00, PASO:PHC13P17                            *
//*                                                                    *
//**********************************************************************00487000
//*                                                                    *
//* FECHA    : 09 ENE 2023.                                            *
//* MODIFICO : INDRA-MF. @SRA                                          *
//* OBJETIVO : -SE AGREGA SALIDA DE REPORTE TXT, PASO:PHC13P08         *
//*            -SE AGREGA SALIDA DE REPORTE TXT, PASO:PHC13P10         *
//*            -SE AGREGA SALIDA DE REPORTE TXT, PASO:PHC13P19         *
//*                                                                    *
//**********************************************************************00487000
//**********************************************************************00487000
//*                                                                    *00488000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00489000
//*  PHC13P20     GRABA EN UN ARCHIVO SECUENCIAL.                      *00489109
//*                                                                    *
//**********************************************************************00487000
//*                                                                    *
//* FECHA    : JULIO  2023.                                            *
//* MODIFICO : XMF1095  PAVS INI JULIO 2023 || PAVS FIN JULIO 2023     *
//* OBJETIVO : -SE MODIFICA SALIDA REPORTE TXT, PASO:PHC13P19          *
//*             PROGRAMA ZM4DHU71 DE 190 A 237 DE LONGITUD             *00489200
//*                                                                    *00489200
//**********************************************************************00487000
//*                                                                    *
//* FECHA    : OCTUBRE 2023.                                           *
//* MODIFICO : XMF1095  PAVS INI OCT  2023 || PAVS FIN OCT  2023       *
//* OBJETIVO : -SE MODIFICA SALIDA REPORTE TXT, PASO:PHC13P10          *
//*             PROGRAMA ZM4DHU81 DE 190 A 227 DE LONGITUD.            *00489200
//**********************************************************************
//*                                                                    *
//* FECHA    : ENERO 2024.                                             *
//* MODIFICO : MI30712 AXEL VS INI ENE 2024||AXEL VS FIN ENE 2024      *
//* OBJETIVO : -SE MODIFICA SALIDA REPORTE TXT, PASO:PHC13P19          *
//*           PROGRAMA ZM4DHU71 DE 237 A 269 DE LONGITUD.              *00489300
//**********************************************************************
//* FECHA    : ENERO 2024                                              *
//* MODIFICO : MI30712 AXEL VS INI ENE 2024||AXEL VS FIN ENE 2024      *
//* OBJETIVO : -SE MODIFICA SALIDA REPORTE TXT, PASO:PHC13P10          *
//*             PROGRAMA ZM4DHU81 DE 227 A 259 DE LONGITUD.            *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *00489400
//*                     ===   CAPITALES     ===                        *00489500
//**********************************************************************00489600
//PHC13P21 EXEC PGM=ZM3DG001,                                           00489709
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00489800
//PI601765  DD DUMMY                                                    00489902
//*                                                                     00490000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,               00491002
//            DISP=(NEW,CATLG,DELETE),                                  00492000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00493000
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00494000
//*                                                                     00496000
//SYSTSPRT DD SYSOUT=*                                                  00497000
//SYSPRINT DD SYSOUT=*                                                  00498000
//SYSOUT   DD SYSOUT=*                                                  00499000
//SYSDBOUT DD SYSOUT=*                                                  00499100
//SYSABOUT DD DUMMY                                                     00499200
//SYSUDUMP DD DUMMY                                                     00499300
//*                                                                     00499400
//**********************************************************************00508005
//* OBJETIVO : REPORTE DE PAQUETES DEL DIA (CONTROL INTERNO AFORES)    *00510005
//*          -- ZM4DHV57 --                                            *00511005
//**********************************************************************00511105
//PHC13P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                00511205
//PI601765  DD DUMMY                                                    00511305
//*                                                                     00511405
//ZMHV57A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       00511505
//*                                                                     00511605
//ZMHV57R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00511805
//*
//ZMHV57A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD13.ORDEN.AFO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//ZMHV57A3 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD13.ORDEN.EXCEL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=333,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00511905
//SYSTSPRT DD SYSOUT=*                                                  00512005
//SYSPRINT DD SYSOUT=*                                                  00512105
//SYSOUT   DD SYSOUT=*                                                  00512205
//SYSDBOUT DD SYSOUT=*                                                  00512305
//SYSABOUT DD DUMMY                                                     00512405
//SYSUDUMP DD DUMMY                                                     00512505
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T21),DISP=SHR                   00512608
//*                                                                     02322206
//**********************************************************************02322306
//* OBJETIVO : REPORTE DE PAQUETES DEL DIA (CONTROL INTERNO)           *02322406
//*          : ESTE PASO ES CLON DEL PHC13P19, SE AGREGA               *02322406
//*          : PROMOTOR Y USUARIO QUE AUTORIZO AL REPORTE              *02322406
//*          -- ZM4DHU71 --                                            *02323006
//**********************************************************************02324006
//PHC13P19 EXEC PGM=IKJEFT01,COND=(4,LT)                                02325006
//PI601765  DD DUMMY                                                    02326006
//*                                                                     02327006
//ZMHU71A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       02328006
//*                                                                     02329006
//ZMHU71R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02329206
//*
//ZMHU71A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD13.ORDEN.SOL2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*@SRA
//ZMHU71RT DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD13.ORDEN.S2TX,
//            DISP=(NEW,CATLG,DELETE),
//*
//* PAVS INI JULIO 2023
//*           DCB=(LRECL=190,RECFM=FB,BLKSIZE=0,DSORG=PS),
//* AXEL VS INI ENE 2024
//*           DCB=(LRECL=237,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=269,RECFM=FB,BLKSIZE=0,DSORG=PS),
//* AXEL VS FIN ENE 2024
//* PAVS FIN JULIO 2023
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          02329306
//SYSTSPRT DD SYSOUT=*                                                  02329406
//SYSPRINT DD SYSOUT=*                                                  02329506
//SYSOUT   DD SYSOUT=*                                                  02329606
//SYSDBOUT DD SYSOUT=*                                                  02329706
//SYSABOUT DD DUMMY                                                     02329806
//SYSUDUMP DD DUMMY                                                     02329906
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T20),DISP=SHR                   02330008
//*                                                                     02330106
//**********************************************************************
//* OBJETIVO : OBTENER LOS LISTADOS DE LA OPERACION DEL DIA,           *
//*            HECHOS POR ASIGNAR Y LAS ASIGNACIONES A LA              *
//*            CUENTA DE LA CASA DEL SISTEMA INTERNACIONAL DE          *
//*            COTIZACIONES.                                           *
//*          -- ZM4DHU26 --                                            *
//**********************************************************************
//PHC13P18 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//*
//ZMHU26P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR
//*
//ZMHU26R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHU26R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHU26R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHU26T1 DD DSN=ZIVA.ZME.CONTROL(ZHC13T19),DISP=SHR
//ZMHU26A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..VIBU26A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMHU26A2 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..VIBU26A2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=289,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T18),DISP=SHR
//*
//**********************************************************************00508005
//* OBJETIVO : REPORTE DE PAQUETES DEL DIA (CONTROL INTERNO)           *00510005
//*          -- ZM4DHU69 --                                            *00511005
//**********************************************************************00511105
//PHC13P17 EXEC PGM=IKJEFT01,COND=(4,LT)                                00511205
//PI601765  DD DUMMY                                                    00511305
//*                                                                     00511405
//ZMHU69A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       00511505
//*                                                                     00511605
//ZMHU69R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00511805
//*
//ZMHU69A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD13.ORDEN.GLO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*@35155
//ZMHU69RT DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD13.ORDEN.GTX,               00511805
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=227,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00511905
//SYSTSPRT DD SYSOUT=*                                                  00512005
//SYSPRINT DD SYSOUT=*                                                  00512105
//SYSOUT   DD SYSOUT=*                                                  00512205
//SYSDBOUT DD SYSOUT=*                                                  00512305
//SYSABOUT DD DUMMY                                                     00512405
//SYSUDUMP DD DUMMY                                                     00512505
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T17),DISP=SHR                   00512608
//*                                                                     00512705
//**********************************************************************00870000
//* OBJETIVO : REPORTE DE ORDENES GLOBALES                             *00890000
//*          -- ZM4DHU83 --                                            *00900006
//**********************************************************************00920000
//PHC13P16 EXEC PGM=IKJEFT01,COND=(4,LT)                                00930006
//PI601765  DD DUMMY                                                    00940002
//*                                                                     00950000
//ZMHU83A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       00960002
//*                                                                     00970000
//ZMHU83R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01000000
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          01010000
//SYSTSPRT DD SYSOUT=*                                                  01020000
//SYSPRINT DD SYSOUT=*                                                  01030000
//SYSOUT   DD SYSOUT=*                                                  01040000
//SYSDBOUT DD SYSOUT=*                                                  01050000
//SYSABOUT DD DUMMY                                                     01060000
//SYSUDUMP DD DUMMY                                                     01070000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T16),DISP=SHR                   01080008
//*                                                                     01081006
//**********************************************************************01090000
//*                                                                    *01100000
//* OBJETIVO : GENERA REPORTE DE ORDENES GLOBALES X HORA.              *01110006
//*          -- ZM4DHW40 --                                            *01120006
//**********************************************************************01140000
//PHC13P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                01160006
//PI601765  DD DUMMY                                                    01170002
//*                                                                     01180000
//ZM4DHWA1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       01190002
//*                                                                     01200000
//ZM4DHWR1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01210000
//SYSTSPRT DD SYSOUT=*                                                  01230000
//SYSPRINT DD SYSOUT=*                                                  01240000
//SYSOUT   DD SYSOUT=*                                                  01250000
//SYSDBOUT DD SYSOUT=*                                                  01260000
//SYSABOUT DD DUMMY                                                     01270000
//SYSUDUMP DD DUMMY                                                     01280000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T15),DISP=SHR                   01580008
//*                                                                     01581006
//**********************************************************************01591006
//*  OBJETIVO : REGISTRA ORDENES CMD/VMD                               *01600006
//*           -- ZM4DHV19 --                                           *01610006
//**********************************************************************01611006
//PHC13P14 EXEC PGM=IKJEFT01,COND=(4,LT)                                01630006
//PI601765  DD DUMMY                                                    01640002
//*                                                                     01650000
//ZMHV19A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       01660002
//*                                                                     01670000
//SYSTSPRT DD SYSOUT=*                                                  01690000
//SYSPRINT DD SYSOUT=*                                                  01700000
//SYSOUT   DD SYSOUT=*                                                  01710000
//SYSDBOUT DD SYSOUT=*                                                  01720000
//SYSABOUT DD DUMMY                                                     01730000
//SYSUDUMP DD DUMMY                                                     01740000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T14),DISP=SHR                   01750008
//*                                                                     01751006
//**********************************************************************01760000
//* OBJETIVO : REPORTE DE PAQUETES DEL DIA (CONTROL INTERNO)           *01770006
//*        -- ZM4DH568 --                                              *01780006
//**********************************************************************01830000
//PHC13P13 EXEC PGM=IKJEFT01,COND=(4,LT)                                01840006
//PI601765  DD DUMMY                                                    01850002
//*                                                                     01860000
//ZMH568A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       01870002
//*                                                                     01880000
//ZMH568R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01890000
//ZMH568RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01900000
//SYSTSPRT DD SYSOUT=*                                                  01960000
//SYSPRINT DD SYSOUT=*                                                  01970000
//SYSOUT   DD SYSOUT=*                                                  01980000
//SYSDBOUT DD SYSOUT=*                                                  01990000
//SYSABOUT DD DUMMY                                                     02000000
//SYSUDUMP DD DUMMY                                                     02010000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T13),DISP=SHR                   02020008
//*                                                                     02021006
//**********************************************************************02030000
//* OBJETIVO : REPORTE DE PAQUETES NO DISTRIBUIDOS (AUDITORIA)         *02040006
//*          -- ZM4DH498 --                                            *02050006
//**********************************************************************02090000
//PHC13P12 EXEC PGM=IKJEFT01,COND=(4,LT)                                02100006
//PI601765  DD DUMMY                                                    02110002
//*                                                                     02120000
//ZMH498A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       02130002
//*                                                                     02140000
//ZMH498R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02150000
//ZMH498T1 DD DSN=MXCP.ZM.WKF.MDC.PASO.ZM4DH498,                        02200000
//         DISP=(NEW,CATLG,DELETE),                                     02210000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=158,BLKSIZE=0),                 02220000
//         UNIT=3390,                                                   02230000
//         SPACE=(CYL,(4,2),RLSE)                                       02240000
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          02250000
//SYSTSPRT DD SYSOUT=*                                                  02260000
//SYSPRINT DD SYSOUT=*                                                  02270000
//SYSOUT   DD SYSOUT=*                                                  02280000
//SYSDBOUT DD SYSOUT=*                                                  02290000
//SYSABOUT DD DUMMY                                                     02300000
//SYSUDUMP DD DUMMY                                                     02310000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T12),DISP=SHR                   02320008
//*                                                                     02320106
//**********************************************************************02320206
//* OBJETIVO : EFECTUA LA ASIGNACION DEFINITIVA A LA CUENTA DE LA CASA *02320306
//*            LOS HECHOS QUE NO PUDIERON SER ASIGNADOS AL CLIENTE.    *02320406
//*          -- ZM4DH444 --                                            *02320506
//**********************************************************************02320819
//PHC13P11 EXEC PGM=IKJEFT01,COND=(4,LT)                                02321019
//PI601765  DD DUMMY                                                    02321119
//*                                                                     02321206
//ZMH444A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       02321319
//*                                                                     02321406
//SYSTSPRT DD SYSOUT=*                                                  02321519
//SYSPRINT DD SYSOUT=*                                                  02321619
//SYSOUT   DD SYSOUT=*                                                  02321719
//SYSDBOUT DD SYSOUT=*                                                  02321819
//SYSABOUT DD DUMMY                                                     02321919
//SYSUDUMP DD DUMMY                                                     02322019
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T11),DISP=SHR                   02322119
//*                                                                     02322206
//**********************************************************************02322306
//* OBJETIVO : REPORTE DE PAQUETES DEL DIA (CONTROL INTERNO)           *02322406
//*          -- ZM4DHU81 --                                            *02323006
//**********************************************************************02324006
//PHC13P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                02325006
//PI601765  DD DUMMY                                                    02326006
//*                                                                     02327006
//ZMHU81A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       02328006
//*                                                                     02329006
//ZMHU81R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02329206
//*
//ZMHU81A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD13.ORDEN.SOL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*@SRA
//ZMHU81R2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD13.ORDEN.STX,
//            DISP=(NEW,CATLG,DELETE),
//* PAVS INI OCT 2023
//*           DCB=(LRECL=190,RECFM=FB,BLKSIZE=0,DSORG=PS),
//* AXEL VS INI ENE 2024
//*           DCB=(LRECL=227,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=259,RECFM=FB,BLKSIZE=0,DSORG=PS),
//* AXEL VS FIN ENE 2024
//* PAVS FIN OCT 2023
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          02329306
//SYSTSPRT DD SYSOUT=*                                                  02329406
//SYSPRINT DD SYSOUT=*                                                  02329506
//SYSOUT   DD SYSOUT=*                                                  02329606
//SYSDBOUT DD SYSOUT=*                                                  02329706
//SYSABOUT DD DUMMY                                                     02329806
//SYSUDUMP DD DUMMY                                                     02329906
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T10),DISP=SHR                   02330008
//*                                                                     02330106
//**********************************************************************02540006
//* OBJETIVO : OBTENER LOS LISTADOS DE LA OPERACION DEL DIA            *02550006
//*            DE ORDENES DE POSICION PROPIA                           *02560006
//*          -- ZM4DHU80 --                                            *02570006
//**********************************************************************02580006
//PHC13P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                02600014
//PI601765  DD DUMMY                                                    02610014
//*                                                                     02620000
//ZMHU80A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       02630014
//*                                                                     02640000
//ZMHU80R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02650000
//ZMHU80T1 DD DSN=ZIVA.ZME.CONTROL(ZHC13T19),DISP=SHR                   02660014
//SYSTSPRT DD SYSOUT=*                                                  02690014
//SYSPRINT DD SYSOUT=*                                                  02700014
//SYSOUT   DD SYSOUT=*                                                  02710014
//SYSDBOUT DD SYSOUT=*                                                  02720014
//SYSABOUT DD DUMMY                                                     02730014
//SYSUDUMP DD DUMMY                                                     02740014
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T09),DISP=SHR                   02750014
//*                                                                     02792306
//**********************************************************************02792406
//* OBJETIVO : REPORTE DE LA OPERACION DEL DIA,HECHOS POR ASIGNAR,     *02792506
//*            ASIGNACIONES A LA CUENTA DE LA CASA.                    *02792606
//*            -- ZM4DHU85 --                                          *02792706
//**********************************************************************02793106
//PHC13P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                02793214
//PI601765  DD DUMMY                                                    02793314
//*                                                                     02793400
//ZMHU85P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       02793514
//*                                                                     02793600
//ZMHU85R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02794114
//ZMHU85R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02794214
//ZMHU85R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02794314
//ZMHU85T1 DD DSN=ZIVA.ZME.CONTROL(ZHC13T19),DISP=SHR                   02794400
//ZMHU85A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..VIBU85A1,                      02794514
//         DISP=(NEW,CATLG,DELETE),                                     02794814
//         DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),                 02794914
//         UNIT=3390,                                                   02795014
//         SPACE=(CYL,(4,2),RLSE)                                       02795114
//ZMHU85A2 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..VIBU85A2,                      02795414
//         DISP=(NEW,CATLG,DELETE),                                     02795514
//         DCB=(LRECL=174,BLKSIZE=0,RECFM=FB,DSORG=PS),                 02795614
//         UNIT=3390,                                                   02795714
//         SPACE=(CYL,(4,2),RLSE)                                       02795814
//*
//ZMHU85A3 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD13.ASIG.EMI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMHU85A4 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD13.SOBRA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*@SRA
//ZMHU85R8 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD13.ASIG.ETX,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=200,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*@SRA
//ZMHU85R9 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD13.SOBTX,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=200,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*                                                  02796114
//SYSPRINT DD SYSOUT=*                                                  02796214
//SYSOUT   DD SYSOUT=*                                                  02796314
//SYSDBOUT DD SYSOUT=*                                                  02796414
//SYSABOUT DD DUMMY                                                     02796514
//SYSUDUMP DD DUMMY                                                     02796614
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T08),DISP=SHR                   02796714
//*                                                                     02796806
//**********************************************************************02796906
//*  OBJETIVO : REPORTE DE LA OPERACION DEL DIA,                       *02797006
//*             ASIGNACIONES A LA CUENTA DE LA CASA.((VALORES SIC))    *02797106
//*             -- ZM4DH530 --                                         *02797206
//**********************************************************************02797306
//PHC13P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                02797604
//PI601765  DD DUMMY                                                    02797702
//*                                                                     02797800
//ZMH530A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       02797902
//*                                                                     02798000
//ZMH530R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02798400
//ZMH530R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02798500
//ZMH530R4 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02798600
//SYSTSPRT DD SYSOUT=*                                                  02798700
//SYSPRINT DD SYSOUT=*                                                  02798800
//SYSOUT   DD SYSOUT=*                                                  02798900
//SYSDBOUT DD SYSOUT=*                                                  02799000
//SYSABOUT DD DUMMY                                                     02799100
//SYSUDUMP DD DUMMY                                                     02799200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T07),DISP=SHR                   02799308
//*                                                                     02799406
//**********************************************************************02799506
//*  OBJETIVO : REPORTE DE HECHOS POR ASIGNAR.                         *02799606
//*             -- ZM4DH468 --                                         *02799706
//**********************************************************************02799806
//PHC13P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                02800204
//PI601765  DD DUMMY                                                    02800302
//*                                                                     02800400
//ZMH468A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       02800502
//*                                                                     02800600
//SYSTSPRT DD SYSOUT=*                                                  02800700
//SYSPRINT DD SYSOUT=*                                                  02800800
//SYSOUT   DD SYSOUT=*                                                  02800900
//SYSDBOUT DD SYSOUT=*                                                  02801000
//ZMH468R1 DD SYSOUT=*                                                  02801100
//SYSABOUT DD DUMMY                                                     02801300
//SYSUDUMP DD DUMMY                                                     02801400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T06),DISP=SHR                   02801508
//*                                                                     02801600
//**********************************************************************02802006
//*  OBJETIVO : REPORTE DE ASIGNACIONES A LA CUENTA DE LA CASA.        *02810006
//*             -- ZM4DH544 --                                         *02820006
//**********************************************************************02830006
//PHC13P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                02881004
//PI601765  DD DUMMY                                                    02882002
//*                                                                     02883000
//ZMH544A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       02884002
//*                                                                     02885000
//ZMH544R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02900000
//SYSTSPRT DD SYSOUT=*                                                  02920000
//SYSPRINT DD SYSOUT=*                                                  02930000
//SYSOUT   DD SYSOUT=*                                                  02940000
//SYSDBOUT DD SYSOUT=*                                                  02950000
//SYSABOUT DD DUMMY                                                     02960000
//SYSUDUMP DD DUMMY                                                     02970000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T05),DISP=SHR                   02980008
//*                                                                     02981006
//**********************************************************************02990006
//*  OBJETIVO: CANCELACION DE ORDENES YA ASIGNADAS O POR VIGENCIA      *02991006
//*            -- ZM4DH482 --                                          *03000006
//**********************************************************************03000106
//PHC13P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                03011004
//PI601765  DD DUMMY                                                    03012002
//*                                                                     03013000
//ZMH482A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       03014002
//*                                                                     03015000
//SYSTSPRT DD SYSOUT=*                                                  03030000
//SYSPRINT DD SYSOUT=*                                                  03040000
//SYSOUT   DD SYSOUT=*                                                  03050000
//SYSDBOUT DD SYSOUT=*                                                  03060000
//SYSABOUT DD DUMMY                                                     03070000
//SYSUDUMP DD DUMMY                                                     03080000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T04),DISP=SHR                   03090008
//*                                                                     03091006
//**********************************************************************03100006
//*  OBJETIVO: CANCELACION AUTOMATICA DE SOLICITUDES DE ORDENES        *03101006
//*            -- ZM4DH445 --                                          *03110006
//**********************************************************************03111006
//PHC13P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                03121004
//PI601765  DD DUMMY                                                    03122002
//*                                                                     03123000
//ZMH445A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       03124002
//*                                                                     03125000
//SYSTSPRT DD SYSOUT=*                                                  03150000
//SYSPRINT DD SYSOUT=*                                                  03160000
//SYSOUT   DD SYSOUT=*                                                  03170000
//SYSDBOUT DD SYSOUT=*                                                  03180000
//SYSABOUT DD DUMMY                                                     03190000
//SYSUDUMP DD DUMMY                                                     03200000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T03),DISP=SHR                   03210008
//*                                                                     03220000
//**********************************************************************03230006
//*  OBJETIVO : REPORTES SOLICITUD ORDENES COMPRA VENTA MISMO DIA      *03231006
//*             -- ZM4DHT30 --                                         *03240006
//**********************************************************************03241006
//PHC13P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                03251004
//PI601765  DD DUMMY                                                    03252002
//*                                                                     03253000
//ZMHT30A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       03254002
//*                                                                     03255000
//ZMHT30R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     03270000
//SYSTSPRT DD SYSOUT=*                                                  03290000
//SYSPRINT DD SYSOUT=*                                                  03300000
//SYSOUT   DD SYSOUT=*                                                  03310000
//SYSDBOUT DD SYSOUT=*                                                  03320000
//SYSABOUT DD DUMMY                                                     03330000
//SYSUDUMP DD DUMMY                                                     03340000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T02),DISP=SHR                   03350008
//*                                                                     03571014
//**********************************************************************03580006
//* OBJETIVO : PRECIOS PROMEDIOS DE ASIGNACION INTERNACIONAL           *03581006
//*            -- ZM4DH559 --                                          *03590006
//**********************************************************************03591006
//PHC13P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                03601004
//PI601765  DD DUMMY                                                    03602002
//*                                                                     03603000
//ZMH559A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       03604002
//*                                                                     03605000
//ZMH559R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     03620000
//SYSTSPRT DD SYSOUT=*                                                  03640000
//SYSPRINT DD SYSOUT=*                                                  03650000
//SYSOUT   DD SYSOUT=*                                                  03660000
//SYSDBOUT DD SYSOUT=*                                                  03670000
//SYSABOUT DD DUMMY                                                     03680000
//SYSUDUMP DD DUMMY                                                     03690000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T01),DISP=SHR                   03700008
//*                                                                     03710000
//**********************************************************************02322306
//* OBJETIVO : REPORTE DE PAQUETES DEL DIA (CONTROL INTERNO)           *02322406
//*            GENERA REPORTE DE ORDENES DE CUENTAS NO ELEGIBLES       *02323006
//*          -- ZM4DHU82 --                                            *02323006
//**********************************************************************02324006
//PHC13P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                02325006
//PI601765  DD DUMMY                                                    02326006
//*                                                                     02327006
//ZMHU82A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD13,DISP=SHR       02328006
//*                                                                     02329006
//ZMHU82R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02329206
//*
//ZMHU82A2 DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD13.ORDEN.NEL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*@35155
//ZMHU82RT DD DSN=SIVA.MDC.FIX.E&EMP..ZMHCPD13.ORDEN.NTX,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=160,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          02329306
//SYSTSPRT DD SYSOUT=*                                                  02329406
//SYSPRINT DD SYSOUT=*                                                  02329506
//SYSOUT   DD SYSOUT=*                                                  02329606
//SYSDBOUT DD SYSOUT=*                                                  02329706
//SYSABOUT DD DUMMY                                                     02329806
//SYSUDUMP DD DUMMY                                                     02329906
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC13T00),DISP=SHR                   02330008
//*                                                                     02330106
