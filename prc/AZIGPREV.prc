//**********************************************************************00000100
//AZIGPREV PROC                                                         00000200
//**********************************************************************00000300
//*                                                                    *00000400
//*                                                                    *00000500
//*                   C A S A   D E  B O L S A                         *00000600
//*                   ========================                         *00000700
//*                   <<  V A L O R E S  >>                            *00000800
//*                                                                    *00000900
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00001000
//*                                                                    *00001100
//* PROCESO        :  AZIGPREV                                         *00001200
//*                   PREVIO AL CIERRE DE DIA DEL MODULO DE CAPITALES  *00001300
//*                                                                    *00001400
//* OBJETIVO       :  PREVIO DE ASIGNACIONES DEL DIA DE CAPITALES      *00001500
//*                                                                    *00001600
//* CORRE                                                              *00001700
//* ANTES DE       :  ZMHFPD10, ZMHFPD60 Y ZMHFPD70.                   *00001800
//*                                                                    *00001900
//* PERIODICIDAD   :  DIARIO                                           *00002000
//*                                                                    *00002100
//* ELABORADO POR  : ERNESTO MANUEL CUAUTLE MARTINEZ                   *00002200
//*                                                                    *00002300
//**********************************************************************00002400
//*                      LOG DE MODIFICACIONES                         *00002500
//**********************************************************************00002600
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00002700
//*--------------------------------------------------------------------*00002800
//*      |          |       |        |                                 *00002900
//**********************************************************************00003000
//*                                                                    *00003100
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00003200
//*  PHP00P22     GRABA EN UN ARCHIVO SECUENCIAL.                      *00003300
//*                                                         ZM3DG001   *00003400
//**********************************************************************00003500
//* DESPUES DE     :                                                   *00003600
//**********************************************************************00003700
//*                     ===   INICIO DE     ===                        *00003800
//*                     ===   CAPITALES     ===                        *00003900
//* NOTA : HABILITAR POSTERIORMENTE.                                   *00004000
//*AZIGPREV PROC SALU=,SALS=,CICS=,                                    *00004100
//*         UZPR=                                                      *00004200
//*                                                                    *00004300
//*EQUIVALENCIAS                                                       *00004400
//*PROC SALU=,SALS=,CICS=,                                             *00004500
//*UZPR=                                                               *00004600
//*                                                                    *00004700
//*&SALU  = O                                                          *00004800
//*&SALS  = D                                                          *00004900
//*&CICS  = (O,,TP03)                                                  *00005000
//*&UZPR  = (V,,ZPR)                                                   *00005100
//**********************************************************************00005200
//PHP00P22 EXEC PGM=ZM3DG001,                                           00005300
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00005400
//*                                                                     00005500
//ZMG001A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..AZIGPREV,                  00005600
//            DISP=(NEW,CATLG,DELETE),                                  00005700
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00005800
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)                          00005900
//*                                                                     00006000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00006100
//SYSPRINT DD SYSOUT=*                                                  00006200
//SYSOUT   DD SYSOUT=*                                                  00006300
//SYSDBOUT DD SYSOUT=*                                                  00006400
//SYSABOUT DD DUMMY                                                     00006500
//SYSUDUMP DD DUMMY                                                     00006600
//**********************************************************************00006700
//*                                                                    *00006800
//**********************************************************************00006900
//*        OBTENER LOS LISTADOS DE LA OPERACION DEL DIA                *00007000
//*        DE ORDENES DE POSICION PROPIA                               *00007100
//*                        -- VIBU80D --    -- ZM4DHU80 --             *00007200
//* JFE --> REPORTE PARALELO DEL VIBU66D                               *00007300
//**********************************************************************00007400
//PHP00P21 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007500
//*                                                                     00007600
//ZMHU80A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..AZIGPREV,DISP=SHR          00007700
//*                                                                     00007800
//ZMHU80T1 DD DSN=ZIVA.ZME.CONTROL(ZHP00T22),DISP=SHR                   00007900
//ZMHU80R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00008000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00008100
//SYSPRINT DD SYSOUT=*                                                  00008200
//SYSOUT   DD SYSOUT=*                                                  00008300
//SYSDBOUT DD SYSOUT=*                                                  00008400
//SYSABOUT DD DUMMY                                                     00008500
//SYSUDUMP DD DUMMY                                                     00008600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP00T21),DISP=SHR                   00008700
//**********************************************************************00008800
//*                                                                    *00008900
//**********************************************************************00009000
//*                        -- VIBU83D --     -- ZM4DHU83 --            *00009100
//* OBJETIVO : REPORTE DE ORDENES GLOBALES                             *00009200
//* JFE --> REPORTE PARALELO DEL VIBU69D QUE CORRE EN EL CAD0122       *00009300
//* PASO REINICIABLE POR RESTART                                       *00009400
//**********************************************************************00009500
//PHP00P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                00009600
//*                                                                     00009700
//ZMHU83A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..AZIGPREV,DISP=SHR          00009800
//*                                                                     00009900
//ZMHU83R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00010000
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          00010100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00010200
//SYSPRINT DD SYSOUT=*                                                  00010300
//SYSOUT   DD SYSOUT=*                                                  00010400
//SYSDBOUT DD SYSOUT=*                                                  00010500
//SYSABOUT DD DUMMY                                                     00010600
//SYSUDUMP DD DUMMY                                                     00010700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP00T20),DISP=SHR                   00010800
//**********************************************************************00010900
//*                                                                    *00011000
//**********************************************************************00011100
//*                        -- VIBU69D --       -- ZM4DHU69 --          *00011200
//* OBJETIVO : REPORTE DE PAQUETES DEL DIA (CONTROL INTERNO)           *00011300
//* PASO REINICIABLE POR RESTART                                       *00011400
//**********************************************************************00011500
//PHP00P19 EXEC PGM=IKJEFT01,COND=(4,LT)                                00011600
//*                                                                     00011700
//ZMHU69A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..AZIGPREV,DISP=SHR          00011800
//*                                                                     00011900
//ZMHU69R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00012000
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          00012100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00012200
//SYSPRINT DD SYSOUT=*                                                  00012300
//SYSOUT   DD SYSOUT=*                                                  00012400
//SYSDBOUT DD SYSOUT=*                                                  00012500
//SYSABOUT DD DUMMY                                                     00012600
//SYSUDUMP DD DUMMY                                                     00012700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP00T19),DISP=SHR                   00012800
//**********************************************************************00012900
//*                                                                    *00013000
//**********************************************************************00013100
//*    BORRA EL ARCHIVO DE PRECIOS DE ULTIMO HECHO (IDCAMS)            *00013200
//**********************************************************************00013300
//PHP00P18 EXEC PGM=IDCAMS,COND=(4,LT)                                  00013400
//*                                                                     00013500
//SYSPRINT DD SYSOUT=*                                                  00013600
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHP00T18),DISP=SHR                   00013700
//**********************************************************************00013800
//*                                                                    *00013900
//**********************************************************************00014000
//*ESTE ARCHIVO SERA GENERADO EN EL PROCESO RHD0100 (PASO RHD0107)     *00014100
//*    CREA EL ARCHIVO DE PRECIOS DE ULTIMO HECHO (IEFBR14)            *00014200
//**********************************************************************00014300
//PHP00P17 EXEC PGM=IEFBR14,COND=(4,LT)                                 00014400
//*                                                                     00014500
//ARCHIVO  DD DSN=SIVA.MDC.WKF.E&EMP..PRULTHEC,                         00014600
//            DISP=(NEW,CATLG,DELETE),                                  00014700
//            UNIT=3390,                                                00014800
//            DCB=(RECFM=FB,LRECL=46,BLKSIZE=0,DSORG=PS),               00014900
//            SPACE=(CYL,(5,1),RLSE)                                    00015000
//**********************************************************************00015100
//*                                                                    *00015200
//**********************************************************************00015300
//*    DETECCION DEL ESTADO FINAL DE CADA HECHO (VOBJ07D)              *00015400
//*    -- ZM4DHJ07 -- NUEVO, TIENE FOLCTRL.                            *00015500
//**********************************************************************00015600
//PHP00P16 EXEC PGM=IKJEFT01,COND=(4,LT)                                00015700
//*                                                                     00015800
//ZMHJ07A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..AZIGPREV,DISP=SHR          00015900
//*                                                                     00016000
//ZMHJ07R1 DD SYSOUT=*                                                  00016100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00016200
//SYSPRINT DD SYSOUT=*                                                  00016300
//SYSOUT    DD SYSOUT=*                                                 00016400
//SYSDBOUT  DD SYSOUT=*                                                 00016500
//SYSABOUT  DD DUMMY                                                    00016600
//SYSUDUMP  DD DUMMY                                                    00016700
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZHP00T16),DISP=SHR                  00016800
//**********************************************************************00016900
//*                                                                    *00017000
//**********************************************************************00017100
//*ESTA ALTA SE HARA CON INFORMACION DE LA BMV, EN EL PROCESO          *00017200
//*RHD0100 (PASO RHD0107)                                              *00017300
//*    GENERACION DE LA ALTA DE ULTIMO PRECIO (VOBJ08D)                *00017400
//*    -- ZM4DHJ08 -- NUEVO.                                           *00017500
//*--------------------------------------------------------------------*00017600
//PHP00P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00017700
//*                                                                     00017800
//ZMHJ08P1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..AZIGPREV,DISP=SHR          00017900
//*                                                                     00018000
//ZMHJ08A1 DD DSN=SIVA.MDC.WKF.E&EMP..PRULTHEC,DISP=SHR                 00018100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00018200
//SYSPRINT DD SYSOUT=*                                                  00018300
//SYSOUT   DD SYSOUT=*                                                  00018400
//SYSDBOUT DD SYSOUT=*                                                  00018500
//SYSABOUT DD SYSOUT=*                                                  00018600
//SYSUDUMP DD DUMMY                                                     00018700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP00T15),DISP=SHR                   00018800
//**********************************************************************00018900
//*                                                                    *00019000
//**********************************************************************00019100
//*                                     MERCADO DE VALORES             *00019200
//* TRANSMISION DE HECHOS DE LA B.M.V.                                 *00019300
//*          PASOS ENCARGADOS EN EJECUTAR LAS ALTAS                    *00019400
//*          DE LOS ULTIMOS PRECIOS                                    *00019500
//*YA NO SE OCUPARA EL ARCHIVO DE ENTRADA ULTPRE, NI SE GENERARA       *00019600
//*UN ARCHIVO NUEVO                                                    *00019700
//*   -- VIBB05D --            -- ZM4DHB05 --                          *00019800
//*--------------------------------------------------------------------*00019900
//PHP00P14 EXEC PGM=IKJEFT01,COND=(4,LT)                                00020000
//*                                                                     00020100
//ZMHB05A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..AZIGPREV,DISP=SHR          00020200
//*                                                                     00020300
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00020400
//SYSPRINT DD SYSOUT=*                                                  00020500
//ZMHB05T1 DD DSN=SIVA.MDC.WKF.E&EMP..PRULTHEC,DISP=SHR                 00020600
//ZMHB05T2 DD DSN=&&ARCHT2,                                             00020700
//            DISP=(NEW,PASS),                                          00020800
//            DCB=(RECFM=FB,LRECL=33,BLKSIZE=0),                        00020900
//            UNIT=3390,                                                00021000
//            SPACE=(CYL,(5,1),RLSE)                                    00021100
//ZMHB05R1 DD SYSOUT=*                                                  00021200
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          00021300
//SYSOUT   DD SYSOUT=*                                                  00021400
//SYSDBOUT DD SYSOUT=*                                                  00021500
//SYSABOUT DD SYSOUT=*                                                  00021600
//SYSUDUMP DD DUMMY                                                     00021700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP00T14),DISP=SHR                   00021800
//**********************************************************************00021900
//*                                                                    *00022000
//**********************************************************************00022100
//* AVISO A OPERADOR SOBRE LA ACTUALIZACION DE LOS ULTIMOS             *00022200
//* PRECIOS.                                                           *00022300
//*--------------------------------------------------------------------*00022400
//PHP00P13 EXEC PGM=MAILOPER,COND=(0,GE,PHP00P15),                      00022500
//*                                                                     00022600
//          PARM=('/AT.OP.AVISAR:SOPORTE A PRODUCCION',                 00022700
//            ' QUE NO SE GENERARON PRECIOS ',                          00022800
//            ' AUTOMATICAMENTE.DAR SI.')                               00022900
//**********************************************************************00023000
//*                                                                    *00023100
//**********************************************************************00023200
//*        EFECTUA ASIGNACION PREVIA                                   *00023300
//*        MODIFICACION         ( JUN-JUL 1990 )                       *00023400
//*        -- VOB507D --  -- ZM4DH507 -- NUEVO.                        *00023500
//*--------------------------------------------------------------------*00023600
//PHP00P12 EXEC PGM=IKJEFT01,COND=(0,GE,PHP00P13)                       00023700
//*                                                                     00023800
//ZMH507A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..AZIGPREV,DISP=SHR          00023900
//*                                                                     00024000
//ZMH442O  DD DSN=SIVA.MDC.WKF.E&EMP..ASIGNA.VTB442O,                   00024100
//            DISP=(NEW,DELETE),                                        00024200
//            DCB=(DSORG=PS,RECFM=FB,LRECL=19,BLKSIZE=0),               00024300
//            UNIT=3390,                                                00024400
//            SPACE=(CYL,(5,1),RLSE)                                    00024500
//ZMH546A1 DD DSN=SIVA.MDC.WKF.E&EMP..ASIGNA.VTB546O,                   00024600
//            DISP=(NEW,DELETE),                                        00024700
//            DCB=(DSORG=PS,RECFM=FB,LRECL=14,BLKSIZE=0),               00024800
//            UNIT=3390,                                                00024900
//            SPACE=(CYL,(5,1),RLSE)                                    00025000
//SYSIN    DD DUMMY                                                     00025100
//SYSTSPRT DD SYSOUT=D,DCB=BLKSIZE=0                                    00025200
//SYSPRINT DD SYSOUT=D                                                  00025300
//SYSOUT   DD SYSOUT=D                                                  00025400
//SYSDBOUT DD SYSOUT=D                                                  00025500
//SYSABOUT DD DUMMY                                                     00025600
//SYSUDUMP DD DUMMY                                                     00025700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP00T12),DISP=SHR                   00025800
//**********************************************************************00025900
//*                                                                    *00026000
//**********************************************************************00026100
//*        REP. DE OPERACION DEL DIA Y HECHOS POR ASIGNAR              *00026200
//*               ---   VIB465D   ---    -- ZM4DH465 --                *00026300
//*--------------------------------------------------------------------*00026400
//PHP00P11 EXEC PGM=IKJEFT01,COND=(4,LT)                                00026500
//*                                                                     00026600
//ZMH465P1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..AZIGPREV,DISP=SHR          00026700
//*                                                                     00026800
//ZMH465A1 DD DSN=SIVA.MDC.WKF.E&EMP..VIB465A1,                         00026900
//            DISP=(NEW,CATLG,DELETE),                                  00027000
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FBA),                      00027100
//            UNIT=3390,                                                00027200
//            SPACE=(CYL,(5,1),RLSE)                                    00027300
//ZMH465A2 DD DSN=SIVA.MDC.WKF.E&EMP..VIB465A2,                         00027400
//            DISP=(NEW,CATLG,DELETE),                                  00027500
//            DCB=(LRECL=276,BLKSIZE=0,RECFM=FB),                       00027600
//            UNIT=3390,                                                00027700
//            SPACE=(CYL,(5,1),RLSE)                                    00027800
//ZMH465R1 DD SYSOUT=(O,,TP03)                                          00027900
//ZMH465RX DD SYSOUT=O                                                  00028000
//ZMH465R2 DD SYSOUT=(O,,TP09)                                          00028100
//ZMH465R3 DD SYSOUT=(V,,ZPR)                                           00028200
//ZMH465R4 DD SYSOUT=(V,,ZPR)                                           00028300
//ZMH465T1 DD DSN=ZIVA.ZME.CONTROL(ZHP00T22),DISP=SHR                   00028400
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00028500
//SYSPRINT DD SYSOUT=*                                                  00028600
//SYSOUT   DD SYSOUT=*                                                  00028700
//SYSDBOUT DD SYSOUT=*                                                  00028800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP00T11),DISP=SHR                   00028900
//**********************************************************************00029000
//*                                                                    *00029100
//**********************************************************************00029200
//*        REP. DE OPERACION DEL DIA Y HECHOS POR ASIGNAR              *00029300
//*        ---   VIBU85D   ---        -- ZM4DHU85 --                   *00029400
//* JFE --> REPORTE PARALELO DEL VIB465D QUE CORRE EN EL PARAM10       *00029500
//*--------------------------------------------------------------------*00029600
//PHP00P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00029700
//*                                                                     00029800
//ZMHU85P1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..AZIGPREV,DISP=SHR          00029900
//*                                                                     00030000
//ZMHU85A1 DD DSN=SIVA.MDC.WKF.E&EMP..VIBU85A1,                         00030100
//            DISP=(NEW,CATLG,DELETE),                                  00030200
//            DCB=(LRECL=132,BLKSIZE=0,RECFM=FBA),                      00030300
//            UNIT=3390,                                                00030400
//            SPACE=(CYL,(5,1),RLSE)                                    00030500
//ZMHU85A2 DD DSN=SIVA.MDC.WKF.E&EMP..VIBU85A2,                         00030600
//            DISP=(NEW,CATLG,DELETE),                                  00030700
//            DCB=(LRECL=276,BLKSIZE=0,RECFM=FB),                       00030800
//            UNIT=3390,                                                00030900
//            SPACE=(CYL,(5,1),RLSE)                                    00031000
//ZMHU85RX DD SYSOUT=O                                                  00031100
//ZMHU85R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00031200
//ZMHU85R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00031300
//ZMHU85R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00031400
//ZMHU85T1 DD DSN=ZIVA.ZME.CONTROL(ZHP00T22),DISP=SHR                   00031500
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00031600
//SYSPRINT DD SYSOUT=*                                                  00031700
//SYSOUT   DD SYSOUT=*                                                  00031800
//SYSDBOUT DD SYSOUT=*                                                  00031900
//SYSABOUT DD DUMMY                                                     00032000
//SYSUDUMP DD DUMMY                                                     00032100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP00T10),DISP=SHR                   00032200
//**********************************************************************00032300
//*                                                                    *00032400
//**********************************************************************00032500
//*        REPORTES DE ORDENES SOLICITADAS Y CANCELADAS POR PROMOTOR   *00032600
//*        SE AUMENTO REPORTE DE ORDENES NO REALIZADAS (R3) 26-MAY-95  *00032700
//*    -- VIB472D --               -- ZM4DH472 --                      *00032800
//*--------------------------------------------------------------------*00032900
//PHP00P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                00033000
//*                                                                     00033100
//ZMH472A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..AZIGPREV,DISP=SHR          00033200
//*                                                                     00033300
//PDR472R1 DD SYSOUT=(O,,NP16)                                          00033400
//POL472R1 DD SYSOUT=(O,,OP16)                                          00033500
//SAT472R1 DD SYSOUT=(O,,QP16)                                          00033600
//ZPR472R1    DD DSN=SIVA.OTR.FIX.E&EMP..OP02.CAD0100.ARCH1,            00033700
//            DISP=(NEW,CATLG,DELETE),                                  00033800
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE),                         00033900
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0)                       00034000
//TIJ472R1 DD SYSOUT=(O,,UP16)                                          00034100
//CDJ472R1 DD SYSOUT=(O,,BP16)                                          00034200
//HER472R1 DD SYSOUT=(O,,EP16)                                          00034300
//MTY472R1 DD SYSOUT=(O,,MP16)                                          00034400
//TOR472R1 DD SYSOUT=(O,,WP16)                                          00034500
//CHI472R1 DD SYSOUT=(O,,CP16)                                          00034600
//MAZ472R1 DD SYSOUT=(O,,JP16)                                          00034700
//KRO472R1 DD SYSOUT=(O,,HP16)                                          00034800
//SLP472R1 DD SYSOUT=(O,,RP16)                                          00034900
//GUA472R1 DD SYSOUT=(O,,DP16)                                          00035000
//ZAC472R1 DD SYSOUT=(O,,YP16)                                          00035100
//JER472R1 DD SYSOUT=(O,,GP16)                                          00035200
//LEO472R1 DD SYSOUT=(O,,HP16)                                          00035300
//MOR472R1 DD SYSOUT=(O,,LP16)                                          00035400
//AGS472R1 DD SYSOUT=(O,,AP16)                                          00035500
//TAM472R1 DD SYSOUT=(O,,SP16)                                          00035600
//VER472R1 DD SYSOUT=(O,,XP16)                                          00035700
//JAL472R1 DD SYSOUT=(O,,FP16)                                          00035800
//MER472R1 DD SYSOUT=(O,,KP16)                                          00035900
//TOL472R1 DD SYSOUT=(O,,VP16)                                          00036000
//PUE472R1 DD SYSOUT=(O,,PP16)                                          00036100
//MMP472R1 DD SYSOUT=(O,,3P16)                                          00036200
//SAN472R1 DD SYSOUT=(O,,4P16)                                          00036300
//ZZZ472R1 DD SYSOUT=(V,,ZZZ)                                           00036400
//CUL472R1 DD SYSOUT=(O,,TP29)                                          00036500
//MMU472R1 DD SYSOUT=(O,,1P16)                                          00036600
//PDR472R2 DD SYSOUT=(O,,NP17)                                          00036700
//POL472R2 DD SYSOUT=(O,,OP17)                                          00036800
//SAT472R2 DD SYSOUT=(O,,QP17)                                          00036900
//ZPR472R2 DD DSN=SIVA.OTR.FIX.E&EMP..OP02.CAD0100.ARCH2,               00037000
//            DISP=(NEW,CATLG,DELETE),                                  00037100
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE),                         00037200
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0)                       00037300
//TIJ472R2 DD SYSOUT=(O,,UP17)                                          00037400
//CDJ472R2 DD SYSOUT=(O,,BP17)                                          00037500
//HER472R2 DD SYSOUT=(O,,EP17)                                          00037600
//MTY472R2 DD SYSOUT=(O,,MP17)                                          00037700
//TOR472R2 DD SYSOUT=(O,,WP17)                                          00037800
//CHI472R2 DD SYSOUT=(O,,CP17)                                          00037900
//MAZ472R2 DD SYSOUT=(O,,JP17)                                          00038000
//KRO472R2 DD SYSOUT=(O,,HP17)                                          00038100
//SLP472R2 DD SYSOUT=(O,,RP17)                                          00038200
//GUA472R2 DD SYSOUT=(O,,DP17)                                          00038300
//ZAC472R2 DD SYSOUT=(O,,YP17)                                          00038400
//JER472R2 DD SYSOUT=(O,,GP17)                                          00038500
//LEO472R2 DD SYSOUT=(O,,HP17)                                          00038600
//MOR472R2 DD SYSOUT=(O,,LP17)                                          00038700
//AGS472R2 DD SYSOUT=(O,,AP17)                                          00038800
//TAM472R2 DD SYSOUT=(O,,SP17)                                          00038900
//VER472R2 DD SYSOUT=(O,,XP17)                                          00039000
//JAL472R2 DD SYSOUT=(O,,FP17)                                          00039100
//MER472R2 DD SYSOUT=(O,,KP17)                                          00039200
//TOL472R2 DD SYSOUT=(O,,VP17)                                          00039300
//PUE472R2 DD SYSOUT=(O,,PP17)                                          00039400
//MMP472R2 DD SYSOUT=(O,,3P17)                                          00039500
//SAN472R2 DD SYSOUT=(O,,4P17)                                          00039600
//ZZZ472R2 DD SYSOUT=(V,,ZZZ)                                           00039700
//CUL472R2 DD SYSOUT=(O,,TP30)                                          00039800
//MMU472R2 DD SYSOUT=(O,,1P17)                                          00039900
//PDR472R3 DD SYSOUT=(O,,NP40)                                          00040000
//POL472R3 DD SYSOUT=(O,,OP40)                                          00040100
//SAT472R3 DD SYSOUT=(O,,QP40)                                          00040200
//ZPR472R3 DD DSN=SIVA.OTR.FIX.E&EMP..OP02.CAD0100.ARCH3,               00040300
//            DISP=(NEW,CATLG,DELETE),                                  00040400
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE),                         00040500
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0)                       00040600
//TIJ472R3 DD SYSOUT=(O,,UP40)                                          00040700
//CDJ472R3 DD SYSOUT=(O,,BP40)                                          00040800
//HER472R3 DD SYSOUT=(O,,EP40)                                          00040900
//MTY472R3 DD SYSOUT=(O,,MP40)                                          00041000
//TOR472R3 DD SYSOUT=(O,,WP40)                                          00041100
//CHI472R3 DD SYSOUT=(O,,CP40)                                          00041200
//MAZ472R3 DD SYSOUT=(O,,JP40)                                          00041300
//KRO472R3 DD SYSOUT=(O,,HP40)                                          00041400
//SLP472R3 DD SYSOUT=(O,,RP40)                                          00041500
//GUA472R3 DD SYSOUT=(O,,DP40)                                          00041600
//ZAC472R3 DD SYSOUT=(O,,YP40)                                          00041700
//JER472R3 DD SYSOUT=(O,,GP40)                                          00041800
//LEO472R3 DD SYSOUT=(O,,HP40)                                          00041900
//MOR472R3 DD SYSOUT=(O,,LP40)                                          00042000
//AGS472R3 DD SYSOUT=(O,,AP40)                                          00042100
//TAM472R3 DD SYSOUT=(O,,SP40)                                          00042200
//VER472R3 DD SYSOUT=(O,,XP40)                                          00042300
//JAL472R3 DD SYSOUT=(O,,FP40)                                          00042400
//MER472R3 DD SYSOUT=(O,,KP40)                                          00042500
//TOL472R3 DD SYSOUT=(O,,VP40)                                          00042600
//PUE472R3 DD SYSOUT=(O,,PP40)                                          00042700
//MMP472R3 DD SYSOUT=(O,,3P40)                                          00042800
//SAN472R3 DD SYSOUT=(O,,4P40)                                          00042900
//ZZZ472R3 DD SYSOUT=(W,,ZZZ)                                           00043000
//CUL472R3 DD SYSOUT=(O,,2P40)                                          00043100
//MMU472R3 DD SYSOUT=(O,,1P40)                                          00043200
//ZMH472R4 DD SYSOUT=(O,,ZW33)                                          00043300
//ZMH472T1 DD DSN=&&CAD0103,                                            00043400
//            DISP=(NEW,PASS),                                          00043500
//            DCB=(LRECL=230,BLKSIZE=0,RECFM=FB),                       00043600
//            UNIT=3390,                                                00043700
//            SPACE=(CYL,(5,1),RLSE)                                    00043800
//SORTWORK DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          00043900
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00044000
//SYSPRINT DD SYSOUT=*                                                  00044100
//SYSOUT   DD SYSOUT=*                                                  00044200
//SYSDBOUT DD SYSOUT=*                                                  00044300
//SYSABOUT DD DUMMY                                                     00044400
//SYSUDUMP DD DUMMY                                                     00044500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP00T09),DISP=SHR                   00044600
//**********************************************************************00044700
//*                                                                    *00044800
//**********************************************************************00044900
//*        REPORTES DE ORDENES SOLICITADAS Y CANCELADAS POR PROMOTOR   *00045000
//*        ---   VIBU87D   ---  -- ZM4DHU87 --                         *00045100
//* JFE --> REPORTE PARALELO DEL VIB472D QUE CORRE EN EL CAD0104       *00045200
//*--------------------------------------------------------------------*00045300
//PHP00P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                00045400
//*                                                                     00045500
//ZMHU87A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..AZIGPREV,DISP=SHR          00045600
//*                                                                     00045700
//MMUU87R3 DD SYSOUT=(O,,1P40)                                          00045800
//ZMHU87R4 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00045900
//ZMHU87T1 DD DSN=&&CAD0103,                                            00046000
//            DISP=(NEW,PASS),                                          00046100
//            DCB=(LRECL=210,BLKSIZE=0,RECFM=FB),                       00046200
//            UNIT=3390,                                                00046300
//            SPACE=(CYL,(5,1),RLSE)                                    00046400
//SORTWORK DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          00046500
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00046600
//SYSPRINT DD SYSOUT=*                                                  00046700
//SYSOUT   DD SYSOUT=*                                                  00046800
//SYSDBOUT DD SYSOUT=*                                                  00046900
//SYSABOUT DD DUMMY                                                     00047000
//SYSUDUMP DD DUMMY                                                     00047100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP00T08),DISP=SHR                   00047200
//**********************************************************************00047300
//*                                                                    *00047400
//**********************************************************************00047500
//*                        * ICEGENER *                                *00047600
//* OBJETIVO : MANDAR A SPOOL ARCHIVOS IMPRESIONES PASO ANTERIOR       *00047700
//* PASO REINICIBLE POR RESTART.                                       *00047800
//**********************************************************************00047900
//*                                                                     00048000
//PHP00P07 EXEC PGM=ICEGENER,COND=(4,LT)                                00048100
//*                                                                     00048200
//SYSUT1   DD DSN=SIVA.OTR.FIX.ECBP.OP02.CAD0100.ARCH1,                 00048300
//            DISP=SHR                                                  00048400
//         DD DSN=SIVA.OTR.FIX.ECBP.OP02.CAD0100.ARCH2,                 00048500
//            DISP=SHR                                                  00048600
//         DD DSN=SIVA.OTR.FIX.ECBP.OP02.CAD0100.ARCH3,                 00048700
//            DISP=SHR                                                  00048800
//SYSUT2   DD SYSOUT=(O,,ZW34)                                          00048900
//SYSPRINT DD SYSOUT=*                                                  00049000
//SYSOUT   DD SYSOUT=*                                                  00049100
//SYSDBOUT DD SYSOUT=*                                                  00049200
//SYSIN    DD DUMMY                                                     00049300
//**********************************************************************00049400
//*                                                                    *00049500
//**********************************************************************00049600
//*        REPORTES DE ORDENES SOLICITADAS Y CANCELADAS                *00049700
//*        ---   VIB466D   ---     -- ZM4DH466 --                      *00049800
//*--------------------------------------------------------------------*00049900
//PHP00P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00050000
//*                                                                     00050100
//ZMH466P1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..AZIGPREV,DISP=SHR          00050200
//*                                                                     00050300
//ZMH466R1 DD SYSOUT=(O,,TP04)                                          00050400
//ZMH466R2 DD SYSOUT=(O,,TP14)                                          00050500
//ZMH466R3 DD SYSOUT=(O,,TP33)                                          00050600
//ZMH466A1 DD DSN=SIVA.MDC.FIX.E&EMP..VIB466A1,                         00050700
//            DISP=(NEW,CATLG,DELETE),                                  00050800
//            DCB=(RECFM=FBA,LRECL=133,BLKSIZE=0),                      00050900
//            UNIT=3390,                                                00051000
//            SPACE=(CYL,(5,1),RLSE)                                    00051100
//ZMH466A2 DD DSN=SIVA.MDC.FIX.E&EMP..VIB466A2,                         00051200
//            DISP=(NEW,CATLG,DELETE),                                  00051300
//            DCB=(RECFM=FB,LRECL=182,BLKSIZE=0),                       00051400
//            UNIT=3390,                                                00051500
//            SPACE=(CYL,(5,1),RLSE)                                    00051600
//ZMH466T1 DD DSN=ZIVA.ZME.CONTROL(ZHP00T22),DISP=SHR                   00051700
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00051800
//SYSPRINT DD SYSOUT=*                                                  00051900
//SYSOUT   DD SYSOUT=*                                                  00052000
//SYSDBOUT DD SYSOUT=*                                                  00052100
//SYSABOUT DD DUMMY                                                     00052200
//SYSUDUMP DD DUMMY                                                     00052300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP00T06),DISP=SHR                   00052400
//**********************************************************************00052500
//*                                                                    *00052600
//**********************************************************************00052700
//*        REPORTES DE ORDENES SOLICITADAS Y CANCELADAS                *00052800
//*        -- VIBU86D --   -- ZM4DHU86 --                              *00052900
//* JFE --> REPORTE PARALELO DEL VIB466D QUE CORRE EN EL CAD0606       *00053000
//*--------------------------------------------------------------------*00053100
//PHP00P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00053200
//*                                                                     00053300
//ZMHU86P1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..AZIGPREV,DISP=SHR          00053400
//*                                                                     00053500
//ZMHU86R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00053600
//ZMHU86R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00053700
//ZMHU86R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00053800
//ZMHU86A1 DD DSN=SIVA.MDC.FIX.E&EMP..VIBU86A1,                         00053900
//            DISP=(NEW,CATLG,DELETE),                                  00054000
//            DCB=(RECFM=FBA,LRECL=133,BLKSIZE=0),                      00054100
//            UNIT=3390,                                                00054200
//            SPACE=(CYL,(5,1),RLSE)                                    00054300
//ZMHU86A2 DD DSN=SIVA.MDC.FIX.E&EMP..VIBU86A2,                         00054400
//            DISP=(NEW,CATLG,DELETE),                                  00054500
//            DCB=(RECFM=FB,LRECL=169,BLKSIZE=0),                       00054600
//            UNIT=3390,                                                00054700
//            SPACE=(CYL,(5,1),RLSE)                                    00054800
//ZMHU86T1 DD DSN=ZIVA.ZME.CONTROL(ZHP00T22),DISP=SHR                   00054900
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00055000
//SYSPRINT DD SYSOUT=*                                                  00055100
//SYSOUT   DD SYSOUT=*                                                  00055200
//SYSDBOUT DD SYSOUT=*                                                  00055300
//SYSABOUT DD DUMMY                                                     00055400
//SYSUDUMP DD DUMMY                                                     00055500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP00T05),DISP=SHR                   00055600
//**********************************************************************00055700
//*                                                                    *00055800
//**********************************************************************00055900
//*        REPORTE DE PAQUETES NO DISTRIBUIDOS                         *00056000
//*   -- VIB498D --           -- ZM4DH498 --                           *00056100
//*--------------------------------------------------------------------*00056200
//PHP00P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00056300
//*                                                                     00056400
//ZMH498A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..AZIGPREV,DISP=SHR          00056500
//*                                                                     00056600
//ZMH498R1 DD SYSOUT=(O,,TP10)                                          00056700
//ZMH498T1 DD DSN=&&PASO04,DISP=(,PASS),                                00056800
//            DCB=(DSORG=PS,RECFM=FB,LRECL=158,BLKSIZE=0),              00056900
//            UNIT=3390,                                                00057000
//            SPACE=(CYL,(5,1),RLSE)                                    00057100
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          00057200
//SYSTSPRT DD SYSOUT=D,DCB=BLKSIZE=0                                    00057300
//SYSPRINT DD SYSOUT=D                                                  00057400
//SYSOUT   DD SYSOUT=D                                                  00057500
//SYSDBOUT DD SYSOUT=D                                                  00057600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP00T04),DISP=SHR                   00057700
//**********************************************************************00057800
//*                                                                    *00057900
//**********************************************************************00058000
//*    REPORTES DE CANCELACIONES Y CAMBIOS A HECHOS                    *00058100
//*   -- VIB464D --      -- ZM4DH464 --   NUEVO                        *00058200
//*--------------------------------------------------------------------*00058300
//PHP00P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00058400
//*                                                                     00058500
//ZMH464A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..AZIGPREV,DISP=SHR          00058600
//*                                                                     00058700
//ZMH464R1 DD SYSOUT=(O,,TP02)                                          00058800
//SYSTSPRT DD SYSOUT=D,DCB=BLKSIZE=0                                    00058900
//SYSPRINT DD SYSOUT=D                                                  00059000
//SYSOUT   DD SYSOUT=D                                                  00059100
//SYSDBOUT DD SYSOUT=D                                                  00059200
//SYSABOUT DD DUMMY                                                     00059300
//SYSUDUMP DD DUMMY                                                     00059400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP00T03),DISP=SHR                   00059500
//**********************************************************************00059600
//*                                                                    *00059700
//**********************************************************************00059800
//*        AVISO EN CASO DE ERROR A LA CONSOLA                         *00059900
//*--------------------------------------------------------------------*00060000
//PHP00P02 EXEC PGM=MAILOPER,COND=(4,GE,PHP00P06),                      00060100
//*PI601765  DD DUMMY                                                   00060200
//*                                                                     00060300
//         PARM=('/ATENCION OPERADOR.AVISAR A SOPROD QUE',              00060400
//            ' PROCESO SIVAXPRE TERMINO MAL.CONTESTAR SI',             00060500
//            'PARA TERMINAR')                                          00060600
//**********************************************************************00060700
//*                                                                    *00060800
//**********************************************************************00060900
//*   ACTIVA LA CONDICION EN CONTROLM QUE TERMINO ASIG. PREVIA         *00061000
//*--------------------------------------------------------------------*00061100
//PHP00P01 EXEC  PGM=CTMCND,PARM='ADD COND     FAZGPR_OK      WDATE',   00061200
//         COND=(4,LT,PHP00P19)                                         00061300
//*                                                                     00061400
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00061500
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00061600
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00061700
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00061800
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00061900
//PRTDBG   DD SYSOUT=*                                                  00062000
//SYSPRINT DD DUMMY                                                     00062100
//SYSUDUMP DD DUMMY                                                     00062200
//DAPRINT  DD SYSOUT=*                                                  00062300
//DACNDIN  DD DDNAME=SYSIN                                              00062400
//*                                                                     00062600
