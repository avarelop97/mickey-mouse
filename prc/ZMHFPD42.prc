//ZMHFPD42  PROC                                                        00000100
//**********************************************************************00000200
//*                     C A S A   D E  B O L S A                       *00000300
//*                     ========================                       *00000400
//*                     <<  C A P I T A L E S >>                       *00000500
//*                                                                    *00000600
//*                                                                    *00000700
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES.(HOST TO HOST).      *00000800
//*                                                                    *00000900
//* PROCESO        :  CBHFND42 EXTRACTORES PARA H2H PARA ENVIO DE 5 PM *00001000
//*                   CLON DEL PROCESO CBHFND40, SOLO SE INCLUYEN LOS  *00001100
//*                   PASOS PARA RECUPERAR LA OPERACIÓN QUE LIQUIDA A  *00001110
//*                   48 HRS                                           *00001120
//*                                                                    *00001200
//**********************************************************************00003600
//*                      LOG DE MODIFICACIONES                         *00003700
//**********************************************************************00003800
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00003900
//**********************************************************************00005800
//* PASO     : 1                                                       *00005810
//* OBJETIVO : VALIDADOR DE EVENTO PLS                                 *00005820
//**********************************************************************00005840
//PHF42P13 EXEC PGM=IKJEFT01,COND=(4,LT)                                00005850
//*                                                                     00005860
//SYSIN    DD DUMMY                                                     00005870
//SYSTSPRT DD SYSOUT=*                                                  00005880
//SYSPRINT DD SYSOUT=*                                                  00005890
//SYSOUT   DD SYSOUT=*                                                  00005891
//SYSDBOUT DD SYSOUT=*                                                  00005892
//SYSABOUT DD DUMMY                                                     00005893
//SYSUDUMP DD DUMMY                                                     00005894
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF42T13),DISP=SHR                   00005895
//*                                                                     00005896
//**********************************************************************00005897
//*                                                                    *00005898
//*  PASO:  0     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00005899
//*  PHF42P14     GRABA EN UN ARCHIVO SECUENCIAL.                      *00005900
//*                                                         ZM3DH001   *00005901
//**********************************************************************00005902
// IF  PHF42P13.RC EQ 00 THEN                                           00005903
//PHF42P14 EXEC PGM=ZM3DG001,                                           00005910
//         PARM=('&EMP','&SUC')                                         00006000
//*                                                                     00006200
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD42,           00006300
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
//**********************************************************************00007800
//*                            (ZM4DHH02)                              *00010600
//* PHF42P11                                                           *00010800
//* OBJETIVO : GENERA SEGUNDA EXTRACCION DE LA OPERACION DE BANCA      *00010900
//*            PATRIMONIAL A 48 HORAS.                                 *00011000
//*                                                                    *00011100
//*            SOLAMENTE CLIENTES NACIONALES GPO(777), TPGPOCTA(01)    *00011200
//**********************************************************************00011400
//PHF42P11 EXEC PGM=IKJEFT01,COND=(4,LT)                                00011500
//*                                                                     00011600
//ZMHH02A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD42,DISP=SHR   00011700
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
//*                                                                     00013100
//**********************************************************************00016400
//*                            (ZM4DHH13)                              *00016500
//* PHF42P09                                                           *00016700
//* OBJETIVO : GENERA CUARTA  EXTRACCION DE LA OPERACION DE BANCA      *00016800
//*            PATRIMONIAL A 72 HORAS.                                 *00016900
//*                                                                    *00017000
//*            SEPARAR LAS OPERACIONES DE CRUCE EN LAS OPERACIONES     *00017100
//*            DE ARBITRAJE CUANDO DE UN LADO ESTE LA JUMBO Y DEL      *00017200
//*            OTRO UN CONTRATO QUE PERTENEZCA AL PROM. 216            *00017300
//*                                                                    *00017400
//*            EXTRAE    CLIENTES OPERACION DE ARBITRAJE               *00017500
//*            GENERA EL GPOCTA (01)                                   *00017600
//**********************************************************************00017800
//PHF42P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                00017900
//*                                                                     00018000
//ZMHH13A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD42,DISP=SHR   00018100
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
//*                                                                     00019500
//**********************************************************************00020000
//*                            (ZM4DHH04)                              *00023300
//* PHF42P35                                                           *00023500
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
//PHF42P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                00024700
//*                                                                     00024800
//ZMHH04A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD42,DISP=SHR   00024900
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
//*                                                                     00026300
//**********************************************************************00026800
//*                            (ZM4DHH06)                              *00029800
//* PHF42P05                                                           *00030000
//* OBJETIVO : GENERA SEGUNDA EXTRACCION DE LA OPERACION DE CLIENTES   *00030100
//*            INSTITUCIONALES  CON FECHA DE LIQUIDACION A 48 HORAS    *00030200
//*                                                                    *00030300
//*            IDENTIFICAR LOS CLIENTES QUE TIENEN LA CUSTODIA (800)   *00030400
//*                                                                    *00030500
//*            SE GENERA EL GRUPO DE CTA (03)                          *00030600
//*                                                                    *00030700
//**********************************************************************00030800
//PHF42P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00030900
//*                                                                     00031000
//ZMHH06A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD42,DISP=SHR   00031100
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
//*                                                                     00032500
//**********************************************************************00033000
//*                            (ZM4DHH17)                              *00033100
//* PASO     : 1/1                                                     *00033200
//* PHF42P03                                                           *00033300
//* OBJETIVO : GENERA LA EXTRACCION DE LOS MOVIENTOS CORRESPONDIENTES  *00033400
//*            A LA OPERACION DE ARBITRAJE.                            *00033500
//*                                                                    *00033600
//*            SE GENERA EL GRUPO DE CTA (07)                          *00033700
//*                                                                    *00033800
//**********************************************************************00033900
//PHF42P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00034000
//*                                                                     00034100
//ZMHH17A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD42,DISP=SHR   00034200
//SYSIN    DD DUMMY                                                     00034300
//SYSTSPRT DD SYSOUT=*                                                  00034400
//SYSPRINT DD SYSOUT=*                                                  00034500
//SYSOUT   DD SYSOUT=*                                                  00034600
//SYSDBOUT DD SYSOUT=*                                                  00034700
//SYSABOUT DD DUMMY                                                     00034800
//SYSUDUMP DD DUMMY                                                     00034900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T03),DISP=SHR                   00035000
//*                                                                     00035100
//**********************************************************************00044410
//*                            (ZM4DHH31)                              *00044420
//* PASO     :                                                         *00044430
//* PHF42P15                                                           *00044440
//* OBJETIVO : GENERA EXTRACCION DE LOS MOVIMIENTOS (COMPRA-VENTA)     *00044450
//*            SOCIEDADES DE INVERSION A 48 HORAS.                     *00044460
//*                                                                    *00044470
//*            SOLAMENTE CLIENTES NACIONALES GPO(778),                 *00044480
//**********************************************************************00044490
//PHF42P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00044491
//*                                                                     00044492
//ZMHH31A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD42,DISP=SHR   00044493
//ZMHH31R1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZM4DHH31,           00044494
//            DISP=(NEW,CATLG,DELETE),                                  00044495
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),              00044496
//            UNIT=3390,                                                00044497
//            SPACE=(CYL,(4,2),RLSE)                                    00044498
//SYSIN    DD DUMMY                                                     00044499
//SYSTSPRT DD SYSOUT=*                                                  00044500
//SYSPRINT DD SYSOUT=*                                                  00044501
//SYSOUT   DD SYSOUT=*                                                  00044502
//SYSDBOUT DD SYSOUT=*                                                  00044503
//SYSABOUT DD DUMMY                                                     00044504
//SYSUDUMP DD DUMMY                                                     00044505
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T15),DISP=SHR                   00044506
//*                                                                     00044507
//**********************************************************************00044508
//*                            (ZM4DHH32)                              *00044509
//* PHF42P16                                                           *00044511
//* OBJETIVO : EXTRACCION DE LOS MOVIMIENTOS (COMPRA-VENTA) DE CRUCE   *00044512
//*            CON EL PROMOTOR 216.                                    *00044513
//**********************************************************************00044514
//PHF42P16 EXEC PGM=IKJEFT01,COND=(4,LT)                                00044515
//*                                                                     00044516
//ZMHH32A1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD42,DISP=SHR   00044517
//ZMHH32R1 DD DSN=MXC&AMB..ZM.TMP.MDC.E&EMP..S&SUC..ZM4DHH32,           00044518
//            DISP=(NEW,CATLG,DELETE),                                  00044519
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),              00044520
//            UNIT=3390,                                                00044521
//            SPACE=(CYL,(4,2),RLSE)                                    00044522
//SYSIN    DD DUMMY                                                     00044523
//SYSTSPRT DD SYSOUT=*                                                  00044524
//SYSPRINT DD SYSOUT=*                                                  00044525
//SYSOUT   DD SYSOUT=*                                                  00044526
//SYSDBOUT DD SYSOUT=*                                                  00044527
//SYSABOUT DD DUMMY                                                     00044528
//SYSUDUMP DD DUMMY                                                     00044529
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF40T16),DISP=SHR                   00044530
//*                                                                     00044531
// ENDIF                                                                00044532
//**********************************************************************00045300
//*                 FIN DE PROCEDIMIENTO ZMHFPD42                      *00045400
//**********************************************************************00045500
