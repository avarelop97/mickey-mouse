//ZMUEPM91 PROC EMP=,SUC=,INT1=,FECHA=                                  00000100
//**********************************************************************00000200
//*                     C A S A   D E   B O L S A                      *00000300
//*                     =========================                      *00000400
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *00000500
//*                                                                    *00000600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000700
//*                                                                    *00000800
//*   PROCEDIM. :  ZMUEPM91                                            *00000900
//*                                                                    *00001000
//*   OBJETIVO  :  ACTUALIZA LA TABLA HISTORICA DE ESTADOS DE CUENTA   *00001100
//*                CON LOS DATOS ADMINISTRATIVOS (ZMDT691)             *00001200
//*                                                                    *00001300
//*   CORRE ANTES DE  : CBHFND36                                       *00001400
//*                                                                    *00001500
//*   CORRE DESPUES DE: CBUENM13                                       *00001600
//*                                                                    *00001700
//*   PERIODICIDAD    :  MENSUAL                                       *00001800
//*                                                                    *00001900
//**********************************************************************00002000
//*--------------------------------------------------------------------*00002100
//*             L O G   D E   M O D I F I C A C I O N E S              *00002200
//*--------------------------------------------------------------------*00002300
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *00002400
//* -----------  ------- -------  -------------------------------------*00002500
//* FS-1.0.0-01  INDRA   27NOV18 SE INCLUYE EL ARCHIVO DE RETENCIONES  *00002600
//*                              EN EL PROCESAMIENTO.                  *00002700
//*                                                                    *00002800
//*--------------------------------------------------------------------*00002900
//*                                                                     00003000
//**********************************************************************00003100
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *00003200
//**********************************************************************00003300
//PUE91P02 EXEC PGM=ZM3DG001,                                           00003400
//         PARM=('&EMP','&SUC','&INT1','&FECHA',)                       00003500
//SYSTSPRT DD SYSOUT=*                                                  00003600
//SYSPRINT DD SYSOUT=*                                                  00003700
//SYSOUT   DD SYSOUT=*                                                  00003800
//SYSDBOUT DD SYSOUT=*                                                  00003900
//SYSABOUT DD DUMMY                                                     00004000
//SYSUDUMP DD DUMMY                                                     00004100
//*                                                                     00004200
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPM91,                        00004300
//            DISP=(NEW,CATLG,DELETE),                                  00004400
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00004500
//            UNIT=3390,                                                00004600
//            SPACE=(CYL,(2,1),RLSE)                                    00004700
//*                                                                     00004800
//*FS-1.0.0-01-INI                                                      00004900
//*--------------------------------------------------------------------*00005000
//* PASO       : ZUE12P96                                              *00005100
//* UTILERIA   : IKJEFT01/ZM4MU310                                     *00005200
//* OBJETIVO   : REASIGNA EL NUMERO DE CONTRATO DE LA TABLA ZMDT609    *00005300
//*              Y ZMDT608.                                            *00005400
//*--------------------------------------------------------------------*00005500
//PUE91P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00005600
//*                                                                     00005700
//E1DQ0001 DD DSN=MXCP.ZM.FIX.CBUENM44.DETALLE.EDIMPUE.SORT,            00005800
//            DISP=SHR                                                  00005900
//*                                                                     00006000
//S1DQ0001 DD DSN=MXCP.ZM.WKF.CBUENM91.DETALLE.EDIMPUE,                 00006100
//            DISP=(NEW,CATLG,CATLG),                                   00006200
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),                    00006300
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=88,DSORG=PS)                00006400
//*                                                                     00006500
//QRLSDB2  DD SYSOUT=*                                                  00006600
//SYSPRINT DD SYSOUT=*                                                  00006700
//SYSTSPRT DD SYSOUT=*                                                  00006800
//SYSUDUMP DD SYSOUT=*                                                  00006900
//SYSABOUT DD SYSOUT=*                                                  00007000
//SYSDBOUT DD SYSOUT=*                                                  00007100
//SYSOUT   DD SYSOUT=*                                                  00007200
//*                                                                     00007300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE12P96),                           00007400
//            DISP=SHR                                                  00007500
//*                                                                     00007600
//*--------------------------------------------------------------------*00007700
//* PASO       : ZUE12P95                                              *00007800
//* UTILERIA   : ICEMAN                                                *00007900
//* OBJETIVO   : SE ORDENA EL ARCHIVO DEL DETALLE DE RETENCIONES POR   *00008000
//*              EL NUEVO CONTRATO, EMISORA, SERIE Y TIPO DE MERCADO.  *00008100
//*--------------------------------------------------------------------*00008200
//PUE91P00 EXEC PGM=ICEMAN,COND=(4,LT)                                  00008300
//*                                                                     00008400
//SORTIN   DD DSN=MXCP.ZM.WKF.CBUENM91.DETALLE.EDIMPUE,                 00008500
//            DISP=SHR                                                  00008600
//*                                                                     00008700
//SORTOUT  DD DSN=MXCP.ZM.WKF.CBUENM91.DETALLE.EDIMPUE.SORT,            00008800
//            DISP=(NEW,CATLG,CATLG),                                   00008900
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),                    00009000
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=88,DSORG=PS)                00009100
//*                                                                     00009200
//SYSOUT   DD SYSOUT=*                                                  00009300
//*                                                                     00009400
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P95),                           00009500
//            DISP=SHR                                                  00009600
//*                                                                     00009700
//*FS-1.0.0-01-FIN                                                      00009800
//**********************************************************************00009900
//*                    -- ZM4MU020  --                                  00010000
//*  ACTUALIZA LA BASE DE DATOS HISTORICA DE ESTADOS DE CUENTA DE       00010100
//*  ACUERDO AL LAYOUT DE LOS ARCHIVOS DE BANCA PATRIMONIAL             00010200
//**********************************************************************00010300
//PUE91P0A EXEC PGM=IKJEFT01,COND=(4,LT)                                00010400
//ZMU020P1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPM91,DISP=SHR                00010500
//*                                                                     00010600
//*---- ARCHIVOS ENTRADA MUV       E.C. IMPRESOS SIN RECORTAR           00010700
//ZMU020M1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMPRE,DISP=SHR         00010800
//ZMU020M2 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02.ACT,DISP=SHR          00010900
//ZMU020M3 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03.ACT,DISP=SHR          00011000
//ZMU020M5 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF05.ACT,DISP=SHR          00011100
//*                                                                     00011200
//*---- ARCHIVOS ENTRADA BPATR/BPRIV E.C. IMPRESOS RECORTADOS           00011300
//ZMU020B4 DD DUMMY                                                     00011400
//ZMU020B8 DD DUMMY                                                     00011500
//*                                                                     00011600
//*FS-1.0.0-01-INI                                                      00011700
//ZMU504FD DD DSN=MXCP.ZM.TMP.CBUENM91.ZMDT595,                         00011800
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00011900
//            DCB=(DSORG=PS,LRECL=212,RECFM=FB,BLKSIZE=0),              00012000
//            SPACE=(CYL,(800,400),RLSE)                                00012100
//*                                                                     00012200
//*FS-1.0.0-01-FIN                                                      00012300
//SYSTSPRT DD SYSOUT=*                                                  00012400
//SYSPRINT DD SYSOUT=*                                                  00012500
//SYSOUT   DD SYSOUT=*                                                  00012600
//SYSDBOUT DD SYSOUT=*                                                  00012700
//SYSABOUT DD SYSOUT=*                                                  00012800
//SYSUDUMP DD DUMMY                                                     00012900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE91T01),DISP=SHR                   00013000
//*                                                                     00013100
//*FS-1.0.0-01-INI                                                      00013200
//*                                                                     00013300
//**********************************************************************00013400
//*  ORDENA ARCHIVO CON INFORMACION DE HISTORICOS                      *00013500
//**********************************************************************00013600
//*                                                                     00013700
//PUE91P0B EXEC PGM=ICEMAN,COND=(4,LT)                                  00013800
//*                                                                     00013900
//SORTIN   DD  DSN=MXCP.ZM.TMP.CBUENM91.ZMDT595,                        00014000
//             DISP=SHR                                                 00014100
//*                                                                     00014200
//SORTOUT  DD  DSN=MXCP.ZM.TMP.CBUENM91.ZMDT595.SORT,                   00014300
//             DISP=(NEW,CATLG,DELETE),                                 00014400
//             DCB=(LRECL=212,RECFM=FB,BLKSIZE=0,DSORG=PS),             00014500
//             SPACE=(CYL,(200,100),RLSE),UNIT=3390                     00014600
//*                                                                     00014700
//SYSOUT   DD  SYSOUT=*                                                 00014800
//SYSTSPRT DD  SYSOUT=*                                                 00014900
//SYSPRINT DD  SYSOUT=*                                                 00015000
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUR02T70),DISP=SHR                  00015100
//*                                                                     00015200
//**********************************************************************00015300
//*                    -- ZM4MU026  --                                 *00015400
//*  GENERA ACUMULADOS DE DERIVADOS Y FIBRAS DE HISTORICOS EN TABLA    *00015500
//*  ZMDT595                                                           *00015600
//**********************************************************************00015700
//PUE91P0C EXEC PGM=IKJEFT01,COND=(4,LT)                                00015800
//*                                                                     00015900
//ENTRADA1 DD DSN=MXCP.ZM.TMP.CBUENM91.ZMDT595.SORT,                    00016000
//             DISP=SHR                                                 00016100
//*                                                                     00016200
//ENTRADA2 DD DSN=MXCP.ZM.WKF.CBUENM91.DETALLE.EDIMPUE.SORT,            00016300
//             DISP=SHR                                                 00016400
//*                                                                     00016510
//SALIDA   DD  DSN=MXCP.ZM.TMP.CBUENM91.ZMDT595.INSERT,                 00016520
//             DISP=(NEW,CATLG,DELETE),                                 00016530
//             DCB=(LRECL=212,RECFM=FB,BLKSIZE=0,DSORG=PS),             00016540
//             SPACE=(CYL,(200,100),RLSE),UNIT=3390                     00016550
//*                                                                     00016560
//SYSTSPRT DD SYSOUT=*                                                  00016600
//SYSPRINT DD SYSOUT=*                                                  00016700
//SYSOUT   DD SYSOUT=*                                                  00016800
//SYSDBOUT DD SYSOUT=*                                                  00016900
//SYSABOUT DD SYSOUT=*                                                  00017000
//SYSUDUMP DD DUMMY                                                     00017100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR03P65),DISP=SHR                   00017200
//*                                                                     00017300
//*FS-1.0.0-01-FIN                                                      00017400
//*--------------------------------------------------------------------*00017500
//* PASO       : PUE91P0A                                              *00017600
//* UTILERIA   : ZM4MU021 / IKJEFT01                                   *00017700
//* OBJETIVO   : GENERA REPORTE DE MOVIMIENTOS CORRESPONDIENTES AL DIA *00017800
//*              HABIL  ANTERIOR A LA FECHA DE OPERACION               *00017900
//*--------------------------------------------------------------------*00018000
//PUE91P0D EXEC PGM=IKJEFT01,COND=(4,LT)                                00018100
//ZMM021E1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPM91,DISP=SHR                00018200
//*                                                                     00018300
//ZMM021S1 DD DSN=MXCP.ZM.FIX.MOV.UHNW.F&FECHA..REP,                    00018400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00018500
//            DCB=(DSORG=PS,LRECL=208,RECFM=FB,BLKSIZE=0),              00018600
//            SPACE=(CYL,(200,100),RLSE)                                00018700
//ZMM021S2 DD DSN=MXCP.ZM.FIX.MOV.UHNW.F&FECHA..INCI,                   00018800
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00018900
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00019000
//            SPACE=(CYL,(200,100),RLSE)                                00019100
//SYSTSPRT DD SYSOUT=*                                                  00019200
//SYSPRINT DD SYSOUT=*                                                  00019300
//SYSOUT   DD SYSOUT=*                                                  00019400
//SYSDBOUT DD SYSOUT=*                                                  00019500
//SYSABOUT DD SYSOUT=*                                                  00019600
//SYSUDUMP DD DUMMY                                                     00019700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE91T02),DISP=SHR                   00019800
//*                                                                     00019900
//*--------------------------------------------------------------------*00020000
//* PASO       : PUE91P0F                                              *00020100
//* UTILERIA   : ZM4MU025 / IKJEFT01                                   *00020200
//* OBJETIVO   : GENERA REPORTE 533                                    *00020300
//*--------------------------------------------------------------------*00020400
//PUE91P0F EXEC PGM=IKJEFT01,COND=(4,LT)                                00020500
//*                                                                     00020600
//ZMM025S1 DD DSN=MXCP.ZM.FIX.R533.COMIS.F&FECHA..REP,                  00020700
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00020800
//            DCB=(DSORG=PS,LRECL=709,RECFM=FB,BLKSIZE=0),              00020900
//            SPACE=(CYL,(200,100),RLSE)                                00021000
//ZMM025S2 DD DSN=MXCP.ZM.FIX.R533.COMIS.F&FECHA..INCI,                 00021100
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00021200
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00021300
//            SPACE=(CYL,(200,100),RLSE)                                00021400
//SYSTSPRT DD SYSOUT=*                                                  00021500
//SYSPRINT DD SYSOUT=*                                                  00021600
//SYSOUT   DD SYSOUT=*                                                  00021700
//SYSDBOUT DD SYSOUT=*                                                  00021800
//SYSABOUT DD SYSOUT=*                                                  00021900
//SYSUDUMP DD DUMMY                                                     00022000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE91T03),DISP=SHR                   00022100
//*                                                                    *00023900
//**********************************************************************00024000
//*        TERMINA PROCESO ZMUEPM91 SIVA MULTIEMPRESA                  *00024100
//**********************************************************************00024200
