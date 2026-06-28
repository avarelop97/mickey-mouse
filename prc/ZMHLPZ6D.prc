//ZMHLPZ6D PROC                                                         00000100
//*                                                                     00000200
//**********************************************************************00000300
//*                     C A S A   D E  B O L S A                       *00000400
//*                     ========================                       *00000500
//*                     <<  MERCADO DE DINERO >>                       *00000600
//*                                                                    *00000700
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000800
//*                                                                    *00000900
//*   PROCEDIM. :  ZMHLPZ6D                                            *00001000
//*                                                                    *00001100
//*   OBJETIVO  :  GENERA ARCHIVO DE OPERACIONES DE COMPRA Y VENTA DIA-*00001200
//*                RIAS  PARA BANXICO DIA OPERACION P04 - 3.           *00001300
//*                                                                    *00001400
//*   CORRE ANTES DE  :  CBHTNE59                                      *00001500
//*                                                                    *00001600
//*   CORRE DESPUES DE:  SIVAXBM3                                      *00001700
//*   CORRE DESPUES DE:  SIVAXGXG                                      *00001800
//*                                                                    *00001900
//*   PERIODICIDAD    :  A PETICION DEL USUARIO                        *00002000
//*                                                                    *00002100
//*   ELABORADO POR: GETRONICS.                                        *00002200
//*                                                                    *00002300
//*   FECHA:  NOVIEMBRE DE 2004.                                       *00002400
//*                                                                    *00002500
//**********************************************************************00002600
//*                      LOG DE MODIFICACIONES                         *00002700
//**********************************************************************00002800
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00002900
//*--------------------------------------------------------------------*00003000
//*SOFTTE|5-NOV-2004|IDCEX68|P01,P02 |ADICIONAR CONDICIONES DE CTL-D   *00003100
//*STK   |ABRIL,2006|IDCEX56|        |SE REDISEñA PROCESO BANXICO      *00003200
//*--------------------------------------------------------------------*00003300
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).                       *00003400
//* FECHA          :  NOVIEMBRE 2008.                                  *00003500
//*-------------------------------------------------------------------**00003600
//**********************************************************************00003700
//*  PASO:  2     GENERA ARCHIVO CON OPERACIONES DE COMPRA Y VENTA DE  *00003800
//*  PHL06P28     MERCADO.                                             *00003900
//*                                                         ZM4DHB01   *00004000
//**********************************************************************00004100
//PHL06P28 EXEC PGM=IKJEFT01                                            00004200
//*                                                                     00004300
//ZMHB01A1 DD DSN=MXCP.ZM.FIX.VAL.EMP.ZMHLPD06,DISP=SHR                 00004400
//*                                                                     00004500
//ZMHB01S1 DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB01.MANUAL,                  00004600
//            DISP=(NEW,CATLG,DELETE),                                  00004700
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),              00004800
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00004900
//*                                                                     00005000
//ZMHB01S2 DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB01.INCID,                   00005100
//            DISP=(NEW,CATLG,DELETE),                                  00005200
//            DCB=(RECFM=FB,LRECL=165,BLKSIZE=0,DSORG=PS),              00005300
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00005400
//*                                                                     00005500
//SYSTSPRT DD  SYSOUT=*                                                 00005600
//SYSPRINT DD  SYSOUT=*                                                 00005700
//SYSOUT   DD  SYSOUT=*                                                 00005800
//SYSDBOUT DD  SYSOUT=*                                                 00005900
//SYSABOUT DD  DUMMY                                                    00006000
//SYSUDUMP DD  DUMMY                                                    00006100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD06T28),DISP=SHR                   00006200
//*                                                                     00006300
//**********************************************************************00006400
//*  PASO:  3     GENERA ARCHIVO CON LAS OPERACIONES AUTOMATICAS DE    *00006500
//*  PHL06P27     COMPRAS Y VENTAS DE MERCADO DE DINERO.               *00006600
//*                                                         ZM4DHB02   *00006700
//**********************************************************************00006800
//PHL06P27 EXEC PGM=IKJEFT01,COND=(4,LT)                                00006900
//*                                                                     00007000
//ZMHB02A1 DD DSN=MXCP.ZM.FIX.VAL.EMP.ZMHLPD06,DISP=SHR                 00007100
//*                                                                     00007200
//ZMHB02S1 DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB02.AUTOMAT,                 00007300
//            DISP=(NEW,CATLG,DELETE),                                  00007400
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),              00007500
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00007600
//*                                                                     00007700
//ZMHB02S2 DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB02.INCID,                   00007800
//            DISP=(NEW,CATLG,DELETE),                                  00007900
//            DCB=(RECFM=FB,LRECL=165,BLKSIZE=0,DSORG=PS),              00008000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00008100
//*                                                                     00008200
//SYSTSPRT DD  SYSOUT=*                                                 00008300
//SYSPRINT DD  SYSOUT=*                                                 00008400
//SYSOUT   DD  SYSOUT=*                                                 00008500
//SYSDBOUT DD  SYSOUT=*                                                 00008600
//SYSABOUT DD  DUMMY                                                    00008700
//SYSUDUMP DD  DUMMY                                                    00008800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD06T27),DISP=SHR                   00008900
//*                                                                     00009000
//**********************************************************************00009100
//*  PASO:  4     GENERA ARCHIVO DE OPERACIONES DE COMPRAS Y VENTAS.   *00009200
//*  PHL06P26     CONTRATOS DE SOCIEDADES DE INV.           ZM4DHB03   *00009300
//**********************************************************************00009400
//PHL06P26 EXEC PGM=IKJEFT01,COND=(4,LT)                                00009500
//*                                                                     00009600
//ZMHB03A1 DD DSN=MXCP.ZM.FIX.VAL.EMP.ZMHLPD06,DISP=SHR                 00009700
//*                                                                     00009800
//ZMHB03S1 DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB03.CONTRAT,                 00009900
//            DISP=(NEW,CATLG,DELETE),                                  00010000
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),              00010100
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00010200
//*                                                                     00010300
//ZMHB03S2 DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB03.INCID,                   00010400
//            DISP=(NEW,CATLG,DELETE),                                  00010500
//            DCB=(RECFM=FB,LRECL=165,BLKSIZE=0,DSORG=PS),              00010600
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00010700
//*                                                                     00010800
//SYSTSPRT DD  SYSOUT=*                                                 00010900
//SYSPRINT DD  SYSOUT=*                                                 00011000
//SYSOUT   DD  SYSOUT=*                                                 00011100
//SYSDBOUT DD  SYSOUT=*                                                 00011200
//SYSABOUT DD  DUMMY                                                    00011300
//SYSUDUMP DD  DUMMY                                                    00011400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD06T26),DISP=SHR                   00011500
//*                                                                     00011600
//**********************************************************************00011700
//*  PASO: 5   SORT QUE REALIZA LA ELIMINACIóN DE LO ENCABEZADOS DEL   *00011800
//*            ARCHIVO DE OPERACIONES PENDIENTES A PLAZO             *  00011900
//*  PHL06P25                                                ICEMAN    *00012000
//**********************************************************************00012100
//PHL06P25 EXEC PGM=SYNCSORT,COND=(4,LT)                                00012200
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.PZODEP(-3),DISP=SHR                  00012300
//SORTOUT  DD DSN=MXCP.ZM.FIX.PLAZOS.ANTSORT,                           00012400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00012500
//            SPACE=(CYL,(20,10),RLSE),                                 00012600
//            DCB=(RECFM=FB,DSORG=PS,LRECL=82,BLKSIZE=0)                00012700
//*                                                                     00012800
//SYSOUT   DD SYSOUT=*                                                  00012900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD06T25),DISP=SHR                   00013000
//*                                                                     00013100
//**********************************************************************00013200
//*  PASO: 6   GENERA ARCHIVO DE BANXICO A PLAZOS                      *00013300
//*            ZM4DH019                                                *00013400
//*  PHL06P24                                                          *00013500
//**********************************************************************00013600
//PHL06P24 EXEC PGM=IKJEFT01,COND=(4,LT)                                00013700
//ZM4DH0S1 DD DSN=MXCP.ZM.FIX.PLAZOS.ANTSORT,DISP=SHR                   00013800
//*                                                                     00013900
//ZM4DH0S2 DD DSN=MXCP.ZM.FIX.PLAZOS.CONTRAP,                           00014000
//            DISP=(NEW,CATLG,DELETE),                                  00014100
//            DCB=(LRECL=117,RECFM=FB,BLKSIZE=0,DSORG=PS),              00014200
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00014300
//*                                                                     00014400
//ZM4DH0S3 DD DSN=MXCP.ZM.FIX.VAL.PZO.BANXIINC,                         00014500
//            DISP=(NEW,CATLG,DELETE),                                  00014600
//            DCB=(LRECL=122,RECFM=FB,BLKSIZE=0,DSORG=PS),              00014700
//            UNIT=3390,SPACE=(CYL,(6,3),RLSE)                          00014800
//*                                                                     00014900
//SYSTSPRT DD SYSOUT=*                                                  00015000
//SYSPRINT DD SYSOUT=*                                                  00015100
//SYSOUT   DD SYSOUT=*                                                  00015200
//SYSDBOUT DD SYSOUT=*                                                  00015300
//SYSABOUT DD DUMMY                                                     00015400
//SYSUDUMP DD DUMMY                                                     00015500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD06T24),DISP=SHR                   00015600
//*                                                                     00015700
//**********************************************************************00015800
//*  PASO:  7     DEPURA ARCHIVO DE OPERACIONES DE COMPRAS Y VENTAS, Y *00015900
//*  PHL06P23     ORDENA POR SERIE Y NO. TITULOS.           SORT       *00016000
//*                            ( CONCATENA ) ORDENA POR DEP            *00016100
//**********************************************************************00016200
//PHL06P23 EXEC PGM=SYNCSORT,COND=(4,LT)                                00016300
//*                                                                     00016400
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB01.MANUAL,DISP=SHR          00016500
//         DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB02.AUTOMAT,DISP=SHR         00016600
//         DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB03.CONTRAT,DISP=SHR         00016700
//*                                                                     00016800
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.EMP.DEPOSITO.RETIROS,                 00016900
//            DISP=(NEW,CATLG,DELETE),                                  00017000
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),              00017100
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00017200
//*                                                                     00017300
//*                                                                     00017400
//SYSOUT   DD  SYSOUT=*                                                 00017500
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHD06T23),DISP=SHR                  00017600
//*                                                                     00017700
//**********************************************************************00017800
//*  PASO:  8     REALIZA FORMATEO DE ARCHIVO INDEVAL PARA LA COLUMNA  *00017900
//*  PHL06P22     DE TITULOS.                               ZM3DHB01   *00018000
//**********************************************************************00018100
//PHL06P22 EXEC PGM=ZM3DHB01,COND=(4,LT)                                00018200
//*                                                                     00018300
//ZMHB01A1 DD  DSN=MXCP.ZM.FIX.VAL.MOVTOS.INDEVAL,DISP=SHR              00018400
//*                                                                     00018500
//ZMHB01A2 DD  DSN=MXCP.ZM.FIX.VAL.MOVTOS1.INDEVAL,                     00018600
//             DISP=(NEW,CATLG,DELETE),                                 00018700
//             DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS),             00018800
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE)                        00018900
//*                                                                     00019000
//SYSTSPRT DD  SYSOUT=*                                                 00019100
//SYSPRINT DD  SYSOUT=*                                                 00019200
//SYSOUT   DD  SYSOUT=*                                                 00019300
//SYSDBOUT DD  SYSOUT=*                                                 00019400
//SYSABOUT DD  DUMMY                                                    00019500
//SYSUDUMP DD  DUMMY                                                    00019600
//*                                                                     00019700
//**********************************************************************00019800
//*  PASO:  9     DEPURA ARCHIVO DE OPERACIONES DE COMPRAS Y VENTAS, Y *00019900
//*  PHL06P21     ORDENA POR SERIE Y NO. TITULOS.           ICEMAN     *00020000
//*                            ( CONCATENA )                           *00020100
//**********************************************************************00020200
//PHL06P21 EXEC PGM=SYNCSORT,COND=(4,LT)                                00020300
//*                                                                     00020400
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.MOVTOS1.INDEVAL,DISP=SHR              00020500
//*                                                                     00020600
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVAL1,                     00020700
//            DISP=(NEW,CATLG,DELETE),                                  00020800
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS),              00020900
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00021000
//*                                                                     00021100
//*                                                                     00021200
//SYSOUT   DD  SYSOUT=*                                                 00021300
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHD06T21),DISP=SHR                  00021400
//*                                                                     00021500
//**********************************************************************00021600
//*  PASO: 10     REALIZA FORMATEO DE ARCHIVO INDEVAL AGRUPANDO POR NO.*00021700
//*  PHL06P20     DE TAREA(V) DEJANDO UN SOLO REGISTRO CON LA SUMARTORIA00021800
//*                                                         ZM3DHB02   *00021900
//**********************************************************************00022000
//PHL06P20 EXEC PGM=ZM3DHB02,COND=(4,LT)                                00022100
//*                                                                     00022200
//ZMHB02A1 DD  DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVAL1,DISP=SHR            00022300
//*                                                                     00022400
//ZMHB02A2 DD  DSN=MXCP.ZM.FIX.VAL.MOVTOS1.INDEVALX,                    00022500
//             DISP=(NEW,CATLG,DELETE),                                 00022600
//             DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS),             00022700
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE)                        00022800
//*                                                                     00022900
//SYSTSPRT DD  SYSOUT=*                                                 00023000
//SYSPRINT DD  SYSOUT=*                                                 00023100
//SYSOUT   DD  SYSOUT=*                                                 00023200
//SYSDBOUT DD  SYSOUT=*                                                 00023300
//SYSABOUT DD  DUMMY                                                    00023400
//SYSUDUMP DD  DUMMY                                                    00023500
//*                                                                     00023600
//**********************************************************************00023700
//*  PASO: 11     DEPURA ARCHIVO DE OPERACIONES DE COMPRAS Y VENTAS, Y *00023800
//*  PHL06P19     ORDENA POR SERIE Y NO. TITULOS.            ICEMAN    *00023900
//*                            ( CONCATENA )                           *00024000
//**********************************************************************00024100
//PHL06P19 EXEC PGM=SYNCSORT,COND=(4,LT)                                00024200
//*                                                                     00024300
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.MOVTOS1.INDEVALX,DISP=SHR             00024400
//*                                                                     00024500
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVALY,                     00024600
//            DISP=(NEW,CATLG,DELETE),                                  00024700
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS),              00024800
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00024900
//*                                                                     00025000
//*                                                                     00025100
//SYSOUT   DD  SYSOUT=*                                                 00025200
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHD06T19),DISP=SHR                  00025300
//*                                                                     00025400
//**********************************************************************00025500
//*  PASO:  12    REALIZA FORMATEO DE ARCHIVO INDEVAL PARA LOS CASOS X *00025600
//*  PHL06P18     RALIZANDO SUMATORIA Y DEJANDOLA EN UN RGISTRO.       *00025700
//*                                                         ZM3DHB03   *00025800
//**********************************************************************00025900
//PHL06P18 EXEC PGM=ZM3DHB03,COND=(4,LT)                                00026000
//*                                                                     00026100
//ZMHB03A1 DD  DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVALY,DISP=SHR            00026200
//*                                                                     00026300
//ZMHB03A2 DD  DSN=MXCP.ZM.FIX.VAL.MOVTOS1.INDEVALZ,                    00026400
//             DISP=(NEW,CATLG,DELETE),                                 00026500
//             DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS),             00026600
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE)                        00026700
//*                                                                     00026800
//SYSTSPRT DD  SYSOUT=*                                                 00026900
//SYSPRINT DD  SYSOUT=*                                                 00027000
//SYSOUT   DD  SYSOUT=*                                                 00027100
//SYSDBOUT DD  SYSOUT=*                                                 00027200
//SYSABOUT DD  DUMMY                                                    00027300
//SYSUDUMP DD  DUMMY                                                    00027400
//*                                                                     00027500
//**********************************************************************00027600
//*  PASO: 13     REALIZA ORDENAMIENTO DEL REPORTE POR SERIE Y NO. TI- *00027700
//*  PHL06P17     TULOS.                                     ICEMAN    *00027800
//*                         ( DEPOSITOS  INDEVAL )                     *00027900
//**********************************************************************00028000
//PHL06P17 EXEC PGM=SYNCSORT,COND=(4,LT)                                00028100
//*                                                                     00028200
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.MOVTOS1.INDEVALZ,DISP=SHR             00028300
//*                                                                     00028400
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVAL.DEPOSITO,             00028500
//            DISP=(NEW,CATLG,DELETE),                                  00028600
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS),              00028700
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00028800
//*                                                                     00028900
//*                                                                     00029000
//SYSOUT   DD  SYSOUT=*                                                 00029100
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHD06T17),DISP=SHR                  00029200
//*                                                                     00029300
//**********************************************************************00029400
//*  PASO: 14     REALIZA MATCH ENTRE ARCHIVO DE INDEVAL Y ARCHIVO DE  *00029500
//*  PHL06P16     OPERACIONES.                              ZM4DHB04   *00029600
//*                               ( DEPOSITOS )                        *00029700
//**********************************************************************00029800
//PHL06P16 EXEC PGM=IKJEFT01,COND=(4,LT)                                00029900
//*                                                                     00030000
//ZMHB04S1 DD DSN=MXCP.ZM.TMP.VAL.EMP.DEPOSITO.RETIROS,DISP=SHR         00030100
//*                                                                     00030200
//ZMHB04S2 DD DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVAL.DEPOSITO,DISP=SHR     00030300
//*                                                                     00030400
//ZMHB04S3 DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB04.DEPRET,                  00030500
//            DISP=(NEW,CATLG,DELETE),                                  00030600
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),              00030700
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)                          00030800
//*                                                                     00030900
//SYSTSPRT DD  SYSOUT=*                                                 00031000
//SYSPRINT DD  SYSOUT=*                                                 00031100
//SYSOUT   DD  SYSOUT=*                                                 00031200
//SYSDBOUT DD  SYSOUT=*                                                 00031300
//SYSABOUT DD  DUMMY                                                    00031400
//SYSUDUMP DD  DUMMY                                                    00031500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD06T16),DISP=SHR                   00031600
//*                                                                     00031700
//**********************************************************************00031800
//*  PASO: 15     REALIZA ORDENAMIENTO DEL REPORTE POR SERIE Y NO. TI- *00031900
//*  PHL06P15     TULOS.                                     ICEMAN    *00032000
//*                         ( DEPOSITOS  INDEVAL )                     *00032100
//**********************************************************************00032200
//PHL06P15 EXEC PGM=SYNCSORT,COND=(4,LT)                                00032300
//*                                                                     00032400
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB04.DEPRET,DISP=SHR          00032500
//*                                                                     00032600
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.EMP.ZM4DHB04.DEPRET1,                 00032700
//            DISP=(NEW,CATLG,DELETE),                                  00032800
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),              00032900
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)                          00033000
//*                                                                     00033100
//*                                                                     00033200
//SYSOUT   DD  SYSOUT=*                                                 00033300
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHD06T15),DISP=SHR                  00033400
//*                                                                     00033500
//**********************************************************************00033600
//*  PASO: 16     GENERA ARCHIVO CON REGISTROS QUE NO TIENEN CONTRAPAR-*00033700
//*  PHL06P14     TE, PARA INICIAR UNA NUEVA BUSQUEDA.       ICEMAN    *00033800
//*                               ( RETIROS )                          *00033900
//**********************************************************************00034000
//PHL06P14 EXEC PGM=SYNCSORT,COND=(4,LT)                                00034100
//*                                                                     00034200
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.EMP.ZM4DHB04.DEPRET1,DISP=SHR         00034300
//*                                                                     00034400
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB04.RETIROS,                 00034500
//            DISP=(NEW,CATLG,DELETE),                                  00034600
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),              00034700
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)                          00034800
//*                                                                     00034900
//*                                                                     00035000
//SYSOUT   DD  SYSOUT=*                                                 00035100
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD06T14),DISP=SHR                   00035200
//*                                                                     00035300
//**********************************************************************00035400
//*  PASO: 17     REALIZA ORDENAMIENTO DE ARCHIVO YA FORMATEADO PARA   *00035500
//*  PHL06P13     RETIROS.                                   ICEMAN    *00035600
//*                           ( RETIROS INDEVAL )                      *00035700
//**********************************************************************00035800
//PHL06P13 EXEC PGM=SYNCSORT,COND=(4,LT)                                00035900
//*                                                                     00036000
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.MOVTOS1.INDEVALZ,DISP=SHR             00036100
//*                                                                     00036200
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVAL.RETIROS,              00036300
//            DISP=(NEW,CATLG,DELETE),                                  00036400
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS),              00036500
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)                          00036600
//*                                                                     00036700
//*                                                                     00036800
//SYSOUT   DD  SYSOUT=*                                                 00036900
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHD06T13),DISP=SHR                  00037000
//*                                                                     00037100
//**********************************************************************00037200
//*  PASO: 18     REALIZA MATCH ENTRE ARCHIVO DE INDEVAL Y ARCHIVO DE  *00037300
//*  PHL06P12     OPERACIONES.                              ZM4DHB04   *00037400
//*                              ( RETIROS )                           *00037500
//**********************************************************************00037600
//PHL06P12 EXEC PGM=IKJEFT01,COND=(4,LT)                                00037700
//*                                                                     00037800
//ZMHB04S1 DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB04.RETIROS,                 00037900
//            DISP=SHR                                                  00038000
//*                                                                     00038100
//ZMHB04S2 DD DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVAL.RETIROS,DISP=SHR      00038200
//*                                                                     00038300
//ZMHB04S3 DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB04.RETIROS.S1,              00038400
//            DISP=(NEW,CATLG,DELETE),                                  00038500
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),              00038600
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)                          00038700
//*                                                                     00038800
//SYSTSPRT DD  SYSOUT=*                                                 00038900
//SYSPRINT DD  SYSOUT=*                                                 00039000
//SYSOUT   DD  SYSOUT=*                                                 00039100
//SYSDBOUT DD  SYSOUT=*                                                 00039200
//SYSABOUT DD  DUMMY                                                    00039300
//SYSUDUMP DD  DUMMY                                                    00039400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD06T12),DISP=SHR                   00039500
//*                                                                     00039600
//**********************************************************************00039700
//*  PASO: 19     GENERA ARCHIVO CON REGISTROS QUE NO TIENEN CONTRAPAR-*00039800
//*  PHL06P11     TE, PARA UNA SEGUNDA PASADA                ICEMAN    *00039900
//**********************************************************************00040000
//PHL06P11 EXEC PGM=SYNCSORT,COND=(4,LT)                                00040100
//*                                                                     00040200
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB04.RETIROS.S1,DISP=SHR      00040300
//*                                                                     00040400
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.EMP.ZM4DHB04.CONTRAP1.SORT,           00040500
//            DISP=(NEW,CATLG,DELETE),                                  00040600
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),              00040700
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)                          00040800
//*                                                                     00040900
//*                                                                     00041000
//SYSOUT   DD  SYSOUT=*                                                 00041100
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD06T11),DISP=SHR                   00041200
//*                                                                     00041300
//**********************************************************************00041400
//*  PASO: 20     REALIZA MATCH ENTRE ARCHIVO DE INDEVAL Y ARCHIVO DE  *00041500
//*  PHL06P10     OPERACIONES.                              ZM4DHB06   *00041600
//*                              ( DEPOSITOS )                         *00041700
//**********************************************************************00041800
//PHL06P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00041900
//*                                                                     00042000
//ZMHB06S1 DD DSN=MXCP.ZM.TMP.VAL.EMP.ZM4DHB04.CONTRAP1.SORT,           00042100
//            DISP=SHR                                                  00042200
//*                                                                     00042300
//ZMHB06S2 DD DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVAL.DEPOSITO,DISP=SHR     00042400
//*                                                                     00042500
//ZMHB06S3 DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB06.DEPOSITO,                00042600
//            DISP=(NEW,CATLG,DELETE),                                  00042700
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),              00042800
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)                          00042900
//*                                                                     00043000
//SYSTSPRT DD  SYSOUT=*                                                 00043100
//SYSPRINT DD  SYSOUT=*                                                 00043200
//SYSOUT   DD  SYSOUT=*                                                 00043300
//SYSDBOUT DD  SYSOUT=*                                                 00043400
//SYSABOUT DD  DUMMY                                                    00043500
//SYSUDUMP DD  DUMMY                                                    00043600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD06T10),DISP=SHR                   00043700
//*                                                                     00043800
//**********************************************************************00043900
//*  PASO: 21     GENERA ARCHIVO CON REGISTROS QUE SI TIENEN CONTRAPAR-*00044000
//*  PHL06P09     TE.                                                  *00044100
//*                                                          ICEMAN    *00044200
//**********************************************************************00044300
//PHL06P09 EXEC PGM=SYNCSORT,COND=(4,LT)                                00044400
//*                                                                     00044500
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB04.DEPRET,DISP=SHR          00044600
//         DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB04.RETIROS.S1,DISP=SHR      00044700
//         DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB06.DEPOSITO,DISP=SHR        00044800
//*                                                                     00044900
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.EMP.ZM4DHB04.CONTRAP1,                00045000
//            DISP=(NEW,CATLG,DELETE),                                  00045100
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),              00045200
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)                          00045300
//*                                                                     00045400
//*                                                                     00045500
//SYSOUT   DD  SYSOUT=*                                                 00045600
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD06T09),DISP=SHR                   00045700
//*                                                                     00045800
//**********************************************************************00045900
//*  PASO: 22     GENERA ARCHIVO CON REGISTROS QUE NO TIENEN CONTRAPAR-*00046000
//*  PHL06P08     TE, PARA UNA SEGUNDA PASADA                ICEMAN    *00046100
//*                            ( RETIROS )                             *00046200
//**********************************************************************00046300
//PHL06P08 EXEC PGM=SYNCSORT,COND=(4,LT)                                00046400
//*                                                                     00046500
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.EMP.ZM4DHB06.DEPOSITO,DISP=SHR        00046600
//*                                                                     00046700
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.EMP.ZM4DHB06.RETIROS.SORT,            00046800
//            DISP=(NEW,CATLG,DELETE),                                  00046900
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),              00047000
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)                          00047100
//*                                                                     00047200
//*                                                                     00047300
//SYSOUT   DD  SYSOUT=*                                                 00047400
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD06T08),DISP=SHR                   00047500
//*                                                                     00047600
//**********************************************************************00047700
//*  PASO: 23     REALIZA MATCH ENTRE ARCHIVO DE INDEVAL Y ARCHIVO DE  *00047800
//*  PHL06P07     OPERACIONES.                              ZM4DHB06   *00047900
//*                              ( RETIROS )                           *00048000
//**********************************************************************00048100
//PHL06P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                00048200
//*                                                                     00048300
//ZMHB06S1 DD DSN=MXCP.ZM.TMP.VAL.EMP.ZM4DHB06.RETIROS.SORT,            00048400
//            DISP=SHR                                                  00048500
//*                                                                     00048600
//ZMHB06S2 DD DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVAL.RETIROS,DISP=SHR      00048700
//*                                                                     00048800
//ZMHB06S3 DD DSN=MXCP.ZM.TMP.VAL.EMP.ZM4DHB06.RETIROS,                 00048900
//            DISP=(NEW,CATLG,DELETE),                                  00049000
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),              00049100
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)                          00049200
//*                                                                     00049300
//SYSTSPRT DD  SYSOUT=*                                                 00049400
//SYSPRINT DD  SYSOUT=*                                                 00049500
//SYSOUT   DD  SYSOUT=*                                                 00049600
//SYSDBOUT DD  SYSOUT=*                                                 00049700
//SYSABOUT DD  DUMMY                                                    00049800
//SYSUDUMP DD  DUMMY                                                    00049900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD06T07),DISP=SHR                   00050000
//*                                                                     00050100
//**********************************************************************00050200
//*  PASO: 24     CONCATENA ARCHIVOS PARA ENVIAR A BANXICO.            *00050300
//*  PHL06P06                                                ICEMAN    *00050400
//**********************************************************************00050500
//PHL06P06 EXEC PGM=SYNCSORT,COND=(4,LT)                                00050600
//*                                                                     00050700
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.EMP.ZM4DHB04.CONTRAP1,DISP=SHR        00050800
//         DD DSN=MXCP.ZM.TMP.VAL.EMP.ZM4DHB06.RETIROS,DISP=SHR         00050900
//*                                                                     00051000
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.EMP.BANXICO.PROC1,                    00051100
//            DISP=(NEW,CATLG,DELETE),                                  00051200
//            DCB=(RECFM=FB,LRECL=117,BLKSIZE=0,DSORG=PS),              00051300
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)                          00051400
//*                                                                     00051500
//*                                                                     00051600
//SYSOUT   DD  SYSOUT=*                                                 00051700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD06T06),DISP=SHR                   00051800
//*                                                                     00051900
//**********************************************************************00052000
//*  PASO: 25  CONCATENA ARCHIVOS PARA ENVIAR A BANXICO.               *00052100
//*  PHL06P05                                                          *00052200
//**********************************************************************00052300
//PHL06P05 EXEC PGM=ICEGENER,COND=(4,LT)                                00052400
//SYSPRINT DD  SYSOUT=*                                                 00052500
//SYSOUT   DD  SYSOUT=*                                                 00052600
//SYSUT1   DD  DSN=MXCP.ZM.FIX.VAL.EMP.BANXICO.PROC1,DISP=SHR           00052700
//         DD  DSN=MXCP.ZM.FIX.PLAZOS.CONTRAP,DISP=SHR                  00052800
//SYSUT2   DD  DSN=MXCP.ZM.FIX.VAL.ECBP.BANXICO,                        00052900
//             DISP=(NEW,CATLG,DELETE),                                 00053000
//             SPACE=(CYL,(20,10),RLSE),UNIT=3390,                      00053100
//             DCB=(RECFM=FB,LRECL=117,BLKSIZE=0,DSORG=PS)              00053200
//SYSIN    DD  DUMMY                                                    00053300
//*                                                                     00053400
//**********************************************************************00053500
//*  PASO: 26     INICIALIZA EL EVENTO PARA LIMITAR LAS COMPRAS Y VEN- *00053600
//*  PHL06P04     TAS.                                                 *00053700
//*                           BX2 = I                                  *00053800
//* PASO REINICIABLE POR RESTART                            ZM4DLE11   *00053900
//**********************************************************************00054000
//PHL06P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00054100
//*                                                                     00054200
//ZMLE11A1 DD DSN=MXCP.ZM.FIX.VAL.EMP.ZMHLPD06,DISP=SHR                 00054300
//*                                                                     00054400
//SYSTSPRT DD  SYSOUT=*                                                 00054500
//SYSPRINT DD  SYSOUT=*                                                 00054600
//SYSOUT   DD  SYSOUT=*                                                 00054700
//SYSDBOUT DD  SYSOUT=*                                                 00054800
//SYSABOUT DD  DUMMY                                                    00054900
//SYSUDUMP DD  DUMMY                                                    00055000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHD06T04),DISP=SHR                  00055100
//*                                                                     00055200
//****************************************************************      00055300
//*                SE ADICIONA CONDICION                         *      00055400
//*          PARA EJECUTAR PROCESO CBHTNE59                      *      00055500
//****************************************************************      00055600
//PHL06P01 EXEC PGM=CTMCND,PARM='ADD COND CBHTNE59_IN_PR_OK WDATE',     00055700
//         COND=(4,LT)                                                  00055800
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00055900
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00056000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00056100
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00056200
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00056300
//PRTDBG   DD SYSOUT=*                                                  00056400
//SYSPRINT DD DUMMY                                                     00056500
//SYSUDUMP DD DUMMY                                                     00056600
//DAPRINT  DD SYSOUT=*                                                  00056700
//DACNDIN  DD DDNAME=SYSIN                                              00056800
//*                                                                     00056900
//**********************************************************************00057000
//*                    F I N    Z M H L P Z 6 D                        *00057100
//**********************************************************************00057200
