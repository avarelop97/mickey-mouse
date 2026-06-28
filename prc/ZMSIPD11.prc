//ZMSIPD11 PROC                                                         00000100
//*                                                                     00000200
//**********************************************************************00000300
//*                                                                    *00000400
//*                <<   PROCESO   ESTADISTICO   >>                     *00000500
//*                                                                    *00000600
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00000700
//*                                                                    *00000800
//* PROCESO        :  ZMSIPD11   PARALELO AL PTEPED11                  *00000900
//*                   PROMOCION                                        *00001000
//*                                                                    *00001100
//* OBJETIVO       :  OBTENER LAS BAJAS DE CONTRATOS MENSUALES         *00001200
//*                   PARALELO AL PROGRAMA ORIGINAL PARA VALIDAR       *00001300
//*                   LA INFORMACION                                   *00001400
//*                   TAMBIEN EXTRAE INFORMACION DE TENENCIA DIARIA Y  *00001500
//*                   MENSUAL                                          *00001600
//* CORRE                                                              *00001700
//* ANTES DE       :                                                   *00001800
//*                                                                    *00001900
//* DESPUES DE     :  PTEPED06 (RESPALDOS IMAGCOPY'S)                  *00002000
//*                                                                    *00002100
//* REALIZO        :  DAVID GUTIERREZ CASILLAS   (GETRONICS)           *00002200
//*                                                                    *00002300
//* FECHA          :  SEPTIEMBRE 1, 2003                               *00002400
//*                                                                    *00002500
//* OBSERVACION    :  ESTE PROCEDIMIENTO ES PROVISIONAL, SOLO PARA     *00002600
//*                   VALIDACION DE INFORMACION GENERADA POR EXTRAC-   *00002700
//*                   TORES NUEVOS                                     *00002800
//*                                                                    *00002900
//**********************************************************************00003000
//*                       ¢¢¢  ZM4DS050  !!!                           *00003100
//*                                                                    *00003200
//* PASO  06 : PSI11P06                                                *00003300
//*                                                                    *00003400
//* OBJETIVO : EXTRAE LA TENENCIA DIARIA POR CONTRATO                  *00003500
//*            - EXTRACTOR -                                           *00003600
//*                                                                    *00003700
//**********************************************************************00003800
//PSI11P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00003900
//*                                                                     00004000
//PI601765  DD DUMMY                                                    00004100
//*                                                                     00004200
//ZMSD50S1 DD  DSN=MXCP.ZME.VM01.IDTCDIA.NVO,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(BLKSIZE=0,DSORG=PS,LRECL=99,RECFM=FB),
//             UNIT=FJVTP
//*                                                                     00004800
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00004900
//SYSPRINT DD SYSOUT=*                                                  00005000
//SYSOUT   DD SYSOUT=*                                                  00005100
//SYSDBOUT DD SYSOUT=*                                                  00005200
//SYSABOUT DD DUMMY                                                     00005300
//SYSUDUMP DD DUMMY                                                     00005400
//*                                                                     00005500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSI11T06),DISP=SHR                   00005600
//**********************************************************************00005700
//*                       ¢¢¢  S O R T  !!!                            *00005800
//*                                                                    *00005900
//* PASO  05 : PSI11P05                                                *00006000
//*                                                                    *00006100
//* OBJETIVO : ORDENA ARCHIVO DE TENENCIA DIARIA POR LOS CAMPOS:       *00006200
//*            IPROM, ICUENTA, ITIPOTEN, IGPOCONC, ITIPOEMI, ITIPOMER  *00006300
//*                                                                    *00006400
//**********************************************************************00006500
//PSI11P05 EXEC PGM=SYNCSORT,COND=(4,LT)                                00006600
//*                                                                     00006700
//PI601765 DD DUMMY                                                     00006800
//SORTIN   DD DSN=SIVA.SIE.FIX.TENENCIA.DIA,DISP=SHR                    00006900
//*                                                                     00007000
//SORTOUT  DD DSN=MXCP.ZME.WKF.TENENCIA.DIA,                            00007100
//         DISP=(NEW,CATLG,DELETE),                                     00007200
//         SPACE=(CYL,(500,250),RLSE),                                  00007300
//         DCB=(DSORG=PS,LRECL=70,BLKSIZE=0,RECFM=FB),                  00007400
//         UNIT=3390                                                    00007500
//*                                                                     00007600
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00007700
//SYSPRINT DD SYSOUT=*                                                  00007800
//SYSOUT   DD SYSOUT=*                                                  00007900
//SYSDBOUT DD SYSOUT=*                                                  00008000
//SYSABOUT DD DUMMY                                                     00008100
//SYSUDUMP DD DUMMY                                                     00008200
//*                                                                     00008300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSI11T05),DISP=SHR                   00008400
//**********************************************************************00008500
//*                       ¢¢¢  S O R T  !!!                            *00008600
//*                                                                    *00008700
//* PASO  04 : PSI11P04                                                *00008800
//*                                                                    *00008900
//* OBJETIVO : ORDENA ARCHIVO DE TENENCIA MENSUAL POR LOS CAMPOS:      *00009000
//*            IPROM, ICUENTA, ITIPOTEN, IGPOCONC, ITIPOEMI, ITIPOMER  *00009100
//*                                                                    *00009200
//**********************************************************************00009300
//PSI11P04 EXEC PGM=SYNCSORT,COND=(4,LT)                                00009400
//*                                                                     00009500
//PI601765 DD DUMMY                                                     00009600
//*                                                                     00009700
//SORTIN   DD DSN=SIVA.SIE.FIX.TENENCIA.MES,DISP=SHR                    00009800
//*                                                                     00009900
//SORTOUT  DD DSN=MXCP.ZME.WKF.TENENCIA.MES,                            00010000
//         DISP=(NEW,CATLG,DELETE),                                     00010100
//         SPACE=(CYL,(500,250),RLSE),                                  00010200
//         DCB=(DSORG=PS,LRECL=70,BLKSIZE=0,RECFM=FB),                  00010300
//         UNIT=3390                                                    00010400
//*                                                                     00010500
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00010600
//SYSPRINT DD SYSOUT=*                                                  00010700
//SYSOUT   DD SYSOUT=*                                                  00010800
//SYSDBOUT DD SYSOUT=*                                                  00010900
//SYSABOUT DD DUMMY                                                     00011000
//SYSUDUMP DD DUMMY                                                     00011100
//*                                                                     00011200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSI11T04),DISP=SHR                   00011300
//**********************************************************************00011400
//*                       ¢¢¢  ZM4MS050  !!!                           *00011500
//*                                                                    *00011600
//* PASO  03 : PSI11P03                                                *00011700
//*                                                                    *00011800
//* OBJETIVO : EXTRAE LA TENENCIA MENSUAL POR CONTRATO VER 2.0         *00011900
//*            - LEE ARCHIVOS DE TENENCIA -                            *00012000
//*            - EXTRACTOR -                                           *00012100
//*                                                                    *00012200
//**********************************************************************00012300
//PSI11P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00012400
//*                                                                     00012500
//PI601765  DD DUMMY                                                    00012600
//*                                                                     00012700
//ZMSM50E1 DD DSN=MXCP.ZME.WKF.TENENCIA.DIA,DISP=SHR                    00012800
//*                                                                     00012900
//ZMSM50E2 DD DSN=MXCP.ZME.WKF.TENENCIA.MES,DISP=SHR                    00013000
//*                                                                     00013100
//ZMSM50S1 DD  DSN=MXCP.ZME.VM01.IDTCMES2.NVO,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(BLKSIZE=0,DSORG=PS,LRECL=99,RECFM=FB),
//             UNIT=FJVTP
//*                                                                     00013700
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00013800
//SYSPRINT DD SYSOUT=*                                                  00013900
//SYSOUT   DD SYSOUT=*                                                  00014000
//SYSDBOUT DD SYSOUT=*                                                  00014100
//SYSABOUT DD DUMMY                                                     00014200
//SYSUDUMP DD DUMMY                                                     00014300
//*                                                                     00014400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSI11T03),DISP=SHR                   00014500
//**********************************************************************00014600
//*                       ¢¢¢  ZM4MSO50  !!!                           *00014700
//*                                                                    *00014800
//* PASO  02 : PSI11P02                                                *00014900
//*                                                                    *00015000
//* OBJETIVO : EXTRAE LA TENENCIA MENSUAL POR CONTRATO VER 1.0         *00015100
//*            - LEE TABLAS SECART Y SEATRCA -                         *00015200
//*            - EXTRACTOR -                                           *00015300
//*                                                                    *00015400
//**********************************************************************00015500
//PSI11P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00015600
//*                                                                     00015700
//PI601765  DD DUMMY                                                    00015800
//*                                                                     00015900
//*                                                                     00016000
//ZMSM5OS1 DD  DSN=MXCP.ZME.VM01.IDTCMES1.NVO,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(BLKSIZE=0,DSORG=PS,LRECL=99,RECFM=FB),
//             UNIT=FJVTP
//*                                                                     00016600
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00016700
//SYSPRINT DD SYSOUT=*                                                  00016800
//SYSOUT   DD SYSOUT=*                                                  00016900
//SYSDBOUT DD SYSOUT=*                                                  00017000
//SYSABOUT DD DUMMY                                                     00017100
//SYSUDUMP DD DUMMY                                                     00017200
//*                                                                     00017300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSI11T02),DISP=SHR                   00017400
//**********************************************************************00017500
//*                       ¢¢¢  ZM4MS016  !!!                           *00017600
//*                                                                    *00017700
//* PASO  01 : PSI11P01                                                *00017800
//*                                                                    *00017900
//* OBJETIVO : EXTRAE LAS BAJAS DE CONTRATOS MENSUALES                 *00018000
//*            - EXTRACTOR -                                           *00018100
//*                                                                    *00018200
//**********************************************************************00018300
//PSI11P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00018400
//*                                                                     00018500
//PI601765  DD DUMMY                                                    00018600
//*                                                                     00018700
//ZMSI32A1 DD  DSN=MXCP.ZME.VM01.IDBAMES.NVO,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(BLKSIZE=0,DSORG=PS,LRECL=62,RECFM=FB),
//             UNIT=FJVTP
//*                                                                     00019300
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00019400
//SYSPRINT DD SYSOUT=*                                                  00019500
//SYSOUT   DD SYSOUT=*                                                  00019600
//SYSDBOUT DD SYSOUT=*                                                  00019700
//SYSABOUT DD DUMMY                                                     00019800
//SYSUDUMP DD DUMMY                                                     00019900
//*                                                                     00020000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSI11T01),DISP=SHR                   00020100
