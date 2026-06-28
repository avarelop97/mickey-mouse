//ZMJIPDA1 PROC                                                         00000101
//********************************************************************* 00000200
//*                     C A S A   D E   B O L S A                     * 00000300
//*                     =========================                     * 00000400
//*                    << MERCADO DE CAPITALES >>                     * 00000500
//*                                                                   * 00000600
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  * 00000700
//*                                                                   * 00000800
//*   JCL              :  CBJICDA1                                    * 00000902
//*                                                                   * 00001000
//*   CADENA           :  AL FINALIZAR EL INICIO DE DIA               * 00001102
//*                                                                   * 00001200
//*   OBJETIVO         :  GENERAR EL ARCHIVO CON LOS SALDOS INICIALES * 00001302
//*                       DE LOS FONDOS AL INICIO DE DIA              * 00001402
//*                       GENERAR ARCHIVOS LIQUIDACION VALOR NORMAL   * 00001403
//*                       DE LOS FONDOS DE INVERSION                  * 00001404
//*                                                                   * 00001500
//*   CORRE DESPUES DE :  CBJICD13                                    * 00001602
//*                       CBJICS14                                    * 00001702
//*   CORRE ANTES   DE :  NINGUNO                                     * 00001800
//*                                                                   * 00001900
//*   PERIODICIDAD     :  DIARIO                                      * 00002000
//*                                                                   * 00002100
//*   ELABORADO POR    :  CAPGEMINI                                   * 00002200
//*                                                                   * 00002300
//*   FECHA            :  AGOSTO   / 2020                             * 00002400
//*                                                                   * 00002500
//**********************************************************************00004500
//*                                                                     00004540
//**********************************************************************00004600
//*  PASO: 13     GENERA EL ARCHIVO CON LOS SALDOS INICIALES DE LOS    *00004602
//*               FONDOS DE INVERSION AL INICIO  DE DIA                *00004702
//*                                    SIVA MUV             ZM4DJB01   *00004902
//**********************************************************************00005000
//PJIA1P13 EXEC PGM=IKJEFT01                                            00005102
//*                                                                     00005200
//ZMJB01A1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.SALDOINI,                   00006502
//            DISP=(NEW,CATLG,DELETE),                                  00006602
//            SPACE=(CYL,(20,10),RLSE),                                 00006702
//            DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),              00006802
//            UNIT=3390                                                 00006902
//*                                                                     00007102
//SYSTSPRT DD SYSOUT=*                                                  00007202
//SYSPRINT DD SYSOUT=*                                                  00007302
//SYSOUT   DD SYSOUT=*                                                  00007402
//SYSDBOUT DD SYSOUT=*                                                  00007502
//SYSABOUT DD SYSOUT=*                                                  00007602
//SYSUDUMP DD SYSOUT=*                                                  00007702
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJIA1T01),DISP=SHR                   00007802
//*                                                                     00007824
//**********************************************************************00007825
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *00007826
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *00007827
//**********************************************************************00007828
//PJIA1P12 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007829
//*                                                                     00007830
//ZMSATAE1 DD DUMMY                                                     00007831
//*                                                                     00007832
//ZMSATAS1 DD DSN=MXCP.ZM.TMP.LVN.DG05.PARMS.CTL,                       00007833
//            DISP=(NEW,CATLG,CATLG),                                   00007834
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),                         00007835
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)                00007836
//*                                                                     00007837
//QRLSDB2  DD  SYSOUT=*                                                 00007838
//SYSPRINT DD  SYSOUT=*                                                 00007839
//SYSTSPRT DD  SYSOUT=*                                                 00007840
//SYSUDUMP DD  SYSOUT=*                                                 00007841
//SYSABOUT DD  SYSOUT=*                                                 00007842
//SYSDBOUT DD  SYSOUT=*                                                 00007843
//SYSOUT   DD  SYSOUT=*                                                 00007844
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM13PA),DISP=SHR                   00007846
//*                                                                     00007847
//**********************************************************************00007848
//* PROGRAMA   : ZM3DG005                                              *00007849
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *00007850
//**********************************************************************00007851
//PJIA1P11 EXEC PGM=ZM3DG005,COND=(4,LT)                                00007852
//*                                                                     00007853
//E1DQ0001 DD DUMMY                                                     00007854
//E2DQ0002 DD DSN=MXCP.ZM.TMP.LVN.DG05.PARMS.CTL,DISP=SHR               00007856
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZJIA1T02),DISP=SHR                   00007858
//*                                                                     00007868
//S1DQ0001 DD DSN=MXCP.ZM.TMP.LVN.DG05.CONTROL,                         00007869
//            DISP=(NEW,CATLG,CATLG),                                   00007870
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),                         00007871
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)                00007872
//*                                                                     00007873
//SYSABOUT DD  SYSOUT=*                                                 00007874
//SYSDBOUT DD  SYSOUT=*                                                 00007875
//SYSOUT   DD  SYSOUT=*                                                 00007876
//*                                                                     00007878
//**********************************************************************00007879
//* UTILERIA : ADUUMAIN                                                *00007880
//* OBJETIVO : DESCARGA DE LA TABLA OPERA Y CONCEPT PARA LIQ. VN FONDOS*00007881
//**********************************************************************00007882
//PJIA1P10 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00007883
//         PARM='MXP1,PJIA1P10,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.TMP.LVN.ZMJIPDA1.OPERA,                       00007890
//            SPACE=(CYL,(100,20),RLSE),                                00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=MXCP.ZM.TMP.LVN.DG05.CONTROL,DISP=SHR                 00007898
//*                                                                     00007899
//**********************************************************************00007900
//* UTILERIA   : IKJEFT01/ZM4DJ030                                     *00007901
//* OBJETIVO   : GENERA REPORTES LIQUIDACION FONDOS VALOR NORMAL       *00007902
//**********************************************************************00007903
//PJIA1P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                00007904
//*                                                                     00007905
//ZMJ030E1 DD DSN=MXCP.ZM.TMP.LVN.ZMJIPDA1.OPERA,DISP=SHR               00007906
//*                                                                     00007907
//ZMJ030A1 DD DSN=MXCP.ZM.FIX.LVN.CPASVTAS.MUV,                         00007908
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007909
//            SPACE=(CYL,(500,250),RLSE),                               00007910
//            DCB=(RECFM=FB,LRECL=236,BLKSIZE=0,DSORG=PS)               00007911
//*                                                                     00007912
//ZMJ030A2 DD DSN=MXCP.ZM.FIX.LVN.CPASVTAS.DIFO,                        00007913
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007914
//            SPACE=(CYL,(500,250),RLSE),                               00007915
//            DCB=(RECFM=FB,LRECL=236,BLKSIZE=0,DSORG=PS)               00007916
//*                                                                     00007920
//ZMJ030A3 DD DSN=MXCP.ZM.FIX.LVN.CREDITOS.DIFOMUV,                     00008000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00008100
//            SPACE=(CYL,(500,250),RLSE),                               00008200
//            DCB=(RECFM=FB,LRECL=081,BLKSIZE=0,DSORG=PS)               00008300
//*                                                                     00008400
//ZMJ030A4 DD DSN=MXCP.ZM.FIX.LVN.CARGOS.DIFOMUV,                       00008500
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00008600
//            SPACE=(CYL,(500,250),RLSE),                               00008700
//            DCB=(RECFM=FB,LRECL=081,BLKSIZE=0,DSORG=PS)               00008800
//*                                                                     00008900
//QRLSDB2  DD SYSOUT=*                                                  00009000
//SYSPRINT DD SYSOUT=*                                                  00009100
//SYSTSPRT DD SYSOUT=*                                                  00009200
//SYSUDUMP DD SYSOUT=*                                                  00009300
//SYSABOUT DD SYSOUT=*                                                  00009400
//SYSDBOUT DD SYSOUT=*                                                  00009500
//SYSOUT   DD SYSOUT=*                                                  00009600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJIA1T03),DISP=SHR                   00009700
//*                                                                     00010100
//**********************************************************************00010110
//* UTILERIA : ADUUMAIN                                                *00010120
//* OBJETIVO : DESCARGA DE LA TABLA ZMDTRIC Y ZMDT800 BLOQUEOS RIC     *00010121
//**********************************************************************00010122
//PJIA1P08 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00010123
//         PARM='MXP1,PJIA1P08,NEW,,MSGLEVEL(1)'                        00010124
//*                                                                     00010125
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00010126
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00010127
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00010128
//*                                                                     00010129
//SYSREC   DD DSN=MXCP.ZM.TMP.RIC.ZMRICD20.ZMDTRIC,                     00010130
//            SPACE=(CYL,(100,20),RLSE),                                00010131
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00010132
//            DCB=(RECFM=FB,LRECL=190,BLKSIZE=0,DSORG=PS)               00010133
//*                                                                     00010134
//SYSPRINT DD SYSOUT=*                                                  00010135
//SYSTSPRT DD SYSOUT=*                                                  00010136
//SYSOUT   DD SYSOUT=*                                                  00010137
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZRC10T05),DISP=SHR                   00010138
//*                                                                     00010139
//**********************************************************************00010140
//* UTILERIA   : IKJEFT01/ZM4RIC40                                     *00010141
//* OBJETIVO   : GENERA REPORTES PARA EXCEL DE LOS BLOQUEOS RIC        *00010142
//*              VIGENTES Y LOS BLOQUEOS RIC DADOS DE BAJA EN EL MES   *00010143
//**********************************************************************00010144
//PJIA1P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                00010145
//*                                                                     00010146
//ZRIC40E1 DD DSN=MXCP.ZM.TMP.RIC.ZMRICD20.ZMDTRIC,DISP=SHR             00010147
//*                                                                     00010148
//ZRIC40S1 DD DSN=MXCP.ZM.FIX.RIC.ZM4RIC40.BLQRIC.DIA,                  00010149
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00010150
//            SPACE=(CYL,(100,20),RLSE),                                00010151
//            DCB=(RECFM=FB,LRECL=236,BLKSIZE=0,DSORG=PS)               00010152
//*                                                                     00010153
//ZRIC40S2 DD DSN=MXCP.ZM.FIX.RIC.ZM4RIC40.BLQRIC.MEN,                  00010154
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00010155
//            SPACE=(CYL,(100,20),RLSE),                                00010156
//            DCB=(RECFM=FB,LRECL=236,BLKSIZE=0,DSORG=PS)               00010157
//*                                                                     00010158
//QRLSDB2  DD SYSOUT=*                                                  00010159
//SYSPRINT DD SYSOUT=*                                                  00010160
//SYSTSPRT DD SYSOUT=*                                                  00010161
//SYSUDUMP DD SYSOUT=*                                                  00010162
//SYSABOUT DD SYSOUT=*                                                  00010163
//SYSDBOUT DD SYSOUT=*                                                  00010164
//SYSOUT   DD SYSOUT=*                                                  00010165
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZRC10T40),DISP=SHR                   00010166
//*                                                                     00010169
//**********************************************************************00010170
//* UTILERIA : ADUUMAIN                                                *00010171
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT608 Y CUENTA PARA RIC          *00010172
//**********************************************************************00010173
//PJIA1P06 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00010174
//         PARM='MXP1,PJIA1P06,NEW,,MSGLEVEL(1)'                        00010175
//*                                                                     00010176
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00010177
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00010178
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00010179
//*                                                                     00010180
//SYSREC   DD DSN=MXCP.ZM.TMP.RIC.ZMRICD30.ZMDT608,                     00010181
//            SPACE=(CYL,(100,20),RLSE),                                00010182
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00010183
//            DCB=(RECFM=FB,LRECL=33,BLKSIZE=0,DSORG=PS)                00010184
//*                                                                     00010185
//SYSPRINT DD SYSOUT=*                                                  00010186
//SYSTSPRT DD SYSOUT=*                                                  00010187
//SYSOUT   DD SYSOUT=*                                                  00010188
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZRC10T01),DISP=SHR                   00010189
//*                                                                     00010190
//**********************************************************************00010191
//* UTILERIA : ADUUMAIN                                                *00010192
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT800 Y ZMDT608 PARA RIC         *00010193
//**********************************************************************00010194
//PJIA1P05 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00010195
//         PARM='MXP1,PJIA1P05,NEW,,MSGLEVEL(1)'                        00010196
//*                                                                     00010197
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00010198
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00010199
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00010200
//*                                                                     00010201
//SYSREC   DD DSN=MXCP.ZM.TMP.RIC.ZMRICD30.ZMDT800,                     00010202
//            SPACE=(CYL,(100,20),RLSE),                                00010203
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00010204
//            DCB=(RECFM=FB,LRECL=32,BLKSIZE=0,DSORG=PS)                00010205
//*                                                                     00010206
//SYSPRINT DD SYSOUT=*                                                  00010207
//SYSTSPRT DD SYSOUT=*                                                  00010208
//SYSOUT   DD SYSOUT=*                                                  00010209
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZRC10T03),DISP=SHR                   00010210
//*                                                                     00010212
//**********************************************************************00010213
//* UTILERIA   : IKJEFT01/ZM4RIC50                                     *00010214
//* OBJETIVO   : PREPARA INFORMACION DE BLOQUEOS PARA OPCION 230 LINEA *00010215
//**********************************************************************00010216
//PJIA1P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00010217
//*                                                                     00010218
//ZRIC50E1 DD DSN=MXCP.ZM.TMP.RIC.ZMRICD30.ZMDT608,DISP=SHR             00010220
//ZRIC50E2 DD DSN=MXCP.ZM.TMP.RIC.ZMRICD30.ZMDT800,DISP=SHR             00010221
//*                                                                     00010232
//QRLSDB2  DD SYSOUT=*                                                  00010233
//SYSPRINT DD SYSOUT=*                                                  00010234
//SYSTSPRT DD SYSOUT=*                                                  00010235
//SYSUDUMP DD SYSOUT=*                                                  00010236
//SYSABOUT DD SYSOUT=*                                                  00010237
//SYSDBOUT DD SYSOUT=*                                                  00010238
//SYSOUT   DD SYSOUT=*                                                  00010239
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZRC10T50),DISP=SHR                   00010240
//*                                                                     00010243
//**********************************************************************00010244
//* UTILERIA : ADUUMAIN                                                *00010245
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT925                            *00010246
//**********************************************************************00010247
//PJIA1P03 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00010248
//         PARM='MXP1,PJIA1P03,NEW,,MSGLEVEL(1)'                        00010249
//*                                                                     00010250
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00010251
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00010252
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00010253
//*                                                                     00010254
//SYSREC   DD DSN=MXCP.ZM.FIX.MDC.ZMJIPDA1.ZMDT925,                     00010255
//            SPACE=(CYL,(100,20),RLSE),                                00010256
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00010257
//            DCB=(RECFM=FB,LRECL=188,BLKSIZE=0,DSORG=PS)               00010258
//*                                                                     00010259
//SYSPRINT DD SYSOUT=*                                                  00010260
//SYSTSPRT DD SYSOUT=*                                                  00010261
//SYSOUT   DD SYSOUT=*                                                  00010262
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL10T30),DISP=SHR                   00010263
//*                                                                     00010264
//**********************************************************************00010265
//* UTILERIA : ADUUMAIN                                                *00010266
//* OBJETIVO : DESCARGA DE LA TABLA CARTERA MERCADO CAPITALES RTA.VAR. *00010267
//**********************************************************************00010268
//PJIA1P02 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00010269
//         PARM='MXP1,PJIA1P02,NEW,,MSGLEVEL(1)'                        00010270
//*                                                                     00010271
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00010272
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00010273
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00010274
//*                                                                     00010275
//SYSREC   DD DSN=MXCP.ZM.FIX.MDC.ZMJIPDA1.CARTERA,                     00010276
//            SPACE=(CYL,(100,20),RLSE),                                00010277
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00010278
//            DCB=(RECFM=FB,LRECL=032,BLKSIZE=0,DSORG=PS)               00010279
//*                                                                     00010280
//SYSPRINT DD SYSOUT=*                                                  00010281
//SYSTSPRT DD SYSOUT=*                                                  00010282
//SYSOUT   DD SYSOUT=*                                                  00010283
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL10T20),DISP=SHR                   00010284
//*                                                                     00010285
//**********************************************************************00010286
//* PROGRAMA   : IKJEFT01 / ZM4DH039                                   *00010288
//* OBJETIVO   : IGUALA LA TABLA ZMDT925 VS. CARTERA MERCADO CAPITALES *00010289
//*              TODAS LAS EMISORAS-SERIES DE CARTERA CAPITALES RTA VAR*00010290
//**********************************************************************00010291
//PJIA1P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00010292
//*                                                                     00010293
//ZMH039A1 DD DUMMY                                                     00010294
//ZMH039E1 DD DSN=MXCP.ZM.FIX.MDC.ZMJIPDA1.CARTERA,DISP=SHR             00010295
//ZMH039E2 DD DSN=MXCP.ZM.FIX.MDC.ZMJIPDA1.ZMDT925,DISP=SHR             00010296
//*                                                                     00010297
//SYSTSPRT DD SYSOUT=*                                                  00010298
//SYSPRINT DD SYSOUT=*                                                  00010299
//SYSOUT   DD SYSOUT=*                                                  00010300
//SYSDBOUT DD SYSOUT=*                                                  00010301
//SYSABOUT DD SYSOUT=*                                                  00010302
//SYSUDUMP DD DUMMY                                                     00010303
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL10T10),DISP=SHR                   00010304
//*                                                                     00010305
//**********************************************************************00010306
//*                         TERMINA ZMJIPDA1                            00010310
//**********************************************************************00010400
