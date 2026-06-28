//ZMJLPD50 PROC                                                         00000100
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
//*   CORRE ANTES DE   :  NINGUNO                                     * 00001500
//*   PERIODICIDAD     :  EVENTUAL (A PETICION DEL USUARIO)           * 00001600
//*   ELABORADO POR    :  A. ADUNA G. (GETRONICS)                     * 00001700
//*   FECHA            :  MARZO /2007                                 * 00001800
//********************************************************************* 00001900
//*                                                                     00002000
//**********************************************************************00002100
//*  PASO: 20    ESTE PASO SOLO SIRVE PARA RECIBIR LOS 2 PARAMETROS    *00002200
//*              ENVIADOS DESDE LA EJECUCION EN LINEA:                 *00002300
//*  PROGRAMA:   ICEMAN                                                *00002400
//**********************************************************************00002500
//PJD50P20 EXEC PGM=ICEMAN,PARM=('&INT1','&INT2')                       00002600
//SYSOUT   DD SYSOUT=*                                                  00002700
//SORTIN   DD DSN=MXCP.ZM.FIX.MIGRA.MSALDET3,DISP=SHR                   00002800
//SORTOUT  DD DSN=MXCP.ZM.TMP.M&INT1..A&INT2,                           00002900
//         DISP=(NEW,CATLG,DELETE),                                     00003000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=120,BLKSIZE=0),                 00003100
//         UNIT=3390,SPACE=(CYL,(2,1),RLSE)                             00003200
//SYSPRINT DD SYSOUT=*                                                  00003600
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T9B),DISP=SHR                   00003700
//*                                                                     00003800
//**********************************************************************00003900
//*  PASO: 19    REFORMATEA ARCHIVOS DE OPCION 9:  PLAZOS              *00004000
//*  PROGRAMA:   ZM4DH059                                              *00004100
//**********************************************************************00004200
//PJD50P19 EXEC PGM=IKJEFT01,COND=(4,LT)                                00004300
//ZMH59EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOPZO,DISP=SHR                    00004400
//ZMH59EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MPLAZOS,DISP=SHR                 00004500
//ZMH59SA1 DD DSN=MXCP.ZM.FIX.AS400.PLAZOS,                             00004600
//         DISP=(NEW,CATLG,DELETE),                                     00004700
//         DCB=(DSORG=PS,RECFM=FB,LRECL=253,BLKSIZE=0),                 00004800
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00004900
//ZMH59SA2 DD DSN=MXCP.ZM.FIX.MUV.PLAZOS,                               00005000
//         DISP=(NEW,CATLG,DELETE),                                     00005100
//         DCB=(DSORG=PS,RECFM=FB,LRECL=160,BLKSIZE=0),                 00005200
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00005300
//SYSTSPRT DD SYSOUT=*                                                  00005400
//SYSPRINT DD SYSOUT=*                                                  00005500
//SYSOUT   DD SYSOUT=*                                                  00005600
//SYSDBOUT DD SYSOUT=*                                                  00005700
//SYSABOUT DD SYSOUT=*                                                  00005800
//SYSUDUMP DD DUMMY                                                     00005900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T19),DISP=SHR                   00006000
//*                                                                     00006100
//**********************************************************************00006200
//*  PASO: 18    REFORMATEA ARCHIVOS DE OPCION 8:  MOVTOS. X LIQUIDAR  *00006300
//*  PROGRAMA:   ZM4DH058                                              *00006400
//**********************************************************************00006500
//PJD50P18 EXEC PGM=IKJEFT01,COND=(4,LT)                                00006600
//ZMH58EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOMOV,DISP=SHR                    00006700
//ZMH58EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MOPXLIQ,DISP=SHR                 00006800
//ZMH58SA1 DD DSN=MXCP.ZM.FIX.AS400.MOVXLIQ,                            00006900
//         DISP=(NEW,CATLG,DELETE),                                     00007000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=229,BLKSIZE=0),                 00007100
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00007200
//ZMH58SA2 DD DSN=MXCP.ZM.FIX.MUV.MOVXLIQ,                              00007300
//         DISP=(NEW,CATLG,DELETE),                                     00007400
//         DCB=(DSORG=PS,RECFM=FB,LRECL=240,BLKSIZE=0),                 00007500
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00007600
//SYSTSPRT DD SYSOUT=*                                                  00007700
//SYSPRINT DD SYSOUT=*                                                  00007800
//SYSOUT   DD SYSOUT=*                                                  00007900
//SYSDBOUT DD SYSOUT=*                                                  00008000
//SYSABOUT DD SYSOUT=*                                                  00008100
//SYSUDUMP DD DUMMY                                                     00008200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T18),DISP=SHR                   00008300
//*                                                                     00008400
//**********************************************************************00008500
//*  PASO: 17    REFORMATEA ARCHIVOS DE OPCION 7:  I.S.R.              *00008600
//*  PROGRAMA:   ZM4DH057                                              *00008700
//**********************************************************************00008800
//PJD50P17 EXEC PGM=IKJEFT01,COND=(4,LT)                                00008900
//ZMH57EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOISR,DISP=SHR                    00009000
//ZMH57EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MISRANU,DISP=SHR                 00009100
//ZMH57SA1 DD DSN=MXCP.ZM.FIX.AS400.ISR,                                00009200
//         DISP=(NEW,CATLG,DELETE),                                     00009300
//         DCB=(DSORG=PS,RECFM=FB,LRECL=092,BLKSIZE=0),                 00009400
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00009500
//ZMH57SA2 DD DSN=MXCP.ZM.FIX.MUV.ISR,                                  00009600
//         DISP=(NEW,CATLG,DELETE),                                     00009700
//         DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),                 00009800
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00009900
//SYSTSPRT DD SYSOUT=*                                                  00010000
//SYSPRINT DD SYSOUT=*                                                  00010100
//SYSOUT   DD SYSOUT=*                                                  00010200
//SYSDBOUT DD SYSOUT=*                                                  00010300
//SYSABOUT DD SYSOUT=*                                                  00010400
//SYSUDUMP DD DUMMY                                                     00010500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T17),DISP=SHR                   00010600
//*                                                                     00010700
//**********************************************************************00010800
//*  PASO: 16    REFORMATEA ARCHIVOS DE OPCION 6:  REPORTOS            *00010900
//*  PROGRAMA:   ZM4DH056                                              *00011000
//**********************************************************************00011100
//PJD50P16 EXEC PGM=IKJEFT01,COND=(4,LT)                                00011200
//ZMH56EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOREP,DISP=SHR                    00011300
//ZMH56EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MREPORT,DISP=SHR                 00011400
//ZMH56SA1 DD DSN=MXCP.ZM.FIX.AS400.REPORTO,                            00011500
//         DISP=(NEW,CATLG,DELETE),                                     00011600
//         DCB=(DSORG=PS,RECFM=FB,LRECL=214,BLKSIZE=0),                 00011700
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00011800
//ZMH56SA2 DD DSN=MXCP.ZM.FIX.MUV.REPORTO,                              00011900
//         DISP=(NEW,CATLG,DELETE),                                     00012000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=142,BLKSIZE=0),                 00012100
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00012200
//SYSTSPRT DD SYSOUT=*                                                  00012300
//SYSPRINT DD SYSOUT=*                                                  00012400
//SYSOUT   DD SYSOUT=*                                                  00012500
//SYSDBOUT DD SYSOUT=*                                                  00012600
//SYSABOUT DD SYSOUT=*                                                  00012700
//SYSUDUMP DD DUMMY                                                     00012800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T16),DISP=SHR                   00012900
//*                                                                     00013000
//**********************************************************************00013100
//*  PASO: 15    REFORMATEA ARCHIVOS DE OPCION 5:  EMISORAS            *00013200
//*  PROGRAMA:   ZM4DH055                                              *00013300
//**********************************************************************00013400
//PJD50P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00013500
//ZMH55EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOEMI,DISP=SHR                    00013600
//ZMH55EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MEMISOR,DISP=SHR                 00013700
//ZMH55SA1 DD DSN=MXCP.ZM.FIX.AS400.EMISORA,                            00013800
//         DISP=(NEW,CATLG,DELETE),                                     00013900
//         DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),                 00014000
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00014100
//ZMH55SA2 DD DSN=MXCP.ZM.FIX.MUV.EMISORA,                              00014200
//         DISP=(NEW,CATLG,DELETE),                                     00014300
//         DCB=(DSORG=PS,RECFM=FB,LRECL=128,BLKSIZE=0),                 00014400
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00014500
//SYSTSPRT DD SYSOUT=*                                                  00014600
//SYSPRINT DD SYSOUT=*                                                  00014700
//SYSOUT   DD SYSOUT=*                                                  00014800
//SYSDBOUT DD SYSOUT=*                                                  00014900
//SYSABOUT DD SYSOUT=*                                                  00015000
//SYSUDUMP DD DUMMY                                                     00015100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T15),DISP=SHR                   00015200
//*                                                                     00015300
//**********************************************************************00015400
//*  PASO: 14    REFORMATEA ARCHIVOS DE OPCION 4:  CAPAS               *00015500
//*  PROGRAMA:   ZM4DH054                                              *00015600
//**********************************************************************00015700
//PJD50P14 EXEC PGM=IKJEFT01,COND=(4,LT)                                00015800
//ZMH54EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOCAP,DISP=SHR                    00015900
//ZMH54EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MCAPAST,DISP=SHR                 00016000
//ZMH54SA1 DD DSN=MXCP.ZM.FIX.AS400.CAPAS,                              00016100
//         DISP=(NEW,CATLG,DELETE),                                     00016200
//         DCB=(DSORG=PS,RECFM=FB,LRECL=144,BLKSIZE=0),                 00016300
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00016400
//ZMH54SA2 DD DSN=MXCP.ZM.FIX.MUV.CAPAS,                                00016500
//         DISP=(NEW,CATLG,DELETE),                                     00016600
//         DCB=(DSORG=PS,RECFM=FB,LRECL=110,BLKSIZE=0),                 00016700
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00016800
//SYSTSPRT DD SYSOUT=*                                                  00016900
//SYSPRINT DD SYSOUT=*                                                  00017000
//SYSOUT   DD SYSOUT=*                                                  00017100
//SYSDBOUT DD SYSOUT=*                                                  00017200
//SYSABOUT DD SYSOUT=*                                                  00017300
//SYSUDUMP DD DUMMY                                                     00017400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T14),DISP=SHR                   00017500
//*                                                                     00017600
//**********************************************************************00017700
//*  PASO: 13    REFORMATEA ARCHIVOS DE OPCION 3:  EFECTIVOS           *00017800
//*  PROGRAMA:   ZM4DH053                                              *00017900
//**********************************************************************00018000
//PJD50P13 EXEC PGM=IKJEFT01,COND=(4,LT)                                00018100
//ZMH53EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOEFE,DISP=SHR                    00018200
//ZMH53EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MEFECTI,DISP=SHR                 00018300
//ZMH53SA1 DD DSN=MXCP.ZM.FIX.AS400.EFECTIVO,                           00018400
//         DISP=(NEW,CATLG,DELETE),                                     00018500
//         DCB=(DSORG=PS,RECFM=FB,LRECL=060,BLKSIZE=0),                 00018600
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00018700
//ZMH53SA2 DD DSN=MXCP.ZM.FIX.MUV.EFECTIVO,                             00018800
//         DISP=(NEW,CATLG,DELETE),                                     00018900
//         DCB=(DSORG=PS,RECFM=FB,LRECL=053,BLKSIZE=0),                 00019000
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00019100
//SYSTSPRT DD SYSOUT=*                                                  00019200
//SYSPRINT DD SYSOUT=*                                                  00019300
//SYSOUT   DD SYSOUT=*                                                  00019400
//SYSDBOUT DD SYSOUT=*                                                  00019500
//SYSABOUT DD SYSOUT=*                                                  00019600
//SYSUDUMP DD DUMMY                                                     00019700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T13),DISP=SHR                   00019800
//*                                                                     00019900
//**********************************************************************00020000
//*  PASO: 12    REFORMATEA ARCHIVOS DE OPCION 2:  POSICIONES          *00020100
//*  PROGRAMA:   ZM4DH052                                              *00020200
//**********************************************************************00020300
//PJD50P12 EXEC PGM=IKJEFT01,COND=(4,LT)                                00020400
//ZMH52EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOPOS,DISP=SHR                    00020500
//ZMH52EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MPOSICI,DISP=SHR                 00020600
//ZMH52SA1 DD DSN=MXCP.ZM.FIX.AS400.POSICION,                           00020700
//         DISP=(NEW,CATLG,DELETE),                                     00020800
//         DCB=(DSORG=PS,RECFM=FB,LRECL=173,BLKSIZE=0),                 00020900
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00021000
//ZMH52SA2 DD DSN=MXCP.ZM.FIX.MUV.POSICION,                             00021100
//         DISP=(NEW,CATLG,DELETE),                                     00021200
//         DCB=(DSORG=PS,RECFM=FB,LRECL=107,BLKSIZE=0),                 00021300
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00021400
//SYSTSPRT DD SYSOUT=*                                                  00021500
//SYSPRINT DD SYSOUT=*                                                  00021600
//SYSOUT   DD SYSOUT=*                                                  00021700
//SYSDBOUT DD SYSOUT=*                                                  00021800
//SYSABOUT DD SYSOUT=*                                                  00021900
//SYSUDUMP DD DUMMY                                                     00022000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T12),DISP=SHR                   00022100
//*                                                                     00022200
//**********************************************************************00022300
//*  PASO: 11    REFORMATEA ARCHIVOS DE OPCION 1:  CONTRATOS           *00022400
//*  PROGRAMA:   ZM4DH051                                              *00022500
//**********************************************************************00022600
//PJD50P11 EXEC PGM=IKJEFT01,COND=(4,LT)                                00022700
//ZMH51EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOCTE,DISP=SHR                    00022800
//ZMH51EN2 DD DSN=MXCP.ZM.FIX.MIGRA.MSALDET3,DISP=SHR                   00022900
//ZMH51SA1 DD DSN=MXCP.ZM.FIX.AS400.CONTRATO,                           00023000
//         DISP=(NEW,CATLG,DELETE),                                     00023100
//         DCB=(DSORG=PS,RECFM=FB,LRECL=129,BLKSIZE=0),                 00023200
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00023300
//ZMH51SA2 DD DSN=MXCP.ZM.FIX.MUV.CONTRATO,                             00023400
//         DISP=(NEW,CATLG,DELETE),                                     00023500
//         DCB=(DSORG=PS,RECFM=FB,LRECL=120,BLKSIZE=0),                 00023600
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00023700
//SYSTSPRT DD SYSOUT=*                                                  00023800
//SYSPRINT DD SYSOUT=*                                                  00023900
//SYSOUT   DD SYSOUT=*                                                  00024000
//SYSDBOUT DD SYSOUT=*                                                  00024100
//SYSABOUT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD DUMMY                                                     00024300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD50T11),DISP=SHR                   00024400
//*                                                                     00024500
//**********************************************************************00024600
//*  PASO: 9B Y 9A ORDENA ARCHIVOS DE OPCION 9: PLAZOS                 *00024700
//*  PROGRAMA:     ICEMAN                                              *00024800
//**********************************************************************00024900
//PJD50P9B EXEC PGM=ICEMAN,COND=(4,LT)                                  00025000
//SYSOUT   DD SYSOUT=*                                                  00025100
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.PLAZOS,DISP=SHR                       00025200
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.PLAZOS.ORDXSUC,                       00025300
//         DISP=(NEW,CATLG,DELETE),                                     00025400
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00025500
//SYSPRINT DD SYSOUT=*                                                  00025900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T9B),DISP=SHR                   00026000
//*                                                                     00026100
//PJD50P9A EXEC PGM=ICEMAN,COND=(4,LT)                                  00026200
//SYSOUT   DD SYSOUT=*                                                  00026300
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.PLAZOS,DISP=SHR                     00026400
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.PLAZOS.ORDXSUC,                     00026500
//         DISP=(NEW,CATLG,DELETE),                                     00026600
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00026700
//SYSPRINT DD SYSOUT=*                                                  00027100
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T9A),DISP=SHR                   00027200
//*                                                                     00027300
//**********************************************************************00027400
//*  PASO: 8B Y 8A ORDENA ARCHIVOS DE OPCION 8: MOVTOS. X LIQUIDAR     *00027500
//*  PROGRAMA:     ICEMAN                                              *00027600
//**********************************************************************00027700
//PJD50P8B EXEC PGM=ICEMAN,COND=(4,LT)                                  00027800
//SYSOUT   DD SYSOUT=*                                                  00027900
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.MOVXLIQ,DISP=SHR                      00028000
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.MOVXLIQ.ORDXSUC,                      00028100
//         DISP=(NEW,CATLG,DELETE),                                     00028200
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00028300
//SYSPRINT DD SYSOUT=*                                                  00028700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T8B),DISP=SHR                   00028800
//*                                                                     00028900
//PJD50P8A EXEC PGM=ICEMAN,COND=(4,LT)                                  00029000
//SYSOUT   DD SYSOUT=*                                                  00029100
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.MOVXLIQ,DISP=SHR                    00029200
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.MOVXLIQ.ORDXSUC,                    00029300
//         DISP=(NEW,CATLG,DELETE),                                     00029400
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00029500
//SYSPRINT DD SYSOUT=*                                                  00029900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T8A),DISP=SHR                   00030000
//*                                                                     00030100
//**********************************************************************00030200
//*  PASO: 7B Y 7A ORDENA ARCHIVOS DE OPCION 7: I.S.R.                 *00030300
//*  PROGRAMA:     ICEMAN                                              *00030400
//**********************************************************************00030500
//PJD50P7B EXEC PGM=ICEMAN,COND=(4,LT)                                  00030600
//SYSOUT   DD SYSOUT=*                                                  00030700
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.ISR,DISP=SHR                          00030800
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.ISR.ORDXSUC,                          00030900
//         DISP=(NEW,CATLG,DELETE),                                     00031000
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00031100
//SYSPRINT DD SYSOUT=*                                                  00031500
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T7B),DISP=SHR                   00031600
//*                                                                     00031700
//PJD50P7A EXEC PGM=ICEMAN,COND=(4,LT)                                  00031800
//SYSOUT   DD SYSOUT=*                                                  00031900
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.ISR,DISP=SHR                        00032000
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.ISR.ORDXSUC,                        00032100
//         DISP=(NEW,CATLG,DELETE),                                     00032200
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00032300
//SYSPRINT DD SYSOUT=*                                                  00032700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T7A),DISP=SHR                   00032800
//*                                                                     00032900
//**********************************************************************00033000
//*  PASO: 6B Y 6A ORDENA ARCHIVOS DE OPCION 6: REPORTOS               *00033100
//*  PROGRAMA:     ICEMAN                                              *00033200
//**********************************************************************00033300
//PJD50P6B EXEC PGM=ICEMAN,COND=(4,LT)                                  00033400
//SYSOUT   DD SYSOUT=*                                                  00033500
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.REPORTO,DISP=SHR                      00033600
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.REPORTO.ORDXSUC,                      00033700
//         DISP=(NEW,CATLG,DELETE),                                     00033800
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00033900
//SYSPRINT DD SYSOUT=*                                                  00034300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T6B),DISP=SHR                   00034400
//*                                                                     00034500
//PJD50P6A EXEC PGM=ICEMAN,COND=(4,LT)                                  00034600
//SYSOUT   DD SYSOUT=*                                                  00034700
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.REPORTO,DISP=SHR                    00034800
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.REPORTO.ORDXSUC,                    00034900
//         DISP=(NEW,CATLG,DELETE),                                     00035000
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00035100
//SYSPRINT DD SYSOUT=*                                                  00035500
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T6A),DISP=SHR                   00035600
//*                                                                     00035700
//**********************************************************************00035800
//*  PASO: 5B Y 5A ORDENA ARCHIVOS DE OPCION 5: EMISORAS               *00035900
//*  PROGRAMA:     ICEMAN                                              *00036000
//**********************************************************************00036100
//PJD50P5B EXEC PGM=ICEMAN,COND=(4,LT)                                  00036200
//SYSOUT   DD SYSOUT=*                                                  00036300
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.EMISORA,DISP=SHR                      00036400
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.EMISORA.ORDXSUC,                      00036500
//         DISP=(NEW,CATLG,DELETE),                                     00036600
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00036700
//SYSPRINT DD SYSOUT=*                                                  00037100
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T5B),DISP=SHR                   00037200
//*                                                                     00037300
//PJD50P5A EXEC PGM=ICEMAN,COND=(4,LT)                                  00037400
//SYSOUT   DD SYSOUT=*                                                  00037500
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.EMISORA,DISP=SHR                    00037600
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.EMISORA.ORDXSUC,                    00037700
//         DISP=(NEW,CATLG,DELETE),                                     00037800
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00037900
//SYSPRINT DD SYSOUT=*                                                  00038300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T5A),DISP=SHR                   00038400
//*                                                                     00038500
//**********************************************************************00038600
//*  PASO: 4B Y 4A ORDENA ARCHIVOS DE OPCION 4: CAPAS                  *00038700
//*  PROGRAMA:     ICEMAN                                              *00038800
//**********************************************************************00038900
//PJD50P4B EXEC PGM=ICEMAN,COND=(4,LT)                                  00039000
//SYSOUT   DD SYSOUT=*                                                  00039100
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.CAPAS,DISP=SHR                        00039200
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.CAPAS.ORDXSUC,                        00039300
//         DISP=(NEW,CATLG,DELETE),                                     00039400
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00039500
//SYSPRINT DD SYSOUT=*                                                  00039900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T4B),DISP=SHR                   00040000
//*                                                                     00040100
//PJD50P4A EXEC PGM=ICEMAN,COND=(4,LT)                                  00040200
//SYSOUT   DD SYSOUT=*                                                  00040300
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.CAPAS,DISP=SHR                      00040400
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.CAPAS.ORDXSUC,                      00040500
//         DISP=(NEW,CATLG,DELETE),                                     00040600
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00040700
//SYSPRINT DD SYSOUT=*                                                  00041100
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T4A),DISP=SHR                   00041200
//*                                                                     00041300
//**********************************************************************00041400
//*  PASO: 3B Y 3A ORDENA ARCHIVOS DE OPCION 3: EFECTIVOS              *00041500
//*  PROGRAMA:     ICEMAN                                              *00041600
//**********************************************************************00041700
//PJD50P3B EXEC PGM=ICEMAN,COND=(4,LT)                                  00041800
//SYSOUT   DD SYSOUT=*                                                  00041900
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.EFECTIVO,DISP=SHR                     00042000
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.EFECTIVO.ORDXSUC,                     00042100
//         DISP=(NEW,CATLG,DELETE),                                     00042200
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00042300
//SYSPRINT DD SYSOUT=*                                                  00042700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T3B),DISP=SHR                   00042800
//*                                                                     00042900
//PJD50P3A EXEC PGM=ICEMAN,COND=(4,LT)                                  00043000
//SYSOUT   DD SYSOUT=*                                                  00043100
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.EFECTIVO,DISP=SHR                   00043200
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.EFECTIVO.ORDXSUC,                   00043300
//         DISP=(NEW,CATLG,DELETE),                                     00043400
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00043500
//SYSPRINT DD SYSOUT=*                                                  00043900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T3A),DISP=SHR                   00044000
//*                                                                     00044100
//**********************************************************************00044200
//*  PASO: 2B Y 2A ORDENA ARCHIVOS DE OPCION 2: POSICIONES             *00044300
//*  PROGRAMA:     ICEMAN                                              *00044400
//**********************************************************************00044500
//PJD50P2B EXEC PGM=ICEMAN,COND=(4,LT)                                  00044600
//SYSOUT   DD SYSOUT=*                                                  00044700
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.POSICION,DISP=SHR                     00044800
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.POSICION.ORDXSUC,                     00044900
//         DISP=(NEW,CATLG,DELETE),                                     00045000
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00045100
//SYSPRINT DD SYSOUT=*                                                  00045500
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T2B),DISP=SHR                   00045600
//*                                                                     00045700
//PJD50P2A EXEC PGM=ICEMAN,COND=(4,LT)                                  00045800
//SYSOUT   DD SYSOUT=*                                                  00045900
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.POSICION,DISP=SHR                   00046000
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.POSICION.ORDXSUC,                   00046100
//         DISP=(NEW,CATLG,DELETE),                                     00046200
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00046300
//SYSPRINT DD SYSOUT=*                                                  00046700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T2A),DISP=SHR                   00046800
//*                                                                     00046900
//**********************************************************************00047000
//*  PASO: 1B Y 1A ORDENA ARCHIVOS DE OPCION 1: CONTRATOS              *00047100
//*  PROGRAMA:     ICEMAN                                              *00047200
//**********************************************************************00047300
//PJD50P1B EXEC PGM=ICEMAN,COND=(4,LT)                                  00047400
//SYSOUT   DD SYSOUT=*                                                  00047500
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.CONTRATO,DISP=SHR                     00047600
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.CONTRATO.ORDXSUC,                     00047700
//         DISP=(NEW,CATLG,DELETE),                                     00047800
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00047900
//SYSPRINT DD SYSOUT=*                                                  00048300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T1B),DISP=SHR                   00048400
//*                                                                     00048500
//PJD50P1A EXEC PGM=ICEMAN,COND=(4,LT)                                  00048600
//SYSOUT   DD SYSOUT=*                                                  00048700
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.CONTRATO,DISP=SHR                   00048800
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.CONTRATO.ORDXSUC,                   00048900
//         DISP=(NEW,CATLG,DELETE),                                     00049000
//         DCB=(*.SORTIN),UNIT=3390,SPACE=(CYL,(10,5),RLSE)             00049100
//SYSPRINT DD SYSOUT=*                                                  00049500
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T1A),DISP=SHR                   00049600
//*                                                                     00049700
//**********************************************************************00049800
//*  PASO: 0B: TRANSFERENCIA DE TODOS LOS ARCHIVOS ORDENADOS           *00049900
//*            HACIA EL SERVIDOR \\SBBV04\PUBLIC\SOCINV\               *00050000
//**********************************************************************00050100
//PJD50P0B EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)                  00050200
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                    00050300
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00050400
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00050500
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00050600
//DMPRINT   DD SYSOUT=*                                                 00050700
//SYSPRINT  DD SYSOUT=*                                                 00050800
//NDMCMDS   DD SYSOUT=*                                                 00050900
//SYSUDUMP  DD DUMMY                                                    00051000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD50T0B),DISP=SHR                   00051100
//*                                                                     00051200
//**********************************************************************00051300
//* PASO: 0A : ACTIVA LA CONDICION EN CONTROL-M PARA INDICAR QUE       *00051400
//*            TERMINO O.K. ESTE PROCESO                               *00051500
//**********************************************************************00051600
//PJD50P0A EXEC  PGM=CTMCND,PARM='ADD COND  SIVAMG50_IN_SEP_OK WDATE',  00051700
//         COND=(4,LT)                                                  00051800
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00051900
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00052000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00052100
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00052200
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00052300
//PRTDBG   DD SYSOUT=*                                                  00052400
//SYSPRINT DD DUMMY                                                     00052500
//SYSUDUMP DD DUMMY                                                     00052600
//DAPRINT  DD SYSOUT=*                                                  00052700
//DACNDIN  DD DDNAME=SYSIN                                              00052800
//**********************************************************************00052900
