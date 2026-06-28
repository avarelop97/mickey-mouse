//ZMJFPD05 PROC                                                         00000100
//**********************************************************************00000200
//*                     C A S A   D E  B O L S A                       *00000300
//*                     ========================                       *00000400
//*                     <<  T E S O R E R I A >>                       *00000500
//*                                                                    *00000600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000700
//*                                                                    *00000800
//*   OBJETIVO  :  REALIZA  CALCULOS PARA LOS INTERESES INDICATIVOS    *00000900
//*                                                                    *00001000
//*   CORRE ANTES DE  :  PFDFDD13, PFDFDD33, CBUFND14                  *00001100
//*                                                                    *00001200
//*   CORRE DESPUES DE:  CBJFCD18                                      *00001300
//*                                                                    *00001400
//*   PERIODICIDAD    :  DIARIO                                        *00001500
//*                                                                    *00001600
//*   FECHA:  AGOSTO 2002                                              *00001700
//*                                                                    *00001800
//**********************************************************************00001900
//*                      LOG DE MODIFICACIONES                         *00002000
//**********************************************************************00002100
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00002200
//*--------------------------------------------------------------------*00002300
//*      |          |       |        |                                 *00002400
//**********************************************************************00002500
//********************************************************************* 00002600
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO     00002700
//********************************************************************* 00002800
//*                                                                     00002900
//PJF05P16 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC',' ',' ',)              00003000
//*                                                                     00003100
//SYSTSPRT DD SYSOUT=*                                                  00003200
//SYSPRINT DD SYSOUT=*                                                  00003300
//SYSOUT   DD SYSOUT=*                                                  00003400
//SYSDBOUT DD SYSOUT=*                                                  00003500
//SYSABOUT DD DUMMY                                                     00003600
//SYSUDUMP DD DUMMY                                                     00003700
//*                                                                     00003800
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJFPD05,                       00003900
//         DISP=(NEW,CATLG,DELETE),                                     00004000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),                  00004100
//         UNIT=3390,                                                   00004200
//         SPACE=(CYL,(2,1),RLSE)                                       00004300
//*                                                                     00004400
//**********************************************************************00004500
//*                    * ZM4DQQ04 *                                    *00004600
//* OBJETIVO : ACUMULA SALDOS DE OPERACION EN CUSTODIA INTERNACIONAL   *00004700
//*            ( DIVIDO EN SALDO NACIONAL Y EXTRANJERO )               *00004800
//*                                                                    *00004900
//* ACTUALIZA TABLA : PARAM.                                           *00005000
//*                                                                    *00005100
//* PASO REINICIABLE POR RESTART.                                      *00005200
//*                                                                    *00005300
//**********************************************************************00005400
//*                                                                     00005500
//PJF05P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00005600
//*                                                                     00005700
//SYSTSPRT DD  SYSOUT=*                                                 00005800
//SYSPRINT DD  SYSOUT=*                                                 00005900
//SYSOUT   DD  SYSOUT=*                                                 00006000
//SYSDBOUT DD  SYSOUT=*                                                 00006100
//SYSUDUMP DD  DUMMY                                                    00006200
//*                                                                     00006300
//ZMDQQ041 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJFPD05,                       00006400
//         DISP=SHR                                                     00006500
//*                                                                     00006600
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZJF05T15),DISP=SHR                  00006700
//*                                                                     00006800
//**********************************************************************00006900
//*                    * ZM4DQQ03 *                                    *00007000
//* OBJETIVO : BALANCEO DE CUENTAS DE EFECTIVO VS CUENTAS DE VALORES   *00007100
//*            DE CUSTODIA INTERNACIONAL.                              *00007200
//*                                                                    *00007300
//* ACTUALIZA TABLA : NINGUNA.                                         *00007400
//*                                                                    *00007500
//* PASO REINICIABLE POR RESTART.                                      *00007600
//*                                                                    *00007700
//**********************************************************************00007800
//*                                                                     00007900
//PJF05P14 EXEC PGM=IKJEFT01,COND=(4,LT)                                00008000
//SYSTSPRT DD  SYSOUT=*                                                 00008100
//SYSPRINT DD  SYSOUT=*                                                 00008200
//SYSOUT   DD  SYSOUT=*                                                 00008300
//SYSDBOUT DD  SYSOUT=*                                                 00008400
//SYSUDUMP DD  DUMMY                                                    00008500
//*                                                                     00008600
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZJF05T14),DISP=SHR                  00008700
//*                                                                     00008800
//**********************************************************************00008900
//*                    * ZM4DLD33 *                                    *00009000
//* OBJETIVO : ACTUALIZA LAS EMISORAS DE LA TABLA DEMANDA              *00009100
//*            Y CARGA MTZDEM                                          *00009200
//*                                                                    *00009300
//* ACTUALIZA TABLA : MTZDEM,DEMANDA.                                  *00009400
//*                                                                    *00009500
//* PASO REINICIABLE POR RESTART.                                      *00009600
//*                                                                    *00009700
//**********************************************************************00009800
//*                                                                     00009900
//PJF05P13 EXEC PGM=IKJEFT01,COND=(4,LT)                                00010000
//SYSTSPRT DD  SYSOUT=*                                                 00010100
//SYSPRINT DD  SYSOUT=*                                                 00010200
//SYSOUT   DD  SYSOUT=*                                                 00010300
//SYSDBOUT DD  SYSOUT=*                                                 00010400
//SYSUDUMP DD  DUMMY                                                    00010500
//*                                                                     00010600
//ZMLD33P1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJFPD05,                       00010700
//         DISP=SHR                                                     00010800
//*                                                                     00010900
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZJF05T01),DISP=SHR                  00011000
//*                                                                     00011100
//**********************************************************************00011200
//*                          - ZM4DGE95 -                              *00011300
//* OBJETIVO :    CALCULO INT. INDICATIVOS DE SDO. DEUDOR              *00011400
//*     ESTE PROGRAMA NO DEPENDE DE NINGUN PASO, PUEDE EJECUTARSE      *00011500
//*     DE MANERA AISLADA, SOLO REQUIERE SALDOS DEUDORES ACTUALIZADOS  *00011600
//*                                                                    *00011700
//*     ACTUALIZA : OPERIND, ULTOPIN                                   *00011800
//*                                                                    *00011900
//* PROCESO : CARGOS VARIOS                                            *00012000
//* PASO REINICIABLE POR RESTART                    ***TESORERIA       *00012100
//**********************************************************************00012200
//PJF05P12 EXEC PGM=IKJEFT01,COND=(0,NE)                                00012300
//SYSTSPRT DD SYSOUT=*                                                  00012400
//SYSPRINT DD SYSOUT=*                                                  00012500
//SYSOUT   DD SYSOUT=*                                                  00012600
//SYSDBOUT DD SYSOUT=*                                                  00012700
//SYSABOUT DD DUMMY                                                     00012800
//SYSUDUMP DD DUMMY                                                     00012900
//*                                                                     00013000
//ZMGE95P1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJFPD05,                       00013100
//         DISP=SHR                                                     00013200
//*                                                                     00013300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF05T02),DISP=SHR                   00013400
//*                                                                     00013500
//**********************************************************************00013600
//*                           -- ZM4DGF15 --                           *00013700
//* OBJETIVO:  AFECTA CARTERA CON LOS INDICATIVOS APARTIR DE OPERIND   *00013800
//*           ACTUALIZA : CARTERA                                      *00013900
//*                                                                    *00014000
//* PASO REINICIABLE POR RESTART                     ***TESORERIA      *00014100
//**********************************************************************00014200
//PJF05P11 EXEC PGM=IKJEFT01,COND=(0,NE)                                00014300
//*                                                                     00014400
//SYSTSPRT DD SYSOUT=*                                                  00014500
//SYSPRINT DD SYSOUT=*                                                  00014600
//SYSOUT   DD SYSOUT=*                                                  00014700
//SYSDBOUT DD SYSOUT=*                                                  00014800
//SYSABOUT DD DUMMY                                                     00014900
//SYSUDUMP DD DUMMY                                                     00015000
//*                                                                     00015100
//ZMGF15P1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJFPD05,                       00015200
//         DISP=SHR                                                     00015300
//*                                                                     00015400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF05T04),DISP=SHR                   00015500
//*                                                                     00015600
//**********************************************************************00015700
//*                       -- ZM4DJ166 --                               *00015800
//*                                                                    *00015900
//* OBJETIVO : EMITIR REPORTE DE MOVIMIENTOS DADOS DE BAJA -- S.I.     *00016000
//*            NO ACTUALIZA TABLAS.                                    *00016100
//*                                                                    *00016200
//* PASO REINICIABLE POR RESTART                      ***SOC. INVERS.  *00016300
//**********************************************************************00016400
//PJF05P10 EXEC PGM=IKJEFT01,COND=(0,NE)                                00016500
//ZMJ166R1  DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00016600
//SYSTSPRT DD SYSOUT=*                                                  00016700
//SYSPRINT DD SYSOUT=*                                                  00016800
//SYSOUT   DD SYSOUT=*                                                  00016900
//SYSDBOUT DD SYSOUT=*                                                  00017000
//SYSABOUT DD DUMMY                                                     00017100
//SYSUDUMP DD DUMMY                                                     00017200
//*                                                                     00017300
//ZMJ166P1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJFPD05,                       00017400
//         DISP=SHR                                                     00017500
//*                                                                     00017600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF05T05),DISP=SHR                   00017700
//*                                                                     00017800
//**********************************************************************00017900
//*                          === ZM4DJ808 ===                          *00018000
//* OBJETIVO : PASAR INF. DE TABLAS OPERASI,OPERATE A OPERA            *00018100
//*            OPERTET A OPERTES.                                      *00018200
//*            (ACTUALIZA OPERTES, OPERA)                              *00018300
//*                                                                    *00018400
//* PASO REINICIABLE POR RESTART               *** TESORERIA           *00018500
//**********************************************************************00018600
//PJF05P09 EXEC PGM=IKJEFT01,COND=(0,NE)                                00018700
//SYSTSPRT DD SYSOUT=*                                                  00018800
//SYSPRINT DD SYSOUT=*                                                  00018900
//SYSOUT   DD SYSOUT=*                                                  00019000
//SYSDBOUT DD SYSOUT=*                                                  00019100
//SYSABOUT DD DUMMY                                                     00019200
//SYSUDUMP DD DUMMY                                                     00019300
//*                                                                     00019400
//ZMJ808P1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJFPD05,                       00019500
//         DISP=SHR                                                     00019600
//*                                                                     00019700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF05T06),DISP=SHR                   00019800
//*                                                                     00019900
//**********************************************************************00020000
//*                          === ZM4DLD34 ===                          *00020100
//* OBJETIVO : LEE LOS REGISTROS DEL DIA EN PROCESO DE LA TABLA        *00020200
//*            OPERDIN Y LOS MODIFICA Y GRABA EN LA TABLA OPERA        *00020300
//* PASO REINICIABLE POR RESTART                  ***M. DINERO         *00020500
//**********************************************************************00020600
//PJF05P08 EXEC PGM=IKJEFT01,COND=(0,NE)                                00020700
//SYSTSPRT DD  SYSOUT=*                                                 00020800
//SYSPRINT DD  SYSOUT=*                                                 00020900
//SYSOUT   DD  SYSOUT=*                                                 00021000
//SYSDBOUT DD  SYSOUT=*                                                 00021100
//SYSABOUT DD  DUMMY                                                    00021200
//SYSUDUMP DD  DUMMY                                                    00021300
//*                                                                     00021400
//ZMLD34P1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJFPD05,                       00021500
//         DISP=SHR                                                     00021600
//*                                                                     00021700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF05T07),DISP=SHR                   00021800
//*                                                                     00021900
//**********************************************************************00022000
//*                          === ZM4DLD35 ===                          *00022100
//* OBJETIVO : BORRA EN OPERDIN LOS REGISTROS QUE HAYAN SIDO           *00022200
//*            VACIADOS EN LA TABLA SIVA.                              *00022300
//*            (ACTUALIZA OPERDIQ)                                     *00022400
//*                                                                    *00022500
//* PASO REINICIABLE POR RESTART                    *** M. DINERO      *00022600
//**********************************************************************00022700
//PJF05P07 EXEC PGM=IKJEFT01,COND=(0,NE)                                00022800
//SYSTSPRT DD  SYSOUT=*                                                 00022900
//SYSPRINT DD  SYSOUT=*                                                 00023000
//SYSOUT   DD  SYSOUT=*                                                 00023100
//SYSDBOUT DD  SYSOUT=*                                                 00023200
//SYSABOUT DD  DUMMY                                                    00023300
//SYSUDUMP DD  DUMMY                                                    00023400
//*                                                                     00023500
//ZMLD35P1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJFPD05,                       00023600
//         DISP=SHR                                                     00023700
//*                                                                     00023800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF05T08),DISP=SHR                   00023900
//*                                                                     00024000
//**********************************************************************00024100
//*                         -- ZM4DGE81 --                             *00024200
//* OBJETIVO: VERIFICA SI  SE PUEDE ENVIAR EL PROCESO DE BAJAS         *00024300
//*                                                                    *00024400
//* PASO REINICIABLE POR RESTART                    *PROC. ESTADISTICO *00024500
//**********************************************************************00024600
//PJF05P05 EXEC PGM=IKJEFT01,COND=(0,NE)                                00024700
//*                                                                     00024800
//ZMGE81P1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJFPD05,                       00024900
//         DISP=SHR                                                     00025000
//*                                                                     00025100
//SYSTSPRT DD SYSOUT=*                                                  00025200
//SYSPRINT DD SYSOUT=*                                                  00025300
//SYSOUT   DD SYSOUT=*                                                  00025400
//SYSDBOUT DD SYSOUT=*                                                  00025500
//SYSABOUT DD DUMMY                                                     00025600
//SYSUDUMP DD DUMMY                                                     00025700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF05T10),DISP=SHR                   00025800
//*                                                                     00025900
//**********************************************************************00026000
//*                         -- ZM4DJG46 --                             *00026100
//* OBJETIVO: GRABAR EN LA TABLA ZMDT602 LOS MOVIMIENTOS DE LA 510,    *00026200
//*           PARA COMPLETAR LA INFORMACION DE LA CONCILIACION BANCARIA*00026300
//* PASO REINICIABLE POR RESTART                    * TESORERIA        *00026400
//**********************************************************************00026500
//PJF05P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00026600
//*                                                                     00026700
//ZMJG46A1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJFPD05,                       00026800
//         DISP=SHR                                                     00026900
//*                                                                     00027000
//SYSTSPRT DD SYSOUT=*                                                  00027100
//SYSPRINT DD SYSOUT=*                                                  00027200
//SYSOUT   DD SYSOUT=*                                                  00027300
//SYSDBOUT DD SYSOUT=*                                                  00027400
//SYSABOUT DD DUMMY                                                     00027500
//SYSUDUMP DD DUMMY                                                     00027600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF05T11),DISP=SHR                   00027700
//*
//**********************************************************************
//*                    -- ZM4COP03  --                                 *
//*CALCULO DE COSTO PROMEDIO PONDERADO COMERCIAL      (PROCESO NORMAL)
//*MERCADO DE DINERO                                                   *
//**********************************************************************
//*PJF05P4A EXEC PGM=IKJEFT01,COND=(4,LT)                               01151027
//**                                                                    01153001
//*ZMUD01S1 DD DSN=MXCP.ZM.FIX.DIN.DF.Z03.LOGERR.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS)
//**                                                                    01155001
//*ZMUD01S2 DD DSN=MXCP.ZM.FIX.DIN.DF.Z03.CCONTROL.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//**                                                                    01155001
//*ZMUD01S3 DD DSN=MXCP.ZM.FIX.DIN.DF.Z03.CANCELA.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)
//**                                                                    01155001
//*SYSTSPRT DD SYSOUT=*                                                 01170038
//*SYSPRINT DD SYSOUT=*                                                 01180038
//*SYSOUT   DD SYSOUT=*                                                 01190038
//*SYSDBOUT DD SYSOUT=*                                                 01200038
//*SYSABOUT DD DUMMY                                                    01210000
//*SYSUDUMP DD DUMMY                                                    01220000
//**                                                                    01155001
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC25T19),DISP=SHR                  01230041
//*                                                                     00027800
//**********************************************************************00027900
//*                         -- CTMCND --                               *00028000
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "CORRE-BAJAS" PARA QUE     *00028100
//*           PUEDA CORRER EL JOB PFDFDD13 QUE ES EL JOB DE BAJAS      *00028200
//*           AUTOMATICAS Y CARGOS VARIOS MENSUALES                    *00028300
//*                                                                    *00028400
//* PASO REINICIABLE POR RESTART                                       *00028500
//***********************************************CBJFCD13***************00028600
//PJF05P03 EXEC PGM=CTMCND,                                             00028700
//         PARM='ADD COND CBJFCD13_&EMP_SIV_OK &FECHA',                 00028800
//         COND=((0,NE,PJF05P05),(4,LT))                                00028900
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00029000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00029100
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00029200
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00029300
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00029400
//PRTDBG   DD SYSOUT=*                                                  00029500
//SYSPRINT DD DUMMY                                                     00029600
//SYSUDUMP DD DUMMY                                                     00029700
//DAPRINT  DD SYSOUT=*                                                  00029800
//DACNDIN  DD DDNAME=SYSIN                                              00029900
//*                                                                     00030000
//**********************************************************************00030100
//*                         -- MAILOPER --                             *00030200
//* OBJETIVO : AVISAR QUE HOY ES FECHA DE CORRIDA DE BAJAS MENSUALES   *00030300
//*            Y CARGOS VARIOS                                         *00030400
//*                                           30/ABR/08                *00030500
//* PASO REINICIABLE POR RESTART                                       *00030600
//**********************************************************************00030700
//*PJF05P02 EXEC PGM=MAILOPER,                                          00030800
//*         COND=((0,NE,PJF05P05),(0,NE,PJF05P03),(4,LT)),              00030900
//*         PARM=('/ATENCION OPERADOR: ',                               00031000
//*         ' HOY SE CORRERA AUTOMATICAMENTE',                          00031100
//*         ' BAJAS MENSUALES Y CARGOS VARIOS')                         00031200
//*                                                                     00031300
//**********************************************************************00031400
//*                         -- CTMCND --                               *00031500
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "CORRE*PFDFDD14" PARA QUE  *00031600
//*           PUEDA CORRER EL JOB PFDFDD14.                            *00031700
//*                                                                    *00031800
//* PASO REINICIABLE POR RESTART                                       *00031900
//**********************************************************************00032000
//PJF05P01 EXEC PGM=CTMCND,                                             00032100
//         PARM='ADD COND CBUFND14_&EMP_SIV_OK &FECHA',                 00032200
//         COND=((1,NE,PJF05P05),(4,LT))                                00032300
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00032400
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00032500
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00032600
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00032700
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00032800
//PRTDBG   DD SYSOUT=*                                                  00032900
//SYSPRINT DD DUMMY                                                     00033000
//SYSUDUMP DD DUMMY                                                     00033100
//DAPRINT  DD SYSOUT=*                                                  00033200
//DACNDIN  DD DDNAME=SYSIN                                              00033300
//*                                                                     00033400
