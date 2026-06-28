//ZMLLPC21 PROC                                                         00000100
//**********************************************************************00000200
//*                     C A S A   D E   B O L S A                      *00000300
//*                     =========================                      *00000400
//*                     <<< MERCADO DE DINERO >>>                      *00000500
//*                                                                    *00000600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000700
//*                                                                    *00000800
//*   PROCEDIM. :  ZMLLPC21-SIVAXBUC                                   *00000900
//*                                                                    *00001000
//*   OBJETIVO  :  REPORTES DE CONCILIACION DE SALDOS BUC VS. MUV      *00001100
//*                                                                    *00001200
//*   CORRE ANTES DE  :  NINGUNO                                       *00001300
//*                                                                    *00001400
//*   CORRE DESPUES DE:  NINGUNO                                       *00001500
//*                                                                    *00001600
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00001700
//*                                                                    *00001800
//**********************************************************************00001900
//*---------------------------------------------------------------------00002000
//* ------- ------- ---------- ----------------------------------------*00002010
//* JGF01   XME1788 20191219  -SE AGREGA UNA TARGETA DE CONTROL, OMITE *00002020
//*                            LAS @ EN EL ARCHIVO DE TRANSFERENCIA.   *00002030
//*                           -SE COMENTA EL PASO PLC21P2B Y SE        *00002040
//*                            REACTIVA EL JCL BCLTND12 PARA LA        *00002040
//*                            TRANSFERENCIA DEL ARCHIVO DE DICHO PASO *00002040
//*---------------------------------------------------------------------00002050
//*---------------------------------------------------------------------00002100
//* PROGRAMA: ZM4DL289                                                  00002200
//* OBJETIVO: GENERA ARCHIVO MUV DE SALDOS CUENTAS GLOBALES BUC FID.    00002300
//*---------------------------------------------------------------------00002400
//PLC21P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00002500
//*                                                                     00002600
//***ZML289A1 DD DSN=MXC&AMB..ZM.FIX.MDD.FID.E&EMP..S&SUC..SALDOS,      00002700
//ZML289A1 DD DSN=MXCP.ZM.FIX.MDD.FID.E&EMP..S&SUC..SALDOS,             00002710
//            DISP=(NEW,CATLG,DELETE),                                  00002800
//            SPACE=(CYL,(10,5),RLSE),                                  00002900
//            DCB=(DSORG=PS,RECFM=FB,LRECL=53,BLKSIZE=0),               00003000
//            UNIT=3390                                                 00003100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP21T06),DISP=SHR                   00003200
//*                                                                     00003300
//SYSTSPRT DD SYSOUT=*                                                  00003400
//SYSPRINT DD SYSOUT=*                                                  00003500
//SYSOUT   DD SYSOUT=*                                                  00003600
//SYSDBOUT DD SYSOUT=*                                                  00003700
//SYSABOUT DD DUMMY                                                     00003800
//SYSUDUMP DD DUMMY                                                     00003900
//*                                                                     00004000
//*---------------------------------------------------------------------00004100
//* PROGRAMA: SORT                                                      00004200
//* OBJETIVO: ORDENAR ARCHIVO MUV DE SALDOS (FIDUCIARIO)                00004300
//*---------------------------------------------------------------------00004400
//PLC21P6A EXEC PGM=SYNCSORT,COND=(4,LT)                                00004500
//SYSOUT   DD SYSOUT=*                                                  00004600
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.SALDOS.VAL.HOY.FID,DISP=SHR           00004700
//***SORTOUT  DD DSN=MXC&AMB..ZM.FIX.SALDOS.VAL.HOY.FID.SORT,           00004800
//SORTOUT  DD DSN=MXCP.ZM.FIX.SALDOS.VAL.HOY.FID.SORT,                  00004810
//            DISP=(NEW,CATLG,DELETE),                                  00004900
//            SPACE=(CYL,(10,05),RLSE),                                 00005000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=142,BLKSIZE=0),              00005100
//            UNIT=3390                                                 00005200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP21T6A),DISP=SHR                   00005300
//********************************************************************* 00005400
//*   PROGRAMA: ZM4DL290 C/A                                            00005500
//*   OBJETIVO: GENERA CONCILIACION DE SALDOS BUC - MUV - FID           00005600
//********************************************************************* 00005700
//PLC21P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00005800
//ZML290P1  DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC00,DISP=SHR  00005900
//ZML290A1 DD DSN=MXC&AMB..ZM.FIX.MDD.FID.E&EMP..S&SUC..SALDOS,DISP=SHR 00006000
//*ZML290A2  DD DSN=MXB&AMB..BUC.FIX.SALDOS.VAL.HOY,DISP=SHR            00006100
//ZML290A2  DD DSN=MXC&AMB..ZM.FIX.SALDOS.VAL.HOY.FID.SORT,DISP=SHR     00006200
//ZML290LS  DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00006300
//*                                                                     00006400
//SYSTSPRT DD SYSOUT=*                                                  00006500
//SYSPRINT DD SYSOUT=*                                                  00006600
//SYSOUT   DD SYSOUT=*                                                  00006700
//SYSDBOUT DD SYSOUT=*                                                  00006800
//SYSABOUT DD DUMMY                                                     00006900
//SYSUDUMP DD DUMMY                                                     00007000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP21T05),DISP=SHR                   00007100
//*                                                                     00007200
//********************************************************************* 00007300
//*   PROGRAMA: ZM4DL290  C/A                                           00007400
//*   OBJETIVO: GENERA CONCILIACION DE SALDOS BUC - MUV - FID           00007500
//********************************************************************* 00007600
//PLC21P5A EXEC PGM=IKJEFT01,COND=(4,LT)                                00007700
//ZML290P1  DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC00,DISP=SHR  00007800
//ZML290A1 DD DSN=MXC&AMB..ZM.FIX.MDD.FID.E&EMP..S&SUC..SALDOS,DISP=SHR 00007900
//*ZML290A2  DD DSN=MXB&AMB..BUC.FIX.SALDOS.VAL.HOY,DISP=SHR            00008000
//ZML290A2  DD DSN=MXC&AMB..ZM.FIX.SALDOS.VAL.HOY.FID.SORT,DISP=SHR     00008100
//***ZML290LS  DD DSN=MXC&AMB..ZM.FIX.MDD.FID.REPCON.BUC.VS.MUV,        00008200
//ZML290LS  DD DSN=MXCP.ZM.FIX.MDD.FID.REPCON.BUC.VS.MUV,               00008210
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,                       00008300
//             SPACE=(CYL,(10,05),RLSE),                                00008400
//             DCB=(RECFM=FB,DSORG=PS,LRECL=133,BLKSIZE=0)              00008500
//*                                                                     00008600
//***ZML290L1  DD DSN=MXC&AMB..ZM.FIX.MDD.FID.REPCON.PLANO,             00008700
//ZML290L1  DD DSN=MXCP.ZM.FIX.MDD.FID.REPCON.PLANO,                    00008710
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,                       00008800
//             SPACE=(CYL,(10,05),RLSE),                                00008900
//             DCB=(RECFM=FB,DSORG=PS,LRECL=122,BLKSIZE=0)              00009000
//*                                                                     00009100
//*                                                                     00009200
//SYSTSPRT DD SYSOUT=*                                                  00009300
//SYSPRINT DD SYSOUT=*                                                  00009400
//SYSOUT   DD SYSOUT=*                                                  00009500
//SYSDBOUT DD SYSOUT=*                                                  00009600
//SYSABOUT DD DUMMY                                                     00009700
//SYSUDUMP DD DUMMY                                                     00009800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP21T05),DISP=SHR                   00009900
//*                                                                     00010000
//**********************************************************************00010100
//* -- MUV --  SORT                                                    *00010200
//* OBJETIVO : ORDENAR ARCHIVO MUV DE SALDOS CUENTAS GLOBALES BUC - FID*00010300
//**********************************************************************00010400
//PLC21P04 EXEC PGM=SYNCSORT,COND=(4,LT)                                00010500
//SYSOUT   DD SYSOUT=*                                                  00010600
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.MDD.FID.E&EMP..S&SUC..SALDOS,DISP=SHR 00010700
//***SORTOUT  DD DSN=MXC&AMB..ZM.TMP.MDD.FID.E&EMP..S&SUC..SALDOS.SORT, 00010800
//SORTOUT  DD DSN=MXCP.ZM.TMP.MDD.FID.E&EMP..S&SUC..SALDOS.SORT,        00010810
//            DISP=(NEW,CATLG,DELETE),                                  00010900
//            SPACE=(CYL,(10,05),RLSE),                                 00011000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=53,BLKSIZE=0),               00011100
//            UNIT=3390                                                 00011200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP21T04),DISP=SHR                   00011300
//*                                                                     00011400
//**********************************************************************00011500
//* -- BUC --  SORT                                                    *00011600
//* OBJETIVO : ORDENAR ARCHIVO MUV DE SALDOS CUENTAS GLOBALES BUC - FID*00011700
//**********************************************************************00011800
//PLC21P03 EXEC PGM=SYNCSORT,COND=(4,LT)                                00011900
//SYSOUT   DD SYSOUT=*                                                  00012000
//*SORTIN   DD DSN=MXB&AMB..BUC.FIX.SALDOS.VAL.HOY,DISP=SHR             00012100
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.SALDOS.VAL.HOY.FID,DISP=SHR           00012200
//***SORTOUT  DD DSN=MXC&AMB..ZM.TMP.MDD.FID.E&EMP..S&SUC..SALDOS.BUC,  00012300
//SORTOUT  DD DSN=MXCP.ZM.TMP.MDD.FID.E&EMP..S&SUC..SALDOS.BUC,         00012310
//            DISP=(NEW,CATLG,DELETE),                                  00012400
//            SPACE=(CYL,(10,05),RLSE),                                 00012500
//            DCB=(DSORG=PS,RECFM=FB,LRECL=142,BLKSIZE=0),              00012600
//            UNIT=3390                                                 00012700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP21T03),DISP=SHR                   00012800
//*                                                                     00012900
//********************************************************************* 00013000
//*   PROGRAMA: ZM4DL291                                                00013100
//*   OBJETIVO: GENERA CONCILIACION DE SALDOS BUC - MUV (POR CVE. ISIN) 00013200
//*   FID                                                               00013300
//********************************************************************* 00013400
//*                                                                     00013500
//PLC21P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00013600
//ZML291P1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC00,DISP=SHR   00013700
//ZML291A1 DD DSN=MXC&AMB..ZM.TMP.MDD.FID.E&EMP..S&SUC..SALDOS.SORT,    00013800
//            DISP=SHR                                                  00013900
//ZML291A2 DD DSN=MXC&AMB..ZM.TMP.MDD.FID.E&EMP..S&SUC..SALDOS.BUC,     00014000
//            DISP=SHR                                                  00014100
//ZML291LS DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00014200
//*                                                                     00014300
//SYSTSPRT DD SYSOUT=*                                                  00014400
//SYSPRINT DD SYSOUT=*                                                  00014500
//SYSOUT   DD SYSOUT=*                                                  00014600
//SYSDBOUT DD SYSOUT=*                                                  00014700
//SYSABOUT DD DUMMY                                                     00014800
//SYSUDUMP DD DUMMY                                                     00014900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP21T02),DISP=SHR                   00015000
//*                                                                     00015100
//********************************************************************* 00015200
//*   PROGRAMA: ZM4DL291                                                00015300
//*   OBJETIVO: GENERA CONCILIACION DE SALDOS BUC - MUV (POR CVE. ISIN) 00015400
//*   FID                                                               00015500
//********************************************************************* 00015600
//*                                                                     00015700
//PLC21P2A EXEC PGM=IKJEFT01,COND=(4,LT)                                00015800
//ZML291P1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC00,DISP=SHR   00015900
//ZML291A1 DD DSN=MXC&AMB..ZM.TMP.MDD.FID.E&EMP..S&SUC..SALDOS.SORT,    00016000
//            DISP=SHR                                                  00016100
//ZML291A2 DD DSN=MXC&AMB..ZM.TMP.MDD.FID.E&EMP..S&SUC..SALDOS.BUC,     00016200
//            DISP=SHR                                                  00016300
//***ZML291LS DD DSN=MXC&AMB..ZM.FIX.MDD.FID.SALDOS.CONC.X.CVEISI,      00016400
//ZML291LS DD DSN=MXCP.ZM.FIX.MDD.FID.SALDOS.CONC.X.CVEISI,             00016410
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00016500
//            SPACE=(CYL,(10,05),RLSE),                                 00016600
//            DCB=(RECFM=FB,DSORG=PS,LRECL=133,BLKSIZE=0)               00016700
//*                                                                     00016800
//SYSTSPRT DD SYSOUT=*                                                  00016900
//SYSPRINT DD SYSOUT=*                                                  00017000
//SYSOUT   DD SYSOUT=*                                                  00017100
//SYSDBOUT DD SYSOUT=*                                                  00017200
//SYSABOUT DD DUMMY                                                     00017300
//SYSUDUMP DD DUMMY                                                     00017400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP21T02),DISP=SHR                   00017500
//*                                                                     00017600
//*JGF01 INI                                                            00017620
//*
//**********************************************************************00017630
//* MUV-BUC    SORT                                                    *00017640
//* OBJETIVO : OMITIR CARACTER ARROBA EN LA CONCILIACION MUV-BUC       *00017650
//**********************************************************************00017660
//PLC21P10 EXEC PGM=ICEMAN,COND=(4,LT)                                  00017670
//SYSOUT   DD SYSOUT=*                                                  00017680
//SORTIN   DD DISP=SHR,DSN=MXCP.ZM.FIX.MDD.FID.REPCON.PLANO             00017690
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDD.FID.REPCON.PLANO1,                    00017692
//            DISP=(NEW,CATLG,DELETE),                                  00017694
//            SPACE=(CYL,(10,05),RLSE),                                 00017697
//            DCB=(RECFM=FB,DSORG=PS,LRECL=122,BLKSIZE=0),              00017698
//            UNIT=3390                                                 00017699
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP21T7A),DISP=SHR                   00017700
//*                                                                     00017701
//*                                                                     00017703
//********************************************************************* 00017710
//*   PROGRAMA: TRANSFERENCIA DEL ARCHIVO PLANO DE FIDEICOMISOS         00017800
//********************************************************************* 00017900
//**                                                                    00018000
//*PLC21P2B EXEC PGM=DMBATCH,COND=(4,LT)                                00018100
//**                                                                    00018200
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                   00018300
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                 00018400
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                           00018500
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                    00018600
//*DMPRINT   DD SYSOUT=*                                                00018700
//*SYSPRINT  DD SYSOUT=*                                                00018800
//*NDMCMDS   DD SYSOUT=*                                                00018900
//*SYSUDUMP  DD DUMMY                                                   00019000
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZLP21T2B),DISP=SHR                 00019100
//**                                                                    00019200
//*JGF01 FIN                                                            00019200
//*                                                                     00019200
//*****************************************************************     00019300
//* PASO: PLLPC011                                                *     00019400
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *     00019500
//*****************************************************************     00019600
//PLC21P01 EXEC PGM=CTMCND,COND=(4,LT),                                 00019700
//         PARM='ADD COND BCLLPC21_IN_SEP_OK WDATE'                     00019800
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00019900
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00020000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00020100
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00020200
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00020300
//PRTDBG   DD SYSOUT=*                                                  00020400
//SYSPRINT DD DUMMY                                                     00020500
//SYSUDUMP DD DUMMY                                                     00020600
//DAPRINT  DD SYSOUT=*                                                  00020700
//DACNDIN  DD DDNAME=SYSIN                                              00020800
//**********************************************************************00020900
//*                      F I N   Z M L L P C 0 1                       *00021000
//**********************************************************************00021100
