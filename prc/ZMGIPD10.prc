//ZMGIPD10 PROC FECHA=                                                  00000100
//*--------------------------------------------------------------------*00000200
//*                                                                    *00000900
//*               C A S A     D E     B O L S A                        *00000300
//*               -----------------------------                        *00000400
//*               VENCIMIENTOS  PLAZOS  BG                             *00000500
//*                                                                    *00000600
//*  PASO:  1     VENCIMIENTOS DE PLAZOS (BANCA PATRIMONIAL)           *00000700
//*               DESDE BG   HACIA  MUV                                *00000800
//*                                                                    *00000900
//*--------------------------------------------------------------------*00001000
//*  ELABORO: ABEL CASTILLO VALENCIA (GRUPO GESFOR)                    *00001100
//*  FECHA  : SEPTIEMBRE DE 2004                                       *00001200
//*--------------------------------------------------------------------*00001300
//*  MODIFICACIONES                                                    *00001400
//* FECHA    DESCRIPCION                                               *00001500
//* NOV-2005 SE AGREGA PASO PARA REPORTE DE VALUACION DE CLIENTES      *00001600
//*          SE AGREGA PASO PARA CDAMD                                 *00001700
//* ENE-2006 SE AGREGA PASO PARA GENERAR ARCHIVO DE POSICION DE PLAZOS *00001800
//*          PARA TRANSFERENCIA A SERVIDOR.                            *00001900
//* MAY-2006 SE AGREGA PASO PARA GENERAR ARCHIVO DE VALUACION DE CLIENT*00002000
//*          PARA TRANSFERENCIA A SERVIDOR.                            *00002100
//* SEP-2006 SE AGREGAN PASOS PARA INCORPORAR DOMICILIO OFICIAL PARA   *00002200
//*          ARCHIVO DE VALUACION DE CLIENTES=== AZERTIA (AGR)         *00002300
//* NOV-2006 SE INCORPORA REPORTE DE ALTAS EFECTUADAS EN MUV--MENSUAL  *00002400
//*          ==== AZERTIA (AGR) ====                                   *00002500
//* DIC-2006 SE INCORPORA ARCHIVO DE ALTAS EFECTUADAS EN MUV--ACUMULADO*00002600
//*          ==== AZERTIA (AGR) ====                                   *00002700
//* MAR-2007 SE INCORPORA REPORTE DE BAJAS EFECTUADAS EN MUV--MENSUAL  *00002800
//*          ==== AZERTIA (AGR) ====                                   *00002900
//* MAR-2007 SE INCORPORA ARCHIVO DE PROMOTORES CERTIFICADOS (0,1,2,3) *00003000
//*          ==== GESFOR  (PAZ) ====                                   *00003100
//* ABR-2007 ----- RIESGOS-----                                        *00003200
//*          SE INCORPORA ARCHIVO DE BAJAS ACUMULADAS EN EL MES        *00003300
//*          SE INCORPORA ARCHIVO DE CUENTAS BLOQUEDADAS               *00003400
//*          SE INCORPORA ARCHIVO DE CUENTAS CON SOBREGIRO             *00003500
//*          SE INCORPORA ARCHIVO DE ESTADOS DE CUENTA CON INHIBICION  *00003600
//*                       DE IMPRESION                                 *00003700
//*          ESTA INFORMACION SE ENVIA A CARPETA DE RIESGOS.           *00003800
//*          ==== AZERTIA (AGR) ====                                   *00003900
//* OCT-2007 ----- RIESGOS-----                                        *00004000
//*          SE INCORPORA ARCHIVO DE CLIENTES EXTRANJEROS Y NO         *00004100
//*          RESIDENTES EN TERRITORIO NACIONAL                         *00004200
//*          ESTA INFORMACION SE ENVIA A CARPETA DE RIESGOS.           *00004300
//*          ==== AZERTIA (AGR) ====                                   *00004400
//* NOV-2007 ----- RIESGOS-----                                        *00004500
//*          ARCHIVO DE CLIENTES CON CODIGO POSTAL IGUAL A             *00004600
//*          SUCURSALES PATRIMONIALES.                                 *00004700
//*          ESTA INFORMACION SE ENVIA A CARPETA DE RIESGOS.           *00004800
//*          ==== AZERTIA (AGR) ====                                   *00004900
//*--------------------------------------------------------------------*00005000
//*--------------------------------------------------------------------*00005010
//*             L O G   D E   M O D I F I C A C I O N E S              *00005020
//*--------------------------------------------------------------------*00005030
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *00005040
//* -----------  ------- -------  -------------------------------------*00005050
//* FS-1.1.0-01  IDAXADC 28AGO09  SE AGRAGA PASO PJI10P2B EL CUAL      *00005060
//*                               GENERA ARCHIVO DE VALUACION DE       *00005061
//*                               CLIENTES MUV BANCA PATRIMONIAL       *00005062
//* FS-1.2.0-04  XM010AC 22OCT10  SE AGREGA EL PASO PJI10P1B EL CUAL   *00005060
//*                               GENERA LA INTERFAZ DE PLAZOS MUV     *00005061
//* FS-1.3.0-05  XM010IS 03NOV10  SE MODIFICA LONGITUD DEL ARCHIVO     *00005060
//*                               MXCP.ZM.FIX.INTFZMUV.PLAZOS.ERR DE   *00005061
//*                               84 A 41.                             *00005061
//* DYD1 1.0-01  XM07582 28FEB13  SE REVERSA A LA VERSION -1           *00005060
//* DYD1 1.0-02  XM07582 05MZO13  SE AGREGA PASO PARA RECORTAR EL ARCH.*00005060
//*                               ALTASMUV PARA REPORTE DE GESTION     *00005060
//* DYD1 1.0-01  XM07729 22MAY14  SE AGREGAN PASOS PARA CLASIFICAR Y   *00005060
//*                               AGREGAR 6 CAMPOS AL MAESTRO DE PERSO-*00005060
//*                               NAS E INCLUIR LA INFORMACION EN EL   *00005060
//*                               REPORTE DE APERTURAS DIARIO Y MENSUAL*00005060
//* DYD  RRN-01  XM07729 29OCT15  SE INCLUYEN LAS ALTAS POR INTERNET   *00005060
//*                               EN EL REPORTE DE APERTURAS DIARIO Y  *00005060
//*                               MENSUAL.                             *00005060
//*                               SE ELIMINA LA TRANSMISION DE ARCHIVOS*00005060
//*                               DESDE ESTE PROCEDIMIENTO.            *00005060
//* SEP-2018 ----- OPERACION CENTRAL ------                            *00003200
//*          SE INCORPORA COPIA ARCHIVO DE BAJAS ACUMULADAS EN EL MES  *00003300
//*          SE INCORPORA COPIA ARCHIVO DE CUENTAS BLOQUEDADAS         *00003400
//*          ESTA INFORMACION SE ENVIARA A CARPETA DE OPERACION CENTRAL*00003800
//*          ==== INDRA   (AGR) ====                                   *00003900
//*------------------------------------------------------------------- *00003900
//*INDRA-I    IEF        MAR2021 SE INCLUYE PASO PARA ORDENAR          *00003900
//*INDRA-F                       ARCHIVO VALCLIENTE Y SE MODIFICA      *00003900
//*                              LONGITUD DEL ARCHIVO A 760            *00003900
//*--------------------------------------------------------------------*00005070
//**********************************************************************00005100
//* PROGRAMA: ZM4EJ804                                                 *00005200
//* FUNCION:  ARCHIVO DE CLIENTES CON CODIGO POSTAL IGUAL A            *00005300
//*           SUCURSALES PATRIMONIALES.                                *00005400
//*           (RIESGOS)                                                *00005500
//**********************************************************************00005600
//PJI10P17 EXEC PGM=IKJEFT01                                            00005700
//ZMJ804A1 DD DSN=MXCP.ZM.FIX.TES.CODPOST,                              00005800
//            DISP=(NEW,CATLG,DELETE),                                  00005900
//            DCB=(LRECL=711,RECFM=FB,BLKSIZE=0,DSORG=PS),              00006000
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00006100
//*                                                                     00006200
//SYSTSPRT DD SYSOUT=*                                                  00006300
//SYSPRINT DD SYSOUT=*                                                  00006400
//SYSOUT   DD SYSOUT=*                                                  00006500
//SYSDBOUT DD SYSOUT=*                                                  00006600
//SYSABOUT DD SYSOUT=*                                                  00006700
//SYSUDUMP DD DUMMY                                                     00006800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T17),DISP=SHR                   00006900
//*                                                                     00007000
//**********************************************************************00007100
//* PROGRAMA: ZM4EJ803                                                 *00007200
//* FUNCION:  ARCHIVO DE CLIENTES EXTRANJEROS Y NO RESIDENTES          *00007300
//*           EN TERRITORIO NACIONAL EN WORLD CHECK                    *00007400
//*           (RIESGOS)                                                *00007500
//**********************************************************************00007600
//PJI10P16 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007700
//ZMJ803A1 DD DSN=MXCP.ZM.FIX.TES.EXTRANJE,                             00007800
//            DISP=(NEW,CATLG,DELETE),                                  00007900
//            DCB=(LRECL=711,RECFM=FB,BLKSIZE=0,DSORG=PS),              00008000
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00008100
//*                                                                     00008200
//SYSTSPRT DD SYSOUT=*                                                  00008300
//SYSPRINT DD SYSOUT=*                                                  00008400
//SYSOUT   DD SYSOUT=*                                                  00008500
//SYSDBOUT DD SYSOUT=*                                                  00008600
//SYSABOUT DD SYSOUT=*                                                  00008700
//SYSUDUMP DD DUMMY                                                     00008800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T16),DISP=SHR                   00008900
//*                                                                     00009000
//**********************************************************************00009100
//* PROGRAMA: ZM4EJ791                                                 *00009200
//* FUNCION:  ARCHIVO DE ESTADOS DE CUENTA CON INHIBICION              *00009300
//*           DE IMPRESION.    (RIESGOS)                               *00009400
//**********************************************************************00009500
//PJI10P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00009600
//ZMJ791A1 DD DSN=MXCP.ZM.FIX.TES.INHIMPRE,                             00009700
//            DISP=(NEW,CATLG,DELETE),                                  00009800
//            DCB=(LRECL=270,RECFM=FB,BLKSIZE=0,DSORG=PS),              00009900
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00010000
//*                                                                     00010100
//SYSTSPRT DD SYSOUT=*                                                  00010200
//SYSPRINT DD SYSOUT=*                                                  00010300
//SYSOUT   DD SYSOUT=*                                                  00010400
//SYSDBOUT DD SYSOUT=*                                                  00010500
//SYSABOUT DD SYSOUT=*                                                  00010600
//SYSUDUMP DD DUMMY                                                     00010700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T15),DISP=SHR                   00010800
//*                                                                     00010900
//**********************************************************************00011000
//* PROGRAMA: ZM4EJ790                                                 *00011100
//* FUNCION:  ARCHIVO DE CUENTAS CON SOBREGIRO  (RIESGOS)              *00011200
//**********************************************************************00011300
//PJI10P14 EXEC PGM=IKJEFT01,COND=(4,LT)                                00011400
//ZMJ790A1 DD DSN=MXCP.ZM.FIX.TES.CORTOMUV,                             00011500
//            DISP=(NEW,CATLG,DELETE),                                  00011600
//            DCB=(LRECL=282,RECFM=FB,BLKSIZE=0,DSORG=PS),              00011700
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00011800
//*                                                                     00011900
//SYSTSPRT DD SYSOUT=*                                                  00012000
//SYSPRINT DD SYSOUT=*                                                  00012100
//SYSOUT   DD SYSOUT=*                                                  00012200
//SYSDBOUT DD SYSOUT=*                                                  00012300
//SYSABOUT DD SYSOUT=*                                                  00012400
//SYSUDUMP DD DUMMY                                                     00012500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T14),DISP=SHR                   00012600
//*                                                                     00012700
//**********************************************************************00012800
//* PROGRAMA: ZM4EJ789                                                 *00012900
//* FUNCION:  ARCHIVO DE CUENTAS BLOQUEDADAS  (RIESGOS)                *00013000
//**********************************************************************00013100
//PJI10P13 EXEC PGM=IKJEFT01,COND=(4,LT)                                00013200
//ZMJ789A1 DD DSN=MXCP.ZM.FIX.TES.BLOQUEO,                              00013300
//            DISP=(NEW,CATLG,DELETE),                                  00013400
//            DCB=(LRECL=501,RECFM=FB,BLKSIZE=0,DSORG=PS),              00013500
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00013600
//*                                                                     00013700
//SYSTSPRT DD SYSOUT=*                                                  00013800
//SYSPRINT DD SYSOUT=*                                                  00013900
//SYSOUT   DD SYSOUT=*                                                  00014000
//SYSDBOUT DD SYSOUT=*                                                  00014100
//SYSABOUT DD SYSOUT=*                                                  00014200
//SYSUDUMP DD DUMMY                                                     00014300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T13),DISP=SHR                   00014400
//*                                                                     00014500
//**********************************************************************00014600
//* PROGRAMA: ZM4EJ788                                                 *00014700
//* FUNCION:  ARCHIVO DE BAJAS ACUMULADAS EN EL MES (RIESGOS)          *00014800
//**********************************************************************00014900
//PJI10P12 EXEC PGM=IKJEFT01,COND=(4,LT)                                00015000
//ZMJ788A1 DD DSN=MXCP.ZM.FIX.TES.BAJASMUV,                             00015100
//            DISP=(NEW,CATLG,DELETE),                                  00015200
//            DCB=(LRECL=282,RECFM=FB,BLKSIZE=0,DSORG=PS),              00015300
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00015400
//*                                                                     00015500
//SYSTSPRT DD SYSOUT=*                                                  00015600
//SYSPRINT DD SYSOUT=*                                                  00015700
//SYSOUT   DD SYSOUT=*                                                  00015800
//SYSDBOUT DD SYSOUT=*                                                  00015900
//SYSABOUT DD SYSOUT=*                                                  00016000
//SYSUDUMP DD DUMMY                                                     00016100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T12),DISP=SHR                   00016200
//*                                                                     00016300
//**********************************************************************00016400
//* PROGRAMA: ZM4OUK21                                                 *00016500
//* FUNCION:  GENERACION DE REPORTE DE PROMOTORES EN EL CUAL SE        *00016600
//*           OBSERVARA EL NIVEL DE CERTIFICACION DE TODAS LAS SUC.    *00016700
//**********************************************************************00016800
//PJI10P11 EXEC PGM=IKJEFT01,COND=(4,LT)                                00016900
//ZMU021R1 DD DSN=MXCP.ZM.FIX.TES.PRCERTIF,                             00017000
//            DISP=(NEW,CATLG,DELETE),                                  00017100
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),              00017200
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)                        00017300
//*                                                                     00017400
//SYSTSPRT DD SYSOUT=*                                                  00017500
//SYSPRINT DD SYSOUT=*                                                  00017600
//SYSOUT   DD SYSOUT=*                                                  00017700
//SYSDBOUT DD SYSOUT=*                                                  00017800
//SYSABOUT DD SYSOUT=*                                                  00017900
//SYSUDUMP DD DUMMY                                                     00018000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T11),DISP=SHR                   00018100
//*                                                                     00018200
//**********************************************************************00018300
//* PROGRAMA: ZM4EJ787                                                 *00018400
//* FUNCION:  GENERACION DE REPORTE DE BAJAS EFECTUADAS EN MUV         *00018500
//*           DURANTE EL MES (SOLO SE EJECUTA EN FIN DE MES)           *00018600
//**********************************************************************00018700
//PJI10P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00018800
//ZMJ787A1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00018900
//*                                                                     00019000
//SYSTSPRT DD SYSOUT=*                                                  00019100
//SYSPRINT DD SYSOUT=*                                                  00019200
//SYSOUT   DD SYSOUT=*                                                  00019300
//SYSDBOUT DD SYSOUT=*                                                  00019400
//SYSABOUT DD SYSOUT=*                                                  00019500
//SYSUDUMP DD DUMMY                                                     00019600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T10),DISP=SHR                   00019700
//*                                                                     00019800
//**********************************************************************00019900
//*                          ==  ICEMAN  ==                            *00020000
//*  OBJETIVO : ORDENA EL ARCHIVO MAESTRO DE PERSONAS POR CLIENTE      *00020100
//**********************************************************************00020200
//PJI10P09 EXEC PGM=ICEMAN,COND=(4,LT)                                  00020300
//SORTIN   DD DSN=MXCP.ZM.FIX.CON.AMCP,DISP=SHR                         00020400
//SORTOUT  DD DSN=MXCP.ZM.WKF.AMCP.SORT1,                               00020500
//         DISP=(NEW,CATLG,DELETE),                                     00020600
//         DCB=(DSORG=PS,RECFM=FB,LRECL=512,BLKSIZE=0),                 00020700
//         SPACE=(CYL,(050,025),RLSE),UNIT=3390                         00020800
//SYSOUT   DD SYSOUT=*                                                  00020900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGF10T09),DISP=SHR                   00021300
//*                                                                     00021400
//**********************************************************************00021500
//*                          ==  ICEMAN  ==                            *00021600
//*  OBJETIVO : SORT ARCHIVO DE PE. (T08-T01) POR CLIENTE              *00021700
//**********************************************************************00021800
//PJI10P08 EXEC PGM=ICEMAN,COND=(4,LT)                                  00021900
//SORTIN   DD DSN=MBVP.AJ.FIX.SALIDA.CALDAT3,DISP=SHR                   00022000
//SORTOUT  DD DSN=MXCP.ZM.WKF.CALDAT.SORT1,                             00022100
//            DISP=(NEW,CATLG,DELETE),                                  00022200
//            DCB=(DSORG=PS,LRECL=649,RECFM=FB,BLKSIZE=0),              00022300
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390                        00022400
//SYSOUT   DD SYSOUT=*                                                  00022500
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGF10T08),DISP=SHR                   00023100
//*                                                                     00023200
//**********************************************************************00023300
//* PROGRAMA: ZM4EJ784                                                 *00023400
//* FUNCION:  GENERACION DE ARCHIVO PARA VALUACION DE CLIENTES BCM     *00023500
//**********************************************************************00023600
//PJI10P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                00023700
//ZMJ784A1 DD DSN=MXCP.ZM.WKF.AMCP.SORT1,DISP=SHR                       00023800
//ZMJ784A2 DD DSN=MXCP.ZM.WKF.CALDAT.SORT1,DISP=SHR                     00023900
//ZMJ784S1 DD DSN=MXCP.ZM.FIX.TES.AMCP.CALDAT,                          00024000
//            DISP=(NEW,CATLG,DELETE),                                  00024100
//            DCB=(LRECL=652,RECFM=FB,BLKSIZE=0,DSORG=PS),              00024200
//            UNIT=3390,SPACE=(CYL,(60,30),RLSE)                        00024300
//*                                                                     00024400
//SYSTSPRT DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSOUT   DD SYSOUT=*                                                  00024700
//SYSDBOUT DD SYSOUT=*                                                  00024800
//SYSABOUT DD SYSOUT=*                                                  00024900
//SYSUDUMP DD DUMMY                                                     00025000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T07),DISP=SHR                   00025100
//*                                                                     00025200
//**********************************************************************00023300
//* PROGRAMA: ICEMAN                                                   *00023400
//* FUNCION:  CLASIFICA EL ARCHIVO MAESTRO DE PERSONAS POR CUENTA      *00023500
//**********************************************************************00023600
//PJI10P7A EXEC PGM=ICEMAN,COND=(4,LT)                                  00023700
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.AMCP.CALDAT,DISP=SHR                  00023800
//SORTOUT  DD DSN=MXCP.ZM.WKF.TES.AMCP.CALDAT.SORT,                     00024000
//            DISP=(NEW,CATLG,DELETE),                                  00024100
//            DCB=(LRECL=652,RECFM=FB,BLKSIZE=0,DSORG=PS),              00024200
//            UNIT=3390,SPACE=(CYL,(60,30),RLSE)                        00024300
//*                                                                     00024400
//SYSTSPRT DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSOUT   DD SYSOUT=*                                                  00024700
//SYSDBOUT DD SYSOUT=*                                                  00024800
//SYSABOUT DD SYSOUT=*                                                  00024900
//SYSUDUMP DD DUMMY                                                     00025000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGF10T22),DISP=SHR                   00025100
//*                                                                     00025200
//**********************************************************************00023300
//* PROGRAMA: ICEMAN                                                   *00023400
//* FUNCION:  CLASIFICA EL ARCHIVO PDV POR CUENTA                      *00023500
//**********************************************************************00023600
//PJI10P7B EXEC PGM=ICEMAN,COND=(4,LT)                                  00023700
//SORTIN   DD DSN=MXCP.ZM.FIX.F&FECHA..MZMPPAPR.MATCH1,                 00023800
//            DISP=SHR                                                  00024100
//SORTOUT  DD DSN=MXCP.ZM.WKF.MZMPPAPR.SORT,                            00024000
//            DISP=(NEW,CATLG,DELETE),                                  00024100
//            DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),              00024200
//            UNIT=3390,SPACE=(CYL,(50,10),RLSE)                        00024300
//*                                                                     00024400
//SYSTSPRT DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSOUT   DD SYSOUT=*                                                  00024700
//SYSDBOUT DD SYSOUT=*                                                  00024800
//SYSABOUT DD SYSOUT=*                                                  00024900
//SYSUDUMP DD DUMMY                                                     00025000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGF10T21),DISP=SHR                   00025100
//*                                                                     00025200
//**********************************************************************00023300
//* PROGRAMA: ZM4PDV05                                                 *00023400
//* FUNCION: MATCH DE ARCHIVOS MAESTRO DE PERSONAS Y PDV POR CUENTA    *00023500
//**********************************************************************00023600
//PJI10P7C EXEC PGM=IKJEFT01,COND=(4,LT)                                00023700
//ZMPDV1E1 DD DSN=MXCP.ZM.WKF.TES.AMCP.CALDAT.SORT,DISP=SHR             00023800
//ZMPDV1E2 DD DSN=MXCP.ZM.WKF.MZMPPAPR.SORT,DISP=SHR                    00023900
//ZMPDV1S1 DD DSN=MXCP.ZM.FIX.BCJICD10.AMCPPDV,                         00024000
//            DISP=(NEW,CATLG,DELETE),                                  00024100
//            DCB=(LRECL=751,RECFM=FB,BLKSIZE=0,DSORG=PS),              00024200
//            UNIT=3390,SPACE=(CYL,(60,30),RLSE)                        00024300
//*                                                                     00024400
//SYSTSPRT DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSOUT   DD SYSOUT=*                                                  00024700
//SYSDBOUT DD SYSOUT=*                                                  00024800
//SYSABOUT DD SYSOUT=*                                                  00024900
//SYSUDUMP DD DUMMY                                                     00025000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T23),DISP=SHR                   00025100
//*                                                                     00025200
//**********************************************************************00025300
//*                          ==  ICEMAN  ==                            *00025400
//*  OBJETIVO : ORDENA EL ARCHIVO MAESTRO DE PERSONAS POR CUENTA       *00025500
//**********************************************************************00025600
//PJI10P06 EXEC PGM=ICEMAN,COND=(4,LT)                                  00025700
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.AMCP.CALDAT,DISP=SHR                  00025800
//SORTOUT  DD DSN=MXCP.ZM.WKF.AMCP.SORT2,                               00025900
//         DISP=(NEW,CATLG,DELETE),                                     00026000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=652,BLKSIZE=0),                 00026100
//         SPACE=(CYL,(050,025),RLSE),UNIT=3390                         00026200
//SYSOUT   DD SYSOUT=*                                                  00026300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGF10T06),DISP=SHR                   00026600
//*                                                                     00026700
//**********************************************************************00025300
//*                          ==  ICEMAN  ==                            *00025400
//*  OBJETIVO : ORDENA EL ARCHIVO MAESTRO DE PERSONAS Y PDV POR:       *00025500
//*             SUCURSAL, PROMOTOR Y CUENTA                            *00025500
//**********************************************************************00025600
//PJI10P6A EXEC PGM=ICEMAN,COND=(4,LT)                                  00025700
//SORTIN   DD DSN=MXCP.ZM.FIX.BCJICD10.AMCPPDV,DISP=SHR                 00025800
//SORTOUT  DD DSN=MXCP.ZM.WKF.AMCPPDV.SORT2,                            00025900
//         DISP=(NEW,CATLG,DELETE),                                     00026000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=751,BLKSIZE=0),                 00026100
//         SPACE=(CYL,(050,025),RLSE),UNIT=3390                         00026200
//SYSOUT   DD SYSOUT=*                                                  00026300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGF10T06),DISP=SHR                   00026600
//*                                                                     00026700
//**********************************************************************00026800
//*                          ==  ICEMAN  ==                            *00026900
//*  OBJETIVO : ORDENA EL ARCHIVO MAESTRO DE PERSONAS POR CUENTA       *00027000
//**********************************************************************00027100
//PJI10P05 EXEC PGM=ICEMAN,COND=(4,LT)                                  00027200
//SORTIN   DD DSN=MXCP.ZM.FIX.CON.AMCP,DISP=SHR                         00027300
//SORTOUT  DD DSN=MXCP.ZM.WKF.AMCP.SORT,                                00027400
//         DISP=(NEW,CATLG,DELETE),                                     00027500
//         DCB=(DSORG=PS,RECFM=FB,LRECL=512,BLKSIZE=0),                 00027600
//         SPACE=(CYL,(050,025),RLSE),UNIT=3390                         00027700
//SYSOUT   DD SYSOUT=*                                                  00027800
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGF10T05),DISP=SHR                   00028100
//*                                                                     00028200
//**********************************************************************00028300
//* PROGRAMA: ZM4EJ783                                                 *00028400
//* FUNCION:  GENERACION DE ARCHIVO DE VALUACION DE CLIENTES BCM       *00028500
//**********************************************************************00028600
//PJI10P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00028700
//ZMJ783A1 DD DSN=MXCP.ZM.WKF.AMCP.SORT2,DISP=SHR                       00028800
//ZMJ783A2 DD DSN=MXCP.ZM.FIX.TES.VACTEBCM,                             00028900
//            DISP=(NEW,CATLG,DELETE),                                  00029000
//            DCB=(LRECL=875,RECFM=FB,BLKSIZE=0,DSORG=PS),              00029100
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)                        00029200
//*                                                                     00029300
//SYSTSPRT DD SYSOUT=*                                                  00029400
//SYSPRINT DD SYSOUT=*                                                  00029500
//SYSOUT   DD SYSOUT=*                                                  00029600
//SYSDBOUT DD SYSOUT=*                                                  00029700
//SYSABOUT DD SYSOUT=*                                                  00029800
//SYSUDUMP DD DUMMY                                                     00029900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T04),DISP=SHR                   00030000
//*                                                                     00030100
//**********************************************************************00030200
//* PROGRAMA: ZM4EJ785                                                 *00030300
//* FUNCION:  GENERACION DE REPORTE DE ALTAS EFECTUADAS EN MUV         *00030400
//*           SOLO SE EJECUTA EN FIN DE MES                            *00030500
//**********************************************************************00030600
//PJI10P4A EXEC PGM=IKJEFT01,COND=(4,LT)                                00030700
//*ZMJ785A1 DD DSN=MXCP.ZM.WKF.AMCP.SORT2,DISP=SHR                      00030800
//ZMJ785A1 DD DSN=MXCP.ZM.WKF.AMCPPDV.SORT2,DISP=SHR                    00030800
//ZMJ785E2 DD DSN=MXCP.ZM.WKF.MZMPPAPR.SORT,DISP=SHR
//ZMJ785A2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00030900
//*                                                                     00031000
//SYSTSPRT DD SYSOUT=*                                                  00031100
//SYSPRINT DD SYSOUT=*                                                  00031200
//SYSOUT   DD SYSOUT=*                                                  00031300
//SYSDBOUT DD SYSOUT=*                                                  00031400
//SYSABOUT DD SYSOUT=*                                                  00031500
//SYSUDUMP DD DUMMY                                                     00031600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T4A),DISP=SHR                   00031700
//*                                                                     00031800
//**********************************************************************00031900
//* PROGRAMA: ZM4EJ786                                                 *00032000
//* FUNCION:  GENERACION DE ARCHIVO DE ALTAS EFECTUADAS EN MUV         *00032100
//**********************************************************************00032200
//PJI10P4B EXEC PGM=IKJEFT01,COND=(4,LT)                                00032300
//*ZMJ786A1 DD DSN=MXCP.ZM.WKF.AMCP.SORT2,DISP=SHR                      00032400
//ZMJ786A1 DD DSN=MXCP.ZM.WKF.AMCPPDV.SORT2,DISP=SHR                    00032400
//*ZMJ785A2 DD DSN=MXCP.ZM.FIX.TES.ALTASMUV.EXT,                        00032500
//*           DCB=(LRECL=546,RECFM=FB,BLKSIZE=0,DSORG=PS),              00032700
//*           DCB=(LRECL=786,RECFM=FB,BLKSIZE=0,DSORG=PS),              00032700
//ZMJ785A2 DD DSN=MXCP.ZM.FIX.TES.ALTASMUV,                             00032500
//            DISP=(NEW,CATLG,DELETE),                                  00032600
//            DCB=(LRECL=450,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE)                        00032800
//*                                                                     00032900
//SYSTSPRT DD SYSOUT=*                                                  00033000
//SYSPRINT DD SYSOUT=*                                                  00033100
//SYSOUT   DD SYSOUT=*                                                  00033200
//SYSDBOUT DD SYSOUT=*                                                  00033300
//SYSABOUT DD SYSOUT=*                                                  00033400
//SYSUDUMP DD DUMMY                                                     00033500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T4B),DISP=SHR                   00033600
//*                                                                     00030100
//*-------------------------------------------------------------------  00033700
//**********************************************************************00030200
//* PROGRAMA: ZM4EJ785 (ENVIA EL REPORTE AL ARCHIVO SECUENCIAL)        *00030300
//* FUNCION:  GENERACION DE REPORTE DE ALTAS EFECTUADAS EN MUV         *00030400
//*           SOLO SE EJECUTA EN FIN DE MES                            *00030500
//**********************************************************************00030600
//PJI10P4X EXEC PGM=IKJEFT01,COND=(4,LT)                                00030700
//ZMJ785A1 DD DSN=MXCP.ZM.WKF.AMCPPDV.SORT2,DISP=SHR                    00030800
//ZMJ785E2 DD DSN=MXCP.ZM.WKF.MZMPPAPR.SORT,DISP=SHR
//ZMJ785A2 DD DSN=MXCP.ZM.FIX.TES.REP.ALTASMUV,                         00020500
//         DISP=(NEW,CATLG,DELETE),                                     00020600
//         DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0,DSORG=PS),                00020700
//         UNIT=3390,SPACE=(CYL,(10,05),RLSE)                           00020800
//*                                                                     00031000
//SYSTSPRT DD SYSOUT=*                                                  00031100
//SYSPRINT DD SYSOUT=*                                                  00031200
//SYSOUT   DD SYSOUT=*                                                  00031300
//SYSDBOUT DD SYSOUT=*                                                  00031400
//SYSABOUT DD SYSOUT=*                                                  00031500
//SYSUDUMP DD DUMMY                                                     00031600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T4A),DISP=SHR                   00031700
//*-------------------------------------------------------------------  00033700
//*                                                                     00033700
//**********************************************************************00025300
//*                          ==  ICEMAN  ==                            *00025400
//*  OBJETIVO : RECORTA EL ARCHIVO ALTASMUV PARA REPORTE DE GESTION    *00025500
//**********************************************************************00025600
//*JB-INI
//*PJI10P4C EXEC PGM=ICEMAN,COND=(4,LT)                                 00032300
//*SORTIN   DD DSN=MXCP.ZM.FIX.TES.ALTASMUV.EXT,DISP=SHR                00032500
//*SORTOUT  DD DSN=MXCP.ZM.FIX.TES.ALTASMUV,                            00032500
//*             DISP=(NEW,CATLG,DELETE),                                00032600
//*            DCB=(LRECL=437,RECFM=FB,BLKSIZE=0,DSORG=PS),             00032700
//*            UNIT=3390,SPACE=(CYL,(10,05),RLSE)                       00032800
//**                                                                    00032900
//*SYSTSPRT DD SYSOUT=*                                                 00033000
//*SYSPRINT DD SYSOUT=*                                                 00033100
//*SYSOUT   DD SYSOUT=*                                                 00033200
//*SYSDBOUT DD SYSOUT=*                                                 00033300
//*SYSABOUT DD SYSOUT=*                                                 00033400
//*SYSUDUMP DD DUMMY                                                    00033500
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGF10T4C),DISP=SHR                  00033600
//*JB-FIN
//*                                                                     00033700
//**********************************************************************00031900
//* PROGRAMA: ZM4EJ78A                                                 *00032000
//* FUNCION:  GENERACION DE ARCHIVO DE ALTAS BURSATILES EN MUV         *00032100
//**********************************************************************00032200
//PJI10P4D EXEC PGM=IKJEFT01,COND=(4,LT)                                00032300
//*ZMJ786A1 DD DSN=MXCP.ZM.WKF.AMCP.SORT2,DISP=SHR                      00032400
//ZMJ78AA1 DD DSN=MXCP.ZM.WKF.AMCPPDV.SORT2,DISP=SHR                    00032400
//*
//*ZMJ78AA2 DD DSN=MXCP.ZM.FIX.TES.ALTASMBR.EXT,                        00032500
//*           DCB=(LRECL=546,RECFM=FB,BLKSIZE=0,DSORG=PS),              00032700
//*           DCB=(LRECL=786,RECFM=FB,BLKSIZE=0,DSORG=PS),              00032700
//*
//***** SE CAMBIA DSN Y LRECL DE 786 A 453 P/OMITIR PASO PJI10P4E *****
//*
//*ZMJ78AA2 DD DSN=MXCP.ZM.FIX.TES.ALTASMBR,                            00032500
//ZMJ78AA2 DD DSN=MXCP.ZM.FIX.TES.ALTASMBR.PREV,                        00032500
//            DISP=(NEW,CATLG,DELETE),                                  00032600
//*K          DCB=(LRECL=453,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE)                        00032800
//*                                                                     00032900
//SYSTSPRT DD SYSOUT=*                                                  00033000
//SYSPRINT DD SYSOUT=*                                                  00033100
//SYSOUT   DD SYSOUT=*                                                  00033200
//SYSDBOUT DD SYSOUT=*                                                  00033300
//SYSABOUT DD SYSOUT=*                                                  00033400
//SYSUDUMP DD DUMMY                                                     00033500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T4D),DISP=SHR                   00033600
//*                                                                     00033700
//**********************************************************************00019900
//*                          ==  ICEMAN  ==                            *00020000
//*  OBJETIVO : ORDENA EL ARCHIVO DE ALTAS BURSATILES EN MUV           *00020100
//**********************************************************************00020200
//PJI10P4E EXEC PGM=ICEMAN,COND=(4,LT)                                  00020300
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.ALTASMBR.PREV,DISP=SHR                00020400
//SORTOUT  DD DSN=MXCP.ZM.FIX.TES.ALTASMBR.SORT,                        00020500
//         DISP=(NEW,CATLG,DELETE),                                     00020600
//         DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),                 00020700
//         UNIT=3390,SPACE=(CYL,(10,05),RLSE)                           00020800
//SYSOUT   DD SYSOUT=*                                                  00020900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGF10T4E),DISP=SHR                   00021300
//*                                                                     00021400
//**********************************************************************00033800
//* PROGRAMA: ZM3EJ78A                                                 *00033900
//* FUNCION:  COPIA EL ARCHIVO DE ALTAS Y LE COLOCA ENCABEZADO         *00034000
//**********************************************************************00034100
//PJI104E1 EXEC PGM=ZM3EJ78A,COND=(4,LT)                                00034200
//ENTRADA1 DD DSN=MXCP.ZM.FIX.TES.ALTASMBR.SORT,DISP=SHR                00034300
//SALIDA01 DD DSN=MXCP.ZM.FIX.TES.ALTASMBR,                             00034400
//         DISP=(NEW,CATLG,DELETE),                                     00034500
//         DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),                 00020700
//         UNIT=3390,SPACE=(CYL,(10,05),RLSE)                           00020800
//*                                                                     00034800
//SYSTSPRT DD SYSOUT=*                                                  00034900
//SYSPRINT DD SYSOUT=*                                                  00035000
//SYSOUT   DD SYSOUT=*                                                  00035100
//SYSDBOUT DD SYSOUT=*                                                  00035200
//SYSABOUT DD SYSOUT=*                                                  00035300
//SYSUDUMP DD DUMMY                                                     00035400
//*                                                                     00035600
//**********************************************************************00025300
//*                          ==  ICEMAN  ==                            *00025400
//*  OBJETIVO : RECORTA EL ARCHIVO ALTASMBR PARA REPORTE DE GESTION    *00025500
//**********************************************************************00025600
//*JB-INI
//*PJI10P4E EXEC PGM=ICEMAN,COND=(4,LT)                                 00032300
//*SORTIN   DD DSN=MXCP.ZM.FIX.TES.ALTASMBR.EXT,DISP=SHR                00032500
//*SORTOUT  DD DSN=MXCP.ZM.FIX.TES.ALTASMBR,                            00032500
//*            DISP=(NEW,CATLG,DELETE),                                 00032600
//*            DCB=(LRECL=437,RECFM=FB,BLKSIZE=0,DSORG=PS),             00032700
//*            UNIT=3390,SPACE=(CYL,(10,05),RLSE)                       00032800
//*                                                                     00032900
//*SYSTSPRT DD SYSOUT=*                                                 00033000
//*SYSPRINT DD SYSOUT=*                                                 00033100
//*SYSOUT   DD SYSOUT=*                                                 00033200
//*SYSDBOUT DD SYSOUT=*                                                 00033300
//*SYSABOUT DD SYSOUT=*                                                 00033400
//*SYSUDUMP DD DUMMY                                                    00033500
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGF10T4C),DISP=SHR                  00033600
//*JB-FIN
//*                                                                     00033700
//**********************************************************************00031900
//* PROGRAMA: ICEGENER                                                 *00032000
//* FUNCION:  GENERACION COPIA DE ARCHIVO DE BAJAS EFECTUADAS EN MUV   *00032100
//**********************************************************************00032200
//PJI10P4F EXEC PGM=ICEGENER,COND=(4,LT)                                00032300
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.BAJASMUV,DISP=SHR                     00015100
//*                                                                     00015500
//SYSUT2   DD DSN=MXCP.ZM.FIX.TES.BAJASMUV.OC,
//            DISP=(NEW,CATLG,DELETE),                                  00015200
//            DCB=(LRECL=282,RECFM=FB,BLKSIZE=0,DSORG=PS),              00015300
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00015400
//*                                                                     00032900
//SYSIN    DD  DUMMY
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*                                                                     00032900
//**********************************************************************00031900
//* PROGRAMA: ICEGENER                                                 *00032000
//* FUNCION:  GENERACION COPIA DE ARCHIVO DE CONTRATOS BLOQUEADOS      *00032100
//**********************************************************************00032200
//PJI10P4G EXEC PGM=ICEGENER,COND=(4,LT)                                00032300
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.BLOQUEO,DISP=SHR                      00013300
//*                                                                     00013700
//SYSUT2   DD DSN=MXCP.ZM.FIX.TES.BLOQUEO.OC,
//            DISP=(NEW,CATLG,DELETE),                                  00013400
//            DCB=(LRECL=501,RECFM=FB,BLKSIZE=0,DSORG=PS),              00013500
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00013600
//*                                                                     00032900
//SYSIN    DD  DUMMY
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*                                                                     00032900
//**********************************************************************00033800
//* PROGRAMA: ZM4EJ782                                                 *00033900
//* FUNCION:  GENERACION DE ARCHIVO DE VALUACION DE CLIENTES BCM       *00034000
//**********************************************************************00034100
//PJI10P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00034200
//ZMJ782A1 DD DSN=MXCP.ZM.WKF.AMCP.SORT,DISP=SHR                        00034300
//ZMJ782A2 DD DSN=MXCP.ZM.FIX.TES.ARCTEBCM,                             00034400
//            DISP=(NEW,CATLG,DELETE),                                  00034500
//            DCB=(LRECL=184,RECFM=FB,BLKSIZE=0,DSORG=PS),              00034600
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)                        00034700
//*                                                                     00034800
//SYSTSPRT DD SYSOUT=*                                                  00034900
//SYSPRINT DD SYSOUT=*                                                  00035000
//SYSOUT   DD SYSOUT=*                                                  00035100
//SYSDBOUT DD SYSOUT=*                                                  00035200
//SYSABOUT DD SYSOUT=*                                                  00035300
//SYSUDUMP DD DUMMY                                                     00035400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T03),DISP=SHR                   00035500
//*                                                                     00035600
//**********************************************************************00035700
//* PROGRAMA: ZM4EJ781   -  VALUACION DE CLIENTES                      *00035800
//* FUNCION:  GENERACION DE REPORTE DE VALUACION DE CLIENTES           *00035900
//**********************************************************************00036000
//PJI10P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00036100
//ZMJ781R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00036200
//ZMJ781A1 DD DSN=MXCP.ZM.WKF.AMCP.SORT,DISP=SHR                        00036300
//*                                                                     00036400
//SYSTSPRT DD SYSOUT=*                                                  00036500
//SYSPRINT DD SYSOUT=*                                                  00036600
//SYSOUT   DD SYSOUT=*                                                  00036700
//SYSDBOUT DD SYSOUT=*                                                  00036800
//SYSABOUT DD SYSOUT=*                                                  00036900
//SYSUDUMP DD DUMMY                                                     00037000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T02),DISP=SHR                   00037100
//*                                                                     00037240
//**********************************************************************00037300
//* PROGRAMA: ZM4CRX01                                                 *00037400
//* FUNCION:  GENERACION DE ARCHIVO CON LA POSICION DE PLAZOS, PARA SU *00037500
//*           TRANSFERENCIA A SERVIDOR.                                *00037600
//**********************************************************************00037700
//PJI10P2A EXEC PGM=IKJEFT01,COND=(4,LT)                                00037800
//ZMRX01A1 DD DSN=MXCP.ZM.FIX.PLAZOS.ZM4CRX01.POSPLAZ,                  00037900
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00038000
//            DCB=(DSORG=PS,LRECL=130,RECFM=FB,BLKSIZE=0),              00038100
//            SPACE=(CYL,(30,15),RLSE)                                  00038200
//SYSTSPRT DD SYSOUT=*                                                  00038300
//SYSPRINT DD SYSOUT=*                                                  00038400
//SYSOUT   DD SYSOUT=*                                                  00038500
//SYSDBOUT DD SYSOUT=*                                                  00038600
//SYSABOUT DD SYSOUT=*                                                  00038700
//SYSUDUMP DD DUMMY                                                     00038800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T2A),DISP=SHR                   00038900
//*                                                                     00039000
//**********************************************************************00039100
//* PROGRAMA: ZM4CRX03                                                 *00039200
//* FUNCION:  VENCIMIENTO DE PLAZO DESDE BG AL MUV                     *00039300
//**********************************************************************00039400
//PJI10P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00039500
//VENCIMBG DD DSN=MXCP.ZM.FIX.TES.PZOBGVEN.F&FECHA,DISP=SHR             00039600
//*                                                                     00039800
//SYSTSPRT DD SYSOUT=*                                                  00039900
//SYSPRINT DD SYSOUT=*                                                  00040000
//SYSOUT   DD SYSOUT=*                                                  00040100
//SYSDBOUT DD SYSOUT=*                                                  00040200
//SYSABOUT DD SYSOUT=*                                                  00040300
//SYSUDUMP DD DUMMY                                                     00040400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T01),DISP=SHR                   00040500
//*                                                                     00040600
//**********************************************************************00040700
//* PROGRAMA: CTMCND                                                   *00040800
//* OBJETIVO: ADICIONA CONDICION PARA QUE SEA TOMADA PARA LA EJECUCION *00040900
//*           AUTOMATICA DEL PROCESO BCHTND10 Y POR CTRL-D.            *00041000
//**********************************************************************00041100
//PJI10P1A EXEC PGM=CTMCND,PARM='ADD COND BCJICD10_IN_SEP_OK WDATE',    00041200
//         COND=(4,LT)                                                  00041300
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00041400
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00041500
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00041600
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00041700
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00041800
//PRTDBG   DD SYSOUT=*                                                  00041900
//SYSPRINT DD DUMMY                                                     00042000
//SYSUDUMP DD DUMMY                                                     00042100
//DAPRINT  DD SYSOUT=*                                                  00042200
//DACNDIN  DD DDNAME=SYSIN                                              00042300
//*                                                                     00042400
//*FS-1.2.0-04-INI
//*--------------------------------------------------------------------*00040700
//* PASO    : PJI10P1B                                                 *00040800
//* PROGRAMA: IKJEFT01 / ZM4CRXL3                                      *00040800
//* OBJETIVO: GENERACION DE INTERFAZ PLAZOS MUV                        *00040900
//*--------------------------------------------------------------------*00041100
//PJI10P1B EXEC PGM=IKJEFT01,COND=(4,LT)                                00039500
//*                                                                     00039800
//ZMRXL3A1 DD DSN=MXCP.ZM.FIX.TES.PZOBGVEN.F&FECHA,DISP=SHR             00039600
//*                                                                     00039800
//ZMRXL3A2 DD DSN=MXCP.ZM.FIX.INTFZMUV.PLAZOS,                          00039700
//            UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE),DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=132,BLKSIZE=0,DSORG=PS)
//ZMRXL3A3 DD DSN=MXCP.ZM.FIX.INTFZMUV.PLAZOS.ERR,                      00039700
//            UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE),DISP=(NEW,CATLG,DELETE),
//*FS-1.3.0-05-INI                                                      00042400
//*           DCB=(RECFM=FB,LRECL=84,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=41,BLKSIZE=0,DSORG=PS)
//*FS-1.3.0-05-FIN                                                      00042400
//*                                                                     00039800
//SYSTSPRT DD SYSOUT=*                                                  00039900
//SYSPRINT DD SYSOUT=*                                                  00040000
//SYSOUT   DD SYSOUT=*                                                  00040100
//SYSDBOUT DD SYSOUT=*                                                  00040200
//SYSABOUT DD SYSOUT=*                                                  00040300
//SYSUDUMP DD DUMMY                                                     00040400
//*                                                                     00039800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T1B),DISP=SHR                   00040500
//*FS-1.2.0-04-FIN                                                      00042400
//*                                                                     00037200
//*EZP INI DIC/2021                                                     00037210
//*                                                                    *00037200
//**********************************************************************00037200
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *00037200
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00037200
//**********************************************************************00037200
//PJI10P1C EXEC PGM=IKJEFT01,COND=(4,LT)                                00037200
//*                                                                     00037200
//ZMSATAE1 DD DUMMY                                                     00037200
//*                                                                     00037200
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.ELE.DG007.PARMS.CTLA,                     00037200
//            DISP=(NEW,CATLG,CATLG),                                   00037200
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),                         00037200
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)                00037200
//*                                                                     00037200
//QRLSDB2  DD  SYSOUT=*                                                 00037200
//SYSPRINT DD  SYSOUT=*                                                 00037200
//SYSTSPRT DD  SYSOUT=*                                                 00037200
//SYSUDUMP DD  SYSOUT=*                                                 00037200
//SYSABOUT DD  SYSOUT=*                                                 00037200
//SYSDBOUT DD  SYSOUT=*                                                 00037200
//SYSOUT   DD  SYSOUT=*                                                 00037200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13PA),DISP=SHR                   00037200
//*                                                                     00037200
//**********************************************************************00037200
//* PROGRAMA   : ZM3DG005                                              *00037200
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00037200
//**********************************************************************00037200
//PJI10P1D EXEC PGM=ZM3DG005,COND=(4,LT)                                00037200
//*                                                                     00037200
//E1DQ0001 DD DUMMY                                                     00037200
//E2DQ0002 DD DSN=MXCP.ZM.TMP.ELE.DG007.PARMS.CTLA,DISP=SHR             00037200
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZGF10T1D),DISP=SHR                   00037200
//*                                                                     00037200
//S1DQ0001 DD DSN=MXCP.ZM.FIX.ELE.DG007.CONTROLA,                       00037200
//            DISP=(NEW,CATLG,CATLG),                                   00037200
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),                         00037200
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)                00037200
//*                                                                     00037200
//SYSABOUT DD  SYSOUT=*                                                 00037200
//SYSDBOUT DD  SYSOUT=*                                                 00037200
//SYSOUT   DD  SYSOUT=*                                                 00037200
//*                                                                     00037200
//**********************************************************************00037200
//* UTILERIA : ADUUMAIN                                                *00037200
//* OBJETIVO : DESCARGA DE TABLAS                                      *00037200
//**********************************************************************00037200
//PJI10P1E EXEC PGM=ADUUMAIN,COND=(4,LT),                               00037200
//         PARM='MXP1,ZMGIPD10,NEW,,MSGLEVEL(1)'                        00037200
//*                                                                     00037200
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00037200
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00037200
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00037200
//*                                                                     00037200
//SYSREC   DD DSN=MXCP.ZM.FIX.ELE.ZMGIPD10.OPERACIA,                    00037200
//            SPACE=(CYL,(40,20),RLSE),                                 00037200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00037200
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00037200
//*                                                                     00037200
//SYSPRINT DD SYSOUT=*                                                  00037200
//SYSTSPRT DD SYSOUT=*                                                  00037200
//SYSOUT   DD SYSOUT=*                                                  00037200
//SYSIN    DD DSN=MXCP.ZM.FIX.ELE.DG007.CONTROLA,DISP=SHR               00037200
//*                                                                     00037200
//*--------------------------------------------------------------------*00037211
//* PASO       : PJI10P2B                                              *00037212
//* PROGRANA   : IKJEFT01                                              *00037213
//* DESCRIPCION: GENERACION DEL ARCHIVO DE VALUACION DE CLIENTES MUV   *00037214
//*              BANCA PATRIMONIAL                                     *00037215
//*--------------------------------------------------------------------*00037217
//PJI10P2B EXEC PGM=IKJEFT01,COND=(4,LT)                                00037218
//ZMJ779A1 DD DSN=MXCP.ZM.WKF.AMCP.SORT,DISP=SHR                        00037220
//ZMJ779A4 DD DSN=MXCP.ZM.FIX.ELE.ZMGIPD10.OPERACIA,DISP=SHR            00037220
//*                                                                     00037221
//ZMJ779A3 DD DSN=MXCP.ZM.FIX.MYHPPSUI.MATCHSUI.CTAMUV.SORT,DISP=SHR    00037222
//*                                                                     00037221
//ZMJ779A2 DD DSN=MXCP.ZM.WKF.MDC.EBCM.S000.VALCLIEX,                   00037222
//            UNIT=3390,                                                00037223
//            SPACE=(CYL,(50,50),RLSE),DISP=(NEW,CATLG,DELETE),         00037224
//            DCB=(RECFM=FB,LRECL=877,BLKSIZE=0,DSORG=PS)               00037225
//*                                                                     00037226
//SYSTSPRT DD SYSOUT=*                                                  00037229
//SYSPRINT DD SYSOUT=*                                                  00037230
//SYSOUT   DD SYSOUT=*                                                  00037231
//SYSDBOUT DD SYSOUT=*                                                  00037232
//SYSABOUT DD SYSOUT=*                                                  00037233
//SYSUDUMP DD DUMMY                                                     00037234
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF10T2B),DISP=SHR                   00037235
//*                                                                     00037236
//**********************************************************************00019900
//*                          ==  ICEMAN  ==                            *00020000
//*  OBJETIVO : ORDENA EL ARCHIVO VALCLIENTE POR: SUCURSAL,            *00020100
//*             NUMERO DE PROMOTOR, CUENTA MUV, EMISORA, SERIE , CUPON *00020100
//**********************************************************************00020200
//PJI10P2C EXEC PGM=ICEMAN,COND=(4,LT)                                  00020300
//SORTIN   DD DSN=MXCP.ZM.WKF.MDC.EBCM.S000.VALCLIEX,DISP=SHR           00020400
//SORTOUT  DD DSN=MXCP.ZM.WKF.MDC.EBCM.S000.VALCLIEN,                   00020500
//         DISP=(NEW,CATLG,DELETE),                                     00020600
//         DCB=(DSORG=PS,RECFM=FB,LRECL=877,BLKSIZE=0),                 00020700
//         SPACE=(CYL,(100,050),RLSE),UNIT=3390                         00020800
//SYSOUT   DD SYSOUT=*                                                  00020900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGF10T2C),DISP=SHR                   00021300
//*                                                                     00021400
//*INDRA-F                                                              00037240
//*EZP FIN                                                              00037210
//**********************************************************************00042500
//*                           -- DMBATCH  --                           *00042600
//* OBJETIVO: REALIZAR LA TRANSFERENCIA DE 4 ARCHIVOS DE HOST          *00042700
//*           AL SERVIDOR (SBBVA04)                                    *00042800
//* ========================                                           *00042900
//*           '\\160.8.1.67\PATRIMONIALMU1\RIESGOS\VCTEBCM.TXT'        *00043000
//*           MXCP.ZM.FIX.TES.ARCTEBCM                                 *00043100
//* ========================                                           *00043200
//*           '\\160.8.1.67\PATRIMONIALMU1\RIESGOS\VALUBCM.TXT'        *00043300
//*           MXCP.ZM.FIX.TES.VACTEBCM                                 *00043400
//* ========================                                           *00043500
//*           '\\160.8.1.67\PATRIMONIALMU1\RIESGOS\ALTAS_MES.TXT'      *00043600
//*           MXCP.ZM.FIX.TES.ALTASMUV                                 *00043700
//* ========================                                           *00043800
//*           '\\160.8.1.67\PATRIMONIALMU1\RIESGOS\PRCERTIF.TXT'       *00043900
//*           MXCP.ZM.FIX.TES.PRCERTIF                                 *00044000
//* ========================                                           *00044100
//* ========================                                           *00044110
//*           '\\SBBV04\PUBLIC\BANCA_PATRI_L\VALCLIENTES.TXT'          *00044120
//*           MXCP.ZM.WKF.MDC.EBCM.S000.VALCLIEN                       *00044130
//* ========================                                           *00044140
//*                                                                    *00044200
//**********************************************************************00044300
//*PJI10P00 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)                 00044400
//*                                                                     00044500
//*STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB                   00044600
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                 00044700
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                           00044800
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                    00044900
//*DMPRINT   DD SYSOUT=*                                                00045000
//*SYSPRINT  DD SYSOUT=*                                                00045100
//*NDMCMDS   DD SYSOUT=*                                                00045200
//*SYSUDUMP  DD DUMMY                                                   00045300
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZGF10T00),DISP=SHR                 00045400
//*                                                                     00045500
//**********************************************************************00045600
//*        TERMINA PROCESO ZMGIPD10 BANCA PATRIMONIAL                  *00045700
//**********************************************************************00045800
