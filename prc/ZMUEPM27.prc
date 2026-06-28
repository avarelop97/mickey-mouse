//ZMUEPM27 PROC                                                         00000100
//**********************************************************************00000200
//*                     C A S A   D E   B O L S A                      *00000300
//*                     =========================                      *00000400
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *00000500
//*                                                                    *00000600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000700
//*                                                                    *00000800
//*   PROCEDIM. :  ZMUEPM27                                            *00000900
//*                                                                    *00001000
//*   OBJETIVO  :  DIGITALIZACION DE CONSTANCIAS DE E.C. FISICAS Y     *00001100
//*                MORALES DE LA EMPRESA PROPORCIONADA                 *00001200
//*                                                                    *00001300
//*   CORRE ANTES DE  :  ZMUEPM33                                      *00001400
//*                                                                    *00001500
//*   CORRE DESPUES DE:  ZMUEPM26                                      *00001600
//*                                                                    *00001700
//*   PERIODICIDAD    :  ANUAL                                         *00001800
//*                                                                    *00001900
//**********************************************************************00002000
//*                                                                     00002100
//**********************************************************************00002200
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *00002300
//**********************************************************************00002400
//PUE27P25 EXEC PGM=ZM3DG001,PARM=('&EMP',' ',' ',' ',)                 00002500
//PI601765 DD DUMMY                                                     00002600
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00002700
//SYSPRINT DD SYSOUT=*                                                  00002800
//SYSOUT   DD SYSOUT=*                                                  00002900
//SYSDBOUT DD SYSOUT=*                                                  00003000
//SYSABOUT DD DUMMY                                                     00003100
//SYSUDUMP DD DUMMY                                                     00003200
//*                                                                     00003300
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM27,                      00003400
//            DISP=(NEW,CATLG,DELETE),                                  00003500
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00003600
//            UNIT=3390,                                                00003700
//            SPACE=(CYL,(2,1),RLSE)                                    00003800
//*                                                                     00003900
//**********************************************************************00004000
//*                     * SORT   *                                     *00004100
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 00   *00004200
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO DEFAULT       *00004300
//**********************************************************************00004400
//PUE27P24 EXEC PGM=SYNCSORT,COND=(0,NE)                                00004500
//PI601765 DD DUMMY                                                     00004600
//SYSOUT   DD SYSOUT=*                                                  00004700
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP00,DISP=SHR          00004800
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP00,DISP=SHR          00004900
//SYSTSPRT DD SYSOUT=*                                                  00005000
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP00,DISP=SHR               00005100
//*                                                                     00005200
//**********************************************************************00005300
//*                    -- ZM4VU002  --                                 *00005400
//*        RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA GRUPO  00  *00005500
//**********************************************************************00005600
//PUE27P23 EXEC PGM=IKJEFT01,COND=(0,NE)                                00005700
//PI601765 DD DUMMY                                                     00005800
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM27,DISP=SHR              00005900
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP00,DISP=SHR          00006000
//*                                                                     00006100
//ZMU002C1 DD DUMMY                                                     00006200
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP00,              00006300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00006400
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00006500
//            SPACE=(CYL,(400,200),RLSE)                                00006600
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP00,              00006700
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00006800
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00006900
//            SPACE=(CYL,(400,200),RLSE)                                00007000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00007100
//SYSPRINT DD SYSOUT=*                                                  00007200
//SYSOUT   DD SYSOUT=*                                                  00007300
//SYSDBOUT DD SYSOUT=*                                                  00007400
//SYSABOUT DD SYSOUT=*                                                  00007500
//SYSUDUMP DD DUMMY                                                     00007600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE27T00),DISP=SHR                   00007700
//*                                                                     00007800
//**********************************************************************00007900
//*                     * SORT   *                                     *00008000
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 01   *00008100
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO DEFAULT       *00008200
//**********************************************************************00008300
//PUE27P22 EXEC PGM=SYNCSORT,COND=(0,NE)                                00008400
//PI601765 DD DUMMY                                                     00008500
//SYSOUT   DD SYSOUT=*                                                  00008600
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP01,DISP=SHR          00008700
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP01,DISP=SHR          00008800
//SYSTSPRT DD SYSOUT=*                                                  00008900
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP00,DISP=SHR               00009000
//*                                                                     00009100
//**********************************************************************00009200
//*                    -- ZM4VU002  --                                 *00009300
//*        RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA GRUPO  01  *00009400
//**********************************************************************00009500
//PUE27P21 EXEC PGM=IKJEFT01,COND=(0,NE)                                00009600
//PI601765 DD DUMMY                                                     00009700
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM27,DISP=SHR              00009800
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP01,DISP=SHR          00009900
//*                                                                     00010000
//ZMU002C1 DD DUMMY                                                     00010100
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP01,              00010200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00010300
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00010400
//            SPACE=(CYL,(400,200),RLSE)                                00010500
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP01,              00010600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00010700
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00010800
//            SPACE=(CYL,(400,200),RLSE)                                00010900
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00011000
//SYSPRINT DD SYSOUT=*                                                  00011100
//SYSOUT   DD SYSOUT=*                                                  00011200
//SYSDBOUT DD SYSOUT=*                                                  00011300
//SYSABOUT DD SYSOUT=*                                                  00011400
//SYSUDUMP DD DUMMY                                                     00011500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE27T01),DISP=SHR                   00011600
//*                                                                     00011700
//**********************************************************************00011800
//*                     * SORT   *                                     *00011900
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 02   *00012000
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO DEFAULT       *00012100
//**********************************************************************00012200
//PUE27P20 EXEC PGM=SYNCSORT,COND=(0,NE)                                00012300
//PI601765 DD DUMMY                                                     00012400
//SYSOUT   DD SYSOUT=*                                                  00012500
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP02,DISP=SHR          00012600
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP02,DISP=SHR          00012700
//SYSTSPRT DD SYSOUT=*                                                  00012800
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP00,DISP=SHR               00012900
//*                                                                     00013000
//**********************************************************************00013100
//*                    -- ZM4VU002  --                                 *00013200
//*        RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA GRUPO  02  *00013300
//**********************************************************************00013400
//PUE27P19 EXEC PGM=IKJEFT01,COND=(0,NE)                                00013500
//PI601765 DD DUMMY                                                     00013600
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM27,DISP=SHR              00013700
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP02,DISP=SHR          00013800
//*                                                                     00013900
//ZMU002C1 DD DUMMY                                                     00014000
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP02,              00014100
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00014200
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00014300
//            SPACE=(CYL,(400,200),RLSE)                                00014400
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP02,              00014500
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00014600
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00014700
//            SPACE=(CYL,(400,200),RLSE)                                00014800
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00014900
//SYSPRINT DD SYSOUT=*                                                  00015000
//SYSOUT   DD SYSOUT=*                                                  00015100
//SYSDBOUT DD SYSOUT=*                                                  00015200
//SYSABOUT DD SYSOUT=*                                                  00015300
//SYSUDUMP DD DUMMY                                                     00015400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE27T02),DISP=SHR                   00015500
//*                                                                     00015600
//**********************************************************************00015700
//*                     * SORT   *                                     *00015800
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 03   *00015900
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO DEFAULT       *00016000
//**********************************************************************00016100
//PUE27P18 EXEC PGM=SYNCSORT,COND=(0,NE)                                00016200
//PI601765 DD DUMMY                                                     00016300
//SYSOUT   DD SYSOUT=*                                                  00016400
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP03,DISP=SHR          00016500
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP03,DISP=SHR          00016600
//SYSTSPRT DD SYSOUT=*                                                  00016700
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP00,DISP=SHR               00016800
//*                                                                     00016900
//**********************************************************************00017000
//*                    -- ZM4VU002  --                                 *00017100
//*        RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA GRUPO  03  *00017200
//**********************************************************************00017300
//PUE27P17 EXEC PGM=IKJEFT01,COND=(0,NE)                                00017400
//PI601765 DD DUMMY                                                     00017500
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM27,DISP=SHR              00017600
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP03,DISP=SHR          00017700
//*                                                                     00017800
//ZMU002C1 DD DUMMY                                                     00017900
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP03,              00018000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00018100
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00018200
//            SPACE=(CYL,(400,200),RLSE)                                00018300
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP03,              00018400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00018500
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00018600
//            SPACE=(CYL,(400,200),RLSE)                                00018700
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00018800
//SYSPRINT DD SYSOUT=*                                                  00018900
//SYSOUT   DD SYSOUT=*                                                  00019000
//SYSDBOUT DD SYSOUT=*                                                  00019100
//SYSABOUT DD SYSOUT=*                                                  00019200
//SYSUDUMP DD DUMMY                                                     00019300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE27T03),DISP=SHR                   00019400
//*                                                                     00019500
//**********************************************************************00019600
//*                     * SORT   *                                     *00019700
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 04   *00019800
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO DEFAULT       *00019900
//**********************************************************************00020000
//PUE27P16 EXEC PGM=SYNCSORT,COND=(0,NE)                                00020100
//PI601765 DD DUMMY                                                     00020200
//SYSOUT   DD SYSOUT=*                                                  00020300
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP04,DISP=SHR          00020400
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP04,DISP=SHR          00020500
//SYSTSPRT DD SYSOUT=*                                                  00020600
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP00,DISP=SHR               00020700
//*                                                                     00020800
//**********************************************************************00020900
//*                    -- ZM4VU002  --                                 *00021000
//*        RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA GRUPO  04  *00021100
//**********************************************************************00021200
//PUE27P15 EXEC PGM=IKJEFT01,COND=(0,NE)                                00021300
//PI601765 DD DUMMY                                                     00021400
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM27,DISP=SHR              00021500
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP04,DISP=SHR          00021600
//*                                                                     00021700
//ZMU002C1 DD DUMMY                                                     00021800
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP04,              00021900
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00022000
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00022100
//            SPACE=(CYL,(400,200),RLSE)                                00022200
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP04,              00022300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00022400
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00022500
//            SPACE=(CYL,(400,200),RLSE)                                00022600
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00022700
//SYSPRINT DD SYSOUT=*                                                  00022800
//SYSOUT   DD SYSOUT=*                                                  00022900
//SYSDBOUT DD SYSOUT=*                                                  00023000
//SYSABOUT DD SYSOUT=*                                                  00023100
//SYSUDUMP DD DUMMY                                                     00023200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE27T04),DISP=SHR                   00023300
//*                                                                     00023400
//**********************************************************************00023500
//*                     * SORT   *                                     *00023600
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 05   *00023700
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO DEFAULT       *00023800
//**********************************************************************00023900
//PUE27P14 EXEC PGM=SYNCSORT,COND=(0,NE)                                00024000
//PI601765 DD DUMMY                                                     00024100
//SYSOUT   DD SYSOUT=*                                                  00024200
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP05,DISP=SHR          00024300
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP05,DISP=SHR          00024400
//SYSTSPRT DD SYSOUT=*                                                  00024500
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP00,DISP=SHR               00024600
//*                                                                     00024700
//**********************************************************************00024800
//*                    -- ZM4VU002  --                                 *00024900
//*        RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA GRUPO  05  *00025000
//**********************************************************************00025100
//PUE27P13 EXEC PGM=IKJEFT01,COND=(0,NE)                                00025200
//PI601765 DD DUMMY                                                     00025300
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM27,DISP=SHR              00025400
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP05,DISP=SHR          00025500
//*                                                                     00025600
//ZMU002C1 DD DUMMY                                                     00025700
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP05,              00025800
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00025900
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00026000
//            SPACE=(CYL,(400,200),RLSE)                                00026100
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP05,              00026200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00026300
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00026400
//            SPACE=(CYL,(400,200),RLSE)                                00026500
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00026600
//SYSPRINT DD SYSOUT=*                                                  00026700
//SYSOUT   DD SYSOUT=*                                                  00026800
//SYSDBOUT DD SYSOUT=*                                                  00026900
//SYSABOUT DD SYSOUT=*                                                  00027000
//SYSUDUMP DD DUMMY                                                     00027100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE27T05),DISP=SHR                   00027200
//*                                                                     00027300
//**********************************************************************00027400
//*                     * SORT   *                                     *00027500
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 06   *00027600
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO DEFAULT       *00027700
//**********************************************************************00027800
//PUE27P12 EXEC PGM=SYNCSORT,COND=(0,NE)                                00027900
//PI601765 DD DUMMY                                                     00028000
//SYSOUT   DD SYSOUT=*                                                  00028100
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP06,DISP=SHR          00028200
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP06,DISP=SHR          00028300
//SYSTSPRT DD SYSOUT=*                                                  00028400
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP00,DISP=SHR               00028500
//*                                                                     00028600
//**********************************************************************00028700
//*                    -- ZM4VU002  --                                 *00028800
//*        RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA GRUPO  06  *00028900
//**********************************************************************00029000
//PUE27P11 EXEC PGM=IKJEFT01,COND=(0,NE)                                00029100
//PI601765 DD DUMMY                                                     00029200
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM27,DISP=SHR              00029300
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP06,DISP=SHR          00029400
//*                                                                     00029500
//ZMU002C1 DD DUMMY                                                     00029600
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP06,              00029700
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00029800
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00029900
//            SPACE=(CYL,(400,200),RLSE)                                00030000
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP06,              00030100
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00030200
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00030300
//            SPACE=(CYL,(400,200),RLSE)                                00030400
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00030500
//SYSPRINT DD SYSOUT=*                                                  00030600
//SYSOUT   DD SYSOUT=*                                                  00030700
//SYSDBOUT DD SYSOUT=*                                                  00030800
//SYSABOUT DD SYSOUT=*                                                  00030900
//SYSUDUMP DD DUMMY                                                     00031000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE27T06),DISP=SHR                   00031100
//*                                                                     00031200
//**********************************************************************00031300
//*                     * SORT   *                                     *00031400
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 07   *00031500
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO DEFAULT       *00031600
//**********************************************************************00031700
//PUE27P10 EXEC PGM=SYNCSORT,COND=(0,NE)                                00031800
//PI601765 DD DUMMY                                                     00031900
//SYSOUT   DD SYSOUT=*                                                  00032000
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP07,DISP=SHR          00032100
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP07,DISP=SHR          00032200
//SYSTSPRT DD SYSOUT=*                                                  00032300
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP00,DISP=SHR               00032400
//*                                                                     00032500
//**********************************************************************00032600
//*                    -- ZM4VU002  --                                 *00032700
//*        RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA GRUPO  07  *00032800
//**********************************************************************00032900
//PUE27P09 EXEC PGM=IKJEFT01,COND=(0,NE)                                00033000
//PI601765 DD DUMMY                                                     00033100
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM27,DISP=SHR              00033200
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP07,DISP=SHR          00033300
//*                                                                     00033400
//ZMU002C1 DD DUMMY                                                     00033500
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP07,              00033600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00033700
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00033800
//            SPACE=(CYL,(400,200),RLSE)                                00033900
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP07,              00034000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00034100
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00034200
//            SPACE=(CYL,(400,200),RLSE)                                00034300
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00034400
//SYSPRINT DD SYSOUT=*                                                  00034500
//SYSOUT   DD SYSOUT=*                                                  00034600
//SYSDBOUT DD SYSOUT=*                                                  00034700
//SYSABOUT DD SYSOUT=*                                                  00034800
//SYSUDUMP DD DUMMY                                                     00034900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE27T07),DISP=SHR                   00035000
//*                                                                     00035100
//**********************************************************************00035200
//*                     * SORT   *                                     *00035300
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 08   *00035400
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO DEFAULT       *00035500
//**********************************************************************00035600
//PUE27P08 EXEC PGM=SYNCSORT,COND=(0,NE)                                00035700
//PI601765 DD DUMMY                                                     00035800
//SYSOUT   DD SYSOUT=*                                                  00035900
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP08,DISP=SHR          00036000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP08,DISP=SHR          00036100
//SYSTSPRT DD SYSOUT=*                                                  00036200
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP00,DISP=SHR               00036300
//*                                                                     00036400
//**********************************************************************00036500
//*                    -- ZM4VU002  --                                 *00036600
//*        RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA GRUPO  08  *00036700
//**********************************************************************00036800
//PUE27P07 EXEC PGM=IKJEFT01,COND=(0,NE)                                00036900
//PI601765 DD DUMMY                                                     00037000
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM27,DISP=SHR              00037100
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP08,DISP=SHR          00037200
//*                                                                     00037300
//ZMU002C1 DD DUMMY                                                     00037400
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP08,              00037500
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00037600
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00037700
//            SPACE=(CYL,(400,200),RLSE)                                00037800
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP08,              00037900
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00038000
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00038100
//            SPACE=(CYL,(400,200),RLSE)                                00038200
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00038300
//SYSPRINT DD SYSOUT=*                                                  00038400
//SYSOUT   DD SYSOUT=*                                                  00038500
//SYSDBOUT DD SYSOUT=*                                                  00038600
//SYSABOUT DD SYSOUT=*                                                  00038700
//SYSUDUMP DD DUMMY                                                     00038800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE27T08),DISP=SHR                   00038900
//*                                                                     00039000
//**********************************************************************00039100
//*                     * SORT   *                                     *00039200
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 09   *00039300
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO DEFAULT       *00039400
//**********************************************************************00039500
//PUE27P06 EXEC PGM=SYNCSORT,COND=(0,NE)                                00039600
//PI601765 DD DUMMY                                                     00039700
//SYSOUT   DD SYSOUT=*                                                  00039800
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP09,DISP=SHR          00039900
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP09,DISP=SHR          00040000
//SYSTSPRT DD SYSOUT=*                                                  00040100
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP00,DISP=SHR               00040200
//*                                                                     00040300
//**********************************************************************00040400
//*                    -- ZM4VU002  --                                 *00040500
//*        RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA GRUPO  09  *00040600
//**********************************************************************00040700
//PUE27P05 EXEC PGM=IKJEFT01,COND=(0,NE)                                00040800
//PI601765 DD DUMMY                                                     00040900
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM27,DISP=SHR              00041000
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP09,DISP=SHR          00041100
//*                                                                     00041200
//ZMU002C1 DD DUMMY                                                     00041300
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP09,              00041400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00041500
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00041600
//            SPACE=(CYL,(400,200),RLSE)                                00041700
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP09,              00041800
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00041900
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00042000
//            SPACE=(CYL,(400,200),RLSE)                                00042100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00042200
//SYSPRINT DD SYSOUT=*                                                  00042300
//SYSOUT   DD SYSOUT=*                                                  00042400
//SYSDBOUT DD SYSOUT=*                                                  00042500
//SYSABOUT DD SYSOUT=*                                                  00042600
//SYSUDUMP DD DUMMY                                                     00042700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE27T09),DISP=SHR                   00042800
//*                                                                     00042900
//**********************************************************************00043000
//*                     * SORT   *                                     *00043100
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA DEL GRUPO DE IMPRESION 10   *00043200
//*           DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO DEFAULT       *00043300
//**********************************************************************00043400
//PUE27P04 EXEC PGM=SYNCSORT,COND=(0,NE)                                00043500
//PI601765 DD DUMMY                                                     00043600
//SYSOUT   DD SYSOUT=*                                                  00043700
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP10,DISP=SHR          00043800
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP10,DISP=SHR          00043900
//SYSTSPRT DD SYSOUT=*                                                  00044000
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP00,DISP=SHR               00044100
//*                                                                     00044200
//**********************************************************************00044300
//*                    -- ZM4VU002  --                                 *00044400
//*        RECORTA ARCHIVO PARA DIGITAL.  ESTADOS DE CUENTA GRUPO  10  *00044500
//**********************************************************************00044600
//PUE27P03 EXEC PGM=IKJEFT01,COND=(0,NE)                                00044700
//PI601765 DD DUMMY                                                     00044800
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM27,DISP=SHR              00044900
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP10,DISP=SHR          00045000
//*                                                                     00045100
//ZMU002C1 DD DUMMY                                                     00045200
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP10,              00045300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00045400
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00045500
//            SPACE=(CYL,(400,200),RLSE)                                00045600
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP10,              00045700
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00045800
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00045900
//            SPACE=(CYL,(400,200),RLSE)                                00046000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00046100
//SYSPRINT DD SYSOUT=*                                                  00046200
//SYSOUT   DD SYSOUT=*                                                  00046300
//SYSDBOUT DD SYSOUT=*                                                  00046400
//SYSABOUT DD SYSOUT=*                                                  00046500
//SYSUDUMP DD DUMMY                                                     00046600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE27T10),DISP=SHR                   00046700
//*                                                                     00046800
//**********************************************************************00046900
//*                    -- ICEGENER  --                                 *00047000
//*        GENERA ARCHIVO PARA DIGITALIZACION DE ESTADOS DE CUENTA     *00047100
//**********************************************************************00047200
//PUE27P01 EXEC PGM=ICEGENER,COND=(0,NE)                                00047300
//PI601765 DD DUMMY                                                     00047400
//SYSPRINT DD SYSOUT=*                                                  00047500
//SYSOUT   DD SYSOUT=*                                                  00047600
//******************************************************************    00047700
//******   ESTADOS DE CUENTA PERSONAS FISICAS                 ******    00047800
//******************************************************************    00047900
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP00,DISP=SHR      00048000
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP01,DISP=SHR      00048100
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP02,DISP=SHR      00048200
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP03,DISP=SHR      00048300
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP04,DISP=SHR      00048400
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP05,DISP=SHR      00048500
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP06,DISP=SHR      00048600
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP07,DISP=SHR      00048700
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP08,DISP=SHR      00048800
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP09,DISP=SHR      00048900
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP10,DISP=SHR      00049000
//******************************************************************    00049100
//******   ESTADOS DE CUENTA PERSONAS MORALES                 ******    00049200
//******************************************************************    00049300
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP00,DISP=SHR      00049400
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP01,DISP=SHR      00049500
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP02,DISP=SHR      00049600
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP03,DISP=SHR      00049700
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP04,DISP=SHR      00049800
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP05,DISP=SHR      00049900
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP06,DISP=SHR      00050000
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP07,DISP=SHR      00050100
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP08,DISP=SHR      00050200
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP09,DISP=SHR      00050300
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP10,DISP=SHR      00050400
//******************************************************************    00050500
//******   ESTADOS DE CUENTA PERSONAS FISICAS Y MORALES MICR. ******    00050600
//******************************************************************    00050700
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA.DIGIT(+1),            00050800
//            DISP=(NEW,CATLG,DELETE),                                  00050900
//            SPACE=(CYL,(450,225),RLSE),                               00051000
//            LRECL=201,RECFM=FBA,BLKSIZE=0,                            00051100
//            UNIT=3390,DCB=BKUP.MODEL                                  00051200
//*                                                                     00051300
//SYSIN    DD DUMMY                                                     00051400
//*                                                                     00051500
//**********************************************************************00051600
//*                    -- ICEGENER  --                                 *00051700
//*        RESPALDA GDGD    'MXCP.ZM.TMP.ECT.ECBP.EDOSCTA              *00051800
//*        EN EL GDGR       'MXCP.ZM.GDGR.ECT.EBCO.EDOSCTA(+1)'        *00051900
//**********************************************************************00052000
//PUE27P00 EXEC PGM=ICEGENER,COND=(4,LT)                                00052100
//SYSIN    DD DUMMY                                                     00052200
//SYSPRINT DD SYSOUT=*                                                  00052300
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDOSCTA,DISP=SHR                 00052400
//SYSUT2   DD  DSN=MXCP.ZM.GDGR.ECT.EBCO.EDOSCTA(+1),
//             DISP=(NEW,CATLG,DELETE),
//             LABEL=(1,SL,,,EXPDT=99000),
//             UNIT=FJVTPH,
//             DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=274,RECFM=FBA)
//*                                                                     00052900
//*                                                                     00053000
//**********************************************************************00053100
//*        TERMINA PROCESO ZMUEPM27 SIVA MULTIEMPRESA                  *00053200
//**********************************************************************00053300
