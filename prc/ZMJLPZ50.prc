//ZMJLPZ50 PROC                                                         00000100
//********************************************************************* 00000200
//*                     C A S A   D E   B O L S A                     * 00000300
//*                     =========================                     * 00000400
//*                    << MIGRACION DE SUCURSALES >>                  * 00000500
//*   APLICACION       :  MODULO UNICO DE VALORES CASA BOLSA          * 00000600
//*   JCL              :  SIVAXMIG                                    * 00000700
//*   CADENA           :  MENU CONCILIACION -> OPC.10 (ORDENAMIENTOS) * 00000800
//*   OBJETIVO         :  ORDENA TODOS LOS ARCHIVOS DE MUV Y AS400    * 00000900
//*                       Y LOS TRANSMITE A UN SERVIDOR               * 00001000
//*   REPORTE          :  NINGUNO                                     * 00001100
//*   CORRE            :  ENVIADO A EJECUCION DESDE PANTALLA DE       * 00001200
//*                       USUARIO EN LA APLICACION DE CONCILIACION    * 00001300
//*                       OPCION 967 (SIVA)                           * 00001400
//* OPCION LINEA     = 967J, TRANSACCION = ZA33, PREFIJO = SIVAXMIG   * 00001500
//* SUBMITIDO POR    : CBJLPZ50                                       * 00001600
//*   CORRE ANTES DE   :  NINGUNO                                     * 00001700
//*   PERIODICIDAD     :  EVENTUAL (A PETICION DEL USUARIO)           * 00001800
//*   ELABORADO POR    :  A. ADUNA G. (GETRONICS)                     * 00001900
//*   FECHA            :  MARZO /2007                                 * 00002000
//**********************************************************************00002100
//*  PASO: 20    ESTE PASO SOLO SIRVE PARA RECIBIR LOS 2 PARAMETROS    *00002200
//*              ENVIADOS DESDE LA EJECUCION EN LINEA:                 *00002300
//*  PROGRAMA:   ICEMAN                                                *00002400
//**********************************************************************00002500
//PJD50P20 EXEC PGM=SYNCSORT                                            00002600
//SYSOUT   DD SYSOUT=*                                                  00002700
//SORTIN   DD DSN=MXCP.ZM.FIX.MIGRA.MSALDET3,DISP=SHR                   00002800
//SORTOUT  DD DSN=MXCP.ZM.TMP.MINT1.AINT2,                              00002900
//         DISP=(NEW,CATLG,DELETE),                                     00003000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=120,BLKSIZE=0),                 00003100
//         UNIT=3390,SPACE=(CYL,(2,1),RLSE)                             00003200
//SYSPRINT DD SYSOUT=*                                                  00003300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T9B),DISP=SHR                   00003400
//*                                                                     00003500
//**********************************************************************00003600
//*  PASO: 19    REFORMATEA ARCHIVOS DE OPCION 9:  PLAZOS              *00003700
//*  PROGRAMA:   ZM4DH059                                              *00003800
//**********************************************************************00003900
//PJD50P19 EXEC PGM=IKJEFT01,COND=(4,LT)                                00004000
//ZMH59EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOPZO,DISP=SHR                    00004100
//ZMH59EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MPLAZOS,DISP=SHR                 00004200
//ZMH59SA1 DD DSN=MXCP.ZM.FIX.AS400.PLAZOS,                             00004300
//         DISP=(NEW,CATLG,DELETE),                                     00004400
//         DCB=(DSORG=PS,RECFM=FB,LRECL=253,BLKSIZE=0),                 00004500
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00004600
//ZMH59SA2 DD DSN=MXCP.ZM.FIX.MUV.PLAZOS,                               00004700
//         DISP=(NEW,CATLG,DELETE),                                     00004800
//         DCB=(DSORG=PS,RECFM=FB,LRECL=160,BLKSIZE=0),                 00004900
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00005000
//SYSTSPRT DD SYSOUT=*                                                  00005100
//SYSPRINT DD SYSOUT=*                                                  00005200
//SYSOUT   DD SYSOUT=*                                                  00005300
//SYSDBOUT DD SYSOUT=*                                                  00005400
//SYSABOUT DD SYSOUT=*                                                  00005500
//SYSUDUMP DD DUMMY                                                     00005600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T19),DISP=SHR                   00005700
//*                                                                     00005800
//**********************************************************************00005900
//*  PASO: 18    REFORMATEA ARCHIVOS DE OPCION 8:  MOVTOS. X LIQUIDAR  *00006000
//*  PROGRAMA:   ZM4DH058                                              *00006100
//**********************************************************************00006200
//PJD50P18 EXEC PGM=IKJEFT01,COND=(4,LT)                                00006300
//ZMH58EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOMOV,DISP=SHR                    00006400
//ZMH58EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MOPXLIQ,DISP=SHR                 00006500
//ZMH58SA1 DD DSN=MXCP.ZM.FIX.AS400.MOVXLIQ,                            00006600
//         DISP=(NEW,CATLG,DELETE),                                     00006700
//         DCB=(DSORG=PS,RECFM=FB,LRECL=229,BLKSIZE=0),                 00006800
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00006900
//ZMH58SA2 DD DSN=MXCP.ZM.FIX.MUV.MOVXLIQ,                              00007000
//         DISP=(NEW,CATLG,DELETE),                                     00007100
//         DCB=(DSORG=PS,RECFM=FB,LRECL=240,BLKSIZE=0),                 00007200
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00007300
//SYSTSPRT DD SYSOUT=*                                                  00007400
//SYSPRINT DD SYSOUT=*                                                  00007500
//SYSOUT   DD SYSOUT=*                                                  00007600
//SYSDBOUT DD SYSOUT=*                                                  00007700
//SYSABOUT DD SYSOUT=*                                                  00007800
//SYSUDUMP DD DUMMY                                                     00007900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T18),DISP=SHR                   00008000
//*                                                                     00008100
//**********************************************************************00008200
//*  PASO: 17    REFORMATEA ARCHIVOS DE OPCION 7:  I.S.R.              *00008300
//*  PROGRAMA:   ZM4DH057                                              *00008400
//**********************************************************************00008500
//PJD50P17 EXEC PGM=IKJEFT01,COND=(4,LT)                                00008600
//ZMH57EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOISR,DISP=SHR                    00008700
//ZMH57EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MISRANU,DISP=SHR                 00008800
//ZMH57SA1 DD DSN=MXCP.ZM.FIX.AS400.ISR,                                00008900
//         DISP=(NEW,CATLG,DELETE),                                     00009000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=092,BLKSIZE=0),                 00009100
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00009200
//ZMH57SA2 DD DSN=MXCP.ZM.FIX.MUV.ISR,                                  00009300
//         DISP=(NEW,CATLG,DELETE),                                     00009400
//         DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),                 00009500
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00009600
//SYSTSPRT DD SYSOUT=*                                                  00009700
//SYSPRINT DD SYSOUT=*                                                  00009800
//SYSOUT   DD SYSOUT=*                                                  00009900
//SYSDBOUT DD SYSOUT=*                                                  00010000
//SYSABOUT DD SYSOUT=*                                                  00010100
//SYSUDUMP DD DUMMY                                                     00010200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T17),DISP=SHR                   00010300
//*                                                                     00010400
//**********************************************************************00010500
//*  PASO: 16    REFORMATEA ARCHIVOS DE OPCION 6:  REPORTOS            *00010600
//*  PROGRAMA:   ZM4DH056                                              *00010700
//**********************************************************************00010800
//PJD50P16 EXEC PGM=IKJEFT01,COND=(4,LT)                                00010900
//ZMH56EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOREP,DISP=SHR                    00011000
//ZMH56EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MREPORT,DISP=SHR                 00011100
//ZMH56SA1 DD DSN=MXCP.ZM.FIX.AS400.REPORTO,                            00011200
//         DISP=(NEW,CATLG,DELETE),                                     00011300
//         DCB=(DSORG=PS,RECFM=FB,LRECL=214,BLKSIZE=0),                 00011400
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00011500
//ZMH56SA2 DD DSN=MXCP.ZM.FIX.MUV.REPORTO,                              00011600
//         DISP=(NEW,CATLG,DELETE),                                     00011700
//         DCB=(DSORG=PS,RECFM=FB,LRECL=142,BLKSIZE=0),                 00011800
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00011900
//SYSTSPRT DD SYSOUT=*                                                  00012000
//SYSPRINT DD SYSOUT=*                                                  00012100
//SYSOUT   DD SYSOUT=*                                                  00012200
//SYSDBOUT DD SYSOUT=*                                                  00012300
//SYSABOUT DD SYSOUT=*                                                  00012400
//SYSUDUMP DD DUMMY                                                     00012500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T16),DISP=SHR                   00012600
//*                                                                     00012700
//**********************************************************************00012800
//*  PASO: 15    REFORMATEA ARCHIVOS DE OPCION 5:  EMISORAS            *00012900
//*  PROGRAMA:   ZM4DH055                                              *00013000
//**********************************************************************00013100
//PJD50P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00013200
//ZMH55EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOEMI,DISP=SHR                    00013300
//ZMH55EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MEMISOR,DISP=SHR                 00013400
//ZMH55SA1 DD DSN=MXCP.ZM.FIX.AS400.EMISORA,                            00013500
//         DISP=(NEW,CATLG,DELETE),                                     00013600
//         DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),                 00013700
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00013800
//ZMH55SA2 DD DSN=MXCP.ZM.FIX.MUV.EMISORA,                              00013900
//         DISP=(NEW,CATLG,DELETE),                                     00014000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=128,BLKSIZE=0),                 00014100
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00014200
//SYSTSPRT DD SYSOUT=*                                                  00014300
//SYSPRINT DD SYSOUT=*                                                  00014400
//SYSOUT   DD SYSOUT=*                                                  00014500
//SYSDBOUT DD SYSOUT=*                                                  00014600
//SYSABOUT DD SYSOUT=*                                                  00014700
//SYSUDUMP DD DUMMY                                                     00014800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T15),DISP=SHR                   00014900
//*                                                                     00015000
//**********************************************************************00015100
//*  PASO: 14    REFORMATEA ARCHIVOS DE OPCION 4:  CAPAS               *00015200
//*  PROGRAMA:   ZM4DH054                                              *00015300
//**********************************************************************00015400
//PJD50P14 EXEC PGM=IKJEFT01,COND=(4,LT)                                00015500
//ZMH54EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOCAP,DISP=SHR                    00015600
//ZMH54EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MCAPAST,DISP=SHR                 00015700
//ZMH54SA1 DD DSN=MXCP.ZM.FIX.AS400.CAPAS,                              00015800
//         DISP=(NEW,CATLG,DELETE),                                     00015900
//         DCB=(DSORG=PS,RECFM=FB,LRECL=144,BLKSIZE=0),                 00016000
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00016100
//ZMH54SA2 DD DSN=MXCP.ZM.FIX.MUV.CAPAS,                                00016200
//         DISP=(NEW,CATLG,DELETE),                                     00016300
//         DCB=(DSORG=PS,RECFM=FB,LRECL=110,BLKSIZE=0),                 00016400
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00016500
//SYSTSPRT DD SYSOUT=*                                                  00016600
//SYSPRINT DD SYSOUT=*                                                  00016700
//SYSOUT   DD SYSOUT=*                                                  00016800
//SYSDBOUT DD SYSOUT=*                                                  00016900
//SYSABOUT DD SYSOUT=*                                                  00017000
//SYSUDUMP DD DUMMY                                                     00017100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T14),DISP=SHR                   00017200
//*                                                                     00017300
//**********************************************************************00017400
//*  PASO: 13    REFORMATEA ARCHIVOS DE OPCION 3:  EFECTIVOS           *00017500
//*  PROGRAMA:   ZM4DH053                                              *00017600
//**********************************************************************00017700
//PJD50P13 EXEC PGM=IKJEFT01,COND=(4,LT)                                00017800
//ZMH53EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOEFE,DISP=SHR                    00017900
//ZMH53EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MEFECTI,DISP=SHR                 00018000
//ZMH53SA1 DD DSN=MXCP.ZM.FIX.AS400.EFECTIVO,                           00018100
//         DISP=(NEW,CATLG,DELETE),                                     00018200
//         DCB=(DSORG=PS,RECFM=FB,LRECL=060,BLKSIZE=0),                 00018300
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00018400
//ZMH53SA2 DD DSN=MXCP.ZM.FIX.MUV.EFECTIVO,                             00018500
//         DISP=(NEW,CATLG,DELETE),                                     00018600
//         DCB=(DSORG=PS,RECFM=FB,LRECL=053,BLKSIZE=0),                 00018700
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00018800
//SYSTSPRT DD SYSOUT=*                                                  00018900
//SYSPRINT DD SYSOUT=*                                                  00019000
//SYSOUT   DD SYSOUT=*                                                  00019100
//SYSDBOUT DD SYSOUT=*                                                  00019200
//SYSABOUT DD SYSOUT=*                                                  00019300
//SYSUDUMP DD DUMMY                                                     00019400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T13),DISP=SHR                   00019500
//*                                                                     00019600
//**********************************************************************00019700
//*  PASO: 12    REFORMATEA ARCHIVOS DE OPCION 2:  POSICIONES          *00019800
//*  PROGRAMA:   ZM4DH052                                              *00019900
//**********************************************************************00020000
//PJD50P12 EXEC PGM=IKJEFT01,COND=(4,LT)                                00020100
//ZMH52EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOPOS,DISP=SHR                    00020200
//ZMH52EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MPOSICI,DISP=SHR                 00020300
//ZMH52SA1 DD DSN=MXCP.ZM.FIX.AS400.POSICION,                           00020400
//         DISP=(NEW,CATLG,DELETE),                                     00020500
//         DCB=(DSORG=PS,RECFM=FB,LRECL=173,BLKSIZE=0),                 00020600
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00020700
//ZMH52SA2 DD DSN=MXCP.ZM.FIX.MUV.POSICION,                             00020800
//         DISP=(NEW,CATLG,DELETE),                                     00020900
//         DCB=(DSORG=PS,RECFM=FB,LRECL=107,BLKSIZE=0),                 00021000
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00021100
//SYSTSPRT DD SYSOUT=*                                                  00021200
//SYSPRINT DD SYSOUT=*                                                  00021300
//SYSOUT   DD SYSOUT=*                                                  00021400
//SYSDBOUT DD SYSOUT=*                                                  00021500
//SYSABOUT DD SYSOUT=*                                                  00021600
//SYSUDUMP DD DUMMY                                                     00021700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T12),DISP=SHR                   00021800
//*                                                                     00021900
//**********************************************************************00022000
//*  PASO: 11    REFORMATEA ARCHIVOS DE OPCION 1:  CONTRATOS           *00022100
//*  PROGRAMA:   ZM4DH051                                              *00022200
//**********************************************************************00022300
//PJD50P11 EXEC PGM=IKJEFT01,COND=(4,LT)                                00022400
//ZMH51EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOCTE,DISP=SHR                    00022500
//ZMH51EN2 DD DSN=MXCP.ZM.FIX.MIGRA.MSALDET3,DISP=SHR                   00022600
//ZMH51SA1 DD DSN=MXCP.ZM.FIX.AS400.CONTRATO,                           00022700
//         DISP=(NEW,CATLG,DELETE),                                     00022800
//         DCB=(DSORG=PS,RECFM=FB,LRECL=129,BLKSIZE=0),                 00022900
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00023000
//ZMH51SA2 DD DSN=MXCP.ZM.FIX.MUV.CONTRATO,                             00023100
//         DISP=(NEW,CATLG,DELETE),                                     00023200
//         DCB=(DSORG=PS,RECFM=FB,LRECL=120,BLKSIZE=0),                 00023300
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00023400
//SYSTSPRT DD SYSOUT=*                                                  00023500
//SYSPRINT DD SYSOUT=*                                                  00023600
//SYSOUT   DD SYSOUT=*                                                  00023700
//SYSDBOUT DD SYSOUT=*                                                  00023800
//SYSABOUT DD SYSOUT=*                                                  00023900
//SYSUDUMP DD DUMMY                                                     00024000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T11),DISP=SHR                   00024100
//*                                                                     00024200
//**********************************************************************00024300
//*  PASO: 9B Y 9A ORDENA ARCHIVOS DE OPCION 9: PLAZOS                 *00024400
//*  PROGRAMA:     ICEMAN                                              *00024500
//**********************************************************************00024600
//PJD50P9B EXEC PGM=SYNCSORT,COND=(4,LT)                                00024700
//SYSOUT   DD SYSOUT=*                                                  00024800
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.PLAZOS,DISP=SHR                       00024900
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.PLAZOS.ORDXSUC,                       00025000
//         DISP=(NEW,CATLG,DELETE),                                     00025100
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00025200
//SYSPRINT DD SYSOUT=*                                                  00025300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T9B),DISP=SHR                   00025400
//*                                                                     00025500
//PJD50P9A EXEC PGM=SYNCSORT,COND=(4,LT)                                00025600
//SYSOUT   DD SYSOUT=*                                                  00025700
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.PLAZOS,DISP=SHR                     00025800
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.PLAZOS.ORDXSUC,                     00025900
//         DISP=(NEW,CATLG,DELETE),                                     00026000
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00026100
//SYSPRINT DD SYSOUT=*                                                  00026200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T9A),DISP=SHR                   00026300
//*                                                                     00026400
//**********************************************************************00026500
//*  PASO: 8B Y 8A ORDENA ARCHIVOS DE OPCION 8: MOVTOS. X LIQUIDAR     *00026600
//*  PROGRAMA:     ICEMAN                                              *00026700
//**********************************************************************00026800
//PJD50P8B EXEC PGM=SYNCSORT,COND=(4,LT)                                00026900
//SYSOUT   DD SYSOUT=*                                                  00027000
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.MOVXLIQ,DISP=SHR                      00027100
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.MOVXLIQ.ORDXSUC,                      00027200
//         DISP=(NEW,CATLG,DELETE),                                     00027300
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00027400
//SYSPRINT DD SYSOUT=*                                                  00027500
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T8B),DISP=SHR                   00027600
//*                                                                     00027700
//PJD50P8A EXEC PGM=SYNCSORT,COND=(4,LT)                                00027800
//SYSOUT   DD SYSOUT=*                                                  00027900
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.MOVXLIQ,DISP=SHR                    00028000
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.MOVXLIQ.ORDXSUC,                    00028100
//         DISP=(NEW,CATLG,DELETE),                                     00028200
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00028300
//SYSPRINT DD SYSOUT=*                                                  00028400
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T8A),DISP=SHR                   00028500
//*                                                                     00028600
//**********************************************************************00028700
//*  PASO: 7B Y 7A ORDENA ARCHIVOS DE OPCION 7: I.S.R.                 *00028800
//*  PROGRAMA:     ICEMAN                                              *00028900
//**********************************************************************00029000
//PJD50P7B EXEC PGM=SYNCSORT,COND=(4,LT)                                00029100
//SYSOUT   DD SYSOUT=*                                                  00029200
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.ISR,DISP=SHR                          00029300
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.ISR.ORDXSUC,                          00029400
//         DISP=(NEW,CATLG,DELETE),                                     00029500
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00029600
//SYSPRINT DD SYSOUT=*                                                  00029700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T7B),DISP=SHR                   00029800
//*                                                                     00029900
//PJD50P7A EXEC PGM=SYNCSORT,COND=(4,LT)                                00030000
//SYSOUT   DD SYSOUT=*                                                  00030100
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.ISR,DISP=SHR                        00030200
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.ISR.ORDXSUC,                        00030300
//         DISP=(NEW,CATLG,DELETE),                                     00030400
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00030500
//SYSPRINT DD SYSOUT=*                                                  00030600
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T7A),DISP=SHR                   00030700
//*                                                                     00030800
//**********************************************************************00030900
//*  PASO: 6B Y 6A ORDENA ARCHIVOS DE OPCION 6: REPORTOS               *00031000
//*  PROGRAMA:     ICEMAN                                              *00031100
//**********************************************************************00031200
//PJD50P6B EXEC PGM=SYNCSORT,COND=(4,LT)                                00031300
//SYSOUT   DD SYSOUT=*                                                  00031400
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.REPORTO,DISP=SHR                      00031500
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.REPORTO.ORDXSUC,                      00031600
//         DISP=(NEW,CATLG,DELETE),                                     00031700
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00031800
//SYSPRINT DD SYSOUT=*                                                  00031900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T6B),DISP=SHR                   00032000
//*                                                                     00032100
//PJD50P6A EXEC PGM=SYNCSORT,COND=(4,LT)                                00032200
//SYSOUT   DD SYSOUT=*                                                  00032300
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.REPORTO,DISP=SHR                    00032400
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.REPORTO.ORDXSUC,                    00032500
//         DISP=(NEW,CATLG,DELETE),                                     00032600
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00032700
//SYSPRINT DD SYSOUT=*                                                  00032800
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T6A),DISP=SHR                   00032900
//*                                                                     00033000
//**********************************************************************00033100
//*  PASO: 5B Y 5A ORDENA ARCHIVOS DE OPCION 5: EMISORAS               *00033200
//*  PROGRAMA:     ICEMAN                                              *00033300
//**********************************************************************00033400
//PJD50P5B EXEC PGM=SYNCSORT,COND=(4,LT)                                00033500
//SYSOUT   DD SYSOUT=*                                                  00033600
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.EMISORA,DISP=SHR                      00033700
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.EMISORA.ORDXSUC,                      00033800
//         DISP=(NEW,CATLG,DELETE),                                     00033900
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00034000
//SYSPRINT DD SYSOUT=*                                                  00034100
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T5B),DISP=SHR                   00034200
//*                                                                     00034300
//PJD50P5A EXEC PGM=SYNCSORT,COND=(4,LT)                                00034400
//SYSOUT   DD SYSOUT=*                                                  00034500
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.EMISORA,DISP=SHR                    00034600
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.EMISORA.ORDXSUC,                    00034700
//         DISP=(NEW,CATLG,DELETE),                                     00034800
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00034900
//SYSPRINT DD SYSOUT=*                                                  00035000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T5A),DISP=SHR                   00035100
//*                                                                     00035200
//**********************************************************************00035300
//*  PASO: 4B Y 4A ORDENA ARCHIVOS DE OPCION 4: CAPAS                  *00035400
//*  PROGRAMA:     ICEMAN                                              *00035500
//**********************************************************************00035600
//PJD50P4B EXEC PGM=SYNCSORT,COND=(4,LT)                                00035700
//SYSOUT   DD SYSOUT=*                                                  00035800
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.CAPAS,DISP=SHR                        00035900
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.CAPAS.ORDXSUC,                        00036000
//         DISP=(NEW,CATLG,DELETE),                                     00036100
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00036200
//SYSPRINT DD SYSOUT=*                                                  00036300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T4B),DISP=SHR                   00036400
//*                                                                     00036500
//PJD50P4A EXEC PGM=SYNCSORT,COND=(4,LT)                                00036600
//SYSOUT   DD SYSOUT=*                                                  00036700
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.CAPAS,DISP=SHR                      00036800
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.CAPAS.ORDXSUC,                      00036900
//         DISP=(NEW,CATLG,DELETE),                                     00037000
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00037100
//SYSPRINT DD SYSOUT=*                                                  00037200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T4A),DISP=SHR                   00037300
//*                                                                     00037400
//**********************************************************************00037500
//*  PASO: 3B Y 3A ORDENA ARCHIVOS DE OPCION 3: EFECTIVOS              *00037600
//*  PROGRAMA:     ICEMAN                                              *00037700
//**********************************************************************00037800
//PJD50P3B EXEC PGM=SYNCSORT,COND=(4,LT)                                00037900
//SYSOUT   DD SYSOUT=*                                                  00038000
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.EFECTIVO,DISP=SHR                     00038100
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.EFECTIVO.ORDXSUC,                     00038200
//         DISP=(NEW,CATLG,DELETE),                                     00038300
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00038400
//SYSPRINT DD SYSOUT=*                                                  00038500
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T3B),DISP=SHR                   00038600
//*                                                                     00038700
//PJD50P3A EXEC PGM=SYNCSORT,COND=(4,LT)                                00038800
//SYSOUT   DD SYSOUT=*                                                  00038900
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.EFECTIVO,DISP=SHR                   00039000
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.EFECTIVO.ORDXSUC,                   00039100
//         DISP=(NEW,CATLG,DELETE),                                     00039200
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00039300
//SYSPRINT DD SYSOUT=*                                                  00039400
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T3A),DISP=SHR                   00039500
//*                                                                     00039600
//**********************************************************************00039700
//*  PASO: 2B Y 2A ORDENA ARCHIVOS DE OPCION 2: POSICIONES             *00039800
//*  PROGRAMA:     ICEMAN                                              *00039900
//**********************************************************************00040000
//PJD50P2B EXEC PGM=SYNCSORT,COND=(4,LT)                                00040100
//SYSOUT   DD SYSOUT=*                                                  00040200
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.POSICION,DISP=SHR                     00040300
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.POSICION.ORDXSUC,                     00040400
//         DISP=(NEW,CATLG,DELETE),                                     00040500
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00040600
//SYSPRINT DD SYSOUT=*                                                  00040700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T2B),DISP=SHR                   00040800
//*                                                                     00040900
//PJD50P2A EXEC PGM=SYNCSORT,COND=(4,LT)                                00041000
//SYSOUT   DD SYSOUT=*                                                  00041100
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.POSICION,DISP=SHR                   00041200
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.POSICION.ORDXSUC,                   00041300
//         DISP=(NEW,CATLG,DELETE),                                     00041400
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00041500
//SYSPRINT DD SYSOUT=*                                                  00041600
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T2A),DISP=SHR                   00041700
//*                                                                     00041800
//**********************************************************************00041900
//*  PASO: 1B Y 1A ORDENA ARCHIVOS DE OPCION 1: CONTRATOS              *00042000
//*  PROGRAMA:     ICEMAN                                              *00042100
//**********************************************************************00042200
//PJD50P1B EXEC PGM=SYNCSORT,COND=(4,LT)                                00042300
//SYSOUT   DD SYSOUT=*                                                  00042400
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.CONTRATO,DISP=SHR                     00042500
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.CONTRATO.ORDXSUC,                     00042600
//         DISP=(NEW,CATLG,DELETE),                                     00042700
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00042800
//SYSPRINT DD SYSOUT=*                                                  00042900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T1B),DISP=SHR                   00043000
//*                                                                     00043100
//PJD50P1A EXEC PGM=SYNCSORT,COND=(4,LT)                                00043200
//SYSOUT   DD SYSOUT=*                                                  00043300
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.CONTRATO,DISP=SHR                   00043400
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.CONTRATO.ORDXSUC,                   00043500
//         DISP=(NEW,CATLG,DELETE),                                     00043600
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE),BLKSIZE=0   00043700
//SYSPRINT DD SYSOUT=*                                                  00043800
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T1A),DISP=SHR                   00043900
//*                                                                     00044000
//**********************************************************************00044100
//*  PASO: 0B: TRANSFERENCIA DE TODOS LOS ARCHIVOS ORDENADOS           *00044200
//*            HACIA EL SERVIDOR \\SBBV04\PUBLIC\SOCINV\               *00044300
//**********************************************************************00044400
//PJD50P0B EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)                  00044500
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                    00044600
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00044700
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00044800
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00044900
//DMPRINT   DD SYSOUT=*                                                 00045000
//SYSPRINT  DD SYSOUT=*                                                 00045100
//NDMCMDS   DD SYSOUT=*                                                 00045200
//SYSUDUMP  DD DUMMY                                                    00045300
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZJD50T0B),DISP=SHR                  00045400
//*                                                                     00045500
//**********************************************************************00045600
//* PASO: 0A : ACTIVA LA CONDICION EN CONTROL-M PARA INDICAR QUE       *00045700
//*            TERMINO O.K. ESTE PROCESO                               *00045800
//**********************************************************************00045900
//PJD50P0A EXEC  PGM=CTMCND,PARM='ADD COND  SIVAMG45_IN_SEP_OK WDATE',  00046000
//         COND=(4,LT)                                                  00046100
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00046200
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00046300
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00046400
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00046500
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00046600
//PRTDBG   DD SYSOUT=*                                                  00046700
//SYSPRINT DD DUMMY                                                     00046800
//SYSUDUMP DD DUMMY                                                     00046900
//DAPRINT  DD SYSOUT=*                                                  00047000
//DACNDIN  DD DDNAME=SYSIN                                              00047100
//**********************************************************************00047200
