//ZMHFPD40  PROC                                                        00000100
//**********************************************************************00000200
//*                     C A S A   D E  B O L S A                       *00000300
//*                     ========================                       *00000400
//*                     <<  C A P I T A L E S >>                       *00000500
//*                                                                    *00000600
//*                                                                    *00000700
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES.(HOST TO HOST).      *00000800
//*                                                                    *00000900
//* PROCESO        :  CBHFND40 FIN DE DIA DE HOST TO HOST.             *00001000
//*                   EXTRACTORES PARA H2H.                            *00001100
//*                                                                    *00001200
//* OBJETIVO       :  GENERAR LOS EXTRACTORES DE FIN DE DIA PARA       *00001300
//*                   HOST TO HOST.                                    *00001400
//*                                                                    *00001500
//* GRUPO          :  01         BANCA PATRIMONIAL                     *00001600
//*                                                                    *00001700
//* GRUPO          :  02         TERCEROS CASA DE BOLSA                *00001800
//*                                                                    *00001900
//* GRUPO          :  03         CLIENTES INSTITUCIONALES              *00002000
//*                                                                    *00002100
//* GRUPO          :  04         CLIENTES INTERNACIONALES              *00002200
//*                                                                    *00002300
//* GRUPO          :  07         OPERACIONES DE ARBITRAJE              *00002400
//*                                                                    *00002500
//* GRUPO          :  12         CLIENTE CAPITALES OPERAN SOC. INV.    *00002600
//*                                                                    *00002700
//* DESPUES DE     :  CBGFND35, ARCHIVOS DE INF. GLOBAL RISK.          *00002800
//*                                                                    *00002900
//* PERIODICIDAD   :  DIARIO, DE LUNES A VIERNES.                      *00003000
//*                                                                    *00003100
//* ELABORADO POR  :  EQUIPO DE HOST TO HOST.                          *00003200
//*                                                                    *00003300
//**********************************************************************00003400
//*                                                                    *00003500
//**********************************************************************00003600
//*                      LOG DE MODIFICACIONES                         *00003700
//**********************************************************************00003800
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00003900
//*--------------------------------------------------------------------*00004000
//* FECHA    :12-NOV-09|IDCEX48|PHF40P04|POS.PROPIA                    *00004100
//* MODIFICO :H2H                                                      *00004200
//*                                                                    *00004300
//* OBJETIVO :ELIMINAR EL PASO PHF40P04, DEBIDO A QUE SE DEBE GENERAR  *00004400
//*           EN LINEA, OPC. 919.                                      *00004500
//*           A PETICION DE GREGORIO PLUMA. EL INICIO-VENCIMIENTO DE   *00004600
//*           REPORTO EL USUARIO LO GENERARA POR SEPARADO.             *00004700
//*           MOVER EL PASO PHF40P13 A PHF40P00.                       *00004800
//*                                                                    *00004900
//* OBJETIVO :INCLUIR EL PASO PHF40P00 QUE GENERA INFO PARA LOS CTES.  *00005000
//*           INTERNACIONALES.                                         *00005100
//*                                                                    *00005200
//**********************************************************************00005300
//*                                                                    *00005400
//*  PASO:  0     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00005500
//*  PHF40P13     GRABA EN UN ARCHIVO SECUENCIAL.                      *00005600
//*                                                         ZM3DH001   *00005700
//**********************************************************************00005800
//PHF40P14 EXEC PGM=ZM3DG001,                                           00005900
//         PARM=('&EMP','&SUC')                                         00006000
//*        PARM=('&EMP','&SUC','&INT1','&INT2',)                        00006100
//*                                                                     00006200
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD40,           00006300
//            DISP=(NEW,CATLG,DELETE),                                  00006400
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00006500
//            UNIT=3390,                                                00006600
//            SPACE=(CYL,(4,2),RLSE)                                    00006700
//*                                                                     00006800
//SYSTSPRT DD SYSOUT=*                                                  00006900
//SYSPRINT DD SYSOUT=*                                                  00007000
//SYSOUT   DD SYSOUT=*                                                  00007100
//SYSDBOUT DD SYSOUT=*                                                  00007200
//SYSABOUT DD DUMMY                                                     00007300
//SYSUDUMP DD DUMMY                                                     00007400
//*                                                                     00007500
//*FJSS-INI                                                             00007501
//**********************************************************************00007502
//*                            (ZM4DHH41)                              *00007510
//* PASO     : 1                                                       *00007520
//* OBJETIVO : VALIDADOR DE EVENTO PLS PARA DETERMINAR QUE PROCESOS DEL*00007540
//*            EXTRACTOR SE EJECUTARAN                                 *00007550
//**********************************************************************00007590
//PHF40P1A EXEC PGM=IKJEFT01,COND=(4,LT)                                00007591
//*                                                                     00007592
//SYSIN    DD DUMMY                                                     00007599
//SYSTSPRT DD SYSOUT=*                                                  00007600
//SYSPRINT DD SYSOUT=*                                                  00007601
//SYSOUT   DD SYSOUT=*                                                  00007602
//SYSDBOUT DD SYSOUT=*                                                  00007603
//SYSABOUT DD DUMMY                                                     00007604
//SYSUDUMP DD DUMMY                                                     00007605
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF41T15),DISP=SHR                   00007606
//*                                                                     00007607
//*FJSS-FIN                                                             00007608
//*                                                                     00007609
//**********************************************************************00007610
//* << COMIENZA < GRUPO 01 CLIENTES PATRIMONIALES <                    *00007700
//**********************************************************************00007800
//*                            (ZM4DHH01)                              *00007900
//* PASO     : 1/4                                                     *00008000
//* PHF40P12                                                           *00008100
//* OBJETIVO : GENERA PRIMERA EXTRACCION DE LA OPERACION DE BANCA      *00008200
//*            PATRIMONIAL A 72 HORAS.                                 *00008300
//*                                                                    *00008400
//*            SOLAMENTE CLIENTES NACIONALES GPO(777), TPGPOCTA(01)    *00008500
//*                    UNO DE CUATRO                                   *00008600
//**********************************************************************00008700
//PHF40P12 EXEC PGM=IKJEFT01,COND=(4,LT)                                00008800
//*                                                                     00008900
//ZMHH01A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD40,DISP=SHR   00009000
//ZMHH01R1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZM4DHH01,           00009100
//            DISP=(NEW,CATLG,DELETE),                                  00009200
//            DCB=(DSORG=PS,RECFM=FB,LRECL=176,BLKSIZE=0),              00009300
//            UNIT=3390,                                                00009400
//            SPACE=(CYL,(4,2),RLSE)                                    00009500
//SYSIN    DD DUMMY                                                     00009600
//SYSTSPRT DD SYSOUT=*                                                  00009700
//SYSPRINT DD SYSOUT=*                                                  00009800
//SYSOUT   DD SYSOUT=*                                                  00009900
//SYSDBOUT DD SYSOUT=*                                                  00010000
//SYSABOUT DD DUMMY                                                     00010100
//SYSUDUMP DD DUMMY                                                     00010200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T12),DISP=SHR                   00010300
//*                                                                     00010400
//**********************************************************************00010500
//*                            (ZM4DHH02)                              *00010600
//* PASO     : 2/4                                                     *00010700
//* PHF40P11                                                           *00010800
//* OBJETIVO : GENERA SEGUNDA EXTRACCION DE LA OPERACION DE BANCA      *00010900
//*            PATRIMONIAL A 48 HORAS.                                 *00011000
//*                                                                    *00011100
//*            SOLAMENTE CLIENTES NACIONALES GPO(777), TPGPOCTA(01)    *00011200
//*                    DOS DE CUATRO                                   *00011300
//**********************************************************************00011400
// IF  PHF40P1A.RC EQ 03 THEN                                           00011410
//PHF40P11 EXEC PGM=IKJEFT01,COND=(4,LT)                                00011500
//*                                                                     00011600
//ZMHH02A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD40,DISP=SHR   00011700
//ZMHH02R1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZM4DHH02,           00011800
//            DISP=(NEW,CATLG,DELETE),                                  00011900
//            DCB=(DSORG=PS,RECFM=FB,LRECL=176,BLKSIZE=0),              00012000
//            UNIT=3390,                                                00012100
//            SPACE=(CYL,(4,2),RLSE)                                    00012200
//SYSIN    DD DUMMY                                                     00012300
//SYSTSPRT DD SYSOUT=*                                                  00012400
//SYSPRINT DD SYSOUT=*                                                  00012500
//SYSOUT   DD SYSOUT=*                                                  00012600
//SYSDBOUT DD SYSOUT=*                                                  00012700
//SYSABOUT DD DUMMY                                                     00012800
//SYSUDUMP DD DUMMY                                                     00012900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T11),DISP=SHR                   00013000
// ENDIF                                                                00013010
//*                                                                     00013100
//**********************************************************************00013200
//*                            (ZM4DHH12)                              *00013300
//* PASO     : 3/4                                                     *00013400
//* PHF40P10                                                           *00013500
//* OBJETIVO : GENERA TERCERA EXTRACCION DE LA OPERACION DE BANCA      *00013600
//*            PATRIMONIAL A 48 HORAS.                                 *00013700
//*                                                                    *00013800
//*            SEPARAR LAS OPERACIONES DE CRUCE EN LAS OPERACIONES     *00013900
//*            DE ARBITRAJE CUANDO DE UN LADO ESTE LA JUMBO Y DEL      *00014000
//*            OTRO UN CONTRATO QUE PERTENEZCA AL CTO 216.             *00014100
//*                                                                    *00014200
//*            EXTRAE    CLIENTES OPERACION DE ARBITRAJE               *00014300
//*            GENERA EL GPOCTA (01)                                   *00014400
//*                    TRES DE CUATRO                                  *00014500
//**********************************************************************00014600
//PHF40P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00014700
//*                                                                     00014800
//ZMHH12A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD40,DISP=SHR   00014900
//ZMHH12R1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZM4DHH12,           00015000
//            DISP=(NEW,CATLG,DELETE),                                  00015100
//            DCB=(DSORG=PS,RECFM=FB,LRECL=176,BLKSIZE=0),              00015200
//            UNIT=3390,                                                00015300
//            SPACE=(CYL,(4,2),RLSE)                                    00015400
//SYSIN    DD DUMMY                                                     00015500
//SYSTSPRT DD SYSOUT=*                                                  00015600
//SYSPRINT DD SYSOUT=*                                                  00015700
//SYSOUT   DD SYSOUT=*                                                  00015800
//SYSDBOUT DD SYSOUT=*                                                  00015900
//SYSABOUT DD DUMMY                                                     00016000
//SYSUDUMP DD DUMMY                                                     00016100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T10),DISP=SHR                   00016200
//*                                                                     00016300
//**********************************************************************00016400
//*                            (ZM4DHH13)                              *00016500
//* PASO     : 4/4                                                     *00016600
//* PHF40P09                                                           *00016700
//* OBJETIVO : GENERA CUARTA  EXTRACCION DE LA OPERACION DE BANCA      *00016800
//*            PATRIMONIAL A 72 HORAS.                                 *00016900
//*                                                                    *00017000
//*            SEPARAR LAS OPERACIONES DE CRUCE EN LAS OPERACIONES     *00017100
//*            DE ARBITRAJE CUANDO DE UN LADO ESTE LA JUMBO Y DEL      *00017200
//*            OTRO UN CONTRATO QUE PERTENEZCA AL PROM. 216            *00017300
//*                                                                    *00017400
//*            EXTRAE    CLIENTES OPERACION DE ARBITRAJE               *00017500
//*            GENERA EL GPOCTA (01)                                   *00017600
//*                    CUATRO DE CUATRO                                *00017700
//**********************************************************************00017800
// IF  PHF40P1A.RC EQ 03 THEN                                           00017810
//PHF40P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                00017900
//*                                                                     00018000
//ZMHH13A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD40,DISP=SHR   00018100
//ZMHH13R1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZM4DHH13,           00018200
//            DISP=(NEW,CATLG,DELETE),                                  00018300
//            DCB=(DSORG=PS,RECFM=FB,LRECL=176,BLKSIZE=0),              00018400
//            UNIT=3390,                                                00018500
//            SPACE=(CYL,(4,2),RLSE)                                    00018600
//SYSIN    DD DUMMY                                                     00018700
//SYSTSPRT DD SYSOUT=*                                                  00018800
//SYSPRINT DD SYSOUT=*                                                  00018900
//SYSOUT   DD SYSOUT=*                                                  00019000
//SYSDBOUT DD SYSOUT=*                                                  00019100
//SYSABOUT DD DUMMY                                                     00019200
//SYSUDUMP DD DUMMY                                                     00019300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T09),DISP=SHR                   00019400
// ENDIF                                                                00019410
//*                                                                     00019500
//**********************************************************************00019600
//* >> TERMINA  > GRUPO 01 BANCA PATRIMONIAL >>                        *00019700
//**********************************************************************00019800
//* << COMIENZA < GRUPO 02 CLIENTES TERCEROS <<                        *00019900
//**********************************************************************00020000
//*                            (ZM4DHH03)                              *00020100
//* PASO     : 1/2                                                     *00020200
//* PHF40P08                                                           *00020300
//* OBJETIVO : GENERA PRIMERA EXTRACCION DE LA OPERACION DE CLIENTES   *00020400
//*            DE CASA DE BOLSA CON FECHA DE LIQUIDACION A 72 HORAS    *00020500
//*                                                                    *00020600
//*            SE OBTIENEN CTES NACIONALES Y EXTRANJEROS, SEPARANDO    *00020700
//*            CLIENTES DE SOCIEDADES Y CAPITALES,                     *00020800
//*                                                                    *00020900
//*            SE DEBERAN DE EXCLUIR LOS CLIENTES DE INTERNACIONAL.    *00021000
//*                                                                    *00021100
//*            SE GENERA EL GRUPO DE CTA (02)                          *00021200
//*                                                                    *00021300
//**********************************************************************00021400
//PHF40P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                00021500
//*                                                                     00021600
//ZMHH03A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD40,DISP=SHR   00021700
//ZMHH03R1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZM4DHH03,           00021800
//            DISP=(NEW,CATLG,DELETE),                                  00021900
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),              00022000
//            UNIT=3390,                                                00022100
//            SPACE=(CYL,(4,2),RLSE)                                    00022200
//SYSIN    DD DUMMY                                                     00022300
//SYSTSPRT DD SYSOUT=*                                                  00022400
//SYSPRINT DD SYSOUT=*                                                  00022500
//SYSOUT   DD SYSOUT=*                                                  00022600
//SYSDBOUT DD SYSOUT=*                                                  00022700
//SYSABOUT DD DUMMY                                                     00022800
//SYSUDUMP DD DUMMY                                                     00022900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T08),DISP=SHR                   00023000
//*                                                                     00023100
//**********************************************************************00023200
//*                            (ZM4DHH04)                              *00023300
//* PASO     : 2/2                                                     *00023400
//* PHF40P35                                                           *00023500
//* OBJETIVO : GENERA SEGUNDA EXTRACCION DE LA OPERACION DE CLIENTES   *00023600
//*            DE CASA DE BOLSA CON FECHA DE LIQUIDACION A 48 HORAS    *00023700
//*                                                                    *00023800
//*            SE OBTIENEN CTES NACIONALES Y EXTRANJEROS, SEPARANDO    *00023900
//*            CLIENTES DE SOCIEDADES Y CAPITALES,                     *00024000
//*                                                                    *00024100
//*            SE DEBERAN DE EXCLUIR LOS CLIENTES DE INTERNACIONAL.    *00024200
//*                                                                    *00024300
//*            SE GENERA EL GRUPO DE CTA (02)                          *00024400
//*                                                                    *00024500
//**********************************************************************00024600
// IF  PHF40P1A.RC EQ 03 THEN                                           00024610
//PHF40P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                00024700
//*                                                                     00024800
//ZMHH04A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD40,DISP=SHR   00024900
//ZMHH04R1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZM4DHH04,           00025000
//            DISP=(NEW,CATLG,DELETE),                                  00025100
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),              00025200
//            UNIT=3390,                                                00025300
//            SPACE=(CYL,(4,2),RLSE)                                    00025400
//SYSIN    DD DUMMY                                                     00025500
//SYSTSPRT DD SYSOUT=*                                                  00025600
//SYSPRINT DD SYSOUT=*                                                  00025700
//SYSOUT   DD SYSOUT=*                                                  00025800
//SYSDBOUT DD SYSOUT=*                                                  00025900
//SYSABOUT DD DUMMY                                                     00026000
//SYSUDUMP DD DUMMY                                                     00026100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T07),DISP=SHR                   00026200
// ENDIF                                                                00026210
//*                                                                     00026300
//**********************************************************************00026400
//* >> TERMINA  > GRUPO 02 CLIENTES TERCEROS  >>                       *00026500
//**********************************************************************00026600
//* << COMIENZA < GRUPO 03 CLIENTES INSTITUC. <<                       *00026700
//**********************************************************************00026800
//*                            (ZM4DHH05)                              *00026900
//* PASO     : 1/2                                                     *00027000
//* PHF40P06                                                           *00027100
//* OBJETIVO : GENERA PRIMERA EXTRACCION DE LA OPERACION DE CLIENTES   *00027200
//*            INSTITUCIONALES  CON FECHA DE LIQUIDACION A 72 HORAS    *00027300
//*                                                                    *00027400
//*            IDENTIFICAR LOS CLIENTES QUE TIENEN LA CUSTODIA (800)   *00027500
//*                                                                    *00027600
//*            SE GENERA EL GRUPO DE CTA (03)                          *00027700
//*                                                                    *00027800
//**********************************************************************00027900
//PHF40P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00028000
//*                                                                     00028100
//ZMHH05A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD40,DISP=SHR   00028200
//ZMHH05R1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZM4DHH05,           00028300
//            DISP=(NEW,CATLG,DELETE),                                  00028400
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),              00028500
//            UNIT=3390,                                                00028600
//            SPACE=(CYL,(4,2),RLSE)                                    00028700
//SYSIN    DD DUMMY                                                     00028800
//SYSTSPRT DD SYSOUT=*                                                  00028900
//SYSPRINT DD SYSOUT=*                                                  00029000
//SYSOUT   DD SYSOUT=*                                                  00029100
//SYSDBOUT DD SYSOUT=*                                                  00029200
//SYSABOUT DD DUMMY                                                     00029300
//SYSUDUMP DD DUMMY                                                     00029400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T06),DISP=SHR                   00029500
//*                                                                     00029600
//**********************************************************************00029700
//*                            (ZM4DHH06)                              *00029800
//* PASO     : 2/2                                                     *00029900
//* PHF40P05                                                           *00030000
//* OBJETIVO : GENERA SEGUNDA EXTRACCION DE LA OPERACION DE CLIENTES   *00030100
//*            INSTITUCIONALES  CON FECHA DE LIQUIDACION A 48 HORAS    *00030200
//*                                                                    *00030300
//*            IDENTIFICAR LOS CLIENTES QUE TIENEN LA CUSTODIA (800)   *00030400
//*                                                                    *00030500
//*            SE GENERA EL GRUPO DE CTA (03)                          *00030600
//*                                                                    *00030700
//**********************************************************************00030800
// IF  PHF40P1A.RC EQ 03 THEN                                           00030810
//PHF40P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00030900
//*                                                                     00031000
//ZMHH06A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD40,DISP=SHR   00031100
//ZMHH06R1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZM4DHH06,           00031200
//            DISP=(NEW,CATLG,DELETE),                                  00031300
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),              00031400
//            UNIT=3390,                                                00031500
//            SPACE=(CYL,(4,2),RLSE)                                    00031600
//SYSIN    DD DUMMY                                                     00031700
//SYSTSPRT DD SYSOUT=*                                                  00031800
//SYSPRINT DD SYSOUT=*                                                  00031900
//SYSOUT   DD SYSOUT=*                                                  00032000
//SYSDBOUT DD SYSOUT=*                                                  00032100
//SYSABOUT DD DUMMY                                                     00032200
//SYSUDUMP DD DUMMY                                                     00032300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T05),DISP=SHR                   00032400
// ENDIF                                                                00032410
//*                                                                     00032500
//**********************************************************************00032600
//* >> TERMINA  > GRUPO 03 CLIENTES INSTITUC. >>                       *00032700
//**********************************************************************00032800
//* << COMIENZA < GRUPO 07 CLIENTES ARBITRAJE<<                        *00032900
//**********************************************************************00033000
//*                            (ZM4DHH17)                              *00033100
//* PASO     : 1/1                                                     *00033200
//* PHF40P03                                                           *00033300
//* OBJETIVO : GENERA LA EXTRACCION DE LOS MOVIENTOS CORRESPONDIENTES  *00033400
//*            A LA OPERACION DE ARBITRAJE.                            *00033500
//*                                                                    *00033600
//*            SE GENERA EL GRUPO DE CTA (07)                          *00033700
//*                                                                    *00033800
//**********************************************************************00033900
// IF  PHF40P1A.RC EQ 03 THEN                                           00033901
//PHF40P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00034000
//*                                                                     00034100
//ZMHH17A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD40,DISP=SHR   00034200
//SYSIN    DD DUMMY                                                     00034300
//SYSTSPRT DD SYSOUT=*                                                  00034400
//SYSPRINT DD SYSOUT=*                                                  00034500
//SYSOUT   DD SYSOUT=*                                                  00034600
//SYSDBOUT DD SYSOUT=*                                                  00034700
//SYSABOUT DD DUMMY                                                     00034800
//SYSUDUMP DD DUMMY                                                     00034900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T03),DISP=SHR                   00035000
// ENDIF                                                                00035010
//*                                                                     00035100
//**********************************************************************00035200
//* >> TERMINA  > GRUPO 07 CLIENTES ARBITRAJE >>                       *00035300
//**********************************************************************00035400
//* << COMIENZA < GRUPO 12 CLIENTES DE CAPITALES QUE OPERAN SOC. INV.  *00035500
//**********************************************************************00035600
//*                            (ZM4DHH14)                              *00035700
//* PASO     : 1/2                                                     *00035800
//* PHF40P02                                                           *00035900
//* OBJETIVO : GENERA LA EXTRACCION DE LOS CLIENTES DE CAPITALES QUE   *00036000
//*            OPERAN SOCIEDADES, EN FECHA DE LIQUIDACION.             *00036100
//*                                                                    *00036200
//*            EXCLUIR LAS OPERACIONES DE CRUCE DONDE DE UN LADO ESTE  *00036300
//*            EL CTO DE LA SOCIEDAD Y DEL OTRO UN CTO DEL PROMOT 216  *00036400
//*                                                                    *00036500
//*            SE GENERA EL GRUPO DE CTA (12)                          *00036600
//*                                                                    *00036700
//**********************************************************************00036800
//PHF40P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00036900
//*                                                                     00037000
//ZMHH14A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD40,DISP=SHR   00037100
//ZMHH14R1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZM4DHH14,           00037200
//            DISP=(NEW,CATLG,DELETE),                                  00037300
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),              00037400
//            UNIT=3390,                                                00037500
//            SPACE=(CYL,(4,2),RLSE)                                    00037600
//SYSIN    DD DUMMY                                                     00037700
//SYSTSPRT DD SYSOUT=*                                                  00037800
//SYSPRINT DD SYSOUT=*                                                  00037900
//SYSOUT   DD SYSOUT=*                                                  00038000
//SYSDBOUT DD SYSOUT=*                                                  00038100
//SYSABOUT DD DUMMY                                                     00038200
//SYSUDUMP DD DUMMY                                                     00038300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T02),DISP=SHR                   00038400
//*                                                                     00038500
//**********************************************************************00038600
//*                            (ZM4DHH18)                              *00038700
//* PASO     : 2/2                                                     *00038800
//* PHF40P01                                                           *00038900
//* OBJETIVO : GENERA LA EXTRACCION DE LOS CLIENTES DE CAPITALES QUE   *00039000
//*            OPERAN SOCIEDADES, EN FECHA DE LIQUIDACION.             *00039100
//*                                                                    *00039200
//*            EXCLUIR LAS OPERACIONES DE CRUCE DONDE DE UN LADO ESTE  *00039300
//*            EL CTO DE LA SOCIEDAD Y DEL OTRO UN CTO DEL PROMOT 216  *00039400
//*                                                                    *00039500
//*            SE GENERA EL GRUPO DE CTA (12)                          *00039600
//*                                                                    *00039700
//**********************************************************************00039800
//PHF40P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00039900
//*                                                                     00040000
//ZMHH18A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD40,DISP=SHR   00040100
//ZMHH18R1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZM4DHH18,           00040200
//            DISP=(NEW,CATLG,DELETE),                                  00040300
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),              00040400
//            UNIT=3390,                                                00040500
//            SPACE=(CYL,(4,2),RLSE)                                    00040600
//SYSIN    DD DUMMY                                                     00040700
//SYSTSPRT DD SYSOUT=*                                                  00040800
//SYSPRINT DD SYSOUT=*                                                  00040900
//SYSOUT   DD SYSOUT=*                                                  00041000
//SYSDBOUT DD SYSOUT=*                                                  00041100
//SYSABOUT DD DUMMY                                                     00041200
//SYSUDUMP DD DUMMY                                                     00041300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T01),DISP=SHR                   00041400
//*                                                                     00041500
//**********************************************************************00041600
//* >> TERMINA  > GRUPO 12 CLIENTES DE CAPITALES QUE OPERAN SOC. INV.  *00041700
//**********************************************************************00041800
//* << INICIA   < GRUPO 04 CLIENTES INTERNACIONALES.                   *00041900
//**********************************************************************00042000
//*                            (ZM4DHH22)                              *00042100
//* PASO     : 1/4                                                     *00042200
//* PHF40P12                                                           *00042300
//* OBJETIVO : EXTRAER LOS MOVIMIENTOS CORRESPONDIENTES A LA OPERACION *00042400
//*            DE CLIENTES INTERNACIONALES                             *00042500
//*                                                                    *00042600
//**********************************************************************00042700
//PHF40P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                00042800
//*                                                                     00042900
//ZMHH22A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD40,DISP=SHR   00043000
//ZMHH22R1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZM4DHH22,           00043100
//            DISP=(NEW,CATLG,DELETE),                                  00043200
//            DCB=(DSORG=PS,RECFM=FB,LRECL=176,BLKSIZE=0),              00043300
//            UNIT=3390,                                                00043400
//            SPACE=(CYL,(4,2),RLSE)                                    00043500
//SYSIN    DD DUMMY                                                     00043600
//SYSTSPRT DD SYSOUT=*                                                  00043700
//SYSPRINT DD SYSOUT=*                                                  00043800
//SYSOUT   DD SYSOUT=*                                                  00043900
//SYSDBOUT DD SYSOUT=*                                                  00044000
//SYSABOUT DD DUMMY                                                     00044100
//SYSUDUMP DD DUMMY                                                     00044200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T13),DISP=SHR                   00044300
//*                                                                     00044400
//**********************************************************************00044410
//*                            (ZM4DHH31)                              *00044420
//* PASO     :                                                         *00044430
//* PHF40P15                                                           *00044440
//* OBJETIVO : GENERA EXTRACCION DE LOS MOVIMIENTOS (COMPRA-VENTA)     *00044450
//*            SOCIEDADES DE INVERSION A 48 HORAS.                     *00044460
//*                                                                    *00044470
//*            SOLAMENTE CLIENTES NACIONALES GPO(778),                 *00044480
//**********************************************************************00044490
// IF  PHF40P1A.RC EQ 03 THEN                                           00044491
//PHF40P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00044492
//*                                                                     00044493
//ZMHH31A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD40,DISP=SHR   00044494
//ZMHH31R1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZM4DHH31,           00044495
//            DISP=(NEW,CATLG,DELETE),                                  00044496
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),              00044497
//            UNIT=3390,                                                00044498
//            SPACE=(CYL,(4,2),RLSE)                                    00044499
//SYSIN    DD DUMMY                                                     00044500
//SYSTSPRT DD SYSOUT=*                                                  00044501
//SYSPRINT DD SYSOUT=*                                                  00044502
//SYSOUT   DD SYSOUT=*                                                  00044503
//SYSDBOUT DD SYSOUT=*                                                  00044504
//SYSABOUT DD DUMMY                                                     00044505
//SYSUDUMP DD DUMMY                                                     00044506
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T15),DISP=SHR                   00044507
//*                                                                     00044508
//**********************************************************************00044509
//*                            (ZM4DHH32)                              *00044510
//* PASO                                                               *00044511
//* PHF40P16                                                           *00044512
//* OBJETIVO : EXTRACCION DE LOS MOVIMIENTOS (COMPRA-VENTA) DE CRUCE   *00044513
//*            CON EL PROMOTOR 216.                                    *00044514
//**********************************************************************00044515
//PHF40P16 EXEC PGM=IKJEFT01,COND=(4,LT)                                00044516
//*                                                                     00044517
//ZMHH32A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD40,DISP=SHR   00044518
//ZMHH32R1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZM4DHH32,           00044519
//            DISP=(NEW,CATLG,DELETE),                                  00044520
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),              00044521
//            UNIT=3390,                                                00044522
//            SPACE=(CYL,(4,2),RLSE)                                    00044523
//SYSIN    DD DUMMY                                                     00044524
//SYSTSPRT DD SYSOUT=*                                                  00044525
//SYSPRINT DD SYSOUT=*                                                  00044526
//SYSOUT   DD SYSOUT=*                                                  00044527
//SYSDBOUT DD SYSOUT=*                                                  00044528
//SYSABOUT DD DUMMY                                                     00044529
//SYSUDUMP DD DUMMY                                                     00044530
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T16),DISP=SHR                   00044531
// ENDIF                                                                00044532
//*                                                                     00044533
//**********************************************************************00044540
//* >> TERMINA  > GRUPO 04 CLIENTES INTERNACIONALES.                   *00044600
//**********************************************************************00044700
//**********************************************************************00044800
//*                                                                    *00044900
//*     ===   F I N   D E    E X T R A C C I O N   ===                 *00045000
//*     ===       H O S T   T O   H O S T          ===                 *00045100
//*                                                                    *00045200
//**********************************************************************00045300
//*                 FIN DE PROCEDIMIENTO ZMHFPD40                      *00045400
//**********************************************************************00045500
